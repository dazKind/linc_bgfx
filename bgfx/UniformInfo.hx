package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('bgfx_uniform_info_t')
extern class Native_UniformInfo {
    public function new();
    var name:cpp.RawPointer<cpp.Char>; // char[256]
    var type:bgfx.UniformType.Native_UniformType; // UniformType::Enum
    var num:cpp.UInt16; // uint16_t
}
#if (scriptable || cppia)
    class UniformInfo {
    }
#else
    typedef UniformInfo = Native_UniformInfo;
#end



