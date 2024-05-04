package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('bgfx_memory_t')
extern class Native_Memory {
    public function new();
    var data:cpp.RawPointer<cpp.UInt8>; // uint8_t*
    var size:cpp.UInt32; // uint32_t
}
#if (scriptable || cppia)
    class Memory {
    }
#else
    typedef Memory = Native_Memory;
#end



