package linc;

#if macro

import haxe.macro.Expr;
import haxe.macro.Type;
import haxe.macro.Context;

using haxe.macro.TypeTools;
using haxe.macro.ComplexTypeTools;
using haxe.macro.ExprTools;
using haxe.macro.PositionTools;
using StringTools;

typedef MacroTypeClass = {
    pack:Array<String>,
    name:String,
    meta:MetaAccess,
}

class LincCppia {
    static function getModuleMap(_modName:String):Map<String, Type> {
        var moduleMap = new Map<String, Type>();
        for (t in Context.getModule(_modName)) {
            switch t {
                case TAbstract(_t, _p): moduleMap.set(_t.get().name, t);
                case TInst(_t, _p): moduleMap.set(_t.get().name, t);
                default:
            }
        }
        return moduleMap;
    }

    static function getCppiaLinkDef(_type:Type):{linkClass:String, linkType:String, linkPtrType:String} {
        // trace(_type);
        var ptrType = switch(_type) {
            case TType(_t, _p):
                if (_t.get().name.contains("Star"))
                    _t.get().name;
                else
                    null;
            case TAbstract(_t, _p):
                if (_t.get().name.contains("Star"))
                    _t.get().name;
                else
                    return null;
            case TInst(_t, _p):
                if (_t.get().name.contains("Star"))
                    _t.get().name;
                else if (_t.get().name.contains("Array"))
                	return null;
                else
                    null;
            case TDynamic(_): return {
	                linkClass: null,
	                linkType: 'dynamic',
	                linkPtrType: null
	            };
            default: null;
        };

        // trace(ptrType);

        switch ptrType {
        	case 'ConstCharStar':
        		return {
	                linkClass: null,
	                linkType: 'string',
	                linkPtrType: null
	            };
        }

        function getLink(_class:MacroTypeClass) {
            var classMeta = _class.meta;

            // fail if we are lacking the metadata
            if (classMeta.has(':lincCppiaIgnore'))
                return null;
            else if (classMeta.has(':lincCppiaDef') == false)
                Context.fatalError("missing metadata :lincCppiaDef on " + _class.name, Context.currentPos());

            var meta = classMeta.extract(':lincCppiaDef')[0];
            return {
                linkClass: meta.params[0].getValue(),
                linkType: meta.params[1].getValue(),
                linkPtrType: ptrType
            };
        }

        var def = null;
        try {
            def = getLink(Context.followWithAbstracts(_type).getClass());
        } catch (_) {
            try {
                def = getLink(Context.followWithAbstracts(_type).getEnum());
            } catch (_) {}
        }
        // trace(def);
        return def;
    }

    macro public static function wrapEnumExtern(_implementation:String):Array<Field> {
        var pos = Context.currentPos();
        var cls = Context.getLocalClass();
        var fields = Context.getBuildFields();
        var modulePath = Context.getLocalModule();
        var moduleMap = getModuleMap(modulePath);

        var typeImpl:Type = moduleMap.get(_implementation);
        
        var newFields = [];
        switch (typeImpl) {
            case TAbstract(_.get()=>ab, _): {
                for (s in ab.impl.get().statics.get()) {
                    var mname = s.name;
                    var m = (macro class { var $mname; }).fields[0];
                    newFields.push(m);
                }
            }
            default:
        }

        // var printer = new haxe.macro.Printer();
        // for (f2 in (cast newFields: Array<Dynamic>))
        //     trace(printer.printField(f2));

        fields = fields.concat(newFields);

        // Context.fatalError("foo", pos);

        return fields;
    }

