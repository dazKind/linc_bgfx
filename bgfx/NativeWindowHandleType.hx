package bgfx;

@:unreflective
extern enum abstract Native_NativeWindowHandleType(Native_NativeWindowHandleTypeImpl) {
    /**
        Platform default handle type (X11 on Linux).
    **/
    @:native("bgfx_native_window_handle_type_t::BGFX_NATIVE_WINDOW_HANDLE_TYPE_DEFAULT")
    var Default;
    /**
        Wayland.
    **/
    @:native("bgfx_native_window_handle_type_t::BGFX_NATIVE_WINDOW_HANDLE_TYPE_WAYLAND")
    var Wayland;
    @:native("bgfx_native_window_handle_type_t::bgfx_native_window_handle_type_t::BGFX_NATIVE_WINDOW_HANDLE_TYPE_COUNT")
    var Count;
}
@:unreflective
@:native('bgfx_native_window_handle_type_t')
@:lincCppiaDef('NativeWindowHandleType', 'enum')
extern class Native_NativeWindowHandleTypeImpl { }
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapEnumExtern('Native_NativeWindowHandleType'))
    enum abstract NativeWindowHandleType(Int) from Int to Int {}
#else
    typedef NativeWindowHandleType = Native_NativeWindowHandleType;
#end
