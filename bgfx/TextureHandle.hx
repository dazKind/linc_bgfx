package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('bgfx_texture_handle_t')
extern class Native_TextureHandle {
    public function new();
    var idx:cpp.UInt16; // uint16
}
#if (scriptable || cppia)
    class CppiaTextureHandle {
        public var __ptr:cpp.Pointer<Native_TextureHandle> = null;
        public var __inst:Native_TextureHandle = new Native_TextureHandle();
        public function new() {}
        
        public var idx(get, set):cpp.UInt16;
        function set_idx(_v:cpp.UInt16):cpp.UInt16 return __ptr == null ? __inst.idx = _v : __ptr.ref.idx = _v;
        function get_idx():cpp.UInt16 return __ptr == null ? __inst.idx : __ptr.ref.idx;
        
        
    }
    typedef TextureHandle = CppiaTextureHandle;
    typedef TextureHandleStruct = CppiaTextureHandle;
#else
    typedef TextureHandle = Native_TextureHandle;
    typedef TextureHandleStruct = cpp.Struct<Native_TextureHandle>;
#end



