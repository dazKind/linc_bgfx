package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('bgfx_encoder_stats_t')
extern class Native_EncoderStats {
    public function new();
    var cpuTimeBegin:cpp.Int64; // int64_t
    var cpuTimeEnd:cpp.Int64; // int64_t
}
#if (scriptable || cppia)
    class EncoderStats {
    }
#else
    typedef EncoderStats = Native_EncoderStats;
#end



