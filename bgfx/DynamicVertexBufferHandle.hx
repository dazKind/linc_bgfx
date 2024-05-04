package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('null')
extern class Native_DynamicVertexBufferHandle {
    public function new();
    var idx:cpp.UInt16; // uint16
}
#if (scriptable || cppia)
    class DynamicVertexBufferHandle {
    }
#else
    typedef DynamicVertexBufferHandle = Native_DynamicVertexBufferHandle;
#end



