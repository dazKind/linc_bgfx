package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('bgfx_occlusion_query_handle_t')
extern class Native_OcclusionQueryHandle {
    public function new();
    var idx:cpp.UInt16; // uint16
}
#if (scriptable || cppia)
    class CppiaOcclusionQueryHandle {
        public var __ptr:cpp.Pointer<Native_OcclusionQueryHandle> = null;
        public var __inst:Native_OcclusionQueryHandle = new Native_OcclusionQueryHandle();
        public function new() {}
        
        public var idx(get, set):cpp.UInt16;
        function set_idx(_v:cpp.UInt16):cpp.UInt16 return __ptr == null ? __inst.idx = _v : __ptr.ref.idx = _v;
        function get_idx():cpp.UInt16 return __ptr == null ? __inst.idx : __ptr.ref.idx;
        
        
    }
    typedef OcclusionQueryHandle = CppiaOcclusionQueryHandle;
#else
    typedef OcclusionQueryHandle = Native_OcclusionQueryHandle;
#end



