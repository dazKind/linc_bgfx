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
    class CppiaAttachment {
        public var __ptr:cpp.Pointer<Native_Attachment> = null;
        public var __inst:Native_Attachment = new Native_Attachment();
        public function new() {}
        
        public var access(get, set):Access;
        function set_access(_v:Access):Access { __inst.access = (cast _v:bgfx.Access.Native_Access); return _v; }
        function get_access():Access return cast(__inst.access, Access);
        
        public var handle(get, set):TextureHandle;
        function set_handle(_v:TextureHandle):TextureHandle { __inst.handle = _v.__inst; return _v; }
        function get_handle():TextureHandle { final res = Type.createEmptyInstance(TextureHandle); res.__ptr = cpp.Pointer.addressOf(__inst.handle); return res; }
        
        public var mip(get, set):cpp.UInt16;
        function set_mip(_v:cpp.UInt16):cpp.UInt16 return __ptr == null ? __inst.mip = _v : __ptr.ref.mip = _v;
        function get_mip():cpp.UInt16 return __ptr == null ? __inst.mip : __ptr.ref.mip;
        
        public var layer(get, set):cpp.UInt16;
        function set_layer(_v:cpp.UInt16):cpp.UInt16 return __ptr == null ? __inst.layer = _v : __ptr.ref.layer = _v;
        function get_layer():cpp.UInt16 return __ptr == null ? __inst.layer : __ptr.ref.layer;
        
        public var numLayers(get, set):cpp.UInt16;
        function set_numLayers(_v:cpp.UInt16):cpp.UInt16 return __ptr == null ? __inst.numLayers = _v : __ptr.ref.numLayers = _v;
        function get_numLayers():cpp.UInt16 return __ptr == null ? __inst.numLayers : __ptr.ref.numLayers;
        
        public var resolve(get, set):cpp.UInt8;
        function set_resolve(_v:cpp.UInt8):cpp.UInt8 return __ptr == null ? __inst.resolve = _v : __ptr.ref.resolve = _v;
        function get_resolve():cpp.UInt8 return __ptr == null ? __inst.resolve : __ptr.ref.resolve;
        
        
    }
    typedef Attachment = CppiaAttachment;
#else
    typedef Attachment = Native_Attachment;
#end



