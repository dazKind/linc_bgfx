package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('bgfx_transient_vertex_buffer_t')
extern class Native_TransientVertexBuffer {
    public function new();
    var data:cpp.Star<cpp.UInt8>; // uint8_t*
    var size:cpp.UInt32; // uint32_t
    var startVertex:cpp.UInt32; // uint32_t
    var stride:cpp.UInt16; // uint16_t
    var handle:bgfx.VertexBufferHandle.Native_VertexBufferHandle; // VertexBufferHandle
    var layoutHandle:bgfx.VertexLayoutHandle.Native_VertexLayoutHandle; // VertexLayoutHandle
}
#if (scriptable || cppia)
    class CppiaTransientVertexBuffer {
        public var __ptr:cpp.Pointer<Native_TransientVertexBuffer> = null;
        public var __inst:Native_TransientVertexBuffer = new Native_TransientVertexBuffer();
        public function new() {}
        
        public var data(get, set):cpp.Pointer<cpp.UInt8>;
        function set_data(_v:cpp.Pointer<cpp.UInt8>):cpp.Pointer<cpp.UInt8> return __ptr == null ? cast __inst.data = cast _v : cast __ptr.ref.data = cast _v;
        function get_data():cpp.Pointer<cpp.UInt8> return __ptr == null ? cast __inst.data : cast __ptr.ref.data;
        
        public var size(get, set):cpp.UInt32;
        function set_size(_v:cpp.UInt32):cpp.UInt32 return __ptr == null ? __inst.size = _v : __ptr.ref.size = _v;
        function get_size():cpp.UInt32 return __ptr == null ? __inst.size : __ptr.ref.size;
        
        public var startVertex(get, set):cpp.UInt32;
        function set_startVertex(_v:cpp.UInt32):cpp.UInt32 return __ptr == null ? __inst.startVertex = _v : __ptr.ref.startVertex = _v;
        function get_startVertex():cpp.UInt32 return __ptr == null ? __inst.startVertex : __ptr.ref.startVertex;
        
        public var stride(get, set):cpp.UInt16;
        function set_stride(_v:cpp.UInt16):cpp.UInt16 return __ptr == null ? __inst.stride = _v : __ptr.ref.stride = _v;
        function get_stride():cpp.UInt16 return __ptr == null ? __inst.stride : __ptr.ref.stride;
        
        public var handle(get, set):VertexBufferHandle;
        function set_handle(_v:VertexBufferHandle):VertexBufferHandle { __inst.handle = _v.__inst; return _v; }
        function get_handle():VertexBufferHandle { final res = Type.createEmptyInstance(VertexBufferHandle); res.__ptr = cpp.Pointer.addressOf(__inst.handle); return res; }
        
        public var layoutHandle(get, set):VertexLayoutHandle;
        function set_layoutHandle(_v:VertexLayoutHandle):VertexLayoutHandle { __inst.layoutHandle = _v.__inst; return _v; }
        function get_layoutHandle():VertexLayoutHandle { final res = Type.createEmptyInstance(VertexLayoutHandle); res.__ptr = cpp.Pointer.addressOf(__inst.layoutHandle); return res; }
        
        
    }
    typedef TransientVertexBuffer = CppiaTransientVertexBuffer;
#else
    typedef TransientVertexBuffer = Native_TransientVertexBuffer;
#end



