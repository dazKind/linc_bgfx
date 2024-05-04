package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('null')
extern class Native_ShaderHandle {
    public function new();
    var idx:cpp.UInt16; // uint16
}
#if (scriptable || cppia)
    class ShaderHandle {
    }
#else
    typedef ShaderHandle = Native_ShaderHandle;
#end



