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
    class CapsGPU {
    }
#else
    typedef CapsGPU = Native_CapsGPU;
#end



