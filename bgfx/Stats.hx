package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('bgfx_stats_t')
extern class Native_Stats {
    public function new();
    var cpuTimeFrame:cpp.Int64; // int64_t
    var cpuTimeBegin:cpp.Int64; // int64_t
    var cpuTimeEnd:cpp.Int64; // int64_t
    var cpuTimerFreq:cpp.Int64; // int64_t
    var gpuTimeBegin:cpp.Int64; // int64_t
    var gpuTimeEnd:cpp.Int64; // int64_t
    var gpuTimerFreq:cpp.Int64; // int64_t
    var waitRender:cpp.Int64; // int64_t
    var waitSubmit:cpp.Int64; // int64_t
    var numDraw:cpp.UInt32; // uint32_t
    var numCompute:cpp.UInt32; // uint32_t
    var numBlit:cpp.UInt32; // uint32_t
    var maxGpuLatency:cpp.UInt32; // uint32_t
    var gpuFrameNum:cpp.UInt32; // uint32_t
    var numDynamicIndexBuffers:cpp.UInt16; // uint16_t
    var numDynamicVertexBuffers:cpp.UInt16; // uint16_t
    var numFrameBuffers:cpp.UInt16; // uint16_t
    var numIndexBuffers:cpp.UInt16; // uint16_t
    var numOcclusionQueries:cpp.UInt16; // uint16_t
    var numPrograms:cpp.UInt16; // uint16_t
    var numShaders:cpp.UInt16; // uint16_t
    var numTextures:cpp.UInt16; // uint16_t
    var numUniforms:cpp.UInt16; // uint16_t
    var numVertexBuffers:cpp.UInt16; // uint16_t
    var numVertexLayouts:cpp.UInt16; // uint16_t
    var textureMemoryUsed:cpp.Int64; // int64_t
    var rtMemoryUsed:cpp.Int64; // int64_t
    var transientVbUsed:cpp.Int32; // int32_t
    var transientIbUsed:cpp.Int32; // int32_t
    var numPrims:cpp.RawPointer<cpp.UInt32>; // uint32_t[5]
    var gpuMemoryMax:cpp.Int64; // int64_t
    var gpuMemoryUsed:cpp.Int64; // int64_t
    var width:cpp.UInt16; // uint16_t
    var height:cpp.UInt16; // uint16_t
    var textWidth:cpp.UInt16; // uint16_t
    var textHeight:cpp.UInt16; // uint16_t
    var numViews:cpp.UInt16; // uint16_t
    var viewStats:cpp.Star<bgfx.ViewStats.Native_ViewStats>; // ViewStats*
    var numEncoders:cpp.UInt8; // uint8_t
    var encoderStats:cpp.Star<bgfx.EncoderStats.Native_EncoderStats>; // EncoderStats*
}
#if (scriptable || cppia)
    class Stats {
    }
#else
    typedef Stats = Native_Stats;
#end



