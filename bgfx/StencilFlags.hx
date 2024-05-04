package bgfx;
class StencilFlags {
	public static var FuncRefShift : cpp.UInt32 = 0;
	public static var FuncRefMask : cpp.UInt32 = 0x000000ff;
	public static var FuncRmaskShift : cpp.UInt32 = 8;
	public static var FuncRmaskMask : cpp.UInt32 = 0x0000ff00;
	public static var None : cpp.UInt32 = 0x00000000;
	public static var Mask : cpp.UInt32 = 0xffffffff;
	public static var Default : cpp.UInt32 = 0x00000000;
	/**
		Enable stencil test, less.
	**/
	public static var TestLess : cpp.UInt32 = 0x00010000;
	/**
		Enable stencil test, less or equal.
	**/
	public static var TestLequal : cpp.UInt32 = 0x00020000;
	/**
		Enable stencil test, equal.
	**/
	public static var TestEqual : cpp.UInt32 = 0x00030000;
	/**
		Enable stencil test, greater or equal.
	**/
	public static var TestGequal : cpp.UInt32 = 0x00040000;
	/**
		Enable stencil test, greater.
	**/
	public static var TestGreater : cpp.UInt32 = 0x00050000;
	/**
		Enable stencil test, not equal.
	**/
	public static var TestNotequal : cpp.UInt32 = 0x00060000;
	/**
		Enable stencil test, never.
	**/
	public static var TestNever : cpp.UInt32 = 0x00070000;
	/**
		Enable stencil test, always.
	**/
	public static var TestAlways : cpp.UInt32 = 0x00080000;
	public static var TestShift : cpp.UInt32 = 16;
	public static var TestMask : cpp.UInt32 = 0x000f0000;
	/**
		Zero.
	**/
	public static var OpFailSZero : cpp.UInt32 = 0x00000000;
	/**
		Keep.
	**/
	public static var OpFailSKeep : cpp.UInt32 = 0x00100000;
	/**
		Replace.
	**/
	public static var OpFailSReplace : cpp.UInt32 = 0x00200000;
	/**
		Increment and wrap.
	**/
	public static var OpFailSIncr : cpp.UInt32 = 0x00300000;
	/**
		Increment and clamp.
	**/
	public static var OpFailSIncrsat : cpp.UInt32 = 0x00400000;
	/**
		Decrement and wrap.
	**/
	public static var OpFailSDecr : cpp.UInt32 = 0x00500000;
	/**
		Decrement and clamp.
	**/
	public static var OpFailSDecrsat : cpp.UInt32 = 0x00600000;
	/**
		Invert.
	**/
	public static var OpFailSInvert : cpp.UInt32 = 0x00700000;
	public static var OpFailSShift : cpp.UInt32 = 20;
	public static var OpFailSMask : cpp.UInt32 = 0x00f00000;
	/**
		Zero.
	**/
	public static var OpFailZZero : cpp.UInt32 = 0x00000000;
	/**
		Keep.
	**/
	public static var OpFailZKeep : cpp.UInt32 = 0x01000000;
	/**
		Replace.
	**/
	public static var OpFailZReplace : cpp.UInt32 = 0x02000000;
	/**
		Increment and wrap.
	**/
	public static var OpFailZIncr : cpp.UInt32 = 0x03000000;
	/**
		Increment and clamp.
	**/
	public static var OpFailZIncrsat : cpp.UInt32 = 0x04000000;
	/**
		Decrement and wrap.
	**/
	public static var OpFailZDecr : cpp.UInt32 = 0x05000000;
	/**
		Decrement and clamp.
	**/
	public static var OpFailZDecrsat : cpp.UInt32 = 0x06000000;
	/**
		Invert.
	**/
	public static var OpFailZInvert : cpp.UInt32 = 0x07000000;
	public static var OpFailZShift : cpp.UInt32 = 24;
	public static var OpFailZMask : cpp.UInt32 = 0x0f000000;
	/**
		Zero.
	**/
	public static var OpPassZZero : cpp.UInt32 = 0x00000000;
	/**
		Keep.
	**/
	public static var OpPassZKeep : cpp.UInt32 = 0x10000000;
	/**
		Replace.
	**/
	public static var OpPassZReplace : cpp.UInt32 = 0x20000000;
	/**
		Increment and wrap.
	**/
	public static var OpPassZIncr : cpp.UInt32 = 0x30000000;
	/**
		Increment and clamp.
	**/
	public static var OpPassZIncrsat : cpp.UInt32 = 0x40000000;
	/**
		Decrement and wrap.
	**/
	public static var OpPassZDecr : cpp.UInt32 = 0x50000000;
	/**
		Decrement and clamp.
	**/
	public static var OpPassZDecrsat : cpp.UInt32 = 0x60000000;
	/**
		Invert.
	**/
	public static var OpPassZInvert : cpp.UInt32 = 0x70000000;
	public static var OpPassZShift : cpp.UInt32 = 28;
	public static var OpPassZMask : cpp.UInt32 = 0xf0000000;
}