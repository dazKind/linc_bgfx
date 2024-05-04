package bgfx;
class ClearFlags {
	/**
		No clear flags.
	**/
	public static var None : cpp.UInt16 = 0x0000;
	/**
		Clear color.
	**/
	public static var Color : cpp.UInt16 = 0x0001;
	/**
		Clear depth.
	**/
	public static var Depth : cpp.UInt16 = 0x0002;
	/**
		Clear stencil.
	**/
	public static var Stencil : cpp.UInt16 = 0x0004;
	/**
		Discard frame buffer attachment 0.
	**/
	public static var DiscardColor0 : cpp.UInt16 = 0x0008;
	/**
		Discard frame buffer attachment 1.
	**/
	public static var DiscardColor1 : cpp.UInt16 = 0x0010;
	/**
		Discard frame buffer attachment 2.
	**/
	public static var DiscardColor2 : cpp.UInt16 = 0x0020;
	/**
		Discard frame buffer attachment 3.
	**/
	public static var DiscardColor3 : cpp.UInt16 = 0x0040;
	/**
		Discard frame buffer attachment 4.
	**/
	public static var DiscardColor4 : cpp.UInt16 = 0x0080;
	/**
		Discard frame buffer attachment 5.
	**/
	public static var DiscardColor5 : cpp.UInt16 = 0x0100;
	/**
		Discard frame buffer attachment 6.
	**/
	public static var DiscardColor6 : cpp.UInt16 = 0x0200;
	/**
		Discard frame buffer attachment 7.
	**/
	public static var DiscardColor7 : cpp.UInt16 = 0x0400;
	/**
		Discard frame buffer depth attachment.
	**/
	public static var DiscardDepth : cpp.UInt16 = 0x0800;
	/**
		Discard frame buffer stencil attachment.
	**/
	public static var DiscardStencil : cpp.UInt16 = 0x1000;
	public static var DiscardColorMask : cpp.UInt16 = 0x07f8;
	public static var DiscardMask : cpp.UInt16 = 0x1ff8;
}