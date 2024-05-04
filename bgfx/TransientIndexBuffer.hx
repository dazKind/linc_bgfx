package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('bgfx_transient_index_buffer_t')
extern class Native_TransientIndexBuffer {
    public function new();
    var data:cpp.RawPointer<cpp.UInt8>; // uint8_t*
    var size:cpp.UInt32; // uint32_t
    var startIndex:cpp.UInt32; // uint32_t
    var handle:bgfx.IndexBufferHandle.Native_IndexBufferHandle; // IndexBufferHandle
    var isIndex16:Bool; // bool
}
#if (scriptable || cppia)
    class TransientIndexBuffer {
    }
#else
    typedef TransientIndexBuffer = Native_TransientIndexBuffer;
#end



