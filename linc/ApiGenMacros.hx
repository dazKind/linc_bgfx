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
        "makeRefRelease"=>true
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
                        return (macro : cpp.RawPointer<$_type>);
                }
                return _type;
            }
        }

        var resultType = switch(val) {
            case "bool": macro : Bool;
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

                if (isNative)
                    trace('TODO: Deal with native type: '+_t);
                else if (isEnum)
                    res = TPath({pack:["bgfx", val], name: 'Native_$val'});
                else if (isPointer || isArray) {
                    if (!isStruct) {
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
                "int", "int64", "cpp.Int64",
                "int32_t", "int32", "cpp.Int32",
                "uint_t", "uint", "uint64", "cpp.UInt64",
                "uint32_t", "uint32", "cpp.UInt32",
                "uint16_t", "uint16", "cpp.UInt16",
                "uint8_t", "uint8", "cpp.UInt8",
                "int8_t", "int8", "cpp.Int8",
                "int16_t", "int16", "cpp.Int16",
                "real_t", "float", "double", 
                "float_t", "double_t", "Float",
                "float32_t", "cpp.Float32", "cpp.Float64",
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
        trace(hxt);

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

        trace(_type.name);
        for (m in cast(_type.members, Array<Dynamic>)) {
            buf.add('    var ${m.name}:${getHaxeType(m.data_type).result.toString()}; // ${m.data_type}\n');
        }
        
        buf.add('}\n');
        buf.add('#if (scriptable || cppia)\n');
        buf.add('    class $name {\n');
        // TODO: 
        buf.add('    }\n');
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

        for (i in imports)
            buf.add('import bgfx.$i;\n');
        // buf.add('import bgfx.*;\n');

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
        
        for (f in _funcs) {
            if (funcBlackList.exists(f.name)) continue;

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
                args.push('${a.cname}:${at.result.toString()}');
            }
            buf.add('    **/\n');

            var ft = getHaxeType(f.return_type);
            buf.add('    @:native("${f.cname}")\n');
            buf.add('    overload extern public static function ${f.name}(${args.join(", ")}):${ft.result.toString()};\n');
            buf.add('\n');
        }        

        buf.add('}\n');
        buf.add('#if (scriptable || cppia)\n');
        buf.add('    class $name {\n');
        // TODO: 
        buf.add('    }\n');
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