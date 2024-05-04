package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('null')
extern class Native_OcclusionQueryHandle {
    public function new();
    var idx:cpp.UInt16; // uint16
}
#if (scriptable || cppia)
    class OcclusionQueryHandle {
    }
#else
    typedef OcclusionQueryHandle = Native_OcclusionQueryHandle;
#end



