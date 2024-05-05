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
    class CppiaTextureInfo {
        public var __ptr:cpp.Pointer<Native_TextureInfo> = null;
        public var __inst:Native_TextureInfo = new Native_TextureInfo();
        public function new() {}
        
        public var format(get, set):TextureFormat;
        function set_format(_v:TextureFormat):TextureFormat { __inst.format = (cast _v:bgfx.TextureFormat.Native_TextureFormat); return _v; }
        function get_format():TextureFormat return cast(__inst.format, TextureFormat);
        
        public var storageSize(get, set):cpp.UInt32;
        function set_storageSize(_v:cpp.UInt32):cpp.UInt32 return __ptr == null ? __inst.storageSize = _v : __ptr.ref.storageSize = _v;
        function get_storageSize():cpp.UInt32 return __ptr == null ? __inst.storageSize : __ptr.ref.storageSize;
        
        public var width(get, set):cpp.UInt16;
        function set_width(_v:cpp.UInt16):cpp.UInt16 return __ptr == null ? __inst.width = _v : __ptr.ref.width = _v;
        function get_width():cpp.UInt16 return __ptr == null ? __inst.width : __ptr.ref.width;
        
        public var height(get, set):cpp.UInt16;
        function set_height(_v:cpp.UInt16):cpp.UInt16 return __ptr == null ? __inst.height = _v : __ptr.ref.height = _v;
        function get_height():cpp.UInt16 return __ptr == null ? __inst.height : __ptr.ref.height;
        
        public var depth(get, set):cpp.UInt16;
        function set_depth(_v:cpp.UInt16):cpp.UInt16 return __ptr == null ? __inst.depth = _v : __ptr.ref.depth = _v;
        function get_depth():cpp.UInt16 return __ptr == null ? __inst.depth : __ptr.ref.depth;
        
        public var numLayers(get, set):cpp.UInt16;
        function set_numLayers(_v:cpp.UInt16):cpp.UInt16 return __ptr == null ? __inst.numLayers = _v : __ptr.ref.numLayers = _v;
        function get_numLayers():cpp.UInt16 return __ptr == null ? __inst.numLayers : __ptr.ref.numLayers;
        
        public var numMips(get, set):cpp.UInt8;
        function set_numMips(_v:cpp.UInt8):cpp.UInt8 return __ptr == null ? __inst.numMips = _v : __ptr.ref.numMips = _v;
        function get_numMips():cpp.UInt8 return __ptr == null ? __inst.numMips : __ptr.ref.numMips;
        
        public var bitsPerPixel(get, set):cpp.UInt8;
        function set_bitsPerPixel(_v:cpp.UInt8):cpp.UInt8 return __ptr == null ? __inst.bitsPerPixel = _v : __ptr.ref.bitsPerPixel = _v;
        function get_bitsPerPixel():cpp.UInt8 return __ptr == null ? __inst.bitsPerPixel : __ptr.ref.bitsPerPixel;
        
        public var cubeMap(get, set):Bool;
        function set_cubeMap(_v:Bool):Bool return __ptr == null ? __inst.cubeMap = _v : __ptr.ref.cubeMap = _v;
        function get_cubeMap():Bool return __ptr == null ? __inst.cubeMap : __ptr.ref.cubeMap;
        
        
    }
    typedef TextureInfo = CppiaTextureInfo;
#else
    typedef TextureInfo = Native_TextureInfo;
#end



