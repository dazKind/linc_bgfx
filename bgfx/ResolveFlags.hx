package bgfx;
class ResolveFlags {
	/**
		No resolve flags.
	**/
	public static var None : cpp.UInt32 = 0x00000000;
	/**
		Auto-generate mip maps on resolve.
	**/
	public static var AutoGenMips : cpp.UInt32 = 0x00000001;
}