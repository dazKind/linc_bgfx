package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('bgfx_view_stats_t')
extern class Native_ViewStats {
    public function new();
    var name:cpp.RawPointer<cpp.Char>; // char[256]
    var view:bgfx.ViewId; // ViewId
    var cpuTimeBegin:cpp.Int64; // int64_t
    var cpuTimeEnd:cpp.Int64; // int64_t
    var gpuTimeBegin:cpp.Int64; // int64_t
    var gpuTimeEnd:cpp.Int64; // int64_t
    var gpuFrameNum:cpp.UInt32; // uint32_t
}
#if (scriptable || cppia)
    class CppiaViewStats {
        public var __ptr:cpp.Pointer<Native_ViewStats> = null;
        public var __inst:Native_ViewStats = new Native_ViewStats();
        public function new() {}
        
        public var name(get, set):cpp.Pointer<cpp.Char>;
        function set_name(_v:cpp.Pointer<cpp.Char>):cpp.Pointer<cpp.Char> return null;
        function get_name():cpp.Pointer<cpp.Char> return __ptr == null ? cast __inst.name : cast __ptr.ref.name;
        
        
        public var cpuTimeBegin(get, set):cpp.Int64;
        function set_cpuTimeBegin(_v:cpp.Int64):cpp.Int64 return __ptr == null ? __inst.cpuTimeBegin = _v : __ptr.ref.cpuTimeBegin = _v;
        function get_cpuTimeBegin():cpp.Int64 return __ptr == null ? __inst.cpuTimeBegin : __ptr.ref.cpuTimeBegin;
        
        public var cpuTimeEnd(get, set):cpp.Int64;
        function set_cpuTimeEnd(_v:cpp.Int64):cpp.Int64 return __ptr == null ? __inst.cpuTimeEnd = _v : __ptr.ref.cpuTimeEnd = _v;
        function get_cpuTimeEnd():cpp.Int64 return __ptr == null ? __inst.cpuTimeEnd : __ptr.ref.cpuTimeEnd;
        
        public var gpuTimeBegin(get, set):cpp.Int64;
        function set_gpuTimeBegin(_v:cpp.Int64):cpp.Int64 return __ptr == null ? __inst.gpuTimeBegin = _v : __ptr.ref.gpuTimeBegin = _v;
        function get_gpuTimeBegin():cpp.Int64 return __ptr == null ? __inst.gpuTimeBegin : __ptr.ref.gpuTimeBegin;
        
        public var gpuTimeEnd(get, set):cpp.Int64;
        function set_gpuTimeEnd(_v:cpp.Int64):cpp.Int64 return __ptr == null ? __inst.gpuTimeEnd = _v : __ptr.ref.gpuTimeEnd = _v;
        function get_gpuTimeEnd():cpp.Int64 return __ptr == null ? __inst.gpuTimeEnd : __ptr.ref.gpuTimeEnd;
        
        public var gpuFrameNum(get, set):cpp.UInt32;
        function set_gpuFrameNum(_v:cpp.UInt32):cpp.UInt32 return __ptr == null ? __inst.gpuFrameNum = _v : __ptr.ref.gpuFrameNum = _v;
        function get_gpuFrameNum():cpp.UInt32 return __ptr == null ? __inst.gpuFrameNum : __ptr.ref.gpuFrameNum;
        
        
    }
    typedef ViewStats = CppiaViewStats;
#else
    typedef ViewStats = Native_ViewStats;
#end



