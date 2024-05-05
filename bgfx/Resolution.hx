package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('bgfx_resolution_t')
extern class Native_Resolution {
    public function new();
    var format:bgfx.TextureFormat.Native_TextureFormat; // TextureFormat::Enum
    var width:cpp.UInt32; // uint32_t
    var height:cpp.UInt32; // uint32_t
    var reset:cpp.UInt32; // uint32_t
    var numBackBuffers:cpp.UInt8; // uint8_t
    var maxFrameLatency:cpp.UInt8; // uint8_t
    var debugTextScale:cpp.UInt8; // uint8_t
}
#if (scriptable || cppia)
    class CppiaResolution {
        public var __ptr:cpp.Pointer<Native_Resolution> = null;
        public var __inst:Native_Resolution = new Native_Resolution();
        public function new() {}
        
        public var format(get, set):TextureFormat;
        function set_format(_v:TextureFormat):TextureFormat { __inst.format = (cast _v:bgfx.TextureFormat.Native_TextureFormat); return _v; }
        function get_format():TextureFormat return cast(__inst.format, TextureFormat);
        
        public var width(get, set):cpp.UInt32;
        function set_width(_v:cpp.UInt32):cpp.UInt32 return __ptr == null ? __inst.width = _v : __ptr.ref.width = _v;
        function get_width():cpp.UInt32 return __ptr == null ? __inst.width : __ptr.ref.width;
        
        public var height(get, set):cpp.UInt32;
        function set_height(_v:cpp.UInt32):cpp.UInt32 return __ptr == null ? __inst.height = _v : __ptr.ref.height = _v;
        function get_height():cpp.UInt32 return __ptr == null ? __inst.height : __ptr.ref.height;
        
        public var reset(get, set):cpp.UInt32;
        function set_reset(_v:cpp.UInt32):cpp.UInt32 return __ptr == null ? __inst.reset = _v : __ptr.ref.reset = _v;
        function get_reset():cpp.UInt32 return __ptr == null ? __inst.reset : __ptr.ref.reset;
        
        public var numBackBuffers(get, set):cpp.UInt8;
        function set_numBackBuffers(_v:cpp.UInt8):cpp.UInt8 return __ptr == null ? __inst.numBackBuffers = _v : __ptr.ref.numBackBuffers = _v;
        function get_numBackBuffers():cpp.UInt8 return __ptr == null ? __inst.numBackBuffers : __ptr.ref.numBackBuffers;
        
        public var maxFrameLatency(get, set):cpp.UInt8;
        function set_maxFrameLatency(_v:cpp.UInt8):cpp.UInt8 return __ptr == null ? __inst.maxFrameLatency = _v : __ptr.ref.maxFrameLatency = _v;
        function get_maxFrameLatency():cpp.UInt8 return __ptr == null ? __inst.maxFrameLatency : __ptr.ref.maxFrameLatency;
        
        public var debugTextScale(get, set):cpp.UInt8;
        function set_debugTextScale(_v:cpp.UInt8):cpp.UInt8 return __ptr == null ? __inst.debugTextScale = _v : __ptr.ref.debugTextScale = _v;
        function get_debugTextScale():cpp.UInt8 return __ptr == null ? __inst.debugTextScale : __ptr.ref.debugTextScale;
        
        
    }
    typedef Resolution = CppiaResolution;
#else
    typedef Resolution = Native_Resolution;
#end



