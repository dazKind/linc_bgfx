package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('bgfx_transform_t')
extern class Native_Transform {
    public function new();
    var data:cpp.RawPointer<cpp.Float32>; // float*
    var num:cpp.UInt16; // uint16_t
}
#if (scriptable || cppia)
    class Transform {
    }
#else
    typedef Transform = Native_Transform;
#end



