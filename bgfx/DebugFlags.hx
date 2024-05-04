package bgfx;
class DebugFlags {
	/**
		No debug.
	**/
	public static var None : cpp.UInt32 = 0x00000000;
	/**
		Enable wireframe for all primitives.
	**/
	public static var Wireframe : cpp.UInt32 = 0x00000001;
	/**
		Enable infinitely fast hardware test. No draw calls will be submitted to driver.
		It's useful when profiling to quickly assess bottleneck between CPU and GPU.
	**/
	public static var Ifh : cpp.UInt32 = 0x00000002;
	/**
		Enable statistics display.
	**/
	public static var Stats : cpp.UInt32 = 0x00000004;
	/**
		Enable debug text display.
	**/
	public static var Text : cpp.UInt32 = 0x00000008;
	/**
		Enable profiler. This causes per-view statistics to be collected, available through `bgfx::Stats::ViewStats`. This is unrelated to the profiler functions in `bgfx::CallbackI`.
	**/
	public static var Profiler : cpp.UInt32 = 0x00000010;
}