package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('bgfx_resolution_t')
extern class Native_Resolution {
    public function new();
    var format:bgfx.TextureFormat.Native_TextureFormat; // TextureFormat::Enum
    var width:cpp.UInt32; // uint32_t
    var height:cpp.UInt32; // uint32_t
    var reset:cpp.UInt32; // uint32_t
    var numBackBuffers:cpp.UInt8; // uint8_t
    var maxFrameLatency:cpp.UInt8; // uint8_t
    var debugTextScale:cpp.UInt8; // uint8_t
}
#if (scriptable || cppia)
    class Resolution {
    }
#else
    typedef Resolution = Native_Resolution;
#end



