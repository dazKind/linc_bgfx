package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('null')
extern class Native_ProgramHandle {
    public function new();
    var idx:cpp.UInt16; // uint16
}
#if (scriptable || cppia)
    class ProgramHandle {
    }
#else
    typedef ProgramHandle = Native_ProgramHandle;
#end



