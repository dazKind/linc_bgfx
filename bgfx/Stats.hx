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
    class CppiaStats {
        public var __ptr:cpp.Pointer<Native_Stats> = null;
        public var __inst:Native_Stats = new Native_Stats();
        public function new() {}
        
        public var cpuTimeFrame(get, set):cpp.Int64;
        function set_cpuTimeFrame(_v:cpp.Int64):cpp.Int64 return __ptr == null ? __inst.cpuTimeFrame = _v : __ptr.ref.cpuTimeFrame = _v;
        function get_cpuTimeFrame():cpp.Int64 return __ptr == null ? __inst.cpuTimeFrame : __ptr.ref.cpuTimeFrame;
        
        public var cpuTimeBegin(get, set):cpp.Int64;
        function set_cpuTimeBegin(_v:cpp.Int64):cpp.Int64 return __ptr == null ? __inst.cpuTimeBegin = _v : __ptr.ref.cpuTimeBegin = _v;
        function get_cpuTimeBegin():cpp.Int64 return __ptr == null ? __inst.cpuTimeBegin : __ptr.ref.cpuTimeBegin;
        
        public var cpuTimeEnd(get, set):cpp.Int64;
        function set_cpuTimeEnd(_v:cpp.Int64):cpp.Int64 return __ptr == null ? __inst.cpuTimeEnd = _v : __ptr.ref.cpuTimeEnd = _v;
        function get_cpuTimeEnd():cpp.Int64 return __ptr == null ? __inst.cpuTimeEnd : __ptr.ref.cpuTimeEnd;
        
        public var cpuTimerFreq(get, set):cpp.Int64;
        function set_cpuTimerFreq(_v:cpp.Int64):cpp.Int64 return __ptr == null ? __inst.cpuTimerFreq = _v : __ptr.ref.cpuTimerFreq = _v;
        function get_cpuTimerFreq():cpp.Int64 return __ptr == null ? __inst.cpuTimerFreq : __ptr.ref.cpuTimerFreq;
        
        public var gpuTimeBegin(get, set):cpp.Int64;
        function set_gpuTimeBegin(_v:cpp.Int64):cpp.Int64 return __ptr == null ? __inst.gpuTimeBegin = _v : __ptr.ref.gpuTimeBegin = _v;
        function get_gpuTimeBegin():cpp.Int64 return __ptr == null ? __inst.gpuTimeBegin : __ptr.ref.gpuTimeBegin;
        
        public var gpuTimeEnd(get, set):cpp.Int64;
        function set_gpuTimeEnd(_v:cpp.Int64):cpp.Int64 return __ptr == null ? __inst.gpuTimeEnd = _v : __ptr.ref.gpuTimeEnd = _v;
        function get_gpuTimeEnd():cpp.Int64 return __ptr == null ? __inst.gpuTimeEnd : __ptr.ref.gpuTimeEnd;
        
        public var gpuTimerFreq(get, set):cpp.Int64;
        function set_gpuTimerFreq(_v:cpp.Int64):cpp.Int64 return __ptr == null ? __inst.gpuTimerFreq = _v : __ptr.ref.gpuTimerFreq = _v;
        function get_gpuTimerFreq():cpp.Int64 return __ptr == null ? __inst.gpuTimerFreq : __ptr.ref.gpuTimerFreq;
        
        public var waitRender(get, set):cpp.Int64;
        function set_waitRender(_v:cpp.Int64):cpp.Int64 return __ptr == null ? __inst.waitRender = _v : __ptr.ref.waitRender = _v;
        function get_waitRender():cpp.Int64 return __ptr == null ? __inst.waitRender : __ptr.ref.waitRender;
        
        public var waitSubmit(get, set):cpp.Int64;
        function set_waitSubmit(_v:cpp.Int64):cpp.Int64 return __ptr == null ? __inst.waitSubmit = _v : __ptr.ref.waitSubmit = _v;
        function get_waitSubmit():cpp.Int64 return __ptr == null ? __inst.waitSubmit : __ptr.ref.waitSubmit;
        
        public var numDraw(get, set):cpp.UInt32;
        function set_numDraw(_v:cpp.UInt32):cpp.UInt32 return __ptr == null ? __inst.numDraw = _v : __ptr.ref.numDraw = _v;
        function get_numDraw():cpp.UInt32 return __ptr == null ? __inst.numDraw : __ptr.ref.numDraw;
        
        public var numCompute(get, set):cpp.UInt32;
        function set_numCompute(_v:cpp.UInt32):cpp.UInt32 return __ptr == null ? __inst.numCompute = _v : __ptr.ref.numCompute = _v;
        function get_numCompute():cpp.UInt32 return __ptr == null ? __inst.numCompute : __ptr.ref.numCompute;
        
        public var numBlit(get, set):cpp.UInt32;
        function set_numBlit(_v:cpp.UInt32):cpp.UInt32 return __ptr == null ? __inst.numBlit = _v : __ptr.ref.numBlit = _v;
        function get_numBlit():cpp.UInt32 return __ptr == null ? __inst.numBlit : __ptr.ref.numBlit;
        
        public var maxGpuLatency(get, set):cpp.UInt32;
        function set_maxGpuLatency(_v:cpp.UInt32):cpp.UInt32 return __ptr == null ? __inst.maxGpuLatency = _v : __ptr.ref.maxGpuLatency = _v;
        function get_maxGpuLatency():cpp.UInt32 return __ptr == null ? __inst.maxGpuLatency : __ptr.ref.maxGpuLatency;
        
        public var gpuFrameNum(get, set):cpp.UInt32;
        function set_gpuFrameNum(_v:cpp.UInt32):cpp.UInt32 return __ptr == null ? __inst.gpuFrameNum = _v : __ptr.ref.gpuFrameNum = _v;
        function get_gpuFrameNum():cpp.UInt32 return __ptr == null ? __inst.gpuFrameNum : __ptr.ref.gpuFrameNum;
        
        public var numDynamicIndexBuffers(get, set):cpp.UInt16;
        function set_numDynamicIndexBuffers(_v:cpp.UInt16):cpp.UInt16 return __ptr == null ? __inst.numDynamicIndexBuffers = _v : __ptr.ref.numDynamicIndexBuffers = _v;
        function get_numDynamicIndexBuffers():cpp.UInt16 return __ptr == null ? __inst.numDynamicIndexBuffers : __ptr.ref.numDynamicIndexBuffers;
        
        public var numDynamicVertexBuffers(get, set):cpp.UInt16;
        function set_numDynamicVertexBuffers(_v:cpp.UInt16):cpp.UInt16 return __ptr == null ? __inst.numDynamicVertexBuffers = _v : __ptr.ref.numDynamicVertexBuffers = _v;
        function get_numDynamicVertexBuffers():cpp.UInt16 return __ptr == null ? __inst.numDynamicVertexBuffers : __ptr.ref.numDynamicVertexBuffers;
        
        public var numFrameBuffers(get, set):cpp.UInt16;
        function set_numFrameBuffers(_v:cpp.UInt16):cpp.UInt16 return __ptr == null ? __inst.numFrameBuffers = _v : __ptr.ref.numFrameBuffers = _v;
        function get_numFrameBuffers():cpp.UInt16 return __ptr == null ? __inst.numFrameBuffers : __ptr.ref.numFrameBuffers;
        
        public var numIndexBuffers(get, set):cpp.UInt16;
        function set_numIndexBuffers(_v:cpp.UInt16):cpp.UInt16 return __ptr == null ? __inst.numIndexBuffers = _v : __ptr.ref.numIndexBuffers = _v;
        function get_numIndexBuffers():cpp.UInt16 return __ptr == null ? __inst.numIndexBuffers : __ptr.ref.numIndexBuffers;
        
        public var numOcclusionQueries(get, set):cpp.UInt16;
        function set_numOcclusionQueries(_v:cpp.UInt16):cpp.UInt16 return __ptr == null ? __inst.numOcclusionQueries = _v : __ptr.ref.numOcclusionQueries = _v;
        function get_numOcclusionQueries():cpp.UInt16 return __ptr == null ? __inst.numOcclusionQueries : __ptr.ref.numOcclusionQueries;
        
        public var numPrograms(get, set):cpp.UInt16;
        function set_numPrograms(_v:cpp.UInt16):cpp.UInt16 return __ptr == null ? __inst.numPrograms = _v : __ptr.ref.numPrograms = _v;
        function get_numPrograms():cpp.UInt16 return __ptr == null ? __inst.numPrograms : __ptr.ref.numPrograms;
        
        public var numShaders(get, set):cpp.UInt16;
        function set_numShaders(_v:cpp.UInt16):cpp.UInt16 return __ptr == null ? __inst.numShaders = _v : __ptr.ref.numShaders = _v;
        function get_numShaders():cpp.UInt16 return __ptr == null ? __inst.numShaders : __ptr.ref.numShaders;
        
        public var numTextures(get, set):cpp.UInt16;
        function set_numTextures(_v:cpp.UInt16):cpp.UInt16 return __ptr == null ? __inst.numTextures = _v : __ptr.ref.numTextures = _v;
        function get_numTextures():cpp.UInt16 return __ptr == null ? __inst.numTextures : __ptr.ref.numTextures;
        
        public var numUniforms(get, set):cpp.UInt16;
        function set_numUniforms(_v:cpp.UInt16):cpp.UInt16 return __ptr == null ? __inst.numUniforms = _v : __ptr.ref.numUniforms = _v;
        function get_numUniforms():cpp.UInt16 return __ptr == null ? __inst.numUniforms : __ptr.ref.numUniforms;
        
        public var numVertexBuffers(get, set):cpp.UInt16;
        function set_numVertexBuffers(_v:cpp.UInt16):cpp.UInt16 return __ptr == null ? __inst.numVertexBuffers = _v : __ptr.ref.numVertexBuffers = _v;
        function get_numVertexBuffers():cpp.UInt16 return __ptr == null ? __inst.numVertexBuffers : __ptr.ref.numVertexBuffers;
        
        public var numVertexLayouts(get, set):cpp.UInt16;
        function set_numVertexLayouts(_v:cpp.UInt16):cpp.UInt16 return __ptr == null ? __inst.numVertexLayouts = _v : __ptr.ref.numVertexLayouts = _v;
        function get_numVertexLayouts():cpp.UInt16 return __ptr == null ? __inst.numVertexLayouts : __ptr.ref.numVertexLayouts;
        
        public var textureMemoryUsed(get, set):cpp.Int64;
        function set_textureMemoryUsed(_v:cpp.Int64):cpp.Int64 return __ptr == null ? __inst.textureMemoryUsed = _v : __ptr.ref.textureMemoryUsed = _v;
        function get_textureMemoryUsed():cpp.Int64 return __ptr == null ? __inst.textureMemoryUsed : __ptr.ref.textureMemoryUsed;
        
        public var rtMemoryUsed(get, set):cpp.Int64;
        function set_rtMemoryUsed(_v:cpp.Int64):cpp.Int64 return __ptr == null ? __inst.rtMemoryUsed = _v : __ptr.ref.rtMemoryUsed = _v;
        function get_rtMemoryUsed():cpp.Int64 return __ptr == null ? __inst.rtMemoryUsed : __ptr.ref.rtMemoryUsed;
        
        public var transientVbUsed(get, set):cpp.Int32;
        function set_transientVbUsed(_v:cpp.Int32):cpp.Int32 return __ptr == null ? __inst.transientVbUsed = _v : __ptr.ref.transientVbUsed = _v;
        function get_transientVbUsed():cpp.Int32 return __ptr == null ? __inst.transientVbUsed : __ptr.ref.transientVbUsed;
        
        public var transientIbUsed(get, set):cpp.Int32;
        function set_transientIbUsed(_v:cpp.Int32):cpp.Int32 return __ptr == null ? __inst.transientIbUsed = _v : __ptr.ref.transientIbUsed = _v;
        function get_transientIbUsed():cpp.Int32 return __ptr == null ? __inst.transientIbUsed : __ptr.ref.transientIbUsed;
        
        public var numPrims(get, set):cpp.Pointer<cpp.UInt32>;
        function set_numPrims(_v:cpp.Pointer<cpp.UInt32>):cpp.Pointer<cpp.UInt32> return null;
        function get_numPrims():cpp.Pointer<cpp.UInt32> {
            if (__ptr == null) return cpp.Pointer.fromRaw(__inst.numPrims);
            else return cpp.Pointer.fromRaw(__ptr.ref.numPrims);
        }
        
        public var gpuMemoryMax(get, set):cpp.Int64;
        function set_gpuMemoryMax(_v:cpp.Int64):cpp.Int64 return __ptr == null ? __inst.gpuMemoryMax = _v : __ptr.ref.gpuMemoryMax = _v;
        function get_gpuMemoryMax():cpp.Int64 return __ptr == null ? __inst.gpuMemoryMax : __ptr.ref.gpuMemoryMax;
        
        public var gpuMemoryUsed(get, set):cpp.Int64;
        function set_gpuMemoryUsed(_v:cpp.Int64):cpp.Int64 return __ptr == null ? __inst.gpuMemoryUsed = _v : __ptr.ref.gpuMemoryUsed = _v;
        function get_gpuMemoryUsed():cpp.Int64 return __ptr == null ? __inst.gpuMemoryUsed : __ptr.ref.gpuMemoryUsed;
        
        public var width(get, set):cpp.UInt16;
        function set_width(_v:cpp.UInt16):cpp.UInt16 return __ptr == null ? __inst.width = _v : __ptr.ref.width = _v;
        function get_width():cpp.UInt16 return __ptr == null ? __inst.width : __ptr.ref.width;
        
        public var height(get, set):cpp.UInt16;
        function set_height(_v:cpp.UInt16):cpp.UInt16 return __ptr == null ? __inst.height = _v : __ptr.ref.height = _v;
        function get_height():cpp.UInt16 return __ptr == null ? __inst.height : __ptr.ref.height;
        
        public var textWidth(get, set):cpp.UInt16;
        function set_textWidth(_v:cpp.UInt16):cpp.UInt16 return __ptr == null ? __inst.textWidth = _v : __ptr.ref.textWidth = _v;
        function get_textWidth():cpp.UInt16 return __ptr == null ? __inst.textWidth : __ptr.ref.textWidth;
        
        public var textHeight(get, set):cpp.UInt16;
        function set_textHeight(_v:cpp.UInt16):cpp.UInt16 return __ptr == null ? __inst.textHeight = _v : __ptr.ref.textHeight = _v;
        function get_textHeight():cpp.UInt16 return __ptr == null ? __inst.textHeight : __ptr.ref.textHeight;
        
        public var numViews(get, set):cpp.UInt16;
        function set_numViews(_v:cpp.UInt16):cpp.UInt16 return __ptr == null ? __inst.numViews = _v : __ptr.ref.numViews = _v;
        function get_numViews():cpp.UInt16 return __ptr == null ? __inst.numViews : __ptr.ref.numViews;
        
        public var viewStats(get, set):ViewStats;
        function set_viewStats(_v:ViewStats):ViewStats { return null; }
        function get_viewStats():ViewStats { final res = Type.createEmptyInstance(ViewStats); res.__inst = cpp.Pointer.fromStar(__inst.viewStats).ref; return res; }
        
        public var numEncoders(get, set):cpp.UInt8;
        function set_numEncoders(_v:cpp.UInt8):cpp.UInt8 return __ptr == null ? __inst.numEncoders = _v : __ptr.ref.numEncoders = _v;
        function get_numEncoders():cpp.UInt8 return __ptr == null ? __inst.numEncoders : __ptr.ref.numEncoders;
        
        public var encoderStats(get, set):EncoderStats;
        function set_encoderStats(_v:EncoderStats):EncoderStats { return null; }
        function get_encoderStats():EncoderStats { final res = Type.createEmptyInstance(EncoderStats); res.__inst = cpp.Pointer.fromStar(__inst.encoderStats).ref; return res; }
        
        
    }
    typedef Stats = CppiaStats;
#else
    typedef Stats = Native_Stats;
#end



