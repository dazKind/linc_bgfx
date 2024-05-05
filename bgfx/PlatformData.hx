package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('bgfx_platform_data_t')
extern class Native_PlatformData {
    public function new();
    var ndt:cpp.Star<cpp.Void>; // void*
    var nwh:cpp.Star<cpp.Void>; // void*
    var context:cpp.Star<cpp.Void>; // void*
    var backBuffer:cpp.Star<cpp.Void>; // void*
    var backBufferDS:cpp.Star<cpp.Void>; // void*
    var type:bgfx.NativeWindowHandleType.Native_NativeWindowHandleType; // NativeWindowHandleType::Enum
}
#if (scriptable || cppia)
    class CppiaPlatformData {
        public var __ptr:cpp.Pointer<Native_PlatformData> = null;
        public var __inst:Native_PlatformData = new Native_PlatformData();
        public function new() {}
        
        public var ndt(get, set):cpp.Pointer<cpp.Void>;
        function set_ndt(_v:cpp.Pointer<cpp.Void>):cpp.Pointer<cpp.Void> return __ptr == null ? cast __inst.ndt = cast _v : cast __ptr.ref.ndt = cast _v;
        function get_ndt():cpp.Pointer<cpp.Void> return __ptr == null ? cast __inst.ndt : cast __ptr.ref.ndt;
        
        public var nwh(get, set):cpp.Pointer<cpp.Void>;
        function set_nwh(_v:cpp.Pointer<cpp.Void>):cpp.Pointer<cpp.Void> return __ptr == null ? cast __inst.nwh = cast _v : cast __ptr.ref.nwh = cast _v;
        function get_nwh():cpp.Pointer<cpp.Void> return __ptr == null ? cast __inst.nwh : cast __ptr.ref.nwh;
        
        public var context(get, set):cpp.Pointer<cpp.Void>;
        function set_context(_v:cpp.Pointer<cpp.Void>):cpp.Pointer<cpp.Void> return __ptr == null ? cast __inst.context = cast _v : cast __ptr.ref.context = cast _v;
        function get_context():cpp.Pointer<cpp.Void> return __ptr == null ? cast __inst.context : cast __ptr.ref.context;
        
        public var backBuffer(get, set):cpp.Pointer<cpp.Void>;
        function set_backBuffer(_v:cpp.Pointer<cpp.Void>):cpp.Pointer<cpp.Void> return __ptr == null ? cast __inst.backBuffer = cast _v : cast __ptr.ref.backBuffer = cast _v;
        function get_backBuffer():cpp.Pointer<cpp.Void> return __ptr == null ? cast __inst.backBuffer : cast __ptr.ref.backBuffer;
        
        public var backBufferDS(get, set):cpp.Pointer<cpp.Void>;
        function set_backBufferDS(_v:cpp.Pointer<cpp.Void>):cpp.Pointer<cpp.Void> return __ptr == null ? cast __inst.backBufferDS = cast _v : cast __ptr.ref.backBufferDS = cast _v;
        function get_backBufferDS():cpp.Pointer<cpp.Void> return __ptr == null ? cast __inst.backBufferDS : cast __ptr.ref.backBufferDS;
        
        public var type(get, set):NativeWindowHandleType;
        function set_type(_v:NativeWindowHandleType):NativeWindowHandleType { __inst.type = (cast _v:bgfx.NativeWindowHandleType.Native_NativeWindowHandleType); return _v; }
        function get_type():NativeWindowHandleType return cast(__inst.type, NativeWindowHandleType);
        
        
    }
    typedef PlatformData = CppiaPlatformData;
#else
    typedef PlatformData = Native_PlatformData;
#end



