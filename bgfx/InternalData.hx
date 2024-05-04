package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('bgfx_internal_data_t')
extern class Native_InternalData {
    public function new();
    var caps:cpp.ConstStar<bgfx.Caps.Native_Caps>; // const Caps*
    var context:cpp.RawPointer<cpp.Void>; // void*
}
#if (scriptable || cppia)
    class InternalData {
    }
#else
    typedef InternalData = Native_InternalData;
#end



