package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('bgfx_init_t')
extern class Native_Init {
    public function new();
    var type:bgfx.RendererType.Native_RendererType; // RendererType::Enum
    var vendorId:cpp.UInt16; // uint16_t
    var deviceId:cpp.UInt16; // uint16_t
    var capabilities:cpp.UInt64; // uint64_t
    var debug:Bool; // bool
    var profile:Bool; // bool
    var platformData:bgfx.PlatformData.Native_PlatformData; // PlatformData
    var resolution:bgfx.Resolution.Native_Resolution; // Resolution
    var limits:bgfx.InitLimits.Native_InitLimits; // InitLimits
    var callback:cpp.Star<cpp.Void>; // CallbackI*
    var allocator:cpp.Star<cpp.Void>; // bx::AllocatorI*
}
#if (scriptable || cppia)
    class CppiaInit {
        public var __ptr:cpp.Pointer<Native_Init> = null;
        public var __inst:Native_Init = new Native_Init();
        public function new() {}
        
        public var type(get, set):RendererType;
        function set_type(_v:RendererType):RendererType { __inst.type = (cast _v:bgfx.RendererType.Native_RendererType); return _v; }
        function get_type():RendererType return cast(__inst.type, RendererType);
        
        public var vendorId(get, set):cpp.UInt16;
        function set_vendorId(_v:cpp.UInt16):cpp.UInt16 return __ptr == null ? __inst.vendorId = _v : __ptr.ref.vendorId = _v;
        function get_vendorId():cpp.UInt16 return __ptr == null ? __inst.vendorId : __ptr.ref.vendorId;
        
        public var deviceId(get, set):cpp.UInt16;
        function set_deviceId(_v:cpp.UInt16):cpp.UInt16 return __ptr == null ? __inst.deviceId = _v : __ptr.ref.deviceId = _v;
        function get_deviceId():cpp.UInt16 return __ptr == null ? __inst.deviceId : __ptr.ref.deviceId;
        
        public var capabilities(get, set):cpp.UInt64;
        function set_capabilities(_v:cpp.UInt64):cpp.UInt64 return __ptr == null ? __inst.capabilities = _v : __ptr.ref.capabilities = _v;
        function get_capabilities():cpp.UInt64 return __ptr == null ? __inst.capabilities : __ptr.ref.capabilities;
        
        public var debug(get, set):Bool;
        function set_debug(_v:Bool):Bool return __ptr == null ? __inst.debug = _v : __ptr.ref.debug = _v;
        function get_debug():Bool return __ptr == null ? __inst.debug : __ptr.ref.debug;
        
        public var profile(get, set):Bool;
        function set_profile(_v:Bool):Bool return __ptr == null ? __inst.profile = _v : __ptr.ref.profile = _v;
        function get_profile():Bool return __ptr == null ? __inst.profile : __ptr.ref.profile;
        
        public var platformData(get, set):PlatformData;
        function set_platformData(_v:PlatformData):PlatformData { __inst.platformData = _v.__inst; return _v; }
        function get_platformData():PlatformData { final res = Type.createEmptyInstance(PlatformData); res.__ptr = cpp.Pointer.addressOf(__inst.platformData); return res; }
        
        public var resolution(get, set):Resolution;
        function set_resolution(_v:Resolution):Resolution { __inst.resolution = _v.__inst; return _v; }
        function get_resolution():Resolution { final res = Type.createEmptyInstance(Resolution); res.__ptr = cpp.Pointer.addressOf(__inst.resolution); return res; }
        
        public var limits(get, set):InitLimits;
        function set_limits(_v:InitLimits):InitLimits { __inst.limits = _v.__inst; return _v; }
        function get_limits():InitLimits { final res = Type.createEmptyInstance(InitLimits); res.__ptr = cpp.Pointer.addressOf(__inst.limits); return res; }
        
        public var callback(get, set):cpp.Pointer<cpp.Void>;
        function set_callback(_v:cpp.Pointer<cpp.Void>):cpp.Pointer<cpp.Void> { return null; }
        function get_callback():cpp.Pointer<cpp.Void> { return cast __inst.callback; }
        
        public var allocator(get, set):cpp.Pointer<cpp.Void>;
        function set_allocator(_v:cpp.Pointer<cpp.Void>):cpp.Pointer<cpp.Void> { return null; }
        function get_allocator():cpp.Pointer<cpp.Void> { return cast __inst.allocator; }
        
        
    }
    typedef Init = CppiaInit;
#else
    typedef Init = Native_Init;
#end



