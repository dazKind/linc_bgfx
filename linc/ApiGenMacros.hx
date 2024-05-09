package linc;

#if macro

import haxe.macro.Context;
import haxe.macro.Expr;
import haxe.macro.MacroStringTools;

using haxe.macro.ComplexTypeTools;
using haxe.macro.TypeTools;
using haxe.macro.ExprTools;
using StringTools;

typedef HxType = {
    isArray:Bool,
    isPointer:Bool,
    isConst:Bool,
    isEnum:Bool,
    isNative:Bool,
    isStruct:Bool,
    isTypedef:Bool,
    isReference:Bool,
    name:String,
    result:ComplexType
}

class ApiGenMacros {

    static var outputFolder = "./bgfx";

    static var funcBlackList = [
        "dbgTextClear"=>true,
        "dbgTextPrintf"=>true,
        "dbgTextVprintf"=>true,
        "makeRefRelease"=>true,

        "vertexPack"=>true,
        "vertexUnpack"=>true,
        "topologySortTriList"=>true,
        "setPaletteColor"=>true,
        "setViewOrder"=>true
    ];

    static var seenTypes = new Map<String, Bool>();

    static function getHaxeType(_t:String):HxType {
        
        var isArray = _t.contains("[");
        var val = isArray ? _t.split("[")[0] : _t;
        var isPointer = val.endsWith("*");
        var isReference = val.endsWith("&");
        var isConst = val.startsWith("const");

        if (isConst)
            val = val.substr("const ".length);

        if (isPointer)
            val = val.split("*")[0].trim();

        if (isReference)
            val = val.substr(0, val.length-1).trim();
        
        var isEnum = val.endsWith("::Enum");
        if (isEnum)
            val = val.split("::Enum")[0];

        var isNative = isTypeNative(val);
        var isStruct = structs.exists(val);
        var isTypedef = typedefs.exists(val);

        function _wrap(_type:ComplexType) {
            if (isArray)
                return (macro : cpp.RawPointer<$_type>);
            else {
                if (isNative) {
                    if (isPointer)
                        if (isConst)
                            return (macro : cpp.ConstStar<$_type>);
                        else
                            return (macro : cpp.Star<$_type>);
                }
                return _type;
            }
        }

        var resultType = switch(val) {
            case "bool": _wrap(macro : Bool);
            case "char", "char_t": _wrap(macro : cpp.Char);
            case "uint8", "uint8_t": _wrap(macro : cpp.UInt8);
            case "uint16", "uint16_t": _wrap(macro : cpp.UInt16);
            case "uint32", "uint32_t": _wrap(macro : cpp.UInt32);
            case "uint64", "uint64_t", "uintptr_t": _wrap(macro : cpp.UInt64);

            case "int8", "int8_t": _wrap(macro : cpp.Int8);
            case "int16", "int16_t": _wrap(macro : cpp.Int16);
            case "int32", "int32_t": _wrap(macro : cpp.Int32);
            case "int64", "int64_t": _wrap(macro : cpp.Int64);

            case "float", "float_t": _wrap(macro : cpp.Float32);
            case "double", "double_t": _wrap(macro : cpp.Float64);

            case "void", "void_t": _wrap(macro : cpp.Void);

            default: {
                
                var res = macro : cpp.UNKNOWN;

                if (isPointer || isArray) {
                    if (!isStruct && !isEnum) {
                        res = macro : cpp.Star<cpp.Void>;
                    }
                    else {
                        var tmp = TPath({pack:["bgfx", val], name: 'Native_$val'});
                        if (isConst)
                            // res = macro : cpp.RawConstPointer<$tmp>;
                            res = macro : cpp.ConstStar<$tmp>;
                        else
                            res = macro : cpp.Star<$tmp>;
                    }
                }
                else if (isNative)
                    trace('TODO: Deal with native type: '+_t);
                else if (isEnum)
                    res = TPath({pack:["bgfx", val], name: 'Native_$val'});
                
                else if (isReference) {
                    var tmp = TPath({pack:["bgfx", val], name: 'Native_$val'});
                    res = macro : cpp.Reference<$tmp>;
                }
                else {
                    if (isStruct)
                        res = TPath({pack:["bgfx", val], name: 'Native_$val'});
                    else if (isTypedef)
                        res = TPath({pack:["bgfx"], name: '$val'});
                    else 
                        trace("UNKNOWN: " + _t);
                }
                res;
            }
        };

        // if (_t == "const char*") {
        //     trace(val);
        //     trace(resultType);
        // }
        return {
            isArray: isArray,
            isPointer: isPointer,
            isReference: isReference,
            isConst: isConst,
            isEnum: isEnum,
            isNative: isNative,
            isStruct: isStruct,
            isTypedef: isTypedef,
            name: val,
            result: resultType
        }
    }

