package bgfx;
class TextureFlags {
	public static var None : cpp.Int64 = cast 0x0000000000000000i64;
	/**
		Texture will be used for MSAA sampling.
	**/
	public static var MsaaSample : cpp.Int64 = cast 0x0000000800000000i64;
	/**
		Render target no MSAA.
	**/
	public static var Rt : cpp.Int64 = cast 0x0000001000000000i64;
	/**
		Texture will be used for compute write.
	**/
	public static var ComputeWrite : cpp.Int64 = cast 0x0000100000000000i64;
	/**
		Sample texture as sRGB.
	**/
	public static var Srgb : cpp.Int64 = cast 0x0000200000000000i64;
	/**
		Texture will be used as blit destination.
	**/
	public static var BlitDst : cpp.Int64 = cast 0x0000400000000000i64;
	/**
		Texture will be used for read back from GPU.
	**/
	public static var ReadBack : cpp.Int64 = cast 0x0000800000000000i64;
	/**
		Render target MSAAx2 mode.
	**/
	public static var RtMsaaX2 : cpp.Int64 = cast 0x0000002000000000i64;
	/**
		Render target MSAAx4 mode.
	**/
	public static var RtMsaaX4 : cpp.Int64 = cast 0x0000003000000000i64;
	/**
		Render target MSAAx8 mode.
	**/
	public static var RtMsaaX8 : cpp.Int64 = cast 0x0000004000000000i64;
	/**
		Render target MSAAx16 mode.
	**/
	public static var RtMsaaX16 : cpp.Int64 = cast 0x0000005000000000i64;
	public static var RtMsaaShift : cpp.Int64 = cast 36i64;
	public static var RtMsaaMask : cpp.Int64 = cast 0x0000007000000000i64;
	/**
		Render target will be used for writing
	**/
	public static var RtWriteOnly : cpp.Int64 = cast 0x0000008000000000i64;
	public static var RtShift : cpp.Int64 = cast 36i64;
	public static var RtMask : cpp.Int64 = cast 0x000000f000000000i64;
}