package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('null')
extern class Native_VertexBufferHandle {
    public function new();
    var idx:cpp.UInt16; // uint16
}
#if (scriptable || cppia)
    class VertexBufferHandle {
    }
#else
    typedef VertexBufferHandle = Native_VertexBufferHandle;
#end



