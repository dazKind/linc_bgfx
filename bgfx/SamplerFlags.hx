package bgfx;
class SamplerFlags {
	/**
		Wrap U mode: Mirror
	**/
	public static var UMirror : cpp.UInt32 = 0x00000001;
	/**
		Wrap U mode: Clamp
	**/
	public static var UClamp : cpp.UInt32 = 0x00000002;
	/**
		Wrap U mode: Border
	**/
	public static var UBorder : cpp.UInt32 = 0x00000003;
	public static var UShift : cpp.UInt32 = 0;
	public static var UMask : cpp.UInt32 = 0x00000003;
	/**
		Wrap V mode: Mirror
	**/
	public static var VMirror : cpp.UInt32 = 0x00000004;
	/**
		Wrap V mode: Clamp
	**/
	public static var VClamp : cpp.UInt32 = 0x00000008;
	/**
		Wrap V mode: Border
	**/
	public static var VBorder : cpp.UInt32 = 0x0000000c;
	public static var VShift : cpp.UInt32 = 2;
	public static var VMask : cpp.UInt32 = 0x0000000c;
	/**
		Wrap W mode: Mirror
	**/
	public static var WMirror : cpp.UInt32 = 0x00000010;
	/**
		Wrap W mode: Clamp
	**/
	public static var WClamp : cpp.UInt32 = 0x00000020;
	/**
		Wrap W mode: Border
	**/
	public static var WBorder : cpp.UInt32 = 0x00000030;
	public static var WShift : cpp.UInt32 = 4;
	public static var WMask : cpp.UInt32 = 0x00000030;
	/**
		Min sampling mode: Point
	**/
	public static var MinPoint : cpp.UInt32 = 0x00000040;
	/**
		Min sampling mode: Anisotropic
	**/
	public static var MinAnisotropic : cpp.UInt32 = 0x00000080;
	public static var MinShift : cpp.UInt32 = 6;
	public static var MinMask : cpp.UInt32 = 0x000000c0;
	/**
		Mag sampling mode: Point
	**/
	public static var MagPoint : cpp.UInt32 = 0x00000100;
	/**
		Mag sampling mode: Anisotropic
	**/
	public static var MagAnisotropic : cpp.UInt32 = 0x00000200;
	public static var MagShift : cpp.UInt32 = 8;
	public static var MagMask : cpp.UInt32 = 0x00000300;
	/**
		Mip sampling mode: Point
	**/
	public static var MipPoint : cpp.UInt32 = 0x00000400;
	public static var MipShift : cpp.UInt32 = 10;
	public static var MipMask : cpp.UInt32 = 0x00000400;
	/**
		Compare when sampling depth texture: less.
	**/
	public static var CompareLess : cpp.UInt32 = 0x00010000;
	/**
		Compare when sampling depth texture: less or equal.
	**/
	public static var CompareLequal : cpp.UInt32 = 0x00020000;
	/**
		Compare when sampling depth texture: equal.
	**/
	public static var CompareEqual : cpp.UInt32 = 0x00030000;
	/**
		Compare when sampling depth texture: greater or equal.
	**/
	public static var CompareGequal : cpp.UInt32 = 0x00040000;
	/**
		Compare when sampling depth texture: greater.
	**/
	public static var CompareGreater : cpp.UInt32 = 0x00050000;
	/**
		Compare when sampling depth texture: not equal.
	**/
	public static var CompareNotequal : cpp.UInt32 = 0x00060000;
	/**
		Compare when sampling depth texture: never.
	**/
	public static var CompareNever : cpp.UInt32 = 0x00070000;
	/**
		Compare when sampling depth texture: always.
	**/
	public static var CompareAlways : cpp.UInt32 = 0x00080000;
	public static var CompareShift : cpp.UInt32 = 16;
	public static var CompareMask : cpp.UInt32 = 0x000f0000;
	public static var BorderColorShift : cpp.UInt32 = 24;
	public static var BorderColorMask : cpp.UInt32 = 0x0f000000;
	public static var ReservedShift : cpp.UInt32 = 28;
	public static var ReservedMask : cpp.UInt32 = 0xf0000000;
	public static var None : cpp.UInt32 = 0x00000000;
	/**
		Sample stencil instead of depth.
	**/
	public static var SampleStencil : cpp.UInt32 = 0x00100000;
	public static var Point : cpp.UInt32 = 0x00000540;
	public static var UvwMirror : cpp.UInt32 = 0x00000015;
	public static var UvwClamp : cpp.UInt32 = 0x0000002a;
	public static var UvwBorder : cpp.UInt32 = 0x0000003f;
	public static var BitsMask : cpp.UInt32 = 0x000f07ff;
}