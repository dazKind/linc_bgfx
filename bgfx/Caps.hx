package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('bgfx_caps_t')
extern class Native_Caps {
    public function new();
    var rendererType:bgfx.RendererType.Native_RendererType; // RendererType::Enum
    var supported:cpp.UInt64; // uint64_t
    var vendorId:cpp.UInt16; // uint16_t
    var deviceId:cpp.UInt16; // uint16_t
    var homogeneousDepth:Bool; // bool
    var originBottomLeft:Bool; // bool
    var numGPUs:cpp.UInt8; // uint8_t
    var gpu:cpp.Star<bgfx.CapsGPU.Native_CapsGPU>; // CapsGPU[4]
    var limits:bgfx.CapsLimits.Native_CapsLimits; // CapsLimits
    var formats:cpp.RawPointer<cpp.UInt16>; // uint16_t[96]
}
#if (scriptable || cppia)
    class CppiaCaps {
        public var __ptr:cpp.Pointer<Native_Caps> = null;
        public var __inst:Native_Caps = new Native_Caps();
        public function new() {}
        
        public var rendererType(get, set):RendererType;
        function set_rendererType(_v:RendererType):RendererType { __inst.rendererType = (cast _v:bgfx.RendererType.Native_RendererType); return _v; }
        function get_rendererType():RendererType return cast(__inst.rendererType, RendererType);
        
        public var supported(get, set):cpp.UInt64;
        function set_supported(_v:cpp.UInt64):cpp.UInt64 return __ptr == null ? __inst.supported = _v : __ptr.ref.supported = _v;
        function get_supported():cpp.UInt64 return __ptr == null ? __inst.supported : __ptr.ref.supported;
        
        public var vendorId(get, set):cpp.UInt16;
        function set_vendorId(_v:cpp.UInt16):cpp.UInt16 return __ptr == null ? __inst.vendorId = _v : __ptr.ref.vendorId = _v;
        function get_vendorId():cpp.UInt16 return __ptr == null ? __inst.vendorId : __ptr.ref.vendorId;
        
        public var deviceId(get, set):cpp.UInt16;
        function set_deviceId(_v:cpp.UInt16):cpp.UInt16 return __ptr == null ? __inst.deviceId = _v : __ptr.ref.deviceId = _v;
        function get_deviceId():cpp.UInt16 return __ptr == null ? __inst.deviceId : __ptr.ref.deviceId;
        
        public var homogeneousDepth(get, set):Bool;
        function set_homogeneousDepth(_v:Bool):Bool return __ptr == null ? __inst.homogeneousDepth = _v : __ptr.ref.homogeneousDepth = _v;
        function get_homogeneousDepth():Bool return __ptr == null ? __inst.homogeneousDepth : __ptr.ref.homogeneousDepth;
        
        public var originBottomLeft(get, set):Bool;
        function set_originBottomLeft(_v:Bool):Bool return __ptr == null ? __inst.originBottomLeft = _v : __ptr.ref.originBottomLeft = _v;
        function get_originBottomLeft():Bool return __ptr == null ? __inst.originBottomLeft : __ptr.ref.originBottomLeft;
        
        public var numGPUs(get, set):cpp.UInt8;
        function set_numGPUs(_v:cpp.UInt8):cpp.UInt8 return __ptr == null ? __inst.numGPUs = _v : __ptr.ref.numGPUs = _v;
        function get_numGPUs():cpp.UInt8 return __ptr == null ? __inst.numGPUs : __ptr.ref.numGPUs;
        
        public var gpu(get, set):CapsGPU;
        function set_gpu(_v:CapsGPU):CapsGPU { return _v; }
        function get_gpu():CapsGPU { final res = Type.createEmptyInstance(CapsGPU); res.__ptr = cpp.Pointer.addressOf(__inst.gpu); return res; }
        
        public var limits(get, set):CapsLimits;
        function set_limits(_v:CapsLimits):CapsLimits { __inst.limits = _v.__inst; return _v; }
        function get_limits():CapsLimits { final res = Type.createEmptyInstance(CapsLimits); res.__ptr = cpp.Pointer.addressOf(__inst.limits); return res; }
        
        public var formats(get, set):cpp.Pointer<cpp.UInt16>;
        function set_formats(_v:cpp.Pointer<cpp.UInt16>):cpp.Pointer<cpp.UInt16> return null;
        function get_formats():cpp.Pointer<cpp.UInt16> {
            if (__ptr == null) return cpp.Pointer.fromRaw(__inst.formats);
            else return cpp.Pointer.fromRaw(__ptr.ref.formats);
        }
        
        
    }
    typedef Caps = CppiaCaps;
#else
    typedef Caps = Native_Caps;
#end