    macro public static function wrapStructExtern(_implementation:String):Array<Field> {
        // build a wrapper class around a native struct
        var pos = Context.currentPos();
        var cls = Context.getLocalClass();
        var fields = Context.getBuildFields();
        var modulePath = Context.getLocalModule();
        var moduleMap = getModuleMap(modulePath);

        var typeImpl:Type = moduleMap.get(_implementation);
        var clsImpl = typeImpl.getClass();

        var cname = clsImpl.name;
        var ctPath = moduleMap.get(cname).toComplexType();
        var typePath:TypePath = switch ctPath {
            case TPath(_p): _p;
            default: null;
        };

        var newFields = (macro class {
            public function new() {}

            public var __ptr:cpp.Pointer<$ctPath> = null;
            @:allow($v{modulePath})
            public var __inst:$ctPath = new $typePath();

        }).fields;

        // trace(newFields);

        for (f in clsImpl.fields.get()) {
            // trace(f);

            var propName = f.name;
            var propTypeOriginal = f.type.toComplexType();
            var propType = f.type.toComplexType();
            var propTypeName = switch f.type {
                case TAbstract(_t, _): _t.get().name;
                case TType(_t, _): _t.get().name;
                case TInst(_t, _): _t.get().name;
                default: "";
            };
            var getPropName = 'get_$propName';
            var setPropName = 'set_$propName';
            var getBody = macro return __ptr != null ? __ptr.ref.$propName : __inst.$propName;
            var setBody = macro return __ptr != null ? __ptr.ref.$propName = _v : __inst.$propName = _v;

            // if (propName == 'myPtr') continue;
            var skip = false;
            for (m in f.meta.get()) {
                if (m.name == ':lincCppiaIgnore')
                    skip = true;
            }
            if (skip)
                continue;

            var def = getCppiaLinkDef(f.type);
            if (def != null) {
                switch (def.linkType) {
                	case 'dynamic': {
                        propType = macro : Dynamic;
                        getBody = macro return __ptr != null ? (cast __ptr.ref.$propName: Dynamic) : (cast __inst.$propName: Dynamic);
                        setBody = macro {
                            return null;
                        };
                    }
                    case 'string': {
                    	propType = macro : String;
                        getBody = macro return __ptr != null ? (cast __ptr.ref.$propName: String) : (cast __inst.$propName: String);
                        setBody = macro {
                            if (__ptr != null) __ptr.ref.$propName = (cast _v: $propTypeOriginal);
                            else __inst.$propName = (cast _v: $propTypeOriginal);
                            return _v;
                        };
                    }
                    case 'enum': {
                        propTypeName = def.linkClass;
                        propType = moduleMap.get(propTypeName).toComplexType();
                        getBody = macro return __ptr != null ? (cast __ptr.ref.$propName: $propType) : (cast __inst.$propName: $propType);
                        setBody = macro {
                            if (__ptr != null) __ptr.ref.$propName = (cast _v: $propTypeOriginal);
                            else __inst.$propName = (cast _v: $propTypeOriginal);
                            return _v;
                        };
                    }
                    case 'struct': {
                        if (def.linkPtrType != null) { // we have a pointer to a struct!

                            propTypeName = def.linkClass;
                            propType = moduleMap.get(propTypeName).toComplexType();
                            setBody = macro { return null; }; // todo: make this readonly for now
                            getBody = macro {
                                var res = Type.createEmptyInstance($i{propTypeName}); // make a new wrapper
                                res.__inst = cpp.Pointer.fromStar(__inst.$propName).ref;
                                return res;
                            }

                        } else {
                            propTypeName = def.linkClass;
                            propType = moduleMap.get(propTypeName).toComplexType();

                            // trace(clsImpl);
                            // trace(f);
                            // trace(propTypeName);
                            // trace(propType);

                            // todo: check current vs. prop type!
                            var assignment = cls.get().name != propTypeName ? macro __inst.$propName = _v.__inst : macro __inst.$propName = _v.__inst.$propName;

                            setBody = macro {
                                $assignment;
                                return _v; // todo: this could be problematic?
                            };
                            getBody = macro {
                                var res = Type.createEmptyInstance($i{propTypeName}); // make a new wrapper
                                res.__inst = __inst.$propName;
                                return res;
                            }
                        }                        
                    }
                }
            }
            
            var cls = macro class {
                // create prop
                public var $propName(get, set):$propType;
                // create setter and getter
                function $setPropName(_v:$propType):$propType {
                    $setBody;
                }
                function $getPropName():$propType {
                    $getBody;
                }
            };



            newFields = newFields.concat(cls.fields);
        }

        // var printer = new haxe.macro.Printer();
        // for (f2 in (cast newFields: Array<Dynamic>))
        //     trace(printer.printField(f2));

        fields = fields.concat(newFields);

        return fields;
    }

