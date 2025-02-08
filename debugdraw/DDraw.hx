package debugdraw;

import bgfx.TextureHandle;

@:unreflective
@:notNull
@:runtimeValue
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
    public function begin(_viewId:cpp.UInt16, _depthTestLess:Bool/* = true*/, _encoder:cpp.Star<bgfx.Encoder.Native_Encoder>/* = null*/):Void;

    @:native('end')
    public function end():Void;

    @:native('push')
    public function push():Void;

    @:native('pop')
    public function pop():Void;

    @:native('setDepthTestLess')
    public function setDepthTestLess(_dtl:Bool):Void;

    @:native('setState')
    public function setState(_depthTest:Bool, _depthWrite:Bool, _clockwise:Bool):Void;

    @:native('setColor')
    public function setColor(_color:cpp.UInt32):Void;

    @:native('setLod')
    public function setLod(_lod:cpp.UInt8):Void;

    @:native('setWireframe')
    public function setWireframe(_wireframe:Bool):Void;

    @:native('setStipple')
    public function setStipple(_stipple:Bool, _scale:cpp.Float32/* = 1.0*/, _offset:cpp.Float32/* = 0.0*/):Void;

    @:native('setSpin')
    public function setSpin(_spin:cpp.Float32):Void;

    @:native('setTransform')
    public function setTransform(_mtx:cpp.ConstStar<cpp.Void>):Void;

    @:native('setTranslate')
    public function setTranslate(_x:cpp.Float32, _y:cpp.Float32, _z:cpp.Float32):Void;

    @:native('pushTransform')
    public function pushTransform(_mtx:cpp.ConstStar<cpp.Void>):Void;

    @:native('popTransform')
    public function popTransform():Void;

    @:native('moveTo')
    public function moveToXYZ(_x:cpp.Float32, _y:cpp.Float32, _z:cpp.Float32/* = 0.0*/):Void;

    inline public function moveTo(_pos:Array<cpp.Float32>):Void {
        var ref:cpp.Reference<Native_DebugDrawEncoder> = this;
        untyped __cpp__('{0}.moveTo(*(bx::Vec3*)(float*){1})',
            ref,cpp.NativeArray.address(_pos, 0));
    }

    @:native('lineTo')
    public function lineToXYZ(_x:cpp.Float32, _y:cpp.Float32, _z:cpp.Float32/* = 0.0*/):Void;

    inline public function lineTo(_pos:Array<cpp.Float32>):Void {
        var ref:cpp.Reference<Native_DebugDrawEncoder> = this;
        untyped __cpp__('{0}.lineTo(*(bx::Vec3*)(float*){1})',
            ref,cpp.NativeArray.address(_pos, 0));
    }

    @:native('close')
    public function close():Void;

    // @:native('drawQuad')
    inline public function drawQuad(_handle:cpp.Reference<Native_SpriteHandle>, _normal:Array<cpp.Float32>, _center:Array<cpp.Float32>, _size:cpp.Float32):Void {
        var ref:cpp.Reference<Native_DebugDrawEncoder> = this;
        untyped __cpp__('{0}.drawQuad((SpriteHandle){1}, *(bx::Vec3*)(float*){2}, *(bx::Vec3*)(float*){3}, {4})',
            ref, _handle, cpp.NativeArray.address(_normal, 0), cpp.NativeArray.address(_center, 0), _size);
    }

    @:native('drawAxis')
    public function drawAxis(_x:cpp.Float32, _y:cpp.Float32, _z:cpp.Float32, _length:cpp.Float32, _highlight:Native_Axis, _thickness:cpp.Float32):Void;

    inline public function drawGrid(_axis:Axis, _pos:Array<cpp.Float32>, _size:cpp.Float32 = 128, _step:cpp.Float32 = 1.0):Void {
        var ref:cpp.Reference<Native_DebugDrawEncoder> = this;
        untyped __cpp__('{0}.drawGrid((Axis::Enum){1}, *(bx::Vec3*)(float*){2}, {3}, {4})', 
            ref, _axis, cpp.NativeArray.address(_pos, 0), _size, _step);
    }

    @:native('drawOrb')
    public function drawOrb(_x:cpp.Float32, _y:cpp.Float32, _z:cpp.Float32, _radius:cpp.Float32, _highlight:Native_Axis = Native_Axis.Count):Void;

    inline public function drawObb(_mat:Array<cpp.Float32>):Void {
        var ref:cpp.Reference<Native_DebugDrawEncoder> = this;
        untyped __cpp__('
            bx::Obb __tmp = {};
            memcpy(&__tmp.mtx, {1}, 16*sizeof(float)); 
            {0}.draw(__tmp);',  
            ref, 
            cpp.NativeArray.address(_mat, 0)
        );
    }

    inline public function drawFrustum(_invProj:Array<cpp.Float32>):Void {
        var ref:cpp.Reference<Native_DebugDrawEncoder> = this;
        untyped __cpp__('{0}.drawFrustum({1});',
            ref, 
            cpp.NativeArray.address(_invProj, 0)
        );
    }

    inline public function drawSphere(_pos:Array<cpp.Float32>, _radius:cpp.Float32):Void {
        var ref:cpp.Reference<Native_DebugDrawEncoder> = this;
        untyped __cpp__('
            bx::Sphere __tmp = {*(bx::Vec3*)(float*){1}, {2}};
            {0}.draw(__tmp);',
            ref, 
            cpp.NativeArray.address(_pos, 0),
            _radius
        );
    }
}
#if (scriptable || cppia)
    class CppiaDebugDrawEncoder {
        public function new() {}
        public var __inst:Native_DebugDrawEncoder = new Native_DebugDrawEncoder();

        public function begin(_viewId:cpp.UInt16, _depthTestLess:Bool/* = true*/, _encoder:bgfx.Encoder/* = null*/):Void
            __inst.begin(_viewId, _depthTestLess, null);
        
        public function end():Void
            __inst.end();

        public function push():Void
            __inst.push();

        public function pop():Void
            __inst.pop();

        public function setDepthTestLess(_dtl:Bool):Void
            __inst.setDepthTestLess(_dtl);

        public function setState(_depthTest:Bool, _depthWrite:Bool, _clockwise:Bool):Void
            __inst.setState(_depthTest, _depthWrite, _clockwise);

        public function setColor(_color:cpp.UInt32):Void
            __inst.setColor(_color);

        public function setLod(_lod:cpp.UInt8):Void
            __inst.setLod(_lod);

        public function setWireframe(_wireframe:Bool):Void
            __inst.setWireframe(_wireframe);

        public function setStipple(_stipple:Bool, _scale:cpp.Float32/* = 1.0*/, _offset:cpp.Float32/* = 0.0*/):Void
            __inst.setStipple(_stipple, _scale, _offset);

        public function setSpin(_spin:cpp.Float32):Void
            __inst.setSpin(_spin);

        public function setTransform(_mtx:cpp.ConstPointer<cpp.Void>):Void
            __inst.setTransform(cast _mtx);

        public function setTranslate(_x:cpp.Float32, _y:cpp.Float32, _z:cpp.Float32):Void
            __inst.setTranslate(_x, _y, _z);

        public function pushTransform(_mtx:cpp.ConstPointer<cpp.Void>):Void
            __inst.pushTransform(cast _mtx);

        public function popTransform():Void
            __inst.popTransform();

        public function moveToXYZ(_x:cpp.Float32, _y:cpp.Float32, _z:cpp.Float32/* = 0.0*/):Void
            __inst.moveToXYZ(_x, _y, _z);

        public function moveTo(_pos:Array<cpp.Float32>):Void
            __inst.moveTo(_pos);

        public function lineToXYZ(_x:cpp.Float32, _y:cpp.Float32, _z:cpp.Float32/* = 0.0*/):Void
            __inst.lineToXYZ(_x, _y, _z);

        public function lineTo(_pos:Array<cpp.Float32>):Void
            __inst.lineTo(_pos);

        public function close():Void
            __inst.close();

        public function drawQuad(_handle:DSpriteHandle, _normal:Array<cpp.Float32>, _center:Array<cpp.Float32>, _size:cpp.Float32):Void
            __inst.drawQuad(_handle.__inst, _normal, _center, _size);

        public function drawAxis(_x:cpp.Float32, _y:cpp.Float32, _z:cpp.Float32, _length:cpp.Float32, _highlight:Axis, _thickness:cpp.Float32):Void
            __inst.drawAxis(_x, _y, _z, _length, cast _highlight, _thickness);

        public function drawGrid(_axis:Axis, _pos:Array<cpp.Float32>, _size:cpp.Float32 = 128, _step:cpp.Float32 = 1.0):Void
            __inst.drawGrid(_axis, _pos, _size, _step);

        public function drawOrb(_x:cpp.Float32, _y:cpp.Float32, _z:cpp.Float32, _radius:cpp.Float32, _highlight:Axis):Void
            __inst.drawOrb(_x, _y, _z, _radius, cast _highlight);

        public function drawObb(_mat:Array<cpp.Float32>):Void
            __inst.drawObb(_mat);

        public function drawFrustum(_invProj:Array<cpp.Float32>):Void
            __inst.drawFrustum(_invProj);

        public function drawSphere(_pos:Array<cpp.Float32>, _radius:cpp.Float32):Void 
            __inst.drawSphere(_pos, _radius);
    }
    typedef DDrawEncoder = CppiaDebugDrawEncoder;
    typedef DDrawEncoderRef = CppiaDebugDrawEncoder;