    public static function isTypeNative(_type:String) {
        return switch(_type) {
            case "Void", "Nil", "bool", "Bool",
                "int", "int32", "int32_t", "cpp.Int32",
                "int64_t", "int64", "cpp.Int64",
                "uint64_t", "uint64", "cpp.UInt64",
                "uint_t", "uint", "uint32_t", "uint32", "cpp.UInt32",
                "uint16_t", "uint16", "cpp.UInt16",
                "uint8_t", "uint8", "cpp.UInt8",
                "int8_t", "int8", "cpp.Int8",
                "int16_t", "int16", "cpp.Int16",
                "real_t", "float", "double", 
                "float_t", "double_t", "Float",
                "float32_t", "cpp.Float32", "cpp.Float64",
                "char", "cpp.Char",
                "void"/*, "const void*"*/: true;

            default: false;
        }
    }

    static var typedefs:Map<String, String> = new Map();
    static var structs:Map<String, Dynamic> = new Map();
    static var imports = [];

    public static function api() {
        var apiJson = "./lib/bgfx_api.json";
        var api = haxe.Json.parse(sys.io.File.getContent(apiJson));

        Sys.println('Targeting "$outputFolder"');

        // make typedefs
        for (f in Reflect.fields(api.typedefs)){
            _generateTypedef(f, Reflect.field(api.typedefs, f));
        }

        // collect all structs first
        for (type in cast(api.types, Array<Dynamic>))
            if (type.type == "struct" || type.type == "handle")
                structs.set(type.name, type);

        for (type in cast(api.types, Array<Dynamic>)) {
            switch (type.type) {
                case "bits": _generateBits(type);
                case "enum": _generateEnum(type);
                case "struct", "handle": _generateStruct(type);
            }
        }

        _generateMain(cast(api.functions, Array<Dynamic>));
    }

    public static function _generateTypedef(_name:String, _type:String) {

        typedefs.set(_name, _type);

        var buf = new StringBuf();

        buf.add('package bgfx;\n\n');

        buf.add('typedef $_name = ${getHaxeType(_type).result.toString()};\n');

        var path = outputFolder;

        if (sys.FileSystem.exists(path) == false)
            sys.FileSystem.createDirectory(path);

        imports.push(_name);

        sys.io.File.saveContent(path+"/"+_name+".hx", buf.toString());
    }

    public static function _generateBits(_type:Dynamic) {
        var name = _type.name;
        var hxt = getHaxeType(_type.data_type);     
        var dt = hxt.result;
        var isInt64 = hxt.name.contains("int64");
        // trace(hxt);
        if (isInt64)
            dt = macro : cpp.Int64;

        // generate class
        var cls = macro class $name  {
        };
        cls.pack = ["bgfx"];
        
        for (v in cast(_type.values, Array<Dynamic>)) {
            var vname = v.name;
            var vvalue = Context.parseInlineString(isInt64 ? 'cast ${v.value}i64' : '${v.value}', Context.currentPos());
            var tmp = macro class {
                public static var $vname : $dt = $vvalue;
            };

            if (v.comment != null)
                tmp.fields[0].doc = v.comment;
            cls.fields.push(tmp.fields[0]);
        }

        var ptr = new haxe.macro.Printer();
        var output = ptr.printTypeDefinition(cls);

        var path = outputFolder;

        if (sys.FileSystem.exists(path) == false)
            sys.FileSystem.createDirectory(path);

        imports.push(name);

        sys.io.File.saveContent(path+"/"+name+".hx", output);
    }

