package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('bgfx_transient_vertex_buffer_t')
extern class Native_TransientVertexBuffer {
    public function new();
    var data:cpp.RawPointer<cpp.UInt8>; // uint8_t*
    var size:cpp.UInt32; // uint32_t
    var startVertex:cpp.UInt32; // uint32_t
    var stride:cpp.UInt16; // uint16_t
    var handle:bgfx.VertexBufferHandle.Native_VertexBufferHandle; // VertexBufferHandle
    var layoutHandle:bgfx.VertexLayoutHandle.Native_VertexLayoutHandle; // VertexLayoutHandle
}
#if (scriptable || cppia)
    class TransientVertexBuffer {
    }
#else
    typedef TransientVertexBuffer = Native_TransientVertexBuffer;
#end



