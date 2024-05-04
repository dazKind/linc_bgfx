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
    class ViewStats {
    }
#else
    typedef ViewStats = Native_ViewStats;
#end