    public static function _generateEnum(_type:Dynamic) {
        var name = _type.name;

        var buf = new StringBuf();

        buf.add('package bgfx;\n\n');

        buf.add('@:unreflective\n');
        buf.add('extern enum abstract Native_$name(Native_${name}Impl) {\n');
        for (v in cast(_type.values, Array<Dynamic>)) {

            if (v.comment  != null) {
                buf.add('    /**\n');
                buf.add('        ${v.comment}\n');
                buf.add('    **/\n');
            }

            buf.add('    @:native("${_type.cname}::${v.native}")\n');
            buf.add('    var ${v.name};\n');
        }
        
        buf.add('}\n');
        buf.add('@:unreflective\n');
        buf.add('@:native(\'${_type.cname}\')\n');
        buf.add('@:lincCppiaDef(\'$name\', \'enum\')\n');
        buf.add('extern class Native_${name}Impl { }\n');
        buf.add('#if (scriptable || cppia)\n');
        buf.add('    @:build(linc.LincCppia.wrapEnumExtern(\'Native_${name}\'))\n');
        buf.add('    enum abstract $name(Int) from Int to Int {}\n');
        buf.add('#else\n');
        buf.add('    typedef $name = Native_${name};\n');
        buf.add('#end\n');
        buf.add('');

        var path = outputFolder;

        if (sys.FileSystem.exists(path) == false)
            sys.FileSystem.createDirectory(path);

        imports.push(name);

        sys.io.File.saveContent(path+"/"+name+".hx", buf.toString());
    }

