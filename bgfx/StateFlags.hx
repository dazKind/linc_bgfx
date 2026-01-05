package bgfx;
class StateFlags {
	/**
		Enable R write.
	**/
	public static var WriteR : cpp.Int64 = 0x0000000000000001i64;
	/**
		Enable G write.
	**/
	public static var WriteG : cpp.Int64 = 0x0000000000000002i64;
	/**
		Enable B write.
	**/
	public static var WriteB : cpp.Int64 = 0x0000000000000004i64;
	/**
		Enable alpha write.
	**/
	public static var WriteA : cpp.Int64 = 0x0000000000000008i64;
	/**
		Enable depth write.
	**/
	public static var WriteZ : cpp.Int64 = 0x0000004000000000i64;
	/**
		Enable RGB write.
	**/
	public static var WriteRgb : cpp.Int64 = 0x0000000000000007i64;
	/**
		Write all channels mask.
	**/
	public static var WriteMask : cpp.Int64 = 0x000000400000000fi64;
	/**
		Enable depth test, less.
	**/
	public static var DepthTestLess : cpp.Int64 = 0x0000000000000010i64;
	/**
		Enable depth test, less or equal.
	**/
	public static var DepthTestLequal : cpp.Int64 = 0x0000000000000020i64;
	/**
		Enable depth test, equal.
	**/
	public static var DepthTestEqual : cpp.Int64 = 0x0000000000000030i64;
	/**
		Enable depth test, greater or equal.
	**/
	public static var DepthTestGequal : cpp.Int64 = 0x0000000000000040i64;
	/**
		Enable depth test, greater.
	**/
	public static var DepthTestGreater : cpp.Int64 = 0x0000000000000050i64;
	/**
		Enable depth test, not equal.
	**/
	public static var DepthTestNotequal : cpp.Int64 = 0x0000000000000060i64;
	/**
		Enable depth test, never.
	**/
	public static var DepthTestNever : cpp.Int64 = 0x0000000000000070i64;
	/**
		Enable depth test, always.
	**/
	public static var DepthTestAlways : cpp.Int64 = 0x0000000000000080i64;
	public static var DepthTestShift : cpp.Int64 = 4i64;
	public static var DepthTestMask : cpp.Int64 = 0x00000000000000f0i64;
	/**
		0, 0, 0, 0
	**/
	public static var BlendZero : cpp.Int64 = 0x0000000000001000i64;
	/**
		1, 1, 1, 1
	**/
	public static var BlendOne : cpp.Int64 = 0x0000000000002000i64;
	/**
		Rs, Gs, Bs, As
	**/
	public static var BlendSrcColor : cpp.Int64 = 0x0000000000003000i64;
	/**
		1-Rs, 1-Gs, 1-Bs, 1-As
	**/
	public static var BlendInvSrcColor : cpp.Int64 = 0x0000000000004000i64;
	/**
		As, As, As, As
	**/
	public static var BlendSrcAlpha : cpp.Int64 = 0x0000000000005000i64;
	/**
		1-As, 1-As, 1-As, 1-As
	**/
	public static var BlendInvSrcAlpha : cpp.Int64 = 0x0000000000006000i64;
	/**
		Ad, Ad, Ad, Ad
	**/
	public static var BlendDstAlpha : cpp.Int64 = 0x0000000000007000i64;
	/**
		1-Ad, 1-Ad, 1-Ad ,1-Ad
	**/
	public static var BlendInvDstAlpha : cpp.Int64 = 0x0000000000008000i64;
	/**
		Rd, Gd, Bd, Ad
	**/
	public static var BlendDstColor : cpp.Int64 = 0x0000000000009000i64;
	/**
		1-Rd, 1-Gd, 1-Bd, 1-Ad
	**/
	public static var BlendInvDstColor : cpp.Int64 = 0x000000000000a000i64;
	/**
		f, f, f, 1; f = min(As, 1-Ad)
	**/
	public static var BlendSrcAlphaSat : cpp.Int64 = 0x000000000000b000i64;
	/**
		Blend factor
	**/
	public static var BlendFactor : cpp.Int64 = 0x000000000000c000i64;
	/**
		1-Blend factor
	**/
	public static var BlendInvFactor : cpp.Int64 = 0x000000000000d000i64;
	public static var BlendShift : cpp.Int64 = 12i64;
	public static var BlendMask : cpp.Int64 = 0x000000000ffff000i64;
	/**
		Blend add: src + dst.
	**/
	public static var BlendEquationAdd : cpp.Int64 = 0x0000000000000000i64;
	/**
		Blend subtract: src - dst.
	**/
	public static var BlendEquationSub : cpp.Int64 = 0x0000000010000000i64;
	/**
		Blend reverse subtract: dst - src.
	**/
	public static var BlendEquationRevsub : cpp.Int64 = 0x0000000020000000i64;
	/**
		Blend min: min(src, dst).
	**/
	public static var BlendEquationMin : cpp.Int64 = 0x0000000030000000i64;
	/**
		Blend max: max(src, dst).
	**/
	public static var BlendEquationMax : cpp.Int64 = 0x0000000040000000i64;
	public static var BlendEquationShift : cpp.Int64 = 28i64;
	public static var BlendEquationMask : cpp.Int64 = 0x00000003f0000000i64;
	/**
		Cull clockwise triangles.
	**/
	public static var CullCw : cpp.Int64 = 0x0000001000000000i64;
	/**
		Cull counter-clockwise triangles.
	**/
	public static var CullCcw : cpp.Int64 = 0x0000002000000000i64;
	public static var CullShift : cpp.Int64 = 36i64;
	public static var CullMask : cpp.Int64 = 0x0000003000000000i64;
	public static var AlphaRefShift : cpp.Int64 = 40i64;
	public static var AlphaRefMask : cpp.Int64 = 0x0000ff0000000000i64;
	/**
		Tristrip.
	**/
	public static var PtTristrip : cpp.Int64 = 0x0001000000000000i64;
	/**
		Lines.
	**/
	public static var PtLines : cpp.Int64 = 0x0002000000000000i64;
	/**
		Line strip.
	**/
	public static var PtLinestrip : cpp.Int64 = 0x0003000000000000i64;
	/**
		Points.
	**/
	public static var PtPoints : cpp.Int64 = 0x0004000000000000i64;
	public static var PtShift : cpp.Int64 = 48i64;
	public static var PtMask : cpp.Int64 = 0x0007000000000000i64;
	public static var PointSizeShift : cpp.Int64 = 52i64;
	public static var PointSizeMask : cpp.Int64 = 0x00f0000000000000i64;
	/**
		Enable MSAA rasterization.
	**/
	public static var Msaa : cpp.Int64 = 0x0100000000000000i64;
	/**
		Enable line AA rasterization.
	**/
	public static var Lineaa : cpp.Int64 = 0x0200000000000000i64;
	/**
		Enable conservative rasterization.
	**/
	public static var ConservativeRaster : cpp.Int64 = 0x0400000000000000i64;
	/**
		No state.
	**/
	public static var None : cpp.Int64 = 0x0000000000000000i64;
	/**
		Front counter-clockwise (default is clockwise).
	**/
	public static var FrontCcw : cpp.Int64 = 0x0000008000000000i64;
	/**
		Enable blend independent.
	**/
	public static var BlendIndependent : cpp.Int64 = 0x0000000400000000i64;
	/**
		Enable alpha to coverage.
	**/
	public static var BlendAlphaToCoverage : cpp.Int64 = 0x0000000800000000i64;
	/**
		Default state is write to RGB, alpha, and depth with depth test less enabled, with clockwise
		culling and MSAA (when writing into MSAA frame buffer, otherwise this flag is ignored).
	**/
	public static var Default : cpp.Int64 = 0x010000500000001fi64;
	public static var Mask : cpp.Int64 = 0xffffffffffffffffi64;
	public static var ReservedShift : cpp.Int64 = 61i64;
	public static var ReservedMask : cpp.Int64 = 0xe000000000000000i64;
}