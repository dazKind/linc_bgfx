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
    class Caps {
    }
#else
    typedef Caps = Native_Caps;
#end