    public static function _generateStruct(_type:Dynamic) {
        var name = _type.name;

        var buf = new StringBuf();

        buf.add('package bgfx;\n\n');

        buf.add('\n');
        buf.add('\n');

        buf.add('@:structAccess\n');
        buf.add('@:unreflective\n');
        buf.add('@:include(\'bgfx/c99/bgfx.h\')\n');
        buf.add('@:native(\'${_type.cname}\')\n');
        buf.add('extern class Native_$name {\n');
        buf.add('    public function new();\n');

        // trace(_type.name);
        for (m in cast(_type.members, Array<Dynamic>)) {
            buf.add('    var ${m.name}:${getHaxeType(m.data_type).result.toString()}; // ${m.data_type}\n');
        }
        
        buf.add('}\n');
        buf.add('#if (scriptable || cppia)\n');
        buf.add('    class Cppia$name {\n');
        // TODO: 
        buf.add('        public var __ptr:cpp.Pointer<Native_$name> = null;\n');
        buf.add('        public var __inst:Native_$name = new Native_$name();\n');
        buf.add('        public function new() {}\n');
        buf.add('        \n');

        //CPPIA MEMBERS
        for (m in cast(_type.members, Array<Dynamic>)) {
            var dt = getHaxeType(m.data_type);

            if (dt.isNative) {
                if (dt.isPointer || dt.isArray) {
                    var tt = getHaxeType(m.data_type).result.toString();
                    if (tt.contains("Star"))
                        tt = tt.replace("Star", "Pointer");
                    else if (tt.contains("RawPointer"))
                        tt = tt.replace("RawPointer", "Pointer");
                    buf.add('        public var ${m.name}(get, set):${tt};\n');
                    if (dt.isArray)
                        buf.add('        function set_${m.name}(_v:${tt}):${tt} return null;\n');
                    else {
                        buf.add('        function set_${m.name}(_v:${tt}):${tt} {\n');
                        buf.add('            if (__ptr == null)\n');
                        buf.add('                __inst.${m.name} = cast _v;\n');
                        buf.add('            else\n');
                        buf.add('                __ptr.ref.${m.name} = cast _v;\n');
                        buf.add('            return _v;\n');
                        buf.add('        }\n');
                    }
                    buf.add('        function get_${m.name}():${tt} {\n');

                    var conv = (getHaxeType(m.data_type).result.toString().contains("RawPointer")) ? 'fromRaw' : 'fromStar';
                    buf.add('            if (__ptr == null) return cpp.Pointer.$conv(__inst.${m.name});\n');
                    buf.add('            else return cpp.Pointer.$conv(__ptr.ref.${m.name});\n');
                    buf.add('        }\n');
                } else {
                    var tt = getHaxeType(m.data_type).result.toString();
                    buf.add('        public var ${m.name}(get, set):${tt};\n');
                    buf.add('        function set_${m.name}(_v:${tt}):${tt} return __ptr == null ? __inst.${m.name} = _v : __ptr.ref.${m.name} = _v;\n');
                    buf.add('        function get_${m.name}():${tt} return __ptr == null ? __inst.${m.name} : __ptr.ref.${m.name};\n');
                }

            } else if (dt.isEnum) {
                buf.add('        public var ${m.name}(get, set):${dt.name};\n');
                buf.add('        function set_${m.name}(_v:${dt.name}):${dt.name} { __inst.${m.name} = (cast _v:${dt.result.toString()}); return _v; }\n');
                buf.add('        function get_${m.name}():${dt.name} return cast(__inst.${m.name}, ${dt.name});\n');

            } else if (dt.isStruct && !dt.isPointer) {

                buf.add('        public var ${m.name}(get, set):${dt.name};\n');
                if (dt.isArray)
                    buf.add('        function set_${m.name}(_v:${dt.name}):${dt.name} { return _v; }\n'); // do nothing
                else
                    buf.add('        function set_${m.name}(_v:${dt.name}):${dt.name} { __inst.${m.name} = _v.__inst; return _v; }\n');
                buf.add('        function get_${m.name}():${dt.name} { final res = Type.createEmptyInstance(${dt.name}); res.__ptr = cpp.Pointer.addressOf(__inst.${m.name}); return res; }\n');

            } else if (dt.isStruct && dt.isPointer) {
                buf.add('        public var ${m.name}(get, set):${dt.name};\n');
                buf.add('        function set_${m.name}(_v:${dt.name}):${dt.name} { return null; }\n');
                buf.add('        function get_${m.name}():${dt.name} { final res = Type.createEmptyInstance(${dt.name}); res.__inst = cpp.Pointer.fromStar(__inst.${m.name}).ref; return res; }\n');

            } else if (!dt.isStruct && !dt.isNative && dt.isPointer) {
                var tt = getHaxeType(m.data_type).result.toString();
                if (tt.contains("Star")) {
                    tt = tt.replace("Star", "Pointer");
                    buf.add('        public var ${m.name}(get, set):${tt};\n');
                    buf.add('        function set_${m.name}(_v:${tt}):${tt} { return null; }\n');
                    buf.add('        function get_${m.name}():${tt} { return cast __inst.${m.name}; }\n');
                } else {
                    buf.add('        public var ${m.name}(get, set):${tt};\n');
                    buf.add('        function set_${m.name}(_v:${tt}):${tt} { return cast __inst.${m.name} = untyped __cpp__(\'(void*){0}\', _v.ptr); }\n');
                    buf.add('        function get_${m.name}():${tt} { return cast __inst.${m.name}; }\n');
                }
            }
            buf.add('        \n');
            // buf.add('        \n');
        }
        buf.add('        \n');
        buf.add('    }\n');
        buf.add('    typedef $name = Cppia$name;\n');
        buf.add('#else\n');
        buf.add('    typedef $name = Native_$name;\n');
        buf.add('#end\n');
        buf.add('\n');
        buf.add('\n');
        buf.add('\n');

        var path = outputFolder;

        if (sys.FileSystem.exists(path) == false)
            sys.FileSystem.createDirectory(path);

        imports.push(name);

        sys.io.File.saveContent(path+"/"+name+".hx", buf.toString());
    }

