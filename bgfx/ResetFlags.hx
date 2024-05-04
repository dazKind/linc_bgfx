package bgfx;
class ResetFlags {
	/**
		Enable 2x MSAA.
	**/
	public static var MsaaX2 : cpp.UInt32 = 0x00000010;
	/**
		Enable 4x MSAA.
	**/
	public static var MsaaX4 : cpp.UInt32 = 0x00000020;
	/**
		Enable 8x MSAA.
	**/
	public static var MsaaX8 : cpp.UInt32 = 0x00000030;
	/**
		Enable 16x MSAA.
	**/
	public static var MsaaX16 : cpp.UInt32 = 0x00000040;
	public static var MsaaShift : cpp.UInt32 = 4;
	public static var MsaaMask : cpp.UInt32 = 0x00000070;
	/**
		No reset flags.
	**/
	public static var None : cpp.UInt32 = 0x00000000;
	/**
		Not supported yet.
	**/
	public static var Fullscreen : cpp.UInt32 = 0x00000001;
	/**
		Enable V-Sync.
	**/
	public static var Vsync : cpp.UInt32 = 0x00000080;
	/**
		Turn on/off max anisotropy.
	**/
	public static var Maxanisotropy : cpp.UInt32 = 0x00000100;
	/**
		Begin screen capture.
	**/
	public static var Capture : cpp.UInt32 = 0x00000200;
	/**
		Flush rendering after submitting to GPU.
	**/
	public static var FlushAfterRender : cpp.UInt32 = 0x00002000;
	/**
		This flag specifies where flip occurs. Default behaviour is that flip occurs
		before rendering new frame. This flag only has effect when `BGFX_CONFIG_MULTITHREADED=0`.
	**/
	public static var FlipAfterRender : cpp.UInt32 = 0x00004000;
	/**
		Enable sRGB backbuffer.
	**/
	public static var SrgbBackbuffer : cpp.UInt32 = 0x00008000;
	/**
		Enable HDR10 rendering.
	**/
	public static var Hdr10 : cpp.UInt32 = 0x00010000;
	/**
		Enable HiDPI rendering.
	**/
	public static var Hidpi : cpp.UInt32 = 0x00020000;
	/**
		Enable depth clamp.
	**/
	public static var DepthClamp : cpp.UInt32 = 0x00040000;
	/**
		Suspend rendering.
	**/
	public static var Suspend : cpp.UInt32 = 0x00080000;
	/**
		Transparent backbuffer. Availability depends on: `BGFX_CAPS_TRANSPARENT_BACKBUFFER`.
	**/
	public static var TransparentBackbuffer : cpp.UInt32 = 0x00100000;
	public static var FullscreenShift : cpp.UInt32 = 0;
	public static var FullscreenMask : cpp.UInt32 = 0x00000001;
	public static var ReservedShift : cpp.UInt32 = 31;
	public static var ReservedMask : cpp.UInt32 = 0x80000000;
}