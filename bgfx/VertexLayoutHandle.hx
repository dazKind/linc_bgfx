package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('null')
extern class Native_VertexLayoutHandle {
    public function new();
    var idx:cpp.UInt16; // uint16
}
#if (scriptable || cppia)
    class VertexLayoutHandle {
    }
#else
    typedef VertexLayoutHandle = Native_VertexLayoutHandle;
#end