    public static function _generateMain(_funcs:Array<Dynamic>) {
        var name = "Bgfx";
        var buf = new StringBuf();

        buf.add('package bgfx;\n\n');

        buf.add('import bgfx.*;\n');

        buf.add('\n');
        buf.add('@:headerCode("#include <Dynamic2.h>")\n');
        buf.add('@:include("linc_bgfx.h")\n');
        buf.add('@:build(linc.Linc.touch())\n');
        buf.add('@:build(linc.Linc.xml("bgfx"))\n');
        buf.add('extern class Native_Bgfx {\n');
        buf.add('\n');
        buf.add('    @:include("linc_bgfx.h")\n');
        buf.add('    @:native("linc_bgfx::getBgfxCallback")\n');
        buf.add('    extern public static function getCallback():cpp.Star<cpp.Void>;\n');
        buf.add('\n');
        
        var funcMap:Map<String, Int> = new Map();
        for (f in _funcs) {
            if (/*f.name != "vertexLayoutDecode" ||*/ funcBlackList.exists(f.name)) continue;

            if (funcMap.exists(f.name))
                funcMap.set(f.name, funcMap.get(f.name) + 1);
            else
                funcMap.set(f.name, 1);

            if (f.comment != null) {
                var comment = f.comment.split('\n').join('\n    ');
                buf.add('    /**\n');
                buf.add('    $comment\n');
            } else {
                buf.add('    /**\n');
                buf.add('    ${f.name}\n');
            }
            var args = [];
            for (a in cast(f.arguments, Array<Dynamic>)) {
                var at = getHaxeType(a.data_type);
                if (a.comment != null) {
                    var ac = a.comment.split('\n').join('\n    @param: ');
                    buf.add('    @param: ${a.cname} : ${at.result.toString()} - $ac\n');
                }
                if (at.result.toString() == "cpp.ConstStar<cpp.Char>")
                    args.push('${a.cname}:String');
                else
                    args.push('${a.cname}:${at.result.toString()}');
            }
            buf.add('    **/\n');

            var ft = getHaxeType(f.return_type);
            var fname = funcMap.get(f.name) > 1 ? '${f.name}${funcMap.get(f.name)}' : '${f.name}';
            buf.add('    @:native("${f.cname}")\n');
            buf.add('    extern public static function ${fname}(${args.join(", ")}):${ft.result.toString()};\n');
            buf.add('\n');
        }        

        buf.add('}\n');
        buf.add('#if (scriptable || cppia)\n');
        buf.add('    class Cppia$name {\n');
        buf.add('\n');
        buf.add('        public static function getCallback():cpp.Pointer<cpp.Void> { return cpp.Pointer.fromStar(Native_Bgfx.getCallback()); }\n');
        buf.add('\n');


        // CPPIA FUNCTIONS!
        var funcMap:Map<String, Int> = new Map();
        for (f in _funcs) {
            if (/*f.name != "vertexLayoutDecode" ||*/ funcBlackList.exists(f.name)) continue;

            if (funcMap.exists(f.name))
                funcMap.set(f.name, funcMap.get(f.name) + 1);
            else
                funcMap.set(f.name, 1);

            if (f.comment != null) {
                var comment = f.comment.split('\n').join('\n        ');
                buf.add('        /**\n');
                buf.add('        $comment\n');
            } else {
                buf.add('        /**\n');
                buf.add('        ${f.name}\n');
            }

            var args = [];
            var callArgs = [];
            for (a in cast(f.arguments, Array<Dynamic>)) {
                var at = getHaxeType(a.data_type);
                if (a.comment != null) {
                    var ac = a.comment.split('\n').join('\n        @param: ');
                    buf.add('        @param: ${a.cname} : ${at.result.toString()} - $ac\n');
                }
                if (at.isPointer) {
                    var tt = at.result.toString();
                    if (tt.contains("Star"))
                        tt = tt.replace("Star", "Pointer");
                    else if (tt.contains("RawPointer"))
                        tt = tt.replace("RawPointer", "Pointer");

                    if (at.isEnum) {
                        args.push('${a.cname}:${at.name}');
                        callArgs.push('cast cpp.RawPointer.addressOf(${a.cname})');
                    }
                    else if (at.isStruct) {
                        args.push('${a.cname}:${at.name}');
                        callArgs.push('${a.cname}.__ptr != null ? cast ${a.cname}.__ptr : ${a.cname}.__inst');  
                    } else {
                        if (tt == "cpp.ConstPointer<cpp.Char>") {
                            args.push('${a.cname}:String');
                            callArgs.push('${a.cname}');
                        }
                        else {
                            args.push('${a.cname}:${tt}');
                            callArgs.push('cast ${a.cname}');
                        }
                    }
                }
                else if (at.isStruct) {
                    args.push('${a.cname}:${at.name}');
                    callArgs.push('${a.cname}.__inst');
                }                
                else if (at.isEnum) {
                    args.push('${a.cname}:${at.name}');
                    callArgs.push('cast ${a.cname}');
                }
                else {
                    args.push('${a.cname}:${at.result.toString()}');
                    callArgs.push(a.cname);
                }
            }
            buf.add('        **/\n');

            var fname = funcMap.get(f.name) > 1 ? '${f.name}${funcMap.get(f.name)}' : '${f.name}';
            var ft = getHaxeType(f.return_type);
            var ftStr = ft.result.toString();
            var ret = 'return';
            if (ft.result.toString() == 'cpp.Void') {
                ftStr = 'Void';
                ret = '';
            }
            if (ft.isStruct && !ft.isPointer) {
                // make sure we wrap structs correctly
                // trace(ft);
                buf.add('        public static function $fname(${args.join(", ")}):${ft.name} {\n');
                buf.add('            final res = Type.createEmptyInstance(${ft.name});\n');
                buf.add('            res.__inst = Native_Bgfx.$fname(${callArgs.join(", ")});\n');
                buf.add('            $ret res;\n');
                buf.add('        }\n');
                buf.add('        \n');
                buf.add('        \n');
            }
            else if (ft.isStruct && ft.isPointer) {
                // make sure we wrap structs correctly
                // trace(ft);
                buf.add('        public static function $fname(${args.join(", ")}):${ft.name} {\n');
                buf.add('            final res = Type.createEmptyInstance(${ft.name});\n');
                buf.add('            res.__ptr = cast Native_Bgfx.$fname(${callArgs.join(", ")});\n');
                buf.add('            $ret res;\n');
                buf.add('        }\n');
                buf.add('        \n');
                buf.add('        \n');
            }
            else if (ft.isEnum){
                buf.add('        public static function $fname(${args.join(", ")}):${ft.name} {\n');
                buf.add('            $ret cast Native_Bgfx.$fname(${callArgs.join(", ")});\n');
                buf.add('        }\n');
                buf.add('        \n');
                buf.add('        \n');
            }
            else {
                buf.add('        public static function $fname(${args.join(", ")}):${ftStr} {\n');
                buf.add('            $ret Native_Bgfx.$fname(${callArgs.join(", ")});\n');
                buf.add('        }\n');
                buf.add('        \n');
                buf.add('        \n');
            }

        }

        buf.add('    }\n');
        buf.add('    typedef $name = Cppia$name;\n');
        
        buf.add('#else\n');
        buf.add('    typedef $name = Native_$name;\n');
        buf.add('#end\n');
        buf.add('\n');
        buf.add('\n');
        buf.add('\n');

        var path = outputFolder;

        if (sys.FileSystem.exists(path) == false)
            sys.FileSystem.createDirectory(path);

        sys.io.File.saveContent(path+"/"+name+".hx", buf.toString());
    }


}


#end