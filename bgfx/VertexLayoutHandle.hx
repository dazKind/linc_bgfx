package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('bgfx_vertex_layout_handle_t')
extern class Native_VertexLayoutHandle {
    public function new();
    var idx:cpp.UInt16; // uint16
}
#if (scriptable || cppia)
    class CppiaVertexLayoutHandle {
        public var __ptr:cpp.Pointer<Native_VertexLayoutHandle> = null;
        public var __inst:Native_VertexLayoutHandle = new Native_VertexLayoutHandle();
        public function new() {}
        
        public var idx(get, set):cpp.UInt16;
        function set_idx(_v:cpp.UInt16):cpp.UInt16 return __ptr == null ? __inst.idx = _v : __ptr.ref.idx = _v;
        function get_idx():cpp.UInt16 return __ptr == null ? __inst.idx : __ptr.ref.idx;
        
        
    }
    typedef VertexLayoutHandle = CppiaVertexLayoutHandle;
#else
    typedef VertexLayoutHandle = Native_VertexLayoutHandle;
#end



