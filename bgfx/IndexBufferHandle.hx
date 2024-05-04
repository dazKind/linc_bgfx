package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('null')
extern class Native_IndexBufferHandle {
    public function new();
    var idx:cpp.UInt16; // uint16
}
#if (scriptable || cppia)
    class IndexBufferHandle {
    }
#else
    typedef IndexBufferHandle = Native_IndexBufferHandle;
#end