    macro public static function wrapMainExtern(_implementation:String):Array<Field> {
        // build wrapper functions for all static methods of the implementation class
        var pos = Context.currentPos();
        var cls = Context.getLocalClass();
        var fields = Context.getBuildFields();
        var modulePath = Context.getLocalModule();
        var moduleMap = getModuleMap(modulePath);

        // trace('moduleMap: $moduleMap');
        // trace("//////////////////////////");
        // trace("//////////////////////////");

        var typeImpl:Type = moduleMap.get(_implementation);
        var clsImpl = typeImpl.getClass();


        // trace(typeImpl);
        // trace(clsImpl);


        for (f in clsImpl.statics.get()) {
            // trace(f);

            if (!f.isPublic || f.meta.has(":lincCppiaIgnore")) continue;

            switch (f.type) {
            	case TLazy(_):
            		f.type = Context.follow(f.type);
            		// trace(f.type);
            	default:
            }

            switch (f.type) {
                case TFun(_args, _ret): {
                    var args = [];
                    var argNames = [];
                    for (a in _args) {
                        // trace("//////////////////////////");
                        // trace(a.name + " : " + a.t);
                        var argName = a.name;
                        var argTp:ComplexType = null;

                        switch a.t {
                            case TType(_t, _p): {
                                if (_t.get().name.contains("Star")) {

                                    // trace(_t + " " + _p);

                                    var argType:Dynamic = switch (_p[0]) {
                                        case TInst(_t1, _p1): _t1.get();
                                        case TAbstract(_t1, _p1): _t1.get();
                                        default: null;
                                    }

                                    // trace(argType);

                                    if (argType != null) {
                                        if (argType.pack[0] == 'cpp') {
                                            var tmp = Context.getType(argType.pack.join(".") + "." + argType.name);

                                            var typePath = TPath({
                                                sub: null,
                                                params: [TPType(tmp.toComplexType())],
                                                name: 'Pointer',
                                                pack: ['cpp']
                                            });

                                            // trace(argType);
                                            // trace(argTp);

                                            args.push({name:argName, type:typePath});
                                            argNames.push(macro cast $i{a.name});
                                        } else {
                                            // lookup the class
                                            var tmp = moduleMap.get(argType.name);
                                            if (tmp != null) {
                                                var def = getCppiaLinkDef(tmp);
                                                // argTp = moduleMap.get(def.linkClass).toComplexType();
                                                var tmp = Context.getType(argType.name).toComplexType();
                                                // argTp = Context.getType('cpp.Pointer<${tmp}>').toComplexType();
                                                argTp = macro : cpp.Pointer<$tmp>;
                                                // trace(argType);
                                            } else
                                                Context.fatalError(argType + " is a type we dont deal with in cpp.Star as argument yet!", pos);

                                            args.push({name:argName, type:argTp});
                                            argNames.push(macro cast $i{a.name});
                                        }
                                    }
                                } else {
                                	argTp = a.t.toComplexType();
                                    args.push({name:argName, type:argTp});
                                    argNames.push(macro $i{a.name});
                                }
                            }
                            case TAbstract(_t, _p): {
                                var argType = _t.get();

                                // lookup the class
                                var tmp = moduleMap.get(argType.name);
                                if (tmp != null) {
                                    var def = getCppiaLinkDef(tmp);
                                    argTp = moduleMap.get(def.linkClass).toComplexType();
                                    args.push({name:argName, type:argTp});
                                    argNames.push(macro cast $i{a.name});
                                } else {
                                    argTp = a.t.toComplexType();
                                    args.push({name:argName, type:argTp});
                                    argNames.push(macro $i{a.name});
                                }

                            }
                            case TInst(_t, _p): {
                                var argType = _t.get();

                                // lookup the class
                                var tmp = moduleMap.get(argType.name);
                                if (tmp != null) {
                                    var def = getCppiaLinkDef(tmp);
                                    argTp = moduleMap.get(def.linkClass).toComplexType();
                                    args.push({name:argName, type:argTp});
                                    argNames.push(macro $i{a.name}.__inst);
                                } else {
                                    argTp = a.t.toComplexType();
                                    args.push({name:argName, type:argTp});
                                    argNames.push(macro $i{a.name});
                                }
                            }
                            default:
                            	
                        }

                        // trace('$argName: $argTp');
                    }

                    // if (_args.length != args.length) {
                    // 	trace(f.name);
                    // 	trace([for (a in _args) a.name]);
                    // 	trace([for (a in args) a.name]);

                    // 	// throw '$argName: $argTp';
                    // }

                    var hasReturn:Bool = true;
                    var isPointer = false;
                    switch(_ret) {
                        case TType(_t, _p):
                            if (_t.get().name.contains("Void")) {
                                hasReturn = false;
                            }
                            else if (_t.get().name.contains("Star")) {
                            	// trace(Context.followWithAbstracts(_t.get().type));
                            	var tmp = _ret.toComplexType();
                            	switch tmp {
			                    	case TPath(_t): 
			                    		if (_t.name.contains('Star')) {
		                            		_t.name = 'Pointer';
		                            		_ret = tmp.toType();
		                            		isPointer = true;
		                            	}
			                    	default:
			                    }
                            }
                        default: 
                    };

                    var fname = f.name;
                    var body = macro $i{clsImpl.name}.$fname($a{argNames});
                    if (hasReturn) {
	                    if (isPointer)
	                    	body = macro return cpp.Pointer.fromStar($i{clsImpl.name}.$fname($a{argNames}));
	                    else {
	                    	var def = getCppiaLinkDef(_ret);
	                    	// trace(def);
	                    	if (def != null) {
	                    		switch (def.linkType) {
	                    			case 'struct': { // we have a native struct, generate a proper wrapper function!
	                    				var t = Context.getType(def.linkClass);
	                    				var e = Context.parseInlineString('var res = Type.createEmptyInstance(${def.linkClass})', pos);
		                    			body = macro {
			                    			$e;
			                    			res.__inst = $i{clsImpl.name}.$fname($a{argNames});
			                    			return res;
			                    		};
			                    		_ret = t; // now override the return type
			                    	}
	                    			default: 
	                    				body = macro return $i{clsImpl.name}.$fname($a{argNames});
	                    		}
	                    		
	                    	} else
	                    		body = macro return $i{clsImpl.name}.$fname($a{argNames});
	                    }	                    	
                    }

                    // var printer = new haxe.macro.Printer();
			        // trace(printer.printExpr(body));

                    var f:Field = {
                        name: fname,
                        access: [APublic, AStatic],
                        pos: Context.currentPos(),
                        kind: FFun({
                            args: args,
                            expr: body,
                            // expr: hasReturn ? isPointer ? macro {
                            //     return cpp.Pointer.fromStar($i{clsImpl.name}.$fname($a{argNames}));
                            // } : macro {
                            //     return $i{clsImpl.name}.$fname($a{argNames});
                            // } : macro {
                            //     $i{clsImpl.name}.$fname($a{argNames});
                            // },
                            params: [],
                            ret: _ret.toComplexType()
                        })
                    };



                    fields.push(f);
                }
                default: // ignore
            }

        }

        // var printer = new haxe.macro.Printer();
        // for (f2 in (cast fields: Array<Dynamic>))
        //     trace(printer.printField(f2));
        
        return fields;
    }

}

#end