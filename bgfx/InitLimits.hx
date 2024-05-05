package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('bgfx_init_limits_t')
extern class Native_InitLimits {
    public function new();
    var maxEncoders:cpp.UInt16; // uint16_t
    var minResourceCbSize:cpp.UInt32; // uint32_t
    var transientVbSize:cpp.UInt32; // uint32_t
    var transientIbSize:cpp.UInt32; // uint32_t
}
#if (scriptable || cppia)
    class CppiaInitLimits {
        public var __ptr:cpp.Pointer<Native_InitLimits> = null;
        public var __inst:Native_InitLimits = new Native_InitLimits();
        public function new() {}
        
        public var maxEncoders(get, set):cpp.UInt16;
        function set_maxEncoders(_v:cpp.UInt16):cpp.UInt16 return __ptr == null ? __inst.maxEncoders = _v : __ptr.ref.maxEncoders = _v;
        function get_maxEncoders():cpp.UInt16 return __ptr == null ? __inst.maxEncoders : __ptr.ref.maxEncoders;
        
        public var minResourceCbSize(get, set):cpp.UInt32;
        function set_minResourceCbSize(_v:cpp.UInt32):cpp.UInt32 return __ptr == null ? __inst.minResourceCbSize = _v : __ptr.ref.minResourceCbSize = _v;
        function get_minResourceCbSize():cpp.UInt32 return __ptr == null ? __inst.minResourceCbSize : __ptr.ref.minResourceCbSize;
        
        public var transientVbSize(get, set):cpp.UInt32;
        function set_transientVbSize(_v:cpp.UInt32):cpp.UInt32 return __ptr == null ? __inst.transientVbSize = _v : __ptr.ref.transientVbSize = _v;
        function get_transientVbSize():cpp.UInt32 return __ptr == null ? __inst.transientVbSize : __ptr.ref.transientVbSize;
        
        public var transientIbSize(get, set):cpp.UInt32;
        function set_transientIbSize(_v:cpp.UInt32):cpp.UInt32 return __ptr == null ? __inst.transientIbSize = _v : __ptr.ref.transientIbSize = _v;
        function get_transientIbSize():cpp.UInt32 return __ptr == null ? __inst.transientIbSize : __ptr.ref.transientIbSize;
        
        
    }
    typedef InitLimits = CppiaInitLimits;
#else
    typedef InitLimits = Native_InitLimits;
#end



