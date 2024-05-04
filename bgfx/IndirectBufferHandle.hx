package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('null')
extern class Native_IndirectBufferHandle {
    public function new();
    var idx:cpp.UInt16; // uint16
}
#if (scriptable || cppia)
    class IndirectBufferHandle {
    }
#else
    typedef IndirectBufferHandle = Native_IndirectBufferHandle;
#end



