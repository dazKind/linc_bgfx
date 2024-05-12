package debugdraw;

@:unreflective
extern enum abstract Native_Axis(Native_AxisImpl) {
    @:native("Axis::Enum::X")
    var X;
    
    @:native("Axis::Enum::Y")
    var Y;
    
    @:native("Axis::Enum::Z")
    var Z;
    
    @:native("Axis::Enum::Count")
    var Count;
}
@:unreflective
@:native('Axis::Enum')
@:lincCppiaDef('Axis', 'enum')
extern class Native_AxisImpl { }
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapEnumExtern('Native_Axis'))
    enum abstract Axis(Int) from Int to Int {}
#else
    typedef Axis = Native_Axis;
#end


@:structAccess
@:unreflective
@:include('debugdraw.h')
@:native('SpriteHandle')
extern class Native_SpriteHandle {
    public function new();
    var idx:cpp.UInt16; // uint16
}
#if (scriptable || cppia)
    class CppiaSpriteHandle {
        public var __ptr:cpp.Pointer<Native_SpriteHandle> = null;
        public var __inst:Native_SpriteHandle = new Native_SpriteHandle();
        public function new() {}
        
        public var idx(get, set):cpp.UInt16;
        function set_idx(_v:cpp.UInt16):cpp.UInt16 return __ptr == null ? __inst.idx = _v : __ptr.ref.idx = _v;
        function get_idx():cpp.UInt16 return __ptr == null ? __inst.idx : __ptr.ref.idx;
    }
    typedef DSpriteHandle = CppiaSpriteHandle;
#else
    typedef DSpriteHandle = Native_SpriteHandle;
#end

@:structAccess
@:unreflective
@:include('debugdraw.h')
@:native('GeometryHandle')
extern class Native_GeometryHandle {
    public function new();
    var idx:cpp.UInt16; // uint16
}
#if (scriptable || cppia)
    class CppiaGeometryHandle {
        public var __ptr:cpp.Pointer<Native_GeometryHandle> = null;
        public var __inst:Native_GeometryHandle = new Native_GeometryHandle();
        public function new() {}
        
        public var idx(get, set):cpp.UInt16;
        function set_idx(_v:cpp.UInt16):cpp.UInt16 return __ptr == null ? __inst.idx = _v : __ptr.ref.idx = _v;
        function get_idx():cpp.UInt16 return __ptr == null ? __inst.idx : __ptr.ref.idx;
    }
    typedef DGeometryHandle = CppiaGeometryHandle;
#else
    typedef DGeometryHandle = Native_GeometryHandle;
#end

@:structAccess
@:unreflective
@:include('debugdraw.h')
@:native('DebugDrawEncoder')
extern class Native_DebugDrawEncoder {
    public function new();
    
    @:native('begin')
    public function begin(_viewId:cpp.UInt16, _depthTestLess:Bool = true, _encoder:cpp.Star<bgfx.Encoder.Native_Encoder> = null):Void;

    @:native('end')
    public function end():Void;

    @:native('drawAxis')
    public function drawAxis(_x:cpp.Float32, _y:cpp.Float32, _z:cpp.Float32, _length:cpp.Float32 = 1.0, _hightlight:Native_Axis = Native_Axis.Count, _thickness:cpp.Float32 = 0.0):Void;

    inline public function drawGrid(_axis:Axis, _pos:Array<cpp.Float32>, _size:cpp.Float32 = 128, _step:cpp.Float32 = 1.0):Void {
        untyped __cpp__('{0}.drawGrid((Axis::Enum){1}, *(bx::Vec3*)(float*){2}, {3}, {4})', 
            this, _axis, cpp.NativeArray.address(_pos, 0), _size, _step);
    }
}
#if (scriptable || cppia)
    class CppiaDebugDrawEncoder {
        public function new() {}
        public var __inst:Native_DebugDrawEncoder = new Native_DebugDrawEncoder();

        public function begin(_viewId:cpp.UInt16, _depthTestLess:Bool = true, _encoder:bgfx.Encoder = null):Void
            __inst.begin(_viewId, _depthTestLess, null);
        
        public function end():Void
            __inst.end();

        public function drawAxis(_x:cpp.Float32, _y:cpp.Float32, _z:cpp.Float32, _length:cpp.Float32 = 1.0, _hightlight:Axis = Axis.Count, _thickness:cpp.Float32 = 0):Void
            __inst.drawAxis(_x, _y, _z, _length, cast _hightlight, _thickness);

        public function drawGrid(_axis:Axis, _pos:Array<cpp.Float32>, _size:cpp.Float32 = 128, _step:cpp.Float32 = 1.0):Void
            __inst.drawGrid(_axis, _pos, _size, _step);
    }
    typedef DDrawEncoder = CppiaDebugDrawEncoder;
#else
    typedef DDrawEncoder = Native_DebugDrawEncoder;
#end


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
    class DDraw {}
#else
    typedef DDraw = Native_DebugDraw;
#end