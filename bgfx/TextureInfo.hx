package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('bgfx_texture_info_t')
extern class Native_TextureInfo {
    public function new();
    var format:bgfx.TextureFormat.Native_TextureFormat; // TextureFormat::Enum
    var storageSize:cpp.UInt32; // uint32_t
    var width:cpp.UInt16; // uint16_t
    var height:cpp.UInt16; // uint16_t
    var depth:cpp.UInt16; // uint16_t
    var numLayers:cpp.UInt16; // uint16_t
    var numMips:cpp.UInt8; // uint8_t
    var bitsPerPixel:cpp.UInt8; // uint8_t
    var cubeMap:Bool; // bool
}
#if (scriptable || cppia)
    class TextureInfo {
    }
#else
    typedef TextureInfo = Native_TextureInfo;
#end



