package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('bgfx_caps_gpu_t')
extern class Native_CapsGPU {
    public function new();
    var vendorId:cpp.UInt16; // uint16_t
    var deviceId:cpp.UInt16; // uint16_t
}
#if (scriptable || cppia)
    class CppiaCapsGPU {
        public var __ptr:cpp.Pointer<Native_CapsGPU> = null;
        public var __inst:Native_CapsGPU = new Native_CapsGPU();
        public function new() {}
        
        public var vendorId(get, set):cpp.UInt16;
        function set_vendorId(_v:cpp.UInt16):cpp.UInt16 return __ptr == null ? __inst.vendorId = _v : __ptr.ref.vendorId = _v;
        function get_vendorId():cpp.UInt16 return __ptr == null ? __inst.vendorId : __ptr.ref.vendorId;
        
        public var deviceId(get, set):cpp.UInt16;
        function set_deviceId(_v:cpp.UInt16):cpp.UInt16 return __ptr == null ? __inst.deviceId = _v : __ptr.ref.deviceId = _v;
        function get_deviceId():cpp.UInt16 return __ptr == null ? __inst.deviceId : __ptr.ref.deviceId;
        
        
    }
    typedef CapsGPU = CppiaCapsGPU;
#else
    typedef CapsGPU = Native_CapsGPU;
#end



