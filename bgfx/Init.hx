package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('bgfx_init_t')
extern class Native_Init {
    public function new();
    var type:bgfx.RendererType.Native_RendererType; // RendererType::Enum
    var vendorId:cpp.UInt16; // uint16_t
    var deviceId:cpp.UInt16; // uint16_t
    var capabilities:cpp.UInt64; // uint64_t
    var debug:Bool; // bool
    var profile:Bool; // bool
    var platformData:bgfx.PlatformData.Native_PlatformData; // PlatformData
    var resolution:bgfx.Resolution.Native_Resolution; // Resolution
    var limits:bgfx.InitLimits.Native_InitLimits; // InitLimits
    var callback:cpp.Star<cpp.Void>; // CallbackI*
    var allocator:cpp.Star<cpp.Void>; // bx::AllocatorI*
}
#if (scriptable || cppia)
    class Init {
    }
#else
    typedef Init = Native_Init;
#end



