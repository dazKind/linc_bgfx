package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('null')
extern class Native_DynamicIndexBufferHandle {
    public function new();
    var idx:cpp.UInt16; // uint16
}
#if (scriptable || cppia)
    class DynamicIndexBufferHandle {
    }
#else
    typedef DynamicIndexBufferHandle = Native_DynamicIndexBufferHandle;
#end



