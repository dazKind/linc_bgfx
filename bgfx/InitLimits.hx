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
    class InitLimits {
    }
#else
    typedef InitLimits = Native_InitLimits;
#end



