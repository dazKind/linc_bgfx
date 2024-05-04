package bgfx;
class PciIdFlags {
	/**
		Autoselect adapter.
	**/
	public static var None : cpp.UInt16 = 0x0000;
	/**
		Software rasterizer.
	**/
	public static var SoftwareRasterizer : cpp.UInt16 = 0x0001;
	/**
		AMD adapter.
	**/
	public static var Amd : cpp.UInt16 = 0x1002;
	/**
		Apple adapter.
	**/
	public static var Apple : cpp.UInt16 = 0x106b;
	/**
		Intel adapter.
	**/
	public static var Intel : cpp.UInt16 = 0x8086;
	/**
		nVidia adapter.
	**/
	public static var Nvidia : cpp.UInt16 = 0x10de;
	/**
		Microsoft adapter.
	**/
	public static var Microsoft : cpp.UInt16 = 0x1414;
	/**
		ARM adapter.
	**/
	public static var Arm : cpp.UInt16 = 0x13b5;
}