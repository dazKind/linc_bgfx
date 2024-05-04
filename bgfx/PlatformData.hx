package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('bgfx_platform_data_t')
extern class Native_PlatformData {
    public function new();
    var ndt:cpp.RawPointer<cpp.Void>; // void*
    var nwh:cpp.RawPointer<cpp.Void>; // void*
    var context:cpp.RawPointer<cpp.Void>; // void*
    var backBuffer:cpp.RawPointer<cpp.Void>; // void*
    var backBufferDS:cpp.RawPointer<cpp.Void>; // void*
    var type:bgfx.NativeWindowHandleType.Native_NativeWindowHandleType; // NativeWindowHandleType::Enum
}
#if (scriptable || cppia)
    class PlatformData {
    }
#else
    typedef PlatformData = Native_PlatformData;
#end



