package bgfx;
class CubeMapFlags {
	/**
		Cubemap +x.
	**/
	public static var PositiveX : cpp.UInt32 = 0x00000000;
	/**
		Cubemap -x.
	**/
	public static var NegativeX : cpp.UInt32 = 0x00000001;
	/**
		Cubemap +y.
	**/
	public static var PositiveY : cpp.UInt32 = 0x00000002;
	/**
		Cubemap -y.
	**/
	public static var NegativeY : cpp.UInt32 = 0x00000003;
	/**
		Cubemap +z.
	**/
	public static var PositiveZ : cpp.UInt32 = 0x00000004;
	/**
		Cubemap -z.
	**/
	public static var NegativeZ : cpp.UInt32 = 0x00000005;
}