package bgfx;
class CapsFormatFlags {
	/**
		Texture format is not supported.
	**/
	public static var TextureNone : cpp.UInt32 = 0x00000000;
	/**
		Texture format is supported.
	**/
	public static var Texture2d : cpp.UInt32 = 0x00000001;
	/**
		Texture as sRGB format is supported.
	**/
	public static var Texture2dSrgb : cpp.UInt32 = 0x00000002;
	/**
		Texture format is emulated.
	**/
	public static var Texture2dEmulated : cpp.UInt32 = 0x00000004;
	/**
		Texture format is supported.
	**/
	public static var Texture3d : cpp.UInt32 = 0x00000008;
	/**
		Texture as sRGB format is supported.
	**/
	public static var Texture3dSrgb : cpp.UInt32 = 0x00000010;
	/**
		Texture format is emulated.
	**/
	public static var Texture3dEmulated : cpp.UInt32 = 0x00000020;
	/**
		Texture format is supported.
	**/
	public static var TextureCube : cpp.UInt32 = 0x00000040;
	/**
		Texture as sRGB format is supported.
	**/
	public static var TextureCubeSrgb : cpp.UInt32 = 0x00000080;
	/**
		Texture format is emulated.
	**/
	public static var TextureCubeEmulated : cpp.UInt32 = 0x00000100;
	/**
		Texture format can be used from vertex shader.
	**/
	public static var TextureVertex : cpp.UInt32 = 0x00000200;
	/**
		Texture format can be used as image and read from.
	**/
	public static var TextureImageRead : cpp.UInt32 = 0x00000400;
	/**
		Texture format can be used as image and written to.
	**/
	public static var TextureImageWrite : cpp.UInt32 = 0x00000800;
	/**
		Texture format can be used as frame buffer.
	**/
	public static var TextureFramebuffer : cpp.UInt32 = 0x00001000;
	/**
		Texture format can be used as MSAA frame buffer.
	**/
	public static var TextureFramebufferMsaa : cpp.UInt32 = 0x00002000;
	/**
		Texture can be sampled as MSAA.
	**/
	public static var TextureMsaa : cpp.UInt32 = 0x00004000;
	/**
		Texture format supports auto-generated mips.
	**/
	public static var TextureMipAutogen : cpp.UInt32 = 0x00008000;
}