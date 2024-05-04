package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('null')
extern class Native_FrameBufferHandle {
    public function new();
    var idx:cpp.UInt16; // uint16
}
#if (scriptable || cppia)
    class FrameBufferHandle {
    }
#else
    typedef FrameBufferHandle = Native_FrameBufferHandle;
#end



