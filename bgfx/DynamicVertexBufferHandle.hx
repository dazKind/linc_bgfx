package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('bgfx_dynamic_vertex_buffer_handle_t')
extern class Native_DynamicVertexBufferHandle {
    public function new();
    var idx:cpp.UInt16; // uint16
}
#if (scriptable || cppia)
    class CppiaDynamicVertexBufferHandle {
        public var __ptr:cpp.Pointer<Native_DynamicVertexBufferHandle> = null;
        public var __inst:Native_DynamicVertexBufferHandle = new Native_DynamicVertexBufferHandle();
        public function new() {}
        
        public var idx(get, set):cpp.UInt16;
        function set_idx(_v:cpp.UInt16):cpp.UInt16 return __ptr == null ? __inst.idx = _v : __ptr.ref.idx = _v;
        function get_idx():cpp.UInt16 return __ptr == null ? __inst.idx : __ptr.ref.idx;
        
        
    }
    typedef DynamicVertexBufferHandle = CppiaDynamicVertexBufferHandle;
#else
    typedef DynamicVertexBufferHandle = Native_DynamicVertexBufferHandle;
#end



