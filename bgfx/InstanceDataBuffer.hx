package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('bgfx_instance_data_buffer_t')
extern class Native_InstanceDataBuffer {
    public function new();
    var data:cpp.RawPointer<cpp.UInt8>; // uint8_t*
    var size:cpp.UInt32; // uint32_t
    var offset:cpp.UInt32; // uint32_t
    var num:cpp.UInt32; // uint32_t
    var stride:cpp.UInt16; // uint16_t
    var handle:bgfx.VertexBufferHandle.Native_VertexBufferHandle; // VertexBufferHandle
}
#if (scriptable || cppia)
    class InstanceDataBuffer {
    }
#else
    typedef InstanceDataBuffer = Native_InstanceDataBuffer;
#end



