package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('bgfx_indirect_buffer_handle_t')
extern class Native_IndirectBufferHandle {
    public function new();
    var idx:cpp.UInt16; // uint16
}
#if (scriptable || cppia)
    class CppiaIndirectBufferHandle {
        public var __ptr:cpp.Pointer<Native_IndirectBufferHandle> = null;
        public var __inst:Native_IndirectBufferHandle = new Native_IndirectBufferHandle();
        public function new() {}
        
        public var idx(get, set):cpp.UInt16;
        function set_idx(_v:cpp.UInt16):cpp.UInt16 return __ptr == null ? __inst.idx = _v : __ptr.ref.idx = _v;
        function get_idx():cpp.UInt16 return __ptr == null ? __inst.idx : __ptr.ref.idx;
        
        
    }
    typedef IndirectBufferHandle = CppiaIndirectBufferHandle;
#else
    typedef IndirectBufferHandle = Native_IndirectBufferHandle;
#end



