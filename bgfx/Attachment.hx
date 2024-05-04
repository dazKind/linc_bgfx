package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('bgfx_attachment_t')
extern class Native_Attachment {
    public function new();
    var access:bgfx.Access.Native_Access; // Access::Enum
    var handle:bgfx.TextureHandle.Native_TextureHandle; // TextureHandle
    var mip:cpp.UInt16; // uint16_t
    var layer:cpp.UInt16; // uint16_t
    var numLayers:cpp.UInt16; // uint16_t
    var resolve:cpp.UInt8; // uint8_t
}
#if (scriptable || cppia)
    class Attachment {
    }
#else
    typedef Attachment = Native_Attachment;
#end



