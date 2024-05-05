package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('bgfx_frame_buffer_handle_t')
extern class Native_FrameBufferHandle {
    public function new();
    var idx:cpp.UInt16; // uint16
}
#if (scriptable || cppia)
    class CppiaFrameBufferHandle {
        public var __ptr:cpp.Pointer<Native_FrameBufferHandle> = null;
        public var __inst:Native_FrameBufferHandle = new Native_FrameBufferHandle();
        public function new() {}
        
        public var idx(get, set):cpp.UInt16;
        function set_idx(_v:cpp.UInt16):cpp.UInt16 return __ptr == null ? __inst.idx = _v : __ptr.ref.idx = _v;
        function get_idx():cpp.UInt16 return __ptr == null ? __inst.idx : __ptr.ref.idx;
        
        
    }
    typedef FrameBufferHandle = CppiaFrameBufferHandle;
#else
    typedef FrameBufferHandle = Native_FrameBufferHandle;
#end