#else
    typedef DDrawEncoder = Native_DebugDrawEncoder;
    typedef DDrawEncoderRef = cpp.Reference<Native_DebugDrawEncoder>;
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

    @:native('ddCreateSprite')
    extern public static function createSprite(_w:cpp.UInt16, _h:cpp.UInt16, _data:cpp.ConstStar<cpp.Void>):Native_SpriteHandle;

    @:native('ddDestroy')
    extern public static function destroySprite(_h:Native_SpriteHandle):Void;
}
#if (scriptable || cppia)
    // @:build(linc.LincCppia.wrapMainExtern('Native_DebugDraw'))
    class CppiaDDraw {
        public static function init()
            Native_DebugDraw.init();

        public static function shutdown()
            Native_DebugDraw.shutdown();

        public static function createSprite(_w:cpp.UInt16, _h:cpp.UInt16, _data:cpp.ConstPointer<cpp.Void>):DSpriteHandle {
            var res = Type.createEmptyInstance(DSpriteHandle);
            res.__inst = Native_DebugDraw.createSprite(_w, _h, cast _data);
            return res;
        }

        public static function destroySprite(_h:DSpriteHandle):Void
            Native_DebugDraw.destroySprite(_h.__inst);
    }
    typedef DDraw = CppiaDDraw;
#else
    typedef DDraw = Native_DebugDraw;
#end