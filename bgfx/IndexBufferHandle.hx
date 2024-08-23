package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('bgfx_index_buffer_handle_t')
extern class Native_IndexBufferHandle {
    public function new();
    var idx:cpp.UInt16; // uint16

    inline public function isValid():Bool return idx != 65535;
}
#if (scriptable || cppia)
    class CppiaIndexBufferHandle {
        public var __ptr:cpp.Pointer<Native_IndexBufferHandle> = null;
        public var __inst:Native_IndexBufferHandle = new Native_IndexBufferHandle();
        public function new() {}
        
        public var idx(get, set):cpp.UInt16;
        function set_idx(_v:cpp.UInt16):cpp.UInt16 return __ptr == null ? __inst.idx = _v : __ptr.ref.idx = _v;
        function get_idx():cpp.UInt16 return __ptr == null ? __inst.idx : __ptr.ref.idx;
        
        inline public function isValid():Bool return idx != 65535;
    }
    typedef IndexBufferHandle = CppiaIndexBufferHandle;
#else
    typedef IndexBufferHandle = cpp.Struct<Native_IndexBufferHandle>;
#end



