package debugdraw;

// @:structAccess
// @:unreflective
// @:include('debugdraw.h')
// @:native('SpriteHandle')
// extern class Native_SpriteHandle {
//     public function new();
//     var idx:cpp.UInt16; // uint16
// }
// #if (scriptable || cppia)
//     class CppiaSpriteHandle {
//         public var __ptr:cpp.Pointer<Native_SpriteHandle> = null;
//         public var __inst:Native_SpriteHandle = new Native_SpriteHandle();
//         public function new() {}
        
//         public var idx(get, set):cpp.UInt16;
//         function set_idx(_v:cpp.UInt16):cpp.UInt16 return __ptr == null ? __inst.idx = _v : __ptr.ref.idx = _v;
//         function get_idx():cpp.UInt16 return __ptr == null ? __inst.idx : __ptr.ref.idx;
//     }
//     typedef SpriteHandle = CppiaSpriteHandle;
// #else
//     typedef SpriteHandle = Native_SpriteHandle;
// #end

// @:structAccess
// @:unreflective
// @:include('debugdraw.h')
// @:native('::GeometryHandle')
// extern class Native_GeometryHandle {
//     public function new();
//     var idx:cpp.UInt16; // uint16
// }
// #if (scriptable || cppia)
//     class CppiaGeometryHandle {
//         public var __ptr:cpp.Pointer<Native_GeometryHandle> = null;
//         public var __inst:Native_GeometryHandle = new Native_GeometryHandle();
//         public function new() {}
        
//         public var idx(get, set):cpp.UInt16;
//         function set_idx(_v:cpp.UInt16):cpp.UInt16 return __ptr == null ? __inst.idx = _v : __ptr.ref.idx = _v;
//         function get_idx():cpp.UInt16 return __ptr == null ? __inst.idx : __ptr.ref.idx;
//     }
//     typedef DdGeometryHandle = CppiaGeometryHandle;
// #else
//     typedef DdGeometryHandle = Native_GeometryHandle;
// #end

@:include("debugdraw.h")
@:include("linc_bgfx.h")
extern class Native_DebugDraw {
	// @:native("ddInit")
    inline public static function init():Void {
    	untyped __cpp__('ddInit(nullptr)');
    }

    @:native("ddShutdown")
    extern public static function shutdown():Void;
}
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapMainExtern('Native_DebugDraw'))
    class DebugDraw {}
#else
    typedef DebugDraw = Native_DebugDraw;
#end