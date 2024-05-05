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
    class CppiaEncoderStats {
        public var __ptr:cpp.Pointer<Native_EncoderStats> = null;
        public var __inst:Native_EncoderStats = new Native_EncoderStats();
        public function new() {}
        
        public var cpuTimeBegin(get, set):cpp.Int64;
        function set_cpuTimeBegin(_v:cpp.Int64):cpp.Int64 return __ptr == null ? __inst.cpuTimeBegin = _v : __ptr.ref.cpuTimeBegin = _v;
        function get_cpuTimeBegin():cpp.Int64 return __ptr == null ? __inst.cpuTimeBegin : __ptr.ref.cpuTimeBegin;
        
        public var cpuTimeEnd(get, set):cpp.Int64;
        function set_cpuTimeEnd(_v:cpp.Int64):cpp.Int64 return __ptr == null ? __inst.cpuTimeEnd = _v : __ptr.ref.cpuTimeEnd = _v;
        function get_cpuTimeEnd():cpp.Int64 return __ptr == null ? __inst.cpuTimeEnd : __ptr.ref.cpuTimeEnd;
        
        
    }
    typedef EncoderStats = CppiaEncoderStats;
#else
    typedef EncoderStats = Native_EncoderStats;
#end



