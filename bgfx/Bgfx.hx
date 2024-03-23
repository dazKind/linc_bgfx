/*
 * Copyright 2011-2024 Branimir Karadzic, Michael Bickel. All rights reserved.
 * License: https://github.com/bkaradzic/bgfx/blob/master/LICENSE
 */

/*
 *
 * AUTO GENERATED! DO NOT EDIT!
 *
 */

package bgfx;

typedef ViewId = cpp.UInt16;

class StateFlags
{
	/// <summary>
	/// Enable R write.
	/// </summary>
	public static var WriteR : cpp.Int64                 = 0x0000000000000001i64;

	/// <summary>
	/// Enable G write.
	/// </summary>
	public static var WriteG : cpp.Int64                 = 0x0000000000000002i64;

	/// <summary>
	/// Enable B write.
	/// </summary>
	public static var WriteB : cpp.Int64                 = 0x0000000000000004i64;

	/// <summary>
	/// Enable alpha write.
	/// </summary>
	public static var WriteA : cpp.Int64                 = 0x0000000000000008i64;

	/// <summary>
	/// Enable depth write.
	/// </summary>
	public static var WriteZ : cpp.Int64                 = 0x0000004000000000i64;

	/// <summary>
	/// Enable RGB write.
	/// </summary>
	public static var WriteRgb : cpp.Int64               = 0x0000000000000007i64;

	/// <summary>
	/// Write all channels mask.
	/// </summary>
	public static var WriteMask : cpp.Int64              = 0x000000400000000fi64;

	/// <summary>
	/// Enable depth test, less.
	/// </summary>
	public static var DepthTestLess : cpp.Int64          = 0x0000000000000010i64;

	/// <summary>
	/// Enable depth test, less or equal.
	/// </summary>
	public static var DepthTestLequal : cpp.Int64        = 0x0000000000000020i64;

	/// <summary>
	/// Enable depth test, equal.
	/// </summary>
	public static var DepthTestEqual : cpp.Int64         = 0x0000000000000030i64;

	/// <summary>
	/// Enable depth test, greater or equal.
	/// </summary>
	public static var DepthTestGequal : cpp.Int64        = 0x0000000000000040i64;

	/// <summary>
	/// Enable depth test, greater.
	/// </summary>
	public static var DepthTestGreater : cpp.Int64       = 0x0000000000000050i64;

	/// <summary>
	/// Enable depth test, not equal.
	/// </summary>
	public static var DepthTestNotequal : cpp.Int64      = 0x0000000000000060i64;

	/// <summary>
	/// Enable depth test, never.
	/// </summary>
	public static var DepthTestNever : cpp.Int64         = 0x0000000000000070i64;

	/// <summary>
	/// Enable depth test, always.
	/// </summary>
	public static var DepthTestAlways : cpp.Int64        = 0x0000000000000080i64;
	public static var DepthTestShift : cpp.Int64         = 4i64;
	public static var DepthTestMask : cpp.Int64          = 0x00000000000000f0i64;

	/// <summary>
	/// 0, 0, 0, 0
	/// </summary>
	public static var BlendZero : cpp.Int64              = 0x0000000000001000i64;

	/// <summary>
	/// 1, 1, 1, 1
	/// </summary>
	public static var BlendOne : cpp.Int64               = 0x0000000000002000i64;

	/// <summary>
	/// Rs, Gs, Bs, As
	/// </summary>
	public static var BlendSrcColor : cpp.Int64          = 0x0000000000003000i64;

	/// <summary>
	/// 1-Rs, 1-Gs, 1-Bs, 1-As
	/// </summary>
	public static var BlendInvSrcColor : cpp.Int64       = 0x0000000000004000i64;

	/// <summary>
	/// As, As, As, As
	/// </summary>
	public static var BlendSrcAlpha : cpp.Int64          = 0x0000000000005000i64;

	/// <summary>
	/// 1-As, 1-As, 1-As, 1-As
	/// </summary>
	public static var BlendInvSrcAlpha : cpp.Int64       = 0x0000000000006000i64;

	/// <summary>
	/// Ad, Ad, Ad, Ad
	/// </summary>
	public static var BlendDstAlpha : cpp.Int64          = 0x0000000000007000i64;

	/// <summary>
	/// 1-Ad, 1-Ad, 1-Ad ,1-Ad
	/// </summary>
	public static var BlendInvDstAlpha : cpp.Int64       = 0x0000000000008000i64;

	/// <summary>
	/// Rd, Gd, Bd, Ad
	/// </summary>
	public static var BlendDstColor : cpp.Int64          = 0x0000000000009000i64;

	/// <summary>
	/// 1-Rd, 1-Gd, 1-Bd, 1-Ad
	/// </summary>
	public static var BlendInvDstColor : cpp.Int64       = 0x000000000000a000i64;

	/// <summary>
	/// f, f, f, 1; f = min(As, 1-Ad)
	/// </summary>
	public static var BlendSrcAlphaSat : cpp.Int64       = 0x000000000000b000i64;

	/// <summary>
	/// Blend factor
	/// </summary>
	public static var BlendFactor : cpp.Int64            = 0x000000000000c000i64;

	/// <summary>
	/// 1-Blend factor
	/// </summary>
	public static var BlendInvFactor : cpp.Int64         = 0x000000000000d000i64;
	public static var BlendShift : cpp.Int64             = 12i64;
	public static var BlendMask : cpp.Int64              = 0x000000000ffff000i64;

	/// <summary>
	/// Blend add: src + dst.
	/// </summary>
	public static var BlendEquationAdd : cpp.Int64       = 0x0000000000000000i64;

	/// <summary>
	/// Blend subtract: src - dst.
	/// </summary>
	public static var BlendEquationSub : cpp.Int64       = 0x0000000010000000i64;

	/// <summary>
	/// Blend reverse subtract: dst - src.
	/// </summary>
	public static var BlendEquationRevsub : cpp.Int64    = 0x0000000020000000i64;

	/// <summary>
	/// Blend min: min(src, dst).
	/// </summary>
	public static var BlendEquationMin : cpp.Int64       = 0x0000000030000000i64;

	/// <summary>
	/// Blend max: max(src, dst).
	/// </summary>
	public static var BlendEquationMax : cpp.Int64       = 0x0000000040000000i64;
	public static var BlendEquationShift : cpp.Int64     = 28i64;
	public static var BlendEquationMask : cpp.Int64      = 0x00000003f0000000i64;

	/// <summary>
	/// Cull clockwise triangles.
	/// </summary>
	public static var CullCw : cpp.Int64                 = 0x0000001000000000i64;

	/// <summary>
	/// Cull counter-clockwise triangles.
	/// </summary>
	public static var CullCcw : cpp.Int64                = 0x0000002000000000i64;
	public static var CullShift : cpp.Int64              = 36i64;
	public static var CullMask : cpp.Int64               = 0x0000003000000000i64;
	public static var AlphaRefShift : cpp.Int64          = 40i64;
	public static var AlphaRefMask : cpp.Int64           = 0x0000ff0000000000i64;

	/// <summary>
	/// Tristrip.
	/// </summary>
	public static var PtTristrip : cpp.Int64             = 0x0001000000000000i64;

	/// <summary>
	/// Lines.
	/// </summary>
	public static var PtLines : cpp.Int64                = 0x0002000000000000i64;

	/// <summary>
	/// Line strip.
	/// </summary>
	public static var PtLinestrip : cpp.Int64            = 0x0003000000000000i64;

	/// <summary>
	/// Points.
	/// </summary>
	public static var PtPoints : cpp.Int64               = 0x0004000000000000i64;
	public static var PtShift : cpp.Int64                = 48i64;
	public static var PtMask : cpp.Int64                 = 0x0007000000000000i64;
	public static var PointSizeShift : cpp.Int64         = 52i64;
	public static var PointSizeMask : cpp.Int64          = 0x00f0000000000000i64;

	/// <summary>
	/// Enable MSAA rasterization.
	/// </summary>
	public static var Msaa : cpp.Int64                   = 0x0100000000000000i64;

	/// <summary>
	/// Enable line AA rasterization.
	/// </summary>
	public static var Lineaa : cpp.Int64                 = 0x0200000000000000i64;

	/// <summary>
	/// Enable conservative rasterization.
	/// </summary>
	public static var ConservativeRaster : cpp.Int64     = 0x0400000000000000i64;

	/// <summary>
	/// No state.
	/// </summary>
	public static var None : cpp.Int64                   = 0x0000000000000000i64;

	/// <summary>
	/// Front counter-clockwise (default is clockwise).
	/// </summary>
	public static var FrontCcw : cpp.Int64               = 0x0000008000000000i64;

	/// <summary>
	/// Enable blend independent.
	/// </summary>
	public static var BlendIndependent : cpp.Int64       = 0x0000000400000000i64;

	/// <summary>
	/// Enable alpha to coverage.
	/// </summary>
	public static var BlendAlphaToCoverage : cpp.Int64   = 0x0000000800000000i64;

	/// <summary>
	/// Default state is write to RGB, alpha, and depth with depth test less enabled, with clockwise
	/// culling and MSAA (when writing into MSAA frame buffer, otherwise this flag is ignored).
	/// </summary>
	public static var Default : cpp.Int64                = 0x010000500000001fi64;
	public static var Mask : cpp.Int64                   = 0xffffffffffffffffi64;
	public static var ReservedShift : cpp.Int64          = 61i64;
	public static var ReservedMask : cpp.Int64           = 0xe000000000000000i64;
}

class StencilFlags
{
	public static var FuncRefShift : Int           = 0;
	public static var FuncRefMask : Int            = 0x000000ff;
	public static var FuncRmaskShift : Int         = 8;
	public static var FuncRmaskMask : Int          = 0x0000ff00;
	public static var None : Int                   = 0x00000000;
	public static var Mask : Int                   = 0xffffffff;
	public static var Default : Int                = 0x00000000;

	/// <summary>
	/// Enable stencil test, less.
	/// </summary>
	public static var TestLess : Int               = 0x00010000;

	/// <summary>
	/// Enable stencil test, less or equal.
	/// </summary>
	public static var TestLequal : Int             = 0x00020000;

	/// <summary>
	/// Enable stencil test, equal.
	/// </summary>
	public static var TestEqual : Int              = 0x00030000;

	/// <summary>
	/// Enable stencil test, greater or equal.
	/// </summary>
	public static var TestGequal : Int             = 0x00040000;

	/// <summary>
	/// Enable stencil test, greater.
	/// </summary>
	public static var TestGreater : Int            = 0x00050000;

	/// <summary>
	/// Enable stencil test, not equal.
	/// </summary>
	public static var TestNotequal : Int           = 0x00060000;

	/// <summary>
	/// Enable stencil test, never.
	/// </summary>
	public static var TestNever : Int              = 0x00070000;

	/// <summary>
	/// Enable stencil test, always.
	/// </summary>
	public static var TestAlways : Int             = 0x00080000;
	public static var TestShift : Int              = 16;
	public static var TestMask : Int               = 0x000f0000;

	/// <summary>
	/// Zero.
	/// </summary>
	public static var OpFailSZero : Int            = 0x00000000;

	/// <summary>
	/// Keep.
	/// </summary>
	public static var OpFailSKeep : Int            = 0x00100000;

	/// <summary>
	/// Replace.
	/// </summary>
	public static var OpFailSReplace : Int         = 0x00200000;

	/// <summary>
	/// Increment and wrap.
	/// </summary>
	public static var OpFailSIncr : Int            = 0x00300000;

	/// <summary>
	/// Increment and clamp.
	/// </summary>
	public static var OpFailSIncrsat : Int         = 0x00400000;

	/// <summary>
	/// Decrement and wrap.
	/// </summary>
	public static var OpFailSDecr : Int            = 0x00500000;

	/// <summary>
	/// Decrement and clamp.
	/// </summary>
	public static var OpFailSDecrsat : Int         = 0x00600000;

	/// <summary>
	/// Invert.
	/// </summary>
	public static var OpFailSInvert : Int          = 0x00700000;
	public static var OpFailSShift : Int           = 20;
	public static var OpFailSMask : Int            = 0x00f00000;

	/// <summary>
	/// Zero.
	/// </summary>
	public static var OpFailZZero : Int            = 0x00000000;

	/// <summary>
	/// Keep.
	/// </summary>
	public static var OpFailZKeep : Int            = 0x01000000;

	/// <summary>
	/// Replace.
	/// </summary>
	public static var OpFailZReplace : Int         = 0x02000000;

	/// <summary>
	/// Increment and wrap.
	/// </summary>
	public static var OpFailZIncr : Int            = 0x03000000;

	/// <summary>
	/// Increment and clamp.
	/// </summary>
	public static var OpFailZIncrsat : Int         = 0x04000000;

	/// <summary>
	/// Decrement and wrap.
	/// </summary>
	public static var OpFailZDecr : Int            = 0x05000000;

	/// <summary>
	/// Decrement and clamp.
	/// </summary>
	public static var OpFailZDecrsat : Int         = 0x06000000;

	/// <summary>
	/// Invert.
	/// </summary>
	public static var OpFailZInvert : Int          = 0x07000000;
	public static var OpFailZShift : Int           = 24;
	public static var OpFailZMask : Int            = 0x0f000000;

	/// <summary>
	/// Zero.
	/// </summary>
	public static var OpPassZZero : Int            = 0x00000000;

	/// <summary>
	/// Keep.
	/// </summary>
	public static var OpPassZKeep : Int            = 0x10000000;

	/// <summary>
	/// Replace.
	/// </summary>
	public static var OpPassZReplace : Int         = 0x20000000;

	/// <summary>
	/// Increment and wrap.
	/// </summary>
	public static var OpPassZIncr : Int            = 0x30000000;

	/// <summary>
	/// Increment and clamp.
	/// </summary>
	public static var OpPassZIncrsat : Int         = 0x40000000;

	/// <summary>
	/// Decrement and wrap.
	/// </summary>
	public static var OpPassZDecr : Int            = 0x50000000;

	/// <summary>
	/// Decrement and clamp.
	/// </summary>
	public static var OpPassZDecrsat : Int         = 0x60000000;

	/// <summary>
	/// Invert.
	/// </summary>
	public static var OpPassZInvert : Int          = 0x70000000;
	public static var OpPassZShift : Int           = 28;
	public static var OpPassZMask : Int            = 0xf0000000;
}

class ClearFlags
{
	/// <summary>
	/// No clear flags.
	/// </summary>
	public static var None : cpp.Int16                   = 0x0000;

	/// <summary>
	/// Clear color.
	/// </summary>
	public static var Color : cpp.Int16                  = 0x0001;

	/// <summary>
	/// Clear depth.
	/// </summary>
	public static var Depth : cpp.Int16                  = 0x0002;

	/// <summary>
	/// Clear stencil.
	/// </summary>
	public static var Stencil : cpp.Int16                = 0x0004;

	/// <summary>
	/// Discard frame buffer attachment 0.
	/// </summary>
	public static var DiscardColor0 : cpp.Int16          = 0x0008;

	/// <summary>
	/// Discard frame buffer attachment 1.
	/// </summary>
	public static var DiscardColor1 : cpp.Int16          = 0x0010;

	/// <summary>
	/// Discard frame buffer attachment 2.
	/// </summary>
	public static var DiscardColor2 : cpp.Int16          = 0x0020;

	/// <summary>
	/// Discard frame buffer attachment 3.
	/// </summary>
	public static var DiscardColor3 : cpp.Int16          = 0x0040;

	/// <summary>
	/// Discard frame buffer attachment 4.
	/// </summary>
	public static var DiscardColor4 : cpp.Int16          = 0x0080;

	/// <summary>
	/// Discard frame buffer attachment 5.
	/// </summary>
	public static var DiscardColor5 : cpp.Int16          = 0x0100;

	/// <summary>
	/// Discard frame buffer attachment 6.
	/// </summary>
	public static var DiscardColor6 : cpp.Int16          = 0x0200;

	/// <summary>
	/// Discard frame buffer attachment 7.
	/// </summary>
	public static var DiscardColor7 : cpp.Int16          = 0x0400;

	/// <summary>
	/// Discard frame buffer depth attachment.
	/// </summary>
	public static var DiscardDepth : cpp.Int16           = 0x0800;

	/// <summary>
	/// Discard frame buffer stencil attachment.
	/// </summary>
	public static var DiscardStencil : cpp.Int16         = 0x1000;
	public static var DiscardColorMask : cpp.Int16       = 0x07f8;
	public static var DiscardMask : cpp.Int16            = 0x1ff8;
}

class DiscardFlags
{
	/// <summary>
	/// Preserve everything.
	/// </summary>
	public static var None : Int                   = 0x00000000;

	/// <summary>
	/// Discard texture sampler and buffer bindings.
	/// </summary>
	public static var Bindings : Int               = 0x00000001;

	/// <summary>
	/// Discard index buffer.
	/// </summary>
	public static var IndexBuffer : Int            = 0x00000002;

	/// <summary>
	/// Discard instance data.
	/// </summary>
	public static var InstanceData : Int           = 0x00000004;

	/// <summary>
	/// Discard state and uniform bindings.
	/// </summary>
	public static var State : Int                  = 0x00000008;

	/// <summary>
	/// Discard transform.
	/// </summary>
	public static var Transform : Int              = 0x00000010;

	/// <summary>
	/// Discard vertex streams.
	/// </summary>
	public static var VertexStreams : Int          = 0x00000020;

	/// <summary>
	/// Discard all states.
	/// </summary>
	public static var All : Int                    = 0x000000ff;
}

class DebugFlags
{
	/// <summary>
	/// No debug.
	/// </summary>
	public static var None : Int                   = 0x00000000;

	/// <summary>
	/// Enable wireframe for all primitives.
	/// </summary>
	public static var Wireframe : Int              = 0x00000001;

	/// <summary>
	/// Enable infinitely fast hardware test. No draw calls will be submitted to driver.
	/// It's useful when profiling to quickly assess bottleneck between CPU and GPU.
	/// </summary>
	public static var Ifh : Int                    = 0x00000002;

	/// <summary>
	/// Enable statistics display.
	/// </summary>
	public static var Stats : Int                  = 0x00000004;

	/// <summary>
	/// Enable debug text display.
	/// </summary>
	public static var Text : Int                   = 0x00000008;

	/// <summary>
	/// Enable profiler. This causes per-view statistics to be collected, available through `bgfx::Stats::ViewStats`. This is unrelated to the profiler functions in `bgfx::CallbackI`.
	/// </summary>
	public static var Profiler : Int               = 0x00000010;
}

class BufferFlags
{
	/// <summary>
	/// 1 8-bit value
	/// </summary>
	public static var ComputeFormat8x1 : cpp.Int16       = 0x0001;

	/// <summary>
	/// 2 8-bit values
	/// </summary>
	public static var ComputeFormat8x2 : cpp.Int16       = 0x0002;

	/// <summary>
	/// 4 8-bit values
	/// </summary>
	public static var ComputeFormat8x4 : cpp.Int16       = 0x0003;

	/// <summary>
	/// 1 16-bit value
	/// </summary>
	public static var ComputeFormat16x1 : cpp.Int16      = 0x0004;

	/// <summary>
	/// 2 16-bit values
	/// </summary>
	public static var ComputeFormat16x2 : cpp.Int16      = 0x0005;

	/// <summary>
	/// 4 16-bit values
	/// </summary>
	public static var ComputeFormat16x4 : cpp.Int16      = 0x0006;

	/// <summary>
	/// 1 32-bit value
	/// </summary>
	public static var ComputeFormat32x1 : cpp.Int16      = 0x0007;

	/// <summary>
	/// 2 32-bit values
	/// </summary>
	public static var ComputeFormat32x2 : cpp.Int16      = 0x0008;

	/// <summary>
	/// 4 32-bit values
	/// </summary>
	public static var ComputeFormat32x4 : cpp.Int16      = 0x0009;
	public static var ComputeFormatShift : cpp.Int16     = 0;
	public static var ComputeFormatMask : cpp.Int16      = 0x000f;

	/// <summary>
	/// Type `int`.
	/// </summary>
	public static var ComputeTypeInt : cpp.Int16         = 0x0010;

	/// <summary>
	/// Type `uint`.
	/// </summary>
	public static var ComputeTypeUint : cpp.Int16        = 0x0020;

	/// <summary>
	/// Type `float`.
	/// </summary>
	public static var ComputeTypeFloat : cpp.Int16       = 0x0030;
	public static var ComputeTypeShift : cpp.Int16       = 4;
	public static var ComputeTypeMask : cpp.Int16        = 0x0030;
	public static var None : cpp.Int16                   = 0x0000;

	/// <summary>
	/// Buffer will be read by shader.
	/// </summary>
	public static var ComputeRead : cpp.Int16            = 0x0100;

	/// <summary>
	/// Buffer will be used for writing.
	/// </summary>
	public static var ComputeWrite : cpp.Int16           = 0x0200;

	/// <summary>
	/// Buffer will be used for storing draw indirect commands.
	/// </summary>
	public static var DrawIndirect : cpp.Int16           = 0x0400;

	/// <summary>
	/// Allow dynamic index/vertex buffer resize during update.
	/// </summary>
	public static var AllowResize : cpp.Int16            = 0x0800;

	/// <summary>
	/// Index buffer contains 32-bit indices.
	/// </summary>
	public static var Index32 : cpp.Int16                = 0x1000;
	public static var ComputeReadWrite : cpp.Int16       = 0x0300;
}

class TextureFlags
{
	public static var None : cpp.Int64                   = 0x0000000000000000i64;

	/// <summary>
	/// Texture will be used for MSAA sampling.
	/// </summary>
	public static var MsaaSample : cpp.Int64             = 0x0000000800000000i64;

	/// <summary>
	/// Render target no MSAA.
	/// </summary>
	public static var Rt : cpp.Int64                     = 0x0000001000000000i64;

	/// <summary>
	/// Texture will be used for compute write.
	/// </summary>
	public static var ComputeWrite : cpp.Int64           = 0x0000100000000000i64;

	/// <summary>
	/// Sample texture as sRGB.
	/// </summary>
	public static var Srgb : cpp.Int64                   = 0x0000200000000000i64;

	/// <summary>
	/// Texture will be used as blit destination.
	/// </summary>
	public static var BlitDst : cpp.Int64                = 0x0000400000000000i64;

	/// <summary>
	/// Texture will be used for read back from GPU.
	/// </summary>
	public static var ReadBack : cpp.Int64               = 0x0000800000000000i64;

	/// <summary>
	/// Render target MSAAx2 mode.
	/// </summary>
	public static var RtMsaaX2 : cpp.Int64               = 0x0000002000000000i64;

	/// <summary>
	/// Render target MSAAx4 mode.
	/// </summary>
	public static var RtMsaaX4 : cpp.Int64               = 0x0000003000000000i64;

	/// <summary>
	/// Render target MSAAx8 mode.
	/// </summary>
	public static var RtMsaaX8 : cpp.Int64               = 0x0000004000000000i64;

	/// <summary>
	/// Render target MSAAx16 mode.
	/// </summary>
	public static var RtMsaaX16 : cpp.Int64              = 0x0000005000000000i64;
	public static var RtMsaaShift : cpp.Int64            = 36i64;
	public static var RtMsaaMask : cpp.Int64             = 0x0000007000000000i64;

	/// <summary>
	/// Render target will be used for writing
	/// </summary>
	public static var RtWriteOnly : cpp.Int64            = 0x0000008000000000i64;
	public static var RtShift : cpp.Int64                = 36i64;
	public static var RtMask : cpp.Int64                 = 0x000000f000000000i64;
}

class SamplerFlags
{
	/// <summary>
	/// Wrap U mode: Mirror
	/// </summary>
	public static var UMirror : Int                = 0x00000001;

	/// <summary>
	/// Wrap U mode: Clamp
	/// </summary>
	public static var UClamp : Int                 = 0x00000002;

	/// <summary>
	/// Wrap U mode: Border
	/// </summary>
	public static var UBorder : Int                = 0x00000003;
	public static var UShift : Int                 = 0;
	public static var UMask : Int                  = 0x00000003;

	/// <summary>
	/// Wrap V mode: Mirror
	/// </summary>
	public static var VMirror : Int                = 0x00000004;

	/// <summary>
	/// Wrap V mode: Clamp
	/// </summary>
	public static var VClamp : Int                 = 0x00000008;

	/// <summary>
	/// Wrap V mode: Border
	/// </summary>
	public static var VBorder : Int                = 0x0000000c;
	public static var VShift : Int                 = 2;
	public static var VMask : Int                  = 0x0000000c;

	/// <summary>
	/// Wrap W mode: Mirror
	/// </summary>
	public static var WMirror : Int                = 0x00000010;

	/// <summary>
	/// Wrap W mode: Clamp
	/// </summary>
	public static var WClamp : Int                 = 0x00000020;

	/// <summary>
	/// Wrap W mode: Border
	/// </summary>
	public static var WBorder : Int                = 0x00000030;
	public static var WShift : Int                 = 4;
	public static var WMask : Int                  = 0x00000030;

	/// <summary>
	/// Min sampling mode: Point
	/// </summary>
	public static var MinPoint : Int               = 0x00000040;

	/// <summary>
	/// Min sampling mode: Anisotropic
	/// </summary>
	public static var MinAnisotropic : Int         = 0x00000080;
	public static var MinShift : Int               = 6;
	public static var MinMask : Int                = 0x000000c0;

	/// <summary>
	/// Mag sampling mode: Point
	/// </summary>
	public static var MagPoint : Int               = 0x00000100;

	/// <summary>
	/// Mag sampling mode: Anisotropic
	/// </summary>
	public static var MagAnisotropic : Int         = 0x00000200;
	public static var MagShift : Int               = 8;
	public static var MagMask : Int                = 0x00000300;

	/// <summary>
	/// Mip sampling mode: Point
	/// </summary>
	public static var MipPoint : Int               = 0x00000400;
	public static var MipShift : Int               = 10;
	public static var MipMask : Int                = 0x00000400;

	/// <summary>
	/// Compare when sampling depth texture: less.
	/// </summary>
	public static var CompareLess : Int            = 0x00010000;

	/// <summary>
	/// Compare when sampling depth texture: less or equal.
	/// </summary>
	public static var CompareLequal : Int          = 0x00020000;

	/// <summary>
	/// Compare when sampling depth texture: equal.
	/// </summary>
	public static var CompareEqual : Int           = 0x00030000;

	/// <summary>
	/// Compare when sampling depth texture: greater or equal.
	/// </summary>
	public static var CompareGequal : Int          = 0x00040000;

	/// <summary>
	/// Compare when sampling depth texture: greater.
	/// </summary>
	public static var CompareGreater : Int         = 0x00050000;

	/// <summary>
	/// Compare when sampling depth texture: not equal.
	/// </summary>
	public static var CompareNotequal : Int        = 0x00060000;

	/// <summary>
	/// Compare when sampling depth texture: never.
	/// </summary>
	public static var CompareNever : Int           = 0x00070000;

	/// <summary>
	/// Compare when sampling depth texture: always.
	/// </summary>
	public static var CompareAlways : Int          = 0x00080000;
	public static var CompareShift : Int           = 16;
	public static var CompareMask : Int            = 0x000f0000;
	public static var BorderColorShift : Int       = 24;
	public static var BorderColorMask : Int        = 0x0f000000;
	public static var ReservedShift : Int          = 28;
	public static var ReservedMask : Int           = 0xf0000000;
	public static var None : Int                   = 0x00000000;

	/// <summary>
	/// Sample stencil instead of depth.
	/// </summary>
	public static var SampleStencil : Int          = 0x00100000;
	public static var Point : Int                  = 0x00000540;
	public static var UvwMirror : Int              = 0x00000015;
	public static var UvwClamp : Int               = 0x0000002a;
	public static var UvwBorder : Int              = 0x0000003f;
	public static var BitsMask : Int               = 0x000f07ff;
}

class ResetFlags
{
	/// <summary>
	/// Enable 2x MSAA.
	/// </summary>
	public static var MsaaX2 : Int                 = 0x00000010;

	/// <summary>
	/// Enable 4x MSAA.
	/// </summary>
	public static var MsaaX4 : Int                 = 0x00000020;

	/// <summary>
	/// Enable 8x MSAA.
	/// </summary>
	public static var MsaaX8 : Int                 = 0x00000030;

	/// <summary>
	/// Enable 16x MSAA.
	/// </summary>
	public static var MsaaX16 : Int                = 0x00000040;
	public static var MsaaShift : Int              = 4;
	public static var MsaaMask : Int               = 0x00000070;

	/// <summary>
	/// No reset flags.
	/// </summary>
	public static var None : Int                   = 0x00000000;

	/// <summary>
	/// Not supported yet.
	/// </summary>
	public static var Fullscreen : Int             = 0x00000001;

	/// <summary>
	/// Enable V-Sync.
	/// </summary>
	public static var Vsync : Int                  = 0x00000080;

	/// <summary>
	/// Turn on/off max anisotropy.
	/// </summary>
	public static var Maxanisotropy : Int          = 0x00000100;

	/// <summary>
	/// Begin screen capture.
	/// </summary>
	public static var Capture : Int                = 0x00000200;

	/// <summary>
	/// Flush rendering after submitting to GPU.
	/// </summary>
	public static var FlushAfterRender : Int       = 0x00002000;

	/// <summary>
	/// This flag specifies where flip occurs. Default behaviour is that flip occurs
	/// before rendering new frame. This flag only has effect when `BGFX_CONFIG_MULTITHREADED=0`.
	/// </summary>
	public static var FlipAfterRender : Int        = 0x00004000;

	/// <summary>
	/// Enable sRGB backbuffer.
	/// </summary>
	public static var SrgbBackbuffer : Int         = 0x00008000;

	/// <summary>
	/// Enable HDR10 rendering.
	/// </summary>
	public static var Hdr10 : Int                  = 0x00010000;

	/// <summary>
	/// Enable HiDPI rendering.
	/// </summary>
	public static var Hidpi : Int                  = 0x00020000;

	/// <summary>
	/// Enable depth clamp.
	/// </summary>
	public static var DepthClamp : Int             = 0x00040000;

	/// <summary>
	/// Suspend rendering.
	/// </summary>
	public static var Suspend : Int                = 0x00080000;

	/// <summary>
	/// Transparent backbuffer. Availability depends on: `BGFX_CAPS_TRANSPARENT_BACKBUFFER`.
	/// </summary>
	public static var TransparentBackbuffer : Int  = 0x00100000;
	public static var FullscreenShift : Int        = 0;
	public static var FullscreenMask : Int         = 0x00000001;
	public static var ReservedShift : Int          = 31;
	public static var ReservedMask : Int           = 0x80000000;
}

class CapsFlags
{
	/// <summary>
	/// Alpha to coverage is supported.
	/// </summary>
	public static var AlphaToCoverage : cpp.Int64        = 0x0000000000000001i64;

	/// <summary>
	/// Blend independent is supported.
	/// </summary>
	public static var BlendIndependent : cpp.Int64       = 0x0000000000000002i64;

	/// <summary>
	/// Compute shaders are supported.
	/// </summary>
	public static var Compute : cpp.Int64                = 0x0000000000000004i64;

	/// <summary>
	/// Conservative rasterization is supported.
	/// </summary>
	public static var ConservativeRaster : cpp.Int64     = 0x0000000000000008i64;

	/// <summary>
	/// Draw indirect is supported.
	/// </summary>
	public static var DrawIndirect : cpp.Int64           = 0x0000000000000010i64;

	/// <summary>
	/// Fragment depth is available in fragment shader.
	/// </summary>
	public static var FragmentDepth : cpp.Int64          = 0x0000000000000020i64;

	/// <summary>
	/// Fragment ordering is available in fragment shader.
	/// </summary>
	public static var FragmentOrdering : cpp.Int64       = 0x0000000000000040i64;

	/// <summary>
	/// Graphics debugger is present.
	/// </summary>
	public static var GraphicsDebugger : cpp.Int64       = 0x0000000000000080i64;

	/// <summary>
	/// HDR10 rendering is supported.
	/// </summary>
	public static var Hdr10 : cpp.Int64                  = 0x0000000000000100i64;

	/// <summary>
	/// HiDPI rendering is supported.
	/// </summary>
	public static var Hidpi : cpp.Int64                  = 0x0000000000000200i64;

	/// <summary>
	/// Image Read/Write is supported.
	/// </summary>
	public static var ImageRw : cpp.Int64                = 0x0000000000000400i64;

	/// <summary>
	/// 32-bit indices are supported.
	/// </summary>
	public static var Index32 : cpp.Int64                = 0x0000000000000800i64;

	/// <summary>
	/// Instancing is supported.
	/// </summary>
	public static var Instancing : cpp.Int64             = 0x0000000000001000i64;

	/// <summary>
	/// Occlusion query is supported.
	/// </summary>
	public static var OcclusionQuery : cpp.Int64         = 0x0000000000002000i64;

	/// <summary>
	/// Renderer is on separate thread.
	/// </summary>
	public static var RendererMultithreaded : cpp.Int64  = 0x0000000000004000i64;

	/// <summary>
	/// Multiple windows are supported.
	/// </summary>
	public static var SwapChain : cpp.Int64              = 0x0000000000008000i64;

	/// <summary>
	/// 2D texture array is supported.
	/// </summary>
	public static var Texture2dArray : cpp.Int64         = 0x0000000000010000i64;

	/// <summary>
	/// 3D textures are supported.
	/// </summary>
	public static var Texture3d : cpp.Int64              = 0x0000000000020000i64;

	/// <summary>
	/// Texture blit is supported.
	/// </summary>
	public static var TextureBlit : cpp.Int64            = 0x0000000000040000i64;

	/// <summary>
	/// Transparent back buffer supported.
	/// </summary>
	public static var TransparentBackbuffer : cpp.Int64  = 0x0000000000080000i64;
	public static var TextureCompareReserved : cpp.Int64 = 0x0000000000100000i64;

	/// <summary>
	/// Texture compare less equal mode is supported.
	/// </summary>
	public static var TextureCompareLequal : cpp.Int64   = 0x0000000000200000i64;

	/// <summary>
	/// Cubemap texture array is supported.
	/// </summary>
	public static var TextureCubeArray : cpp.Int64       = 0x0000000000400000i64;

	/// <summary>
	/// CPU direct access to GPU texture memory.
	/// </summary>
	public static var TextureDirectAccess : cpp.Int64    = 0x0000000000800000i64;

	/// <summary>
	/// Read-back texture is supported.
	/// </summary>
	public static var TextureReadBack : cpp.Int64        = 0x0000000001000000i64;

	/// <summary>
	/// Vertex attribute half-float is supported.
	/// </summary>
	public static var VertexAttribHalf : cpp.Int64       = 0x0000000002000000i64;

	/// <summary>
	/// Vertex attribute 10_10_10_2 is supported.
	/// </summary>
	public static var VertexAttribUint10 : cpp.Int64     = 0x0000000004000000i64;

	/// <summary>
	/// Rendering with VertexID only is supported.
	/// </summary>
	public static var VertexId : cpp.Int64               = 0x0000000008000000i64;

	/// <summary>
	/// PrimitiveID is available in fragment shader.
	/// </summary>
	public static var PrimitiveId : cpp.Int64            = 0x0000000010000000i64;

	/// <summary>
	/// Viewport layer is available in vertex shader.
	/// </summary>
	public static var ViewportLayerArray : cpp.Int64     = 0x0000000020000000i64;

	/// <summary>
	/// Draw indirect with indirect count is supported.
	/// </summary>
	public static var DrawIndirectCount : cpp.Int64      = 0x0000000040000000i64;

	/// <summary>
	/// All texture compare modes are supported.
	/// </summary>
	public static var TextureCompareAll : cpp.Int64      = 0x0000000000300000i64;
}

class CapsFormatFlags
{
	/// <summary>
	/// Texture format is not supported.
	/// </summary>
	public static var TextureNone : Int            = 0x00000000;

	/// <summary>
	/// Texture format is supported.
	/// </summary>
	public static var Texture2d : Int              = 0x00000001;

	/// <summary>
	/// Texture as sRGB format is supported.
	/// </summary>
	public static var Texture2dSrgb : Int          = 0x00000002;

	/// <summary>
	/// Texture format is emulated.
	/// </summary>
	public static var Texture2dEmulated : Int      = 0x00000004;

	/// <summary>
	/// Texture format is supported.
	/// </summary>
	public static var Texture3d : Int              = 0x00000008;

	/// <summary>
	/// Texture as sRGB format is supported.
	/// </summary>
	public static var Texture3dSrgb : Int          = 0x00000010;

	/// <summary>
	/// Texture format is emulated.
	/// </summary>
	public static var Texture3dEmulated : Int      = 0x00000020;

	/// <summary>
	/// Texture format is supported.
	/// </summary>
	public static var TextureCube : Int            = 0x00000040;

	/// <summary>
	/// Texture as sRGB format is supported.
	/// </summary>
	public static var TextureCubeSrgb : Int        = 0x00000080;

	/// <summary>
	/// Texture format is emulated.
	/// </summary>
	public static var TextureCubeEmulated : Int    = 0x00000100;

	/// <summary>
	/// Texture format can be used from vertex shader.
	/// </summary>
	public static var TextureVertex : Int          = 0x00000200;

	/// <summary>
	/// Texture format can be used as image and read from.
	/// </summary>
	public static var TextureImageRead : Int       = 0x00000400;

	/// <summary>
	/// Texture format can be used as image and written to.
	/// </summary>
	public static var TextureImageWrite : Int      = 0x00000800;

	/// <summary>
	/// Texture format can be used as frame buffer.
	/// </summary>
	public static var TextureFramebuffer : Int     = 0x00001000;

	/// <summary>
	/// Texture format can be used as MSAA frame buffer.
	/// </summary>
	public static var TextureFramebufferMsaa : Int = 0x00002000;

	/// <summary>
	/// Texture can be sampled as MSAA.
	/// </summary>
	public static var TextureMsaa : Int            = 0x00004000;

	/// <summary>
	/// Texture format supports auto-generated mips.
	/// </summary>
	public static var TextureMipAutogen : Int      = 0x00008000;
}

class ResolveFlags
{
	/// <summary>
	/// No resolve flags.
	/// </summary>
	public static var None : Int                   = 0x00000000;

	/// <summary>
	/// Auto-generate mip maps on resolve.
	/// </summary>
	public static var AutoGenMips : Int            = 0x00000001;
}

class PciIdFlags
{
	/// <summary>
	/// Autoselect adapter.
	/// </summary>
	public static var None : cpp.Int16                   = 0x0000;

	/// <summary>
	/// Software rasterizer.
	/// </summary>
	public static var SoftwareRasterizer : cpp.Int16     = 0x0001;

	/// <summary>
	/// AMD adapter.
	/// </summary>
	public static var Amd : cpp.Int16                    = 0x1002;

	/// <summary>
	/// Apple adapter.
	/// </summary>
	public static var Apple : cpp.Int16                  = 0x106b;

	/// <summary>
	/// Intel adapter.
	/// </summary>
	public static var Intel : cpp.Int16                  = 0x8086;

	/// <summary>
	/// nVidia adapter.
	/// </summary>
	public static var Nvidia : cpp.Int16                 = 0x10de;

	/// <summary>
	/// Microsoft adapter.
	/// </summary>
	public static var Microsoft : cpp.Int16              = 0x1414;

	/// <summary>
	/// ARM adapter.
	/// </summary>
	public static var Arm : cpp.Int16                    = 0x13b5;
}

class CubeMapFlags
{
	/// <summary>
	/// Cubemap +x.
	/// </summary>
	public static var PositiveX : Int              = 0x00000000;

	/// <summary>
	/// Cubemap -x.
	/// </summary>
	public static var NegativeX : Int              = 0x00000001;

	/// <summary>
	/// Cubemap +y.
	/// </summary>
	public static var PositiveY : Int              = 0x00000002;

	/// <summary>
	/// Cubemap -y.
	/// </summary>
	public static var NegativeY : Int              = 0x00000003;

	/// <summary>
	/// Cubemap +z.
	/// </summary>
	public static var PositiveZ : Int              = 0x00000004;

	/// <summary>
	/// Cubemap -z.
	/// </summary>
	public static var NegativeZ : Int              = 0x00000005;
}

@:include("bgfx/c99/bgfx.h")
extern enum abstract Fatal(FatalImpl) {
	@:native("bgfx_fatal_t::BGFX_FATAL_DEBUG_CHECK")
	var DebugCheck;
	@:native("bgfx_fatal_t::BGFX_FATAL_INVALID_SHADER")
	var InvalidShader;
	@:native("bgfx_fatal_t::BGFX_FATAL_UNABLE_TO_INITIALIZE")
	var UnableToInitialize;
	@:native("bgfx_fatal_t::BGFX_FATAL_UNABLE_TO_CREATE_TEXTURE")
	var UnableToCreateTexture;
	@:native("bgfx_fatal_t::BGFX_FATAL_DEVICE_LOST")
	var DeviceLost;

	@:native('bgfx_fatal_t::BGFX_FATAL_COUNT')
	var Count;
}
@:native("cpp::Struct<bgfx_fatal_t, cpp::EnumHandler>")
extern class FatalImpl { }

@:include("bgfx/c99/bgfx.h")
extern enum abstract RendererType(RendererTypeImpl) {
	/// <summary>
	/// No rendering.
	/// </summary>
	@:native("bgfx_renderer_type_t::BGFX_RENDERER_TYPE_NOOP")
	var Noop;

	/// <summary>
	/// AGC
	/// </summary>
	@:native("bgfx_renderer_type_t::BGFX_RENDERER_TYPE_AGC")
	var Agc;

	/// <summary>
	/// Direct3D 11.0
	/// </summary>
	@:native("bgfx_renderer_type_t::BGFX_RENDERER_TYPE_DIRECT3D11")
	var Direct3D11;

	/// <summary>
	/// Direct3D 12.0
	/// </summary>
	@:native("bgfx_renderer_type_t::BGFX_RENDERER_TYPE_DIRECT3D12")
	var Direct3D12;

	/// <summary>
	/// GNM
	/// </summary>
	@:native("bgfx_renderer_type_t::BGFX_RENDERER_TYPE_GNM")
	var Gnm;

	/// <summary>
	/// Metal
	/// </summary>
	@:native("bgfx_renderer_type_t::BGFX_RENDERER_TYPE_METAL")
	var Metal;

	/// <summary>
	/// NVN
	/// </summary>
	@:native("bgfx_renderer_type_t::BGFX_RENDERER_TYPE_NVN")
	var Nvn;

	/// <summary>
	/// OpenGL ES 2.0+
	/// </summary>
	@:native("bgfx_renderer_type_t::BGFX_RENDERER_TYPE_OPENGLES")
	var OpenGLES;

	/// <summary>
	/// OpenGL 2.1+
	/// </summary>
	@:native("bgfx_renderer_type_t::BGFX_RENDERER_TYPE_OPENGL")
	var OpenGL;

	/// <summary>
	/// Vulkan
	/// </summary>
	@:native("bgfx_renderer_type_t::BGFX_RENDERER_TYPE_VULKAN")
	var Vulkan;

	@:native('bgfx_renderer_type_t::BGFX_RENDERER_TYPE_COUNT')
	var Count;
}
@:native("cpp::Struct<bgfx_renderer_type_t, cpp::EnumHandler>")
extern class RendererTypeImpl { }

@:include("bgfx/c99/bgfx.h")
extern enum abstract Access(AccessImpl) {
	/// <summary>
	/// Read.
	/// </summary>
	@:native("bgfx_access_t::BGFX_ACCESS_READ")
	var Read;

	/// <summary>
	/// Write.
	/// </summary>
	@:native("bgfx_access_t::BGFX_ACCESS_WRITE")
	var Write;

	/// <summary>
	/// Read and write.
	/// </summary>
	@:native("bgfx_access_t::BGFX_ACCESS_READ_WRITE")
	var ReadWrite;

	@:native('bgfx_access_t::BGFX_ACCESS_COUNT')
	var Count;
}
@:native("cpp::Struct<bgfx_access_t, cpp::EnumHandler>")
extern class AccessImpl { }

@:include("bgfx/c99/bgfx.h")
extern enum abstract Attrib(AttribImpl) {
	/// <summary>
	/// a_position
	/// </summary>
	@:native("bgfx_attrib_t::BGFX_ATTRIB_POSITION")
	var Position;

	/// <summary>
	/// a_normal
	/// </summary>
	@:native("bgfx_attrib_t::BGFX_ATTRIB_NORMAL")
	var Normal;

	/// <summary>
	/// a_tangent
	/// </summary>
	@:native("bgfx_attrib_t::BGFX_ATTRIB_TANGENT")
	var Tangent;

	/// <summary>
	/// a_bitangent
	/// </summary>
	@:native("bgfx_attrib_t::BGFX_ATTRIB_BITANGENT")
	var Bitangent;

	/// <summary>
	/// a_color0
	/// </summary>
	@:native("bgfx_attrib_t::BGFX_ATTRIB_COLOR0")
	var Color0;

	/// <summary>
	/// a_color1
	/// </summary>
	@:native("bgfx_attrib_t::BGFX_ATTRIB_COLOR1")
	var Color1;

	/// <summary>
	/// a_color2
	/// </summary>
	@:native("bgfx_attrib_t::BGFX_ATTRIB_COLOR2")
	var Color2;

	/// <summary>
	/// a_color3
	/// </summary>
	@:native("bgfx_attrib_t::BGFX_ATTRIB_COLOR3")
	var Color3;

	/// <summary>
	/// a_indices
	/// </summary>
	@:native("bgfx_attrib_t::BGFX_ATTRIB_INDICES")
	var Indices;

	/// <summary>
	/// a_weight
	/// </summary>
	@:native("bgfx_attrib_t::BGFX_ATTRIB_WEIGHT")
	var Weight;

	/// <summary>
	/// a_texcoord0
	/// </summary>
	@:native("bgfx_attrib_t::BGFX_ATTRIB_TEX_COORD0")
	var TexCoord0;

	/// <summary>
	/// a_texcoord1
	/// </summary>
	@:native("bgfx_attrib_t::BGFX_ATTRIB_TEX_COORD1")
	var TexCoord1;

	/// <summary>
	/// a_texcoord2
	/// </summary>
	@:native("bgfx_attrib_t::BGFX_ATTRIB_TEX_COORD2")
	var TexCoord2;

	/// <summary>
	/// a_texcoord3
	/// </summary>
	@:native("bgfx_attrib_t::BGFX_ATTRIB_TEX_COORD3")
	var TexCoord3;

	/// <summary>
	/// a_texcoord4
	/// </summary>
	@:native("bgfx_attrib_t::BGFX_ATTRIB_TEX_COORD4")
	var TexCoord4;

	/// <summary>
	/// a_texcoord5
	/// </summary>
	@:native("bgfx_attrib_t::BGFX_ATTRIB_TEX_COORD5")
	var TexCoord5;

	/// <summary>
	/// a_texcoord6
	/// </summary>
	@:native("bgfx_attrib_t::BGFX_ATTRIB_TEX_COORD6")
	var TexCoord6;

	/// <summary>
	/// a_texcoord7
	/// </summary>
	@:native("bgfx_attrib_t::BGFX_ATTRIB_TEX_COORD7")
	var TexCoord7;

	@:native('bgfx_attrib_t::BGFX_ATTRIB_COUNT')
	var Count;
}
@:native("cpp::Struct<bgfx_attrib_t, cpp::EnumHandler>")
extern class AttribImpl { }

@:include("bgfx/c99/bgfx.h")
extern enum abstract AttribType(AttribTypeImpl) {
	/// <summary>
	/// Uint8
	/// </summary>
	@:native("bgfx_attrib_type_t::BGFX_ATTRIB_TYPE_UINT8")
	var Uint8;

	/// <summary>
	/// Uint10, availability depends on: `BGFX_CAPS_VERTEX_ATTRIB_UINT10`.
	/// </summary>
	@:native("bgfx_attrib_type_t::BGFX_ATTRIB_TYPE_UINT10")
	var Uint10;

	/// <summary>
	/// Int16
	/// </summary>
	@:native("bgfx_attrib_type_t::BGFX_ATTRIB_TYPE_INT16")
	var Int16;

	/// <summary>
	/// Half, availability depends on: `BGFX_CAPS_VERTEX_ATTRIB_HALF`.
	/// </summary>
	@:native("bgfx_attrib_type_t::BGFX_ATTRIB_TYPE_HALF")
	var Half;

	/// <summary>
	/// Float
	/// </summary>
	@:native("bgfx_attrib_type_t::BGFX_ATTRIB_TYPE_FLOAT")
	var Float;

	@:native('bgfx_attrib_type_t::BGFX_ATTRIB_TYPE_COUNT')
	var Count;
}
@:native("cpp::Struct<bgfx_attrib_type_t, cpp::EnumHandler>")
extern class AttribTypeImpl { }

@:include("bgfx/c99/bgfx.h")
extern enum abstract TextureFormat(TextureFormatImpl) {
	/// <summary>
	/// DXT1 R5G6B5A1
	/// </summary>
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_BC1")
	var BC1;

	/// <summary>
	/// DXT3 R5G6B5A4
	/// </summary>
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_BC2")
	var BC2;

	/// <summary>
	/// DXT5 R5G6B5A8
	/// </summary>
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_BC3")
	var BC3;

	/// <summary>
	/// LATC1/ATI1 R8
	/// </summary>
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_BC4")
	var BC4;

	/// <summary>
	/// LATC2/ATI2 RG8
	/// </summary>
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_BC5")
	var BC5;

	/// <summary>
	/// BC6H RGB16F
	/// </summary>
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_BC6H")
	var BC6H;

	/// <summary>
	/// BC7 RGB 4-7 bits per color channel, 0-8 bits alpha
	/// </summary>
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_BC7")
	var BC7;

	/// <summary>
	/// ETC1 RGB8
	/// </summary>
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_ETC1")
	var ETC1;

	/// <summary>
	/// ETC2 RGB8
	/// </summary>
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_ETC2")
	var ETC2;

	/// <summary>
	/// ETC2 RGBA8
	/// </summary>
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_ETC2A")
	var ETC2A;

	/// <summary>
	/// ETC2 RGB8A1
	/// </summary>
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_ETC2A1")
	var ETC2A1;

	/// <summary>
	/// PVRTC1 RGB 2BPP
	/// </summary>
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_PTC12")
	var PTC12;

	/// <summary>
	/// PVRTC1 RGB 4BPP
	/// </summary>
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_PTC14")
	var PTC14;

	/// <summary>
	/// PVRTC1 RGBA 2BPP
	/// </summary>
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_PTC12A")
	var PTC12A;

	/// <summary>
	/// PVRTC1 RGBA 4BPP
	/// </summary>
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_PTC14A")
	var PTC14A;

	/// <summary>
	/// PVRTC2 RGBA 2BPP
	/// </summary>
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_PTC22")
	var PTC22;

	/// <summary>
	/// PVRTC2 RGBA 4BPP
	/// </summary>
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_PTC24")
	var PTC24;

	/// <summary>
	/// ATC RGB 4BPP
	/// </summary>
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_ATC")
	var ATC;

	/// <summary>
	/// ATCE RGBA 8 BPP explicit alpha
	/// </summary>
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_ATCE")
	var ATCE;

	/// <summary>
	/// ATCI RGBA 8 BPP interpolated alpha
	/// </summary>
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_ATCI")
	var ATCI;

	/// <summary>
	/// ASTC 4x4 8.0 BPP
	/// </summary>
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_ASTC4X4")
	var ASTC4x4;

	/// <summary>
	/// ASTC 5x4 6.40 BPP
	/// </summary>
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_ASTC5X4")
	var ASTC5x4;

	/// <summary>
	/// ASTC 5x5 5.12 BPP
	/// </summary>
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_ASTC5X5")
	var ASTC5x5;

	/// <summary>
	/// ASTC 6x5 4.27 BPP
	/// </summary>
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_ASTC6X5")
	var ASTC6x5;

	/// <summary>
	/// ASTC 6x6 3.56 BPP
	/// </summary>
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_ASTC6X6")
	var ASTC6x6;

	/// <summary>
	/// ASTC 8x5 3.20 BPP
	/// </summary>
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_ASTC8X5")
	var ASTC8x5;

	/// <summary>
	/// ASTC 8x6 2.67 BPP
	/// </summary>
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_ASTC8X6")
	var ASTC8x6;

	/// <summary>
	/// ASTC 8x8 2.00 BPP
	/// </summary>
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_ASTC8X8")
	var ASTC8x8;

	/// <summary>
	/// ASTC 10x5 2.56 BPP
	/// </summary>
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_ASTC10X5")
	var ASTC10x5;

	/// <summary>
	/// ASTC 10x6 2.13 BPP
	/// </summary>
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_ASTC10X6")
	var ASTC10x6;

	/// <summary>
	/// ASTC 10x8 1.60 BPP
	/// </summary>
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_ASTC10X8")
	var ASTC10x8;

	/// <summary>
	/// ASTC 10x10 1.28 BPP
	/// </summary>
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_ASTC10X10")
	var ASTC10x10;

	/// <summary>
	/// ASTC 12x10 1.07 BPP
	/// </summary>
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_ASTC12X10")
	var ASTC12x10;

	/// <summary>
	/// ASTC 12x12 0.89 BPP
	/// </summary>
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_ASTC12X12")
	var ASTC12x12;

	/// <summary>
	/// Compressed formats above.
	/// </summary>
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_UNKNOWN")
	var Unknown;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_R1")
	var R1;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_A8")
	var A8;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_R8")
	var R8;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_R8I")
	var R8I;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_R8U")
	var R8U;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_R8S")
	var R8S;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_R16")
	var R16;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_R16I")
	var R16I;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_R16U")
	var R16U;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_R16F")
	var R16F;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_R16S")
	var R16S;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_R32I")
	var R32I;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_R32U")
	var R32U;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_R32F")
	var R32F;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_RG8")
	var RG8;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_RG8I")
	var RG8I;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_RG8U")
	var RG8U;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_RG8S")
	var RG8S;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_RG16")
	var RG16;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_RG16I")
	var RG16I;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_RG16U")
	var RG16U;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_RG16F")
	var RG16F;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_RG16S")
	var RG16S;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_RG32I")
	var RG32I;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_RG32U")
	var RG32U;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_RG32F")
	var RG32F;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_RGB8")
	var RGB8;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_RGB8I")
	var RGB8I;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_RGB8U")
	var RGB8U;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_RGB8S")
	var RGB8S;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_RGB9E5F")
	var RGB9E5F;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_BGRA8")
	var BGRA8;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_RGBA8")
	var RGBA8;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_RGBA8I")
	var RGBA8I;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_RGBA8U")
	var RGBA8U;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_RGBA8S")
	var RGBA8S;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_RGBA16")
	var RGBA16;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_RGBA16I")
	var RGBA16I;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_RGBA16U")
	var RGBA16U;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_RGBA16F")
	var RGBA16F;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_RGBA16S")
	var RGBA16S;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_RGBA32I")
	var RGBA32I;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_RGBA32U")
	var RGBA32U;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_RGBA32F")
	var RGBA32F;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_B5G6R5")
	var B5G6R5;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_R5G6B5")
	var R5G6B5;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_BGRA4")
	var BGRA4;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_RGBA4")
	var RGBA4;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_BGR5A1")
	var BGR5A1;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_RGB5A1")
	var RGB5A1;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_RGB10A2")
	var RGB10A2;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_RG11B10F")
	var RG11B10F;

	/// <summary>
	/// Depth formats below.
	/// </summary>
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_UNKNOWN_DEPTH")
	var UnknownDepth;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_D16")
	var D16;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_D24")
	var D24;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_D24S8")
	var D24S8;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_D32")
	var D32;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_D16F")
	var D16F;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_D24F")
	var D24F;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_D32F")
	var D32F;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_D0S8")
	var D0S8;

	@:native('bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_COUNT')
	var Count;
}
@:native("cpp::Struct<bgfx_texture_format_t, cpp::EnumHandler>")
extern class TextureFormatImpl { }

@:include("bgfx/c99/bgfx.h")
extern enum abstract UniformType(UniformTypeImpl) {
	/// <summary>
	/// Sampler.
	/// </summary>
	@:native("bgfx_uniform_type_t::BGFX_UNIFORM_TYPE_SAMPLER")
	var Sampler;

	/// <summary>
	/// Reserved, do not use.
	/// </summary>
	@:native("bgfx_uniform_type_t::BGFX_UNIFORM_TYPE_END")
	var End;

	/// <summary>
	/// 4 floats vector.
	/// </summary>
	@:native("bgfx_uniform_type_t::BGFX_UNIFORM_TYPE_VEC4")
	var Vec4;

	/// <summary>
	/// 3x3 matrix.
	/// </summary>
	@:native("bgfx_uniform_type_t::BGFX_UNIFORM_TYPE_MAT3")
	var Mat3;

	/// <summary>
	/// 4x4 matrix.
	/// </summary>
	@:native("bgfx_uniform_type_t::BGFX_UNIFORM_TYPE_MAT4")
	var Mat4;

	@:native('bgfx_uniform_type_t::BGFX_UNIFORM_TYPE_COUNT')
	var Count;
}
@:native("cpp::Struct<bgfx_uniform_type_t, cpp::EnumHandler>")
extern class UniformTypeImpl { }

@:include("bgfx/c99/bgfx.h")
extern enum abstract BackbufferRatio(BackbufferRatioImpl) {
	/// <summary>
	/// Equal to backbuffer.
	/// </summary>
	@:native("bgfx_backbuffer_ratio_t::BGFX_BACKBUFFER_RATIO_EQUAL")
	var Equal;

	/// <summary>
	/// One half size of backbuffer.
	/// </summary>
	@:native("bgfx_backbuffer_ratio_t::BGFX_BACKBUFFER_RATIO_HALF")
	var Half;

	/// <summary>
	/// One quarter size of backbuffer.
	/// </summary>
	@:native("bgfx_backbuffer_ratio_t::BGFX_BACKBUFFER_RATIO_QUARTER")
	var Quarter;

	/// <summary>
	/// One eighth size of backbuffer.
	/// </summary>
	@:native("bgfx_backbuffer_ratio_t::BGFX_BACKBUFFER_RATIO_EIGHTH")
	var Eighth;

	/// <summary>
	/// One sixteenth size of backbuffer.
	/// </summary>
	@:native("bgfx_backbuffer_ratio_t::BGFX_BACKBUFFER_RATIO_SIXTEENTH")
	var Sixteenth;

	/// <summary>
	/// Double size of backbuffer.
	/// </summary>
	@:native("bgfx_backbuffer_ratio_t::BGFX_BACKBUFFER_RATIO_DOUBLE")
	var Double;

	@:native('bgfx_backbuffer_ratio_t::BGFX_BACKBUFFER_RATIO_COUNT')
	var Count;
}
@:native("cpp::Struct<bgfx_backbuffer_ratio_t, cpp::EnumHandler>")
extern class BackbufferRatioImpl { }

@:include("bgfx/c99/bgfx.h")
extern enum abstract OcclusionQueryResult(OcclusionQueryResultImpl) {
	/// <summary>
	/// Query failed test.
	/// </summary>
	@:native("bgfx_occlusion_query_result_t::BGFX_OCCLUSION_QUERY_RESULT_INVISIBLE")
	var Invisible;

	/// <summary>
	/// Query passed test.
	/// </summary>
	@:native("bgfx_occlusion_query_result_t::BGFX_OCCLUSION_QUERY_RESULT_VISIBLE")
	var Visible;

	/// <summary>
	/// Query result is not available yet.
	/// </summary>
	@:native("bgfx_occlusion_query_result_t::BGFX_OCCLUSION_QUERY_RESULT_NO_RESULT")
	var NoResult;

	@:native('bgfx_occlusion_query_result_t::BGFX_OCCLUSION_QUERY_RESULT_COUNT')
	var Count;
}
@:native("cpp::Struct<bgfx_occlusion_query_result_t, cpp::EnumHandler>")
extern class OcclusionQueryResultImpl { }

@:include("bgfx/c99/bgfx.h")
extern enum abstract Topology(TopologyImpl) {
	/// <summary>
	/// Triangle list.
	/// </summary>
	@:native("bgfx_topology_t::BGFX_TOPOLOGY_TRI_LIST")
	var TriList;

	/// <summary>
	/// Triangle strip.
	/// </summary>
	@:native("bgfx_topology_t::BGFX_TOPOLOGY_TRI_STRIP")
	var TriStrip;

	/// <summary>
	/// Line list.
	/// </summary>
	@:native("bgfx_topology_t::BGFX_TOPOLOGY_LINE_LIST")
	var LineList;

	/// <summary>
	/// Line strip.
	/// </summary>
	@:native("bgfx_topology_t::BGFX_TOPOLOGY_LINE_STRIP")
	var LineStrip;

	/// <summary>
	/// Point list.
	/// </summary>
	@:native("bgfx_topology_t::BGFX_TOPOLOGY_POINT_LIST")
	var PointList;

	@:native('bgfx_topology_t::BGFX_TOPOLOGY_COUNT')
	var Count;
}
@:native("cpp::Struct<bgfx_topology_t, cpp::EnumHandler>")
extern class TopologyImpl { }

@:include("bgfx/c99/bgfx.h")
extern enum abstract TopologyConvert(TopologyConvertImpl) {
	/// <summary>
	/// Flip winding order of triangle list.
	/// </summary>
	@:native("bgfx_topology_convert_t::BGFX_TOPOLOGY_CONVERT_TRI_LIST_FLIP_WINDING")
	var TriListFlipWinding;

	/// <summary>
	/// Flip winding order of triangle strip.
	/// </summary>
	@:native("bgfx_topology_convert_t::BGFX_TOPOLOGY_CONVERT_TRI_STRIP_FLIP_WINDING")
	var TriStripFlipWinding;

	/// <summary>
	/// Convert triangle list to line list.
	/// </summary>
	@:native("bgfx_topology_convert_t::BGFX_TOPOLOGY_CONVERT_TRI_LIST_TO_LINE_LIST")
	var TriListToLineList;

	/// <summary>
	/// Convert triangle strip to triangle list.
	/// </summary>
	@:native("bgfx_topology_convert_t::BGFX_TOPOLOGY_CONVERT_TRI_STRIP_TO_TRI_LIST")
	var TriStripToTriList;

	/// <summary>
	/// Convert line strip to line list.
	/// </summary>
	@:native("bgfx_topology_convert_t::BGFX_TOPOLOGY_CONVERT_LINE_STRIP_TO_LINE_LIST")
	var LineStripToLineList;

	@:native('bgfx_topology_convert_t::BGFX_TOPOLOGY_CONVERT_COUNT')
	var Count;
}
@:native("cpp::Struct<bgfx_topology_convert_t, cpp::EnumHandler>")
extern class TopologyConvertImpl { }

@:include("bgfx/c99/bgfx.h")
extern enum abstract TopologySort(TopologySortImpl) {
	@:native("bgfx_topology_sort_t::BGFX_TOPOLOGY_SORT_DIRECTION_FRONT_TO_BACK_MIN")
	var DirectionFrontToBackMin;
	@:native("bgfx_topology_sort_t::BGFX_TOPOLOGY_SORT_DIRECTION_FRONT_TO_BACK_AVG")
	var DirectionFrontToBackAvg;
	@:native("bgfx_topology_sort_t::BGFX_TOPOLOGY_SORT_DIRECTION_FRONT_TO_BACK_MAX")
	var DirectionFrontToBackMax;
	@:native("bgfx_topology_sort_t::BGFX_TOPOLOGY_SORT_DIRECTION_BACK_TO_FRONT_MIN")
	var DirectionBackToFrontMin;
	@:native("bgfx_topology_sort_t::BGFX_TOPOLOGY_SORT_DIRECTION_BACK_TO_FRONT_AVG")
	var DirectionBackToFrontAvg;
	@:native("bgfx_topology_sort_t::BGFX_TOPOLOGY_SORT_DIRECTION_BACK_TO_FRONT_MAX")
	var DirectionBackToFrontMax;
	@:native("bgfx_topology_sort_t::BGFX_TOPOLOGY_SORT_DISTANCE_FRONT_TO_BACK_MIN")
	var DistanceFrontToBackMin;
	@:native("bgfx_topology_sort_t::BGFX_TOPOLOGY_SORT_DISTANCE_FRONT_TO_BACK_AVG")
	var DistanceFrontToBackAvg;
	@:native("bgfx_topology_sort_t::BGFX_TOPOLOGY_SORT_DISTANCE_FRONT_TO_BACK_MAX")
	var DistanceFrontToBackMax;
	@:native("bgfx_topology_sort_t::BGFX_TOPOLOGY_SORT_DISTANCE_BACK_TO_FRONT_MIN")
	var DistanceBackToFrontMin;
	@:native("bgfx_topology_sort_t::BGFX_TOPOLOGY_SORT_DISTANCE_BACK_TO_FRONT_AVG")
	var DistanceBackToFrontAvg;
	@:native("bgfx_topology_sort_t::BGFX_TOPOLOGY_SORT_DISTANCE_BACK_TO_FRONT_MAX")
	var DistanceBackToFrontMax;

	@:native('bgfx_topology_sort_t::BGFX_TOPOLOGY_SORT_COUNT')
	var Count;
}
@:native("cpp::Struct<bgfx_topology_sort_t, cpp::EnumHandler>")
extern class TopologySortImpl { }

@:include("bgfx/c99/bgfx.h")
extern enum abstract ViewMode(ViewModeImpl) {
	/// <summary>
	/// Default sort order.
	/// </summary>
	@:native("bgfx_view_mode_t::BGFX_VIEW_MODE_DEFAULT")
	var Default;

	/// <summary>
	/// Sort in the same order in which submit calls were called.
	/// </summary>
	@:native("bgfx_view_mode_t::BGFX_VIEW_MODE_SEQUENTIAL")
	var Sequential;

	/// <summary>
	/// Sort draw call depth in ascending order.
	/// </summary>
	@:native("bgfx_view_mode_t::BGFX_VIEW_MODE_DEPTH_ASCENDING")
	var DepthAscending;

	/// <summary>
	/// Sort draw call depth in descending order.
	/// </summary>
	@:native("bgfx_view_mode_t::BGFX_VIEW_MODE_DEPTH_DESCENDING")
	var DepthDescending;

	@:native('bgfx_view_mode_t::BGFX_VIEW_MODE_COUNT')
	var Count;
}
@:native("cpp::Struct<bgfx_view_mode_t, cpp::EnumHandler>")
extern class ViewModeImpl { }

@:include("bgfx/c99/bgfx.h")
extern enum abstract NativeWindowHandleType(NativeWindowHandleTypeImpl) {
	/// <summary>
	/// Platform default handle type (X11 on Linux).
	/// </summary>
	@:native("bgfx_native_window_handle_type_t::BGFX_NATIVE_WINDOW_HANDLE_TYPE_DEFAULT")
	var Default;

	/// <summary>
	/// Wayland.
	/// </summary>
	@:native("bgfx_native_window_handle_type_t::BGFX_NATIVE_WINDOW_HANDLE_TYPE_WAYLAND")
	var Wayland;

	@:native('bgfx_native_window_handle_type_t::BGFX_NATIVE_WINDOW_HANDLE_TYPE_COUNT')
	var Count;
}
@:native("cpp::Struct<bgfx_native_window_handle_type_t, cpp::EnumHandler>")
extern class NativeWindowHandleTypeImpl { }

@:include("bgfx/c99/bgfx.h")
extern enum abstract RenderFrame(RenderFrameImpl) {
	/// <summary>
	/// Renderer context is not created yet.
	/// </summary>
	@:native("bgfx_render_frame_t::BGFX_RENDER_FRAME_NO_CONTEXT")
	var NoContext;

	/// <summary>
	/// Renderer context is created and rendering.
	/// </summary>
	@:native("bgfx_render_frame_t::BGFX_RENDER_FRAME_RENDER")
	var Render;

	/// <summary>
	/// Renderer context wait for main thread signal timed out without rendering.
	/// </summary>
	@:native("bgfx_render_frame_t::BGFX_RENDER_FRAME_TIMEOUT")
	var Timeout;

	/// <summary>
	/// Renderer context is getting destroyed.
	/// </summary>
	@:native("bgfx_render_frame_t::BGFX_RENDER_FRAME_EXITING")
	var Exiting;

	@:native('bgfx_render_frame_t::BGFX_RENDER_FRAME_COUNT')
	var Count;
}
@:native("cpp::Struct<bgfx_render_frame_t, cpp::EnumHandler>")
extern class RenderFrameImpl { }

@:include("bgfx/c99/bgfx.h")
@:structAccess
@:unreflective
@:native("bgfx_caps_gpu_t")
extern class CapsGPU {
    public function new();
    public var vendorId: cpp.UInt16;
    public var deviceId: cpp.UInt16;
}

@:include("bgfx/c99/bgfx.h")
@:structAccess
@:unreflective
@:native("bgfx_caps_limits_t")
extern class CapsLimits {
    public function new();
    public var maxDrawCalls: cpp.UInt32;
    public var maxBlits: cpp.UInt32;
    public var maxTextureSize: cpp.UInt32;
    public var maxTextureLayers: cpp.UInt32;
    public var maxViews: cpp.UInt32;
    public var maxFrameBuffers: cpp.UInt32;
    public var maxFBAttachments: cpp.UInt32;
    public var maxPrograms: cpp.UInt32;
    public var maxShaders: cpp.UInt32;
    public var maxTextures: cpp.UInt32;
    public var maxTextureSamplers: cpp.UInt32;
    public var maxComputeBindings: cpp.UInt32;
    public var maxVertexLayouts: cpp.UInt32;
    public var maxVertexStreams: cpp.UInt32;
    public var maxIndexBuffers: cpp.UInt32;
    public var maxVertexBuffers: cpp.UInt32;
    public var maxDynamicIndexBuffers: cpp.UInt32;
    public var maxDynamicVertexBuffers: cpp.UInt32;
    public var maxUniforms: cpp.UInt32;
    public var maxOcclusionQueries: cpp.UInt32;
    public var maxEncoders: cpp.UInt32;
    public var minResourceCbSize: cpp.UInt32;
    public var transientVbSize: cpp.UInt32;
    public var transientIbSize: cpp.UInt32;
}

@:include("bgfx/c99/bgfx.h")
@:structAccess
@:unreflective
@:native("bgfx_caps_t")
extern class Caps {
    public function new();
    public var rendererType: RendererType;
    public var supported: cpp.UInt64;
    public var vendorId: cpp.UInt16;
    public var deviceId: cpp.UInt16;
    public var homogeneousDepth: Bool;
    public var originBottomLeft: Bool;
    public var numGPUs: cpp.UInt8;
    public var gpu: CapsGPU;
    public var limits: CapsLimits;
    public var formats: Array<cpp.UInt16>; // [96]cpp.UInt16;
}

@:include("bgfx/c99/bgfx.h")
@:structAccess
@:unreflective
@:native("bgfx_internal_data_t")
extern class InternalData {
    public function new();
    public var caps: cpp.Star<Caps>;
    public var context: cpp.Star<cpp.Void>;
}

@:include("bgfx/c99/bgfx.h")
@:structAccess
@:unreflective
@:native("bgfx_platform_data_t")
extern class PlatformData {
    public function new();
    public var ndt: cpp.Star<cpp.Void>;
    public var nwh: cpp.Star<cpp.Void>;
    public var context: cpp.Star<cpp.Void>;
    public var backBuffer: cpp.Star<cpp.Void>;
    public var backBufferDS: cpp.Star<cpp.Void>;
    public var type: NativeWindowHandleType;
}

@:include("bgfx/c99/bgfx.h")
@:structAccess
@:unreflective
@:native("bgfx_resolution_t")
extern class Resolution {
    public function new();
    public var format: TextureFormat;
    public var width: cpp.UInt32;
    public var height: cpp.UInt32;
    public var reset: cpp.UInt32;
    public var numBackBuffers: cpp.UInt8;
    public var maxFrameLatency: cpp.UInt8;
    public var debugTextScale: cpp.UInt8;
}

@:include("bgfx/c99/bgfx.h")
@:structAccess
@:unreflective
@:native("bgfx_init_limits_t")
extern class InitLimits {
    public function new();
    public var maxEncoders: cpp.UInt16;
    public var minResourceCbSize: cpp.UInt32;
    public var transientVbSize: cpp.UInt32;
    public var transientIbSize: cpp.UInt32;
}

@:include("bgfx/c99/bgfx.h")
@:structAccess
@:unreflective
@:native("bgfx_init_t")
extern class Init {
    public function new();
    public var type: RendererType;
    public var vendorId: cpp.UInt16;
    public var deviceId: cpp.UInt16;
    public var capabilities: cpp.UInt64;
    public var debug: Bool;
    public var profile: Bool;
    public var platformData: PlatformData;
    public var resolution: Resolution;
    public var limits: InitLimits;
    public var callback: cpp.Star<cpp.Void>;
    public var allocator: cpp.Star<cpp.Void>;
}

@:include("bgfx/c99/bgfx.h")
@:structAccess
@:unreflective
@:native("bgfx_memory_t")
extern class Memory {
    public function new();
    public var data: cpp.Star<cpp.UInt8>;
    public var size: cpp.UInt32;
}

@:include("bgfx/c99/bgfx.h")
@:structAccess
@:unreflective
@:native("bgfx_transient_index_buffer_t")
extern class TransientIndexBuffer {
    public function new();
    public var data: cpp.Star<cpp.UInt8>;
    public var size: cpp.UInt32;
    public var startIndex: cpp.UInt32;
    public var handle: IndexBufferHandle;
    public var isIndex16: Bool;
}

@:include("bgfx/c99/bgfx.h")
@:structAccess
@:unreflective
@:native("bgfx_transient_vertex_buffer_t")
extern class TransientVertexBuffer {
    public function new();
    public var data: cpp.Star<cpp.UInt8>;
    public var size: cpp.UInt32;
    public var startVertex: cpp.UInt32;
    public var stride: cpp.UInt16;
    public var handle: VertexBufferHandle;
    public var layoutHandle: VertexLayoutHandle;
}

@:include("bgfx/c99/bgfx.h")
@:structAccess
@:unreflective
@:native("bgfx_instance_data_buffer_t")
extern class InstanceDataBuffer {
    public function new();
    public var data: cpp.Star<cpp.UInt8>;
    public var size: cpp.UInt32;
    public var offset: cpp.UInt32;
    public var num: cpp.UInt32;
    public var stride: cpp.UInt16;
    public var handle: VertexBufferHandle;
}

@:include("bgfx/c99/bgfx.h")
@:structAccess
@:unreflective
@:native("bgfx_texture_info_t")
extern class TextureInfo {
    public function new();
    public var format: TextureFormat;
    public var storageSize: cpp.UInt32;
    public var width: cpp.UInt16;
    public var height: cpp.UInt16;
    public var depth: cpp.UInt16;
    public var numLayers: cpp.UInt16;
    public var numMips: cpp.UInt8;
    public var bitsPerPixel: cpp.UInt8;
    public var cubeMap: Bool;
}

@:include("bgfx/c99/bgfx.h")
@:structAccess
@:unreflective
@:native("bgfx_uniform_info_t")
extern class UniformInfo {
    public function new();
    public var name: cpp.Char;
    public var type: UniformType;
    public var num: cpp.UInt16;
}

@:include("bgfx/c99/bgfx.h")
@:structAccess
@:unreflective
@:native("bgfx_attachment_t")
extern class Attachment {
    public function new();
    public var access: Access;
    public var handle: TextureHandle;
    public var mip: cpp.UInt16;
    public var layer: cpp.UInt16;
    public var numLayers: cpp.UInt16;
    public var resolve: cpp.UInt8;

    /// Init attachment.
    /// <param name="_handle">Render target texture handle.</param>
    /// <param name="_access">Access. See `Access::Enum`.</param>
    /// <param name="_layer">Cubemap side or depth layer/slice to use.</param>
    /// <param name="_numLayers">Number of texture layer/slice(s) in array to use.</param>
    /// <param name="_mip">Mip level.</param>
    /// <param name="_resolve">Resolve flags. See: `BGFX_RESOLVE_*`</param>
    inline public function init(_handle: TextureHandle, _access: Access, _layer: cpp.UInt16, _numLayers: cpp.UInt16, _mip: cpp.UInt16, _resolve: cpp.UInt8):cpp.Void {
        return Bgfx.bgfx_attachment_init(this, _handle, _access, _layer, _numLayers, _mip, _resolve);
    }
}

@:include("bgfx/c99/bgfx.h")
@:structAccess
@:unreflective
@:native("bgfx_transform_t")
extern class Transform {
    public function new();
    public var data: cpp.Star<cpp.Float32>;
    public var num: cpp.UInt16;
}

@:include("bgfx/c99/bgfx.h")
@:structAccess
@:unreflective
@:native("bgfx_view_stats_t")
extern class ViewStats {
    public function new();
    public var name: cpp.Char;
    public var view: ViewId;
    public var cpuTimeBegin: cpp.Int64;
    public var cpuTimeEnd: cpp.Int64;
    public var gpuTimeBegin: cpp.Int64;
    public var gpuTimeEnd: cpp.Int64;
    public var gpuFrameNum: cpp.UInt32;
}

@:include("bgfx/c99/bgfx.h")
@:structAccess
@:unreflective
@:native("bgfx_encoder_stats_t")
extern class EncoderStats {
    public function new();
    public var cpuTimeBegin: cpp.Int64;
    public var cpuTimeEnd: cpp.Int64;
}

@:include("bgfx/c99/bgfx.h")
@:structAccess
@:unreflective
@:native("bgfx_stats_t")
extern class Stats {
    public function new();
    public var cpuTimeFrame: cpp.Int64;
    public var cpuTimeBegin: cpp.Int64;
    public var cpuTimeEnd: cpp.Int64;
    public var cpuTimerFreq: cpp.Int64;
    public var gpuTimeBegin: cpp.Int64;
    public var gpuTimeEnd: cpp.Int64;
    public var gpuTimerFreq: cpp.Int64;
    public var waitRender: cpp.Int64;
    public var waitSubmit: cpp.Int64;
    public var numDraw: cpp.UInt32;
    public var numCompute: cpp.UInt32;
    public var numBlit: cpp.UInt32;
    public var maxGpuLatency: cpp.UInt32;
    public var gpuFrameNum: cpp.UInt32;
    public var numDynamicIndexBuffers: cpp.UInt16;
    public var numDynamicVertexBuffers: cpp.UInt16;
    public var numFrameBuffers: cpp.UInt16;
    public var numIndexBuffers: cpp.UInt16;
    public var numOcclusionQueries: cpp.UInt16;
    public var numPrograms: cpp.UInt16;
    public var numShaders: cpp.UInt16;
    public var numTextures: cpp.UInt16;
    public var numUniforms: cpp.UInt16;
    public var numVertexBuffers: cpp.UInt16;
    public var numVertexLayouts: cpp.UInt16;
    public var textureMemoryUsed: cpp.Int64;
    public var rtMemoryUsed: cpp.Int64;
    public var transientVbUsed: cpp.Int32;
    public var transientIbUsed: cpp.Int32;
    public var numPrims: Array<cpp.UInt32>; // [5]cpp.UInt32;
    public var gpuMemoryMax: cpp.Int64;
    public var gpuMemoryUsed: cpp.Int64;
    public var width: cpp.UInt16;
    public var height: cpp.UInt16;
    public var textWidth: cpp.UInt16;
    public var textHeight: cpp.UInt16;
    public var numViews: cpp.UInt16;
    public var viewStats: cpp.Star<ViewStats>;
    public var numEncoders: cpp.UInt8;
    public var encoderStats: cpp.Star<EncoderStats>;
}

@:include("bgfx/c99/bgfx.h")
@:structAccess
@:unreflective
@:native("bgfx_vertex_layout_t")
extern class VertexLayout {
    public function new();
    public var hash: cpp.UInt32;
    public var stride: cpp.UInt16;
    public var offset: Array<cpp.UInt16>; // [18]cpp.UInt16;
    public var attributes: Array<cpp.UInt16>; // [18]cpp.UInt16;

    /// Start VertexLayout.
    /// <param name="_rendererType">Renderer backend type. See: `bgfx::RendererType`</param>
    inline public function begin(_rendererType: RendererType):cpp.Star<VertexLayout> {
        return Bgfx.bgfx_vertex_layout_begin(this, _rendererType);
    }

    /// Add attribute to VertexLayout.
    /// @remarks Must be called between begin/end.
    /// <param name="_attrib">Attribute semantics. See: `bgfx::Attrib`</param>
    /// <param name="_num">Number of elements 1, 2, 3 or 4.</param>
    /// <param name="_type">Element type.</param>
    /// <param name="_normalized">When using fixed point AttribType (f.e. Uint8) value will be normalized for vertex shader usage. When normalized is set to true, AttribType::Uint8 value in range 0-255 will be in range 0.0-1.0 in vertex shader.</param>
    /// <param name="_asInt">Packaging rule for vertexPack, vertexUnpack, and vertexConvert for AttribType::Uint8 and AttribType::Int16. Unpacking code must be implemented inside vertex shader.</param>
    inline public function add(_attrib: Attrib, _num: cpp.UInt8, _type: AttribType, _normalized: Bool, _asInt: Bool):cpp.Star<VertexLayout> {
        return Bgfx.bgfx_vertex_layout_add(this, _attrib, _num, _type, _normalized, _asInt);
    }

    /// Decode attribute.
    /// <param name="_attrib">Attribute semantics. See: `bgfx::Attrib`</param>
    /// <param name="_num">Number of elements.</param>
    /// <param name="_type">Element type.</param>
    /// <param name="_normalized">Attribute is normalized.</param>
    /// <param name="_asInt">Attribute is packed as int.</param>
    inline public function decode(_attrib: Attrib, _num: cpp.Star<cpp.UInt8 >, _type: cpp.Star<AttribType>, _normalized: cpp.Star<Bool >, _asInt: cpp.Star<Bool >):cpp.Void {
        return Bgfx.bgfx_vertex_layout_decode(this, _attrib, _num, _type, _normalized, _asInt);
    }

    /// Returns `true` if VertexLayout contains attribute.
    /// <param name="_attrib">Attribute semantics. See: `bgfx::Attrib`</param>
    inline public function has(_attrib: Attrib):Bool {
        return Bgfx.bgfx_vertex_layout_has(this, _attrib);
    }

    /// Skip `_num` bytes in vertex stream.
    /// <param name="_num">Number of bytes to skip.</param>
    inline public function skip(_num: cpp.UInt8):cpp.Star<VertexLayout> {
        return Bgfx.bgfx_vertex_layout_skip(this, _num);
    }

    /// End VertexLayout.
    inline public function end():cpp.Void {
        return Bgfx.bgfx_vertex_layout_end(this);
    }
}

@:include("bgfx/c99/bgfx.h")
@:structAccess
@:unreflective
@:native("bgfx_encoder_t")
extern class Encoder {
    public function new();

    /// Sets a debug marker. This allows you to group graphics calls together for easy browsing in
    /// graphics debugging tools.
    /// <param name="_marker">Marker string.</param>
    inline public function setMarker(_marker: cpp.ConstCharStar):cpp.Void {
        return Bgfx.bgfx_encoder_set_marker(this, _marker);
    }

    /// Set render states for draw primitive.
    /// @remarks
    ///   1. To set up more complex states use:
    ///      `BGFX_STATE_ALPHA_REF(_ref)`,
    ///      `BGFX_STATE_POINT_SIZE(_size)`,
    ///      `BGFX_STATE_BLEND_FUNC(_src, _dst)`,
    ///      `BGFX_STATE_BLEND_FUNC_SEPARATE(_srcRGB, _dstRGB, _srcA, _dstA)`,
    ///      `BGFX_STATE_BLEND_EQUATION(_equation)`,
    ///      `BGFX_STATE_BLEND_EQUATION_SEPARATE(_equationRGB, _equationA)`
    ///   2. `BGFX_STATE_BLEND_EQUATION_ADD` is set when no other blend
    ///      equation is specified.
    /// <param name="_state">State flags. Default state for primitive type is   triangles. See: `BGFX_STATE_DEFAULT`.   - `BGFX_STATE_DEPTH_TEST_*` - Depth test function.   - `BGFX_STATE_BLEND_*` - See remark 1 about BGFX_STATE_BLEND_FUNC.   - `BGFX_STATE_BLEND_EQUATION_*` - See remark 2.   - `BGFX_STATE_CULL_*` - Backface culling mode.   - `BGFX_STATE_WRITE_*` - Enable R, G, B, A or Z write.   - `BGFX_STATE_MSAA` - Enable hardware multisample antialiasing.   - `BGFX_STATE_PT_[TRISTRIP/LINES/POINTS]` - Primitive type.</param>
    /// <param name="_rgba">Sets blend factor used by `BGFX_STATE_BLEND_FACTOR` and   `BGFX_STATE_BLEND_INV_FACTOR` blend modes.</param>
    inline public function setState(_state: cpp.UInt64, _rgba: cpp.UInt32):cpp.Void {
        return Bgfx.bgfx_encoder_set_state(this, _state, _rgba);
    }

    /// Set condition for rendering.
    /// <param name="_handle">Occlusion query handle.</param>
    /// <param name="_visible">Render if occlusion query is visible.</param>
    inline public function setCondition(_handle: OcclusionQueryHandle, _visible: Bool):cpp.Void {
        return Bgfx.bgfx_encoder_set_condition(this, _handle, _visible);
    }

    /// Set stencil test state.
    /// <param name="_fstencil">Front stencil state.</param>
    /// <param name="_bstencil">Back stencil state. If back is set to `BGFX_STENCIL_NONE` _fstencil is applied to both front and back facing primitives.</param>
    inline public function setStencil(_fstencil: cpp.UInt32, _bstencil: cpp.UInt32):cpp.Void {
        return Bgfx.bgfx_encoder_set_stencil(this, _fstencil, _bstencil);
    }

    /// Set scissor for draw primitive.
    /// @remark
    ///   To scissor for all primitives in view see `bgfx::setViewScissor`.
    /// <param name="_x">Position x from the left corner of the window.</param>
    /// <param name="_y">Position y from the top corner of the window.</param>
    /// <param name="_width">Width of view scissor region.</param>
    /// <param name="_height">Height of view scissor region.</param>
    inline public function setScissor(_x: cpp.UInt16, _y: cpp.UInt16, _width: cpp.UInt16, _height: cpp.UInt16):cpp.UInt16 {
        return Bgfx.bgfx_encoder_set_scissor(this, _x, _y, _width, _height);
    }

    /// Set scissor from cache for draw primitive.
    /// @remark
    ///   To scissor for all primitives in view see `bgfx::setViewScissor`.
    /// <param name="_cache">Index in scissor cache.</param>
    inline public function setScissorCached(_cache: cpp.UInt16):cpp.Void {
        return Bgfx.bgfx_encoder_set_scissor_cached(this, _cache);
    }

    /// Set model matrix for draw primitive. If it is not called,
    /// the model will be rendered with an identity model matrix.
    /// <param name="_mtx">Pointer to first matrix in array.</param>
    /// <param name="_num">Number of matrices in array.</param>
    inline public function setTransform(_mtx: cpp.Star<cpp.Void>, _num: cpp.UInt16):cpp.UInt32 {
        return Bgfx.bgfx_encoder_set_transform(this, _mtx, _num);
    }

    ///  Set model matrix from matrix cache for draw primitive.
    /// <param name="_cache">Index in matrix cache.</param>
    /// <param name="_num">Number of matrices from cache.</param>
    inline public function setTransformCached(_cache: cpp.UInt32, _num: cpp.UInt16):cpp.Void {
        return Bgfx.bgfx_encoder_set_transform_cached(this, _cache, _num);
    }

    /// Reserve matrices in internal matrix cache.
    /// @attention Pointer returned can be modified until `bgfx::frame` is called.
    /// <param name="_transform">Pointer to `Transform` structure.</param>
    /// <param name="_num">Number of matrices.</param>
    inline public function allocTransform(_transform: cpp.Star<Transform>, _num: cpp.UInt16):cpp.UInt32 {
        return Bgfx.bgfx_encoder_alloc_transform(this, _transform, _num);
    }

    /// Set shader uniform parameter for draw primitive.
    /// <param name="_handle">Uniform.</param>
    /// <param name="_value">Pointer to uniform data.</param>
    /// <param name="_num">Number of elements. Passing `UINT16_MAX` will use the _num passed on uniform creation.</param>
    inline public function setUniform(_handle: UniformHandle, _value: cpp.Star<cpp.Void>, _num: cpp.UInt16):cpp.Void {
        return Bgfx.bgfx_encoder_set_uniform(this, _handle, _value, _num);
    }

    /// Set index buffer for draw primitive.
    /// <param name="_handle">Index buffer.</param>
    /// <param name="_firstIndex">First index to render.</param>
    /// <param name="_numIndices">Number of indices to render.</param>
    inline public function setIndexBuffer(_handle: IndexBufferHandle, _firstIndex: cpp.UInt32, _numIndices: cpp.UInt32):cpp.Void {
        return Bgfx.bgfx_encoder_set_index_buffer(this, _handle, _firstIndex, _numIndices);
    }

    /// Set index buffer for draw primitive.
    /// <param name="_handle">Dynamic index buffer.</param>
    /// <param name="_firstIndex">First index to render.</param>
    /// <param name="_numIndices">Number of indices to render.</param>
    inline public function setDynamicIndexBuffer(_handle: DynamicIndexBufferHandle, _firstIndex: cpp.UInt32, _numIndices: cpp.UInt32):cpp.Void {
        return Bgfx.bgfx_encoder_set_dynamic_index_buffer(this, _handle, _firstIndex, _numIndices);
    }

    /// Set index buffer for draw primitive.
    /// <param name="_tib">Transient index buffer.</param>
    /// <param name="_firstIndex">First index to render.</param>
    /// <param name="_numIndices">Number of indices to render.</param>
    inline public function setTransientIndexBuffer(_tib: cpp.Star<TransientIndexBuffer>, _firstIndex: cpp.UInt32, _numIndices: cpp.UInt32):cpp.Void {
        return Bgfx.bgfx_encoder_set_transient_index_buffer(this, _tib, _firstIndex, _numIndices);
    }

    /// Set vertex buffer for draw primitive.
    /// <param name="_stream">Vertex stream.</param>
    /// <param name="_handle">Vertex buffer.</param>
    /// <param name="_startVertex">First vertex to render.</param>
    /// <param name="_numVertices">Number of vertices to render.</param>
    inline public function setVertexBuffer(_stream: cpp.UInt8, _handle: VertexBufferHandle, _startVertex: cpp.UInt32, _numVertices: cpp.UInt32):cpp.Void {
        return Bgfx.bgfx_encoder_set_vertex_buffer(this, _stream, _handle, _startVertex, _numVertices);
    }

    /// Set vertex buffer for draw primitive.
    /// <param name="_stream">Vertex stream.</param>
    /// <param name="_handle">Vertex buffer.</param>
    /// <param name="_startVertex">First vertex to render.</param>
    /// <param name="_numVertices">Number of vertices to render.</param>
    /// <param name="_layoutHandle">Vertex layout for aliasing vertex buffer. If invalid handle is used, vertex layout used for creation of vertex buffer will be used.</param>
    inline public function setVertexBufferWithLayout(_stream: cpp.UInt8, _handle: VertexBufferHandle, _startVertex: cpp.UInt32, _numVertices: cpp.UInt32, _layoutHandle: VertexLayoutHandle):cpp.Void {
        return Bgfx.bgfx_encoder_set_vertex_buffer_with_layout(this, _stream, _handle, _startVertex, _numVertices, _layoutHandle);
    }

    /// Set vertex buffer for draw primitive.
    /// <param name="_stream">Vertex stream.</param>
    /// <param name="_handle">Dynamic vertex buffer.</param>
    /// <param name="_startVertex">First vertex to render.</param>
    /// <param name="_numVertices">Number of vertices to render.</param>
    inline public function setDynamicVertexBuffer(_stream: cpp.UInt8, _handle: DynamicVertexBufferHandle, _startVertex: cpp.UInt32, _numVertices: cpp.UInt32):cpp.Void {
        return Bgfx.bgfx_encoder_set_dynamic_vertex_buffer(this, _stream, _handle, _startVertex, _numVertices);
    }
    inline public function setDynamicVertexBufferWithLayout(_stream: cpp.UInt8, _handle: DynamicVertexBufferHandle, _startVertex: cpp.UInt32, _numVertices: cpp.UInt32, _layoutHandle: VertexLayoutHandle):cpp.Void {
        return Bgfx.bgfx_encoder_set_dynamic_vertex_buffer_with_layout(this, _stream, _handle, _startVertex, _numVertices, _layoutHandle);
    }

    /// Set vertex buffer for draw primitive.
    /// <param name="_stream">Vertex stream.</param>
    /// <param name="_tvb">Transient vertex buffer.</param>
    /// <param name="_startVertex">First vertex to render.</param>
    /// <param name="_numVertices">Number of vertices to render.</param>
    inline public function setTransientVertexBuffer(_stream: cpp.UInt8, _tvb: cpp.Star<TransientVertexBuffer>, _startVertex: cpp.UInt32, _numVertices: cpp.UInt32):cpp.Void {
        return Bgfx.bgfx_encoder_set_transient_vertex_buffer(this, _stream, _tvb, _startVertex, _numVertices);
    }

    /// Set vertex buffer for draw primitive.
    /// <param name="_stream">Vertex stream.</param>
    /// <param name="_tvb">Transient vertex buffer.</param>
    /// <param name="_startVertex">First vertex to render.</param>
    /// <param name="_numVertices">Number of vertices to render.</param>
    /// <param name="_layoutHandle">Vertex layout for aliasing vertex buffer. If invalid handle is used, vertex layout used for creation of vertex buffer will be used.</param>
    inline public function setTransientVertexBufferWithLayout(_stream: cpp.UInt8, _tvb: cpp.Star<TransientVertexBuffer>, _startVertex: cpp.UInt32, _numVertices: cpp.UInt32, _layoutHandle: VertexLayoutHandle):cpp.Void {
        return Bgfx.bgfx_encoder_set_transient_vertex_buffer_with_layout(this, _stream, _tvb, _startVertex, _numVertices, _layoutHandle);
    }

    /// Set number of vertices for auto generated vertices use in conjunction
    /// with gl_VertexID.
    /// @attention Availability depends on: `BGFX_CAPS_VERTEX_ID`.
    /// <param name="_numVertices">Number of vertices.</param>
    inline public function setVertexCount(_numVertices: cpp.UInt32):cpp.Void {
        return Bgfx.bgfx_encoder_set_vertex_count(this, _numVertices);
    }

    /// Set instance data buffer for draw primitive.
    /// <param name="_idb">Transient instance data buffer.</param>
    /// <param name="_start">First instance data.</param>
    /// <param name="_num">Number of data instances.</param>
    inline public function setInstanceDataBuffer(_idb: cpp.Star<InstanceDataBuffer>, _start: cpp.UInt32, _num: cpp.UInt32):cpp.Void {
        return Bgfx.bgfx_encoder_set_instance_data_buffer(this, _idb, _start, _num);
    }

    /// Set instance data buffer for draw primitive.
    /// <param name="_handle">Vertex buffer.</param>
    /// <param name="_startVertex">First instance data.</param>
    /// <param name="_num">Number of data instances.</param>
    inline public function setInstanceDataFromVertexBuffer(_handle: VertexBufferHandle, _startVertex: cpp.UInt32, _num: cpp.UInt32):cpp.Void {
        return Bgfx.bgfx_encoder_set_instance_data_from_vertex_buffer(this, _handle, _startVertex, _num);
    }

    /// Set instance data buffer for draw primitive.
    /// <param name="_handle">Dynamic vertex buffer.</param>
    /// <param name="_startVertex">First instance data.</param>
    /// <param name="_num">Number of data instances.</param>
    inline public function setInstanceDataFromDynamicVertexBuffer(_handle: DynamicVertexBufferHandle, _startVertex: cpp.UInt32, _num: cpp.UInt32):cpp.Void {
        return Bgfx.bgfx_encoder_set_instance_data_from_dynamic_vertex_buffer(this, _handle, _startVertex, _num);
    }

    /// Set number of instances for auto generated instances use in conjunction
    /// with gl_InstanceID.
    /// @attention Availability depends on: `BGFX_CAPS_VERTEX_ID`.
    inline public function setInstanceCount(_numInstances: cpp.UInt32):cpp.Void {
        return Bgfx.bgfx_encoder_set_instance_count(this, _numInstances);
    }

    /// Set texture stage for draw primitive.
    /// <param name="_stage">Texture unit.</param>
    /// <param name="_sampler">Program sampler.</param>
    /// <param name="_handle">Texture handle.</param>
    /// <param name="_flags">Texture sampling mode. Default value UINT32_MAX uses   texture sampling settings from the texture.   - `BGFX_SAMPLER_[U/V/W]_[MIRROR/CLAMP]` - Mirror or clamp to edge wrap     mode.   - `BGFX_SAMPLER_[MIN/MAG/MIP]_[POINT/ANISOTROPIC]` - Point or anisotropic     sampling.</param>
    inline public function setTexture(_stage: cpp.UInt8, _sampler: UniformHandle, _handle: TextureHandle, _flags: cpp.UInt32):cpp.Void {
        return Bgfx.bgfx_encoder_set_texture(this, _stage, _sampler, _handle, _flags);
    }

    /// Submit an empty primitive for rendering. Uniforms and draw state
    /// will be applied but no geometry will be submitted. Useful in cases
    /// when no other draw/compute primitive is submitted to view, but it's
    /// desired to execute clear view.
    /// @remark
    ///   These empty draw calls will sort before ordinary draw calls.
    /// <param name="_id">View id.</param>
    inline public function touch(_id: ViewId):cpp.Void {
        return Bgfx.bgfx_encoder_touch(this, _id);
    }

    /// Submit primitive for rendering.
    /// <param name="_id">View id.</param>
    /// <param name="_program">Program.</param>
    /// <param name="_depth">Depth for sorting.</param>
    /// <param name="_flags">Discard or preserve states. See `BGFX_DISCARD_*`.</param>
    inline public function submit(_id: ViewId, _program: ProgramHandle, _depth: cpp.UInt32, _flags: cpp.UInt8):cpp.Void {
        return Bgfx.bgfx_encoder_submit(this, _id, _program, _depth, _flags);
    }

    /// Submit primitive with occlusion query for rendering.
    /// <param name="_id">View id.</param>
    /// <param name="_program">Program.</param>
    /// <param name="_occlusionQuery">Occlusion query.</param>
    /// <param name="_depth">Depth for sorting.</param>
    /// <param name="_flags">Discard or preserve states. See `BGFX_DISCARD_*`.</param>
    inline public function submitOcclusionQuery(_id: ViewId, _program: ProgramHandle, _occlusionQuery: OcclusionQueryHandle, _depth: cpp.UInt32, _flags: cpp.UInt8):cpp.Void {
        return Bgfx.bgfx_encoder_submit_occlusion_query(this, _id, _program, _occlusionQuery, _depth, _flags);
    }

    /// Submit primitive for rendering with index and instance data info from
    /// indirect buffer.
    /// @attention Availability depends on: `BGFX_CAPS_DRAW_INDIRECT`.
    /// <param name="_id">View id.</param>
    /// <param name="_program">Program.</param>
    /// <param name="_indirectHandle">Indirect buffer.</param>
    /// <param name="_start">First element in indirect buffer.</param>
    /// <param name="_num">Number of draws.</param>
    /// <param name="_depth">Depth for sorting.</param>
    /// <param name="_flags">Discard or preserve states. See `BGFX_DISCARD_*`.</param>
    inline public function submitIndirect(_id: ViewId, _program: ProgramHandle, _indirectHandle: IndirectBufferHandle, _start: cpp.UInt32, _num: cpp.UInt32, _depth: cpp.UInt32, _flags: cpp.UInt8):cpp.Void {
        return Bgfx.bgfx_encoder_submit_indirect(this, _id, _program, _indirectHandle, _start, _num, _depth, _flags);
    }

    /// Submit primitive for rendering with index and instance data info and
    /// draw count from indirect buffers.
    /// @attention Availability depends on: `BGFX_CAPS_DRAW_INDIRECT_COUNT`.
    /// <param name="_id">View id.</param>
    /// <param name="_program">Program.</param>
    /// <param name="_indirectHandle">Indirect buffer.</param>
    /// <param name="_start">First element in indirect buffer.</param>
    /// <param name="_numHandle">Buffer for number of draws. Must be   created with `BGFX_BUFFER_INDEX32` and `BGFX_BUFFER_DRAW_INDIRECT`.</param>
    /// <param name="_numIndex">Element in number buffer.</param>
    /// <param name="_numMax">Max number of draws.</param>
    /// <param name="_depth">Depth for sorting.</param>
    /// <param name="_flags">Discard or preserve states. See `BGFX_DISCARD_*`.</param>
    inline public function submitIndirectCount(_id: ViewId, _program: ProgramHandle, _indirectHandle: IndirectBufferHandle, _start: cpp.UInt32, _numHandle: IndexBufferHandle, _numIndex: cpp.UInt32, _numMax: cpp.UInt32, _depth: cpp.UInt32, _flags: cpp.UInt8):cpp.Void {
        return Bgfx.bgfx_encoder_submit_indirect_count(this, _id, _program, _indirectHandle, _start, _numHandle, _numIndex, _numMax, _depth, _flags);
    }

    /// Set compute index buffer.
    /// <param name="_stage">Compute stage.</param>
    /// <param name="_handle">Index buffer handle.</param>
    /// <param name="_access">Buffer access. See `Access::Enum`.</param>
    inline public function setComputeIndexBuffer(_stage: cpp.UInt8, _handle: IndexBufferHandle, _access: Access):cpp.Void {
        return Bgfx.bgfx_encoder_set_compute_index_buffer(this, _stage, _handle, _access);
    }

    /// Set compute vertex buffer.
    /// <param name="_stage">Compute stage.</param>
    /// <param name="_handle">Vertex buffer handle.</param>
    /// <param name="_access">Buffer access. See `Access::Enum`.</param>
    inline public function setComputeVertexBuffer(_stage: cpp.UInt8, _handle: VertexBufferHandle, _access: Access):cpp.Void {
        return Bgfx.bgfx_encoder_set_compute_vertex_buffer(this, _stage, _handle, _access);
    }

    /// Set compute dynamic index buffer.
    /// <param name="_stage">Compute stage.</param>
    /// <param name="_handle">Dynamic index buffer handle.</param>
    /// <param name="_access">Buffer access. See `Access::Enum`.</param>
    inline public function setComputeDynamicIndexBuffer(_stage: cpp.UInt8, _handle: DynamicIndexBufferHandle, _access: Access):cpp.Void {
        return Bgfx.bgfx_encoder_set_compute_dynamic_index_buffer(this, _stage, _handle, _access);
    }

    /// Set compute dynamic vertex buffer.
    /// <param name="_stage">Compute stage.</param>
    /// <param name="_handle">Dynamic vertex buffer handle.</param>
    /// <param name="_access">Buffer access. See `Access::Enum`.</param>
    inline public function setComputeDynamicVertexBuffer(_stage: cpp.UInt8, _handle: DynamicVertexBufferHandle, _access: Access):cpp.Void {
        return Bgfx.bgfx_encoder_set_compute_dynamic_vertex_buffer(this, _stage, _handle, _access);
    }

    /// Set compute indirect buffer.
    /// <param name="_stage">Compute stage.</param>
    /// <param name="_handle">Indirect buffer handle.</param>
    /// <param name="_access">Buffer access. See `Access::Enum`.</param>
    inline public function setComputeIndirectBuffer(_stage: cpp.UInt8, _handle: IndirectBufferHandle, _access: Access):cpp.Void {
        return Bgfx.bgfx_encoder_set_compute_indirect_buffer(this, _stage, _handle, _access);
    }

    /// Set compute image from texture.
    /// <param name="_stage">Compute stage.</param>
    /// <param name="_handle">Texture handle.</param>
    /// <param name="_mip">Mip level.</param>
    /// <param name="_access">Image access. See `Access::Enum`.</param>
    /// <param name="_format">Texture format. See: `TextureFormat::Enum`.</param>
    inline public function setImage(_stage: cpp.UInt8, _handle: TextureHandle, _mip: cpp.UInt8, _access: Access, _format: TextureFormat):cpp.Void {
        return Bgfx.bgfx_encoder_set_image(this, _stage, _handle, _mip, _access, _format);
    }

    /// Dispatch compute.
    /// <param name="_id">View id.</param>
    /// <param name="_program">Compute program.</param>
    /// <param name="_numX">Number of groups X.</param>
    /// <param name="_numY">Number of groups Y.</param>
    /// <param name="_numZ">Number of groups Z.</param>
    /// <param name="_flags">Discard or preserve states. See `BGFX_DISCARD_*`.</param>
    inline public function dispatch(_id: ViewId, _program: ProgramHandle, _numX: cpp.UInt32, _numY: cpp.UInt32, _numZ: cpp.UInt32, _flags: cpp.UInt8):cpp.Void {
        return Bgfx.bgfx_encoder_dispatch(this, _id, _program, _numX, _numY, _numZ, _flags);
    }

    /// Dispatch compute indirect.
    /// <param name="_id">View id.</param>
    /// <param name="_program">Compute program.</param>
    /// <param name="_indirectHandle">Indirect buffer.</param>
    /// <param name="_start">First element in indirect buffer.</param>
    /// <param name="_num">Number of dispatches.</param>
    /// <param name="_flags">Discard or preserve states. See `BGFX_DISCARD_*`.</param>
    inline public function dispatchIndirect(_id: ViewId, _program: ProgramHandle, _indirectHandle: IndirectBufferHandle, _start: cpp.UInt32, _num: cpp.UInt32, _flags: cpp.UInt8):cpp.Void {
        return Bgfx.bgfx_encoder_dispatch_indirect(this, _id, _program, _indirectHandle, _start, _num, _flags);
    }

    /// Discard previously set state for draw or compute call.
    /// <param name="_flags">Discard or preserve states. See `BGFX_DISCARD_*`.</param>
    inline public function discard(_flags: cpp.UInt8):cpp.Void {
        return Bgfx.bgfx_encoder_discard(this, _flags);
    }

    /// Blit 2D texture region between two 2D textures.
    /// @attention Destination texture must be created with `BGFX_TEXTURE_BLIT_DST` flag.
    /// @attention Availability depends on: `BGFX_CAPS_TEXTURE_BLIT`.
    /// <param name="_id">View id.</param>
    /// <param name="_dst">Destination texture handle.</param>
    /// <param name="_dstMip">Destination texture mip level.</param>
    /// <param name="_dstX">Destination texture X position.</param>
    /// <param name="_dstY">Destination texture Y position.</param>
    /// <param name="_dstZ">If texture is 2D this argument should be 0. If destination texture is cube this argument represents destination texture cube face. For 3D texture this argument represents destination texture Z position.</param>
    /// <param name="_src">Source texture handle.</param>
    /// <param name="_srcMip">Source texture mip level.</param>
    /// <param name="_srcX">Source texture X position.</param>
    /// <param name="_srcY">Source texture Y position.</param>
    /// <param name="_srcZ">If texture is 2D this argument should be 0. If source texture is cube this argument represents source texture cube face. For 3D texture this argument represents source texture Z position.</param>
    /// <param name="_width">Width of region.</param>
    /// <param name="_height">Height of region.</param>
    /// <param name="_depth">If texture is 3D this argument represents depth of region, otherwise it's unused.</param>
    inline public function blit(_id: ViewId, _dst: TextureHandle, _dstMip: cpp.UInt8, _dstX: cpp.UInt16, _dstY: cpp.UInt16, _dstZ: cpp.UInt16, _src: TextureHandle, _srcMip: cpp.UInt8, _srcX: cpp.UInt16, _srcY: cpp.UInt16, _srcZ: cpp.UInt16, _width: cpp.UInt16, _height: cpp.UInt16, _depth: cpp.UInt16):cpp.Void {
        return Bgfx.bgfx_encoder_blit(this, _id, _dst, _dstMip, _dstX, _dstY, _dstZ, _src, _srcMip, _srcX, _srcY, _srcZ, _width, _height, _depth);
    }
}

@:include("bgfx/c99/bgfx.h")
@:structAccess
@:unreflective
@:native("bgfx_dynamic_index_buffer_handle_t")
extern class DynamicIndexBufferHandle {
    public function new();
    public var idx:cpp.UInt16;
    inline public function valid():Bool return idx != 0xffff;
}

@:include("bgfx/c99/bgfx.h")
@:structAccess
@:unreflective
@:native("bgfx_dynamic_vertex_buffer_handle_t")
extern class DynamicVertexBufferHandle {
    public function new();
    public var idx:cpp.UInt16;
    inline public function valid():Bool return idx != 0xffff;
}

@:include("bgfx/c99/bgfx.h")
@:structAccess
@:unreflective
@:native("bgfx_frame_buffer_handle_t")
extern class FrameBufferHandle {
    public function new();
    public var idx:cpp.UInt16;
    inline public function valid():Bool return idx != 0xffff;
}

@:include("bgfx/c99/bgfx.h")
@:structAccess
@:unreflective
@:native("bgfx_index_buffer_handle_t")
extern class IndexBufferHandle {
    public function new();
    public var idx:cpp.UInt16;
    inline public function valid():Bool return idx != 0xffff;
}

@:include("bgfx/c99/bgfx.h")
@:structAccess
@:unreflective
@:native("bgfx_indirect_buffer_handle_t")
extern class IndirectBufferHandle {
    public function new();
    public var idx:cpp.UInt16;
    inline public function valid():Bool return idx != 0xffff;
}

@:include("bgfx/c99/bgfx.h")
@:structAccess
@:unreflective
@:native("bgfx_occlusion_query_handle_t")
extern class OcclusionQueryHandle {
    public function new();
    public var idx:cpp.UInt16;
    inline public function valid():Bool return idx != 0xffff;
}

@:include("bgfx/c99/bgfx.h")
@:structAccess
@:unreflective
@:native("bgfx_program_handle_t")
extern class ProgramHandle {
    public function new();
    public var idx:cpp.UInt16;
    inline public function valid():Bool return idx != 0xffff;
}

@:include("bgfx/c99/bgfx.h")
@:structAccess
@:unreflective
@:native("bgfx_shader_handle_t")
extern class ShaderHandle {
    public function new();
    public var idx:cpp.UInt16;
    inline public function valid():Bool return idx != 0xffff;
}

@:include("bgfx/c99/bgfx.h")
@:structAccess
@:unreflective
@:native("bgfx_texture_handle_t")
extern class TextureHandle {
    public function new();
    public var idx:cpp.UInt16;
    inline public function valid():Bool return idx != 0xffff;
}

@:include("bgfx/c99/bgfx.h")
@:structAccess
@:unreflective
@:native("bgfx_uniform_handle_t")
extern class UniformHandle {
    public function new();
    public var idx:cpp.UInt16;
    inline public function valid():Bool return idx != 0xffff;
}

@:include("bgfx/c99/bgfx.h")
@:structAccess
@:unreflective
@:native("bgfx_vertex_buffer_handle_t")
extern class VertexBufferHandle {
    public function new();
    public var idx:cpp.UInt16;
    inline public function valid():Bool return idx != 0xffff;
}

@:include("bgfx/c99/bgfx.h")
@:structAccess
@:unreflective
@:native("bgfx_vertex_layout_handle_t")
extern class VertexLayoutHandle {
    public function new();
    public var idx:cpp.UInt16;
    inline public function valid():Bool return idx != 0xffff;
}

@:include("bgfx/c99/bgfx.h")
@:build(linc.Linc.touch())
@:build(linc.Linc.xml("bgfx"))
class Bgfx {

    /// Init attachment.
    /// <param name="_handle">Render target texture handle.</param>
    /// <param name="_access">Access. See `Access::Enum`.</param>
    /// <param name="_layer">Cubemap side or depth layer/slice to use.</param>
    /// <param name="_numLayers">Number of texture layer/slice(s) in array to use.</param>
    /// <param name="_mip">Mip level.</param>
    /// <param name="_resolve">Resolve flags. See: `BGFX_RESOLVE_*`</param>
    @:nocompletion
    @:native("bgfx_attachment_init")
    extern public static function bgfx_attachment_init(self: cpp.Star<Attachment>, _handle: TextureHandle, _access: Access, _layer: cpp.UInt16, _numLayers: cpp.UInt16, _mip: cpp.UInt16, _resolve: cpp.UInt8):cpp.Void;


    /// Start VertexLayout.
    /// <param name="_rendererType">Renderer backend type. See: `bgfx::RendererType`</param>
    @:nocompletion
    @:native("bgfx_vertex_layout_begin")
    extern public static function bgfx_vertex_layout_begin(self: cpp.Star<VertexLayout>, _rendererType: RendererType):cpp.Star<VertexLayout>;


    /// Add attribute to VertexLayout.
    /// @remarks Must be called between begin/end.
    /// <param name="_attrib">Attribute semantics. See: `bgfx::Attrib`</param>
    /// <param name="_num">Number of elements 1, 2, 3 or 4.</param>
    /// <param name="_type">Element type.</param>
    /// <param name="_normalized">When using fixed point AttribType (f.e. Uint8) value will be normalized for vertex shader usage. When normalized is set to true, AttribType::Uint8 value in range 0-255 will be in range 0.0-1.0 in vertex shader.</param>
    /// <param name="_asInt">Packaging rule for vertexPack, vertexUnpack, and vertexConvert for AttribType::Uint8 and AttribType::Int16. Unpacking code must be implemented inside vertex shader.</param>
    @:nocompletion
    @:native("bgfx_vertex_layout_add")
    extern public static function bgfx_vertex_layout_add(self: cpp.Star<VertexLayout>, _attrib: Attrib, _num: cpp.UInt8, _type: AttribType, _normalized: Bool, _asInt: Bool):cpp.Star<VertexLayout>;


    /// Decode attribute.
    /// <param name="_attrib">Attribute semantics. See: `bgfx::Attrib`</param>
    /// <param name="_num">Number of elements.</param>
    /// <param name="_type">Element type.</param>
    /// <param name="_normalized">Attribute is normalized.</param>
    /// <param name="_asInt">Attribute is packed as int.</param>
    @:nocompletion
    @:native("bgfx_vertex_layout_decode")
    extern public static function bgfx_vertex_layout_decode(self: cpp.Star<VertexLayout>, _attrib: Attrib, _num: cpp.Star<cpp.UInt8 >, _type: cpp.Star<AttribType>, _normalized: cpp.Star<Bool >, _asInt: cpp.Star<Bool >):cpp.Void;


    /// Returns `true` if VertexLayout contains attribute.
    /// <param name="_attrib">Attribute semantics. See: `bgfx::Attrib`</param>
    @:nocompletion
    @:native("bgfx_vertex_layout_has")
    extern public static function bgfx_vertex_layout_has(self: cpp.Star<VertexLayout>, _attrib: Attrib):Bool;


    /// Skip `_num` bytes in vertex stream.
    /// <param name="_num">Number of bytes to skip.</param>
    @:nocompletion
    @:native("bgfx_vertex_layout_skip")
    extern public static function bgfx_vertex_layout_skip(self: cpp.Star<VertexLayout>, _num: cpp.UInt8):cpp.Star<VertexLayout>;


    /// End VertexLayout.
    @:nocompletion
    @:native("bgfx_vertex_layout_end")
    extern public static function bgfx_vertex_layout_end(self: cpp.Star<VertexLayout>):cpp.Void;


    /// Pack vertex attribute into vertex stream format.
    /// <param name="_input">Value to be packed into vertex stream.</param>
    /// <param name="_inputNormalized">`true` if input value is already normalized.</param>
    /// <param name="_attr">Attribute to pack.</param>
    /// <param name="_layout">Vertex stream layout.</param>
    /// <param name="_data">Destination vertex stream where data will be packed.</param>
    /// <param name="_index">Vertex index that will be modified.</param>
    @:native("bgfx_vertex_pack") extern public static function vertexPack(_input: cpp.Float32, _inputNormalized: Bool, _attr: Attrib, _layout: cpp.Star<VertexLayout>, _data: cpp.Star<cpp.Void>, _index: cpp.UInt32):cpp.Void;
    @:nocompletion
    @:native("bgfx_vertex_pack")
    extern public static function bgfx_vertex_pack(_input: cpp.Float32, _inputNormalized: Bool, _attr: Attrib, _layout: cpp.Star<VertexLayout>, _data: cpp.Star<cpp.Void>, _index: cpp.UInt32):cpp.Void;


    /// Unpack vertex attribute from vertex stream format.
    /// <param name="_output">Result of unpacking.</param>
    /// <param name="_attr">Attribute to unpack.</param>
    /// <param name="_layout">Vertex stream layout.</param>
    /// <param name="_data">Source vertex stream from where data will be unpacked.</param>
    /// <param name="_index">Vertex index that will be unpacked.</param>
    @:native("bgfx_vertex_unpack") extern public static function vertexUnpack(_output: cpp.Float32, _attr: Attrib, _layout: cpp.Star<VertexLayout>, _data: cpp.Star<cpp.Void>, _index: cpp.UInt32):cpp.Void;
    @:nocompletion
    @:native("bgfx_vertex_unpack")
    extern public static function bgfx_vertex_unpack(_output: cpp.Float32, _attr: Attrib, _layout: cpp.Star<VertexLayout>, _data: cpp.Star<cpp.Void>, _index: cpp.UInt32):cpp.Void;


    /// Converts vertex stream data from one vertex stream format to another.
    /// <param name="_dstLayout">Destination vertex stream layout.</param>
    /// <param name="_dstData">Destination vertex stream.</param>
    /// <param name="_srcLayout">Source vertex stream layout.</param>
    /// <param name="_srcData">Source vertex stream data.</param>
    /// <param name="_num">Number of vertices to convert from source to destination.</param>
    @:native("bgfx_vertex_convert") extern public static function vertexConvert(_dstLayout: cpp.Star<VertexLayout>, _dstData: cpp.Star<cpp.Void>, _srcLayout: cpp.Star<VertexLayout>, _srcData: cpp.Star<cpp.Void>, _num: cpp.UInt32):cpp.Void;
    @:nocompletion
    @:native("bgfx_vertex_convert")
    extern public static function bgfx_vertex_convert(_dstLayout: cpp.Star<VertexLayout>, _dstData: cpp.Star<cpp.Void>, _srcLayout: cpp.Star<VertexLayout>, _srcData: cpp.Star<cpp.Void>, _num: cpp.UInt32):cpp.Void;


    /// Weld vertices.
    /// <param name="_output">Welded vertices remapping table. The size of buffer must be the same as number of vertices.</param>
    /// <param name="_layout">Vertex stream layout.</param>
    /// <param name="_data">Vertex stream.</param>
    /// <param name="_num">Number of vertices in vertex stream.</param>
    /// <param name="_index32">Set to `true` if input indices are 32-bit.</param>
    /// <param name="_epsilon">Error tolerance for vertex position comparison.</param>
    @:native("bgfx_weld_vertices") extern public static function weldVertices(_output: cpp.Star<cpp.Void>, _layout: cpp.Star<VertexLayout>, _data: cpp.Star<cpp.Void>, _num: cpp.UInt32, _index32: Bool, _epsilon: cpp.Float32):cpp.UInt32;
    @:nocompletion
    @:native("bgfx_weld_vertices")
    extern public static function bgfx_weld_vertices(_output: cpp.Star<cpp.Void>, _layout: cpp.Star<VertexLayout>, _data: cpp.Star<cpp.Void>, _num: cpp.UInt32, _index32: Bool, _epsilon: cpp.Float32):cpp.UInt32;


    /// Convert index buffer for use with different primitive topologies.
    /// <param name="_conversion">Conversion type, see `TopologyConvert::Enum`.</param>
    /// <param name="_dst">Destination index buffer. If this argument is NULL function will return number of indices after conversion.</param>
    /// <param name="_dstSize">Destination index buffer in bytes. It must be large enough to contain output indices. If destination size is insufficient index buffer will be truncated.</param>
    /// <param name="_indices">Source indices.</param>
    /// <param name="_numIndices">Number of input indices.</param>
    /// <param name="_index32">Set to `true` if input indices are 32-bit.</param>
    @:native("bgfx_topology_convert") extern public static function topologyConvert(_conversion: TopologyConvert, _dst: cpp.Star<cpp.Void>, _dstSize: cpp.UInt32, _indices: cpp.Star<cpp.Void>, _numIndices: cpp.UInt32, _index32: Bool):cpp.UInt32;
    @:nocompletion
    @:native("bgfx_topology_convert")
    extern public static function bgfx_topology_convert(_conversion: TopologyConvert, _dst: cpp.Star<cpp.Void>, _dstSize: cpp.UInt32, _indices: cpp.Star<cpp.Void>, _numIndices: cpp.UInt32, _index32: Bool):cpp.UInt32;


    /// Sort indices.
    /// <param name="_sort">Sort order, see `TopologySort::Enum`.</param>
    /// <param name="_dst">Destination index buffer.</param>
    /// <param name="_dstSize">Destination index buffer in bytes. It must be large enough to contain output indices. If destination size is insufficient index buffer will be truncated.</param>
    /// <param name="_dir">Direction (vector must be normalized).</param>
    /// <param name="_pos">Position.</param>
    /// <param name="_vertices">Pointer to first vertex represented as float x, y, z. Must contain at least number of vertices referencende by index buffer.</param>
    /// <param name="_stride">Vertex stride.</param>
    /// <param name="_indices">Source indices.</param>
    /// <param name="_numIndices">Number of input indices.</param>
    /// <param name="_index32">Set to `true` if input indices are 32-bit.</param>
    @:native("bgfx_topology_sort_tri_list") extern public static function topologySortTriList(_sort: TopologySort, _dst: cpp.Star<cpp.Void>, _dstSize: cpp.UInt32, _dir: cpp.Float32, _pos: cpp.Float32, _vertices: cpp.Star<cpp.Void>, _stride: cpp.UInt32, _indices: cpp.Star<cpp.Void>, _numIndices: cpp.UInt32, _index32: Bool):cpp.Void;
    @:nocompletion
    @:native("bgfx_topology_sort_tri_list")
    extern public static function bgfx_topology_sort_tri_list(_sort: TopologySort, _dst: cpp.Star<cpp.Void>, _dstSize: cpp.UInt32, _dir: cpp.Float32, _pos: cpp.Float32, _vertices: cpp.Star<cpp.Void>, _stride: cpp.UInt32, _indices: cpp.Star<cpp.Void>, _numIndices: cpp.UInt32, _index32: Bool):cpp.Void;


    /// Returns supported backend API renderers.
    /// <param name="_max">Maximum number of elements in _enum array.</param>
    /// <param name="_enum">Array where supported renderers will be written.</param>
    @:native("bgfx_get_supported_renderers") extern public static function getSupportedRenderers(_max: cpp.UInt8, _enum: cpp.Star<RendererType>):cpp.UInt8;
    @:nocompletion
    @:native("bgfx_get_supported_renderers")
    extern public static function bgfx_get_supported_renderers(_max: cpp.UInt8, _enum: cpp.Star<RendererType>):cpp.UInt8;


    /// Returns name of renderer.
    /// <param name="_type">Renderer backend type. See: `bgfx::RendererType`</param>
    @:native("bgfx_get_renderer_name") extern public static function getRendererName(_type: RendererType):cpp.ConstCharStar;
    @:nocompletion
    @:native("bgfx_get_renderer_name")
    extern public static function bgfx_get_renderer_name(_type: RendererType):cpp.ConstCharStar;


    /// Fill bgfx::Init struct with default values, before using it to initialize the library.
    /// <param name="_init">Pointer to structure to be initialized. See: `bgfx::Init` for more info.</param>
    @:native("bgfx_init_ctor") extern public static function initCtor(_init: cpp.Star<Init>):cpp.Void;
    @:nocompletion
    @:native("bgfx_init_ctor")
    extern public static function bgfx_init_ctor(_init: cpp.Star<Init>):cpp.Void;


    /// Initialize the bgfx library.
    /// <param name="_init">Initialization parameters. See: `bgfx::Init` for more info.</param>
    @:native("bgfx_init") extern public static function init(_init: cpp.Star<Init>):Bool;
    @:nocompletion
    @:native("bgfx_init")
    extern public static function bgfx_init(_init: cpp.Star<Init>):Bool;


    /// Shutdown bgfx library.
    @:native("bgfx_shutdown") extern public static function shutdown():cpp.Void;
    @:nocompletion
    @:native("bgfx_shutdown")
    extern public static function bgfx_shutdown():cpp.Void;


    /// Reset graphic settings and back-buffer size.
    /// @attention This call doesn’t change the window size, it just resizes
    ///   the back-buffer. Your windowing code controls the window size.
    /// <param name="_width">Back-buffer width.</param>
    /// <param name="_height">Back-buffer height.</param>
    /// <param name="_flags">See: `BGFX_RESET_*` for more info.   - `BGFX_RESET_NONE` - No reset flags.   - `BGFX_RESET_FULLSCREEN` - Not supported yet.   - `BGFX_RESET_MSAA_X[2/4/8/16]` - Enable 2, 4, 8 or 16 x MSAA.   - `BGFX_RESET_VSYNC` - Enable V-Sync.   - `BGFX_RESET_MAXANISOTROPY` - Turn on/off max anisotropy.   - `BGFX_RESET_CAPTURE` - Begin screen capture.   - `BGFX_RESET_FLUSH_AFTER_RENDER` - Flush rendering after submitting to GPU.   - `BGFX_RESET_FLIP_AFTER_RENDER` - This flag  specifies where flip     occurs. Default behaviour is that flip occurs before rendering new     frame. This flag only has effect when `BGFX_CONFIG_MULTITHREADED=0`.   - `BGFX_RESET_SRGB_BACKBUFFER` - Enable sRGB back-buffer.</param>
    /// <param name="_format">Texture format. See: `TextureFormat::Enum`.</param>
    @:native("bgfx_reset") extern public static function reset(_width: cpp.UInt32, _height: cpp.UInt32, _flags: cpp.UInt32, _format: TextureFormat):cpp.Void;
    @:nocompletion
    @:native("bgfx_reset")
    extern public static function bgfx_reset(_width: cpp.UInt32, _height: cpp.UInt32, _flags: cpp.UInt32, _format: TextureFormat):cpp.Void;


    /// Advance to next frame. When using multithreaded renderer, this call
    /// just swaps internal buffers, kicks render thread, and returns. In
    /// singlethreaded renderer this call does frame rendering.
    /// <param name="_capture">Capture frame with graphics debugger.</param>
    @:native("bgfx_frame") extern public static function frame(_capture: Bool):cpp.UInt32;
    @:nocompletion
    @:native("bgfx_frame")
    extern public static function bgfx_frame(_capture: Bool):cpp.UInt32;


    /// Returns current renderer backend API type.
    /// @remarks
    ///   Library must be initialized.
    @:native("bgfx_get_renderer_type") extern public static function getRendererType():RendererType;
    @:nocompletion
    @:native("bgfx_get_renderer_type")
    extern public static function bgfx_get_renderer_type():RendererType;


    /// Returns renderer capabilities.
    /// @remarks
    ///   Library must be initialized.
    @:native("bgfx_get_caps") extern public static function getCaps():cpp.Star<Caps>;
    @:nocompletion
    @:native("bgfx_get_caps")
    extern public static function bgfx_get_caps():cpp.Star<Caps>;


    /// Returns performance counters.
    /// @attention Pointer returned is valid until `bgfx::frame` is called.
    @:native("bgfx_get_stats") extern public static function getStats():cpp.ConstStar<Stats>;
    @:nocompletion
    @:native("bgfx_get_stats")
    extern public static function bgfx_get_stats():cpp.Star<Stats>;


    /// Allocate buffer to pass to bgfx calls. Data will be freed inside bgfx.
    /// <param name="_size">Size to allocate.</param>
    @:native("bgfx_alloc") extern public static function alloc(_size: cpp.UInt32):cpp.Star<Memory>;
    @:nocompletion
    @:native("bgfx_alloc")
    extern public static function bgfx_alloc(_size: cpp.UInt32):cpp.Star<Memory>;


    /// Allocate buffer and copy data into it. Data will be freed inside bgfx.
    /// <param name="_data">Pointer to data to be copied.</param>
    /// <param name="_size">Size of data to be copied.</param>
    @:native("bgfx_copy") extern public static function copy(_data: cpp.Star<cpp.Void>, _size: cpp.UInt32):cpp.Star<Memory>;
    @:nocompletion
    @:native("bgfx_copy")
    extern public static function bgfx_copy(_data: cpp.Star<cpp.Void>, _size: cpp.UInt32):cpp.Star<Memory>;


    /// Make reference to data to pass to bgfx. Unlike `bgfx::alloc`, this call
    /// doesn't allocate memory for data. It just copies the _data pointer. You
    /// can pass `ReleaseFn` function pointer to release this memory after it's
    /// consumed, otherwise you must make sure _data is available for at least 2
    /// `bgfx::frame` calls. `ReleaseFn` function must be able to be called
    /// from any thread.
    /// @attention Data passed must be available for at least 2 `bgfx::frame` calls.
    /// <param name="_data">Pointer to data.</param>
    /// <param name="_size">Size of data.</param>
    @:native("bgfx_make_ref") extern public static function makeRef(_data: cpp.Star<cpp.Void>, _size: cpp.UInt32):cpp.Star<Memory>;
    @:nocompletion
    @:native("bgfx_make_ref")
    extern public static function bgfx_make_ref(_data: cpp.Star<cpp.Void>, _size: cpp.UInt32):cpp.Star<Memory>;


    /// Make reference to data to pass to bgfx. Unlike `bgfx::alloc`, this call
    /// doesn't allocate memory for data. It just copies the _data pointer. You
    /// can pass `ReleaseFn` function pointer to release this memory after it's
    /// consumed, otherwise you must make sure _data is available for at least 2
    /// `bgfx::frame` calls. `ReleaseFn` function must be able to be called
    /// from any thread.
    /// @attention Data passed must be available for at least 2 `bgfx::frame` calls.
    /// <param name="_data">Pointer to data.</param>
    /// <param name="_size">Size of data.</param>
    /// <param name="_releaseFn">Callback function to release memory after use.</param>
    /// <param name="_userData">User data to be passed to callback function.</param>
    @:native("bgfx_make_ref_release") extern public static function makeRefRelease(_data: cpp.Star<cpp.Void>, _size: cpp.UInt32, _releaseFn: cpp.Star<cpp.Void>, _userData: cpp.Star<cpp.Void>):cpp.Star<Memory>;
    @:nocompletion
    @:native("bgfx_make_ref_release")
    extern public static function bgfx_make_ref_release(_data: cpp.Star<cpp.Void>, _size: cpp.UInt32, _releaseFn: cpp.Star<cpp.Void>, _userData: cpp.Star<cpp.Void>):cpp.Star<Memory>;


    /// Set debug flags.
    /// <param name="_debug">Available flags:   - `BGFX_DEBUG_IFH` - Infinitely fast hardware. When this flag is set     all rendering calls will be skipped. This is useful when profiling     to quickly assess potential bottlenecks between CPU and GPU.   - `BGFX_DEBUG_PROFILER` - Enable profiler.   - `BGFX_DEBUG_STATS` - Display internal statistics.   - `BGFX_DEBUG_TEXT` - Display debug text.   - `BGFX_DEBUG_WIREFRAME` - Wireframe rendering. All rendering     primitives will be rendered as lines.</param>
    @:native("bgfx_set_debug") extern public static function setDebug(_debug: cpp.UInt32):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_debug")
    extern public static function bgfx_set_debug(_debug: cpp.UInt32):cpp.Void;


    /// Clear internal debug text buffer.
    /// <param name="_attr">Background color.</param>
    /// <param name="_small">Default 8x16 or 8x8 font.</param>
    @:native("bgfx_dbg_text_clear") extern public static function dbgTextClear(_attr: cpp.UInt8, _small: Bool):cpp.Void;
    @:nocompletion
    @:native("bgfx_dbg_text_clear")
    extern public static function bgfx_dbg_text_clear(_attr: cpp.UInt8, _small: Bool):cpp.Void;


    /// Draw image into internal debug text buffer.
    /// <param name="_x">Position x from the left corner of the window.</param>
    /// <param name="_y">Position y from the top corner of the window.</param>
    /// <param name="_width">Image width.</param>
    /// <param name="_height">Image height.</param>
    /// <param name="_data">Raw image data (character/attribute raw encoding).</param>
    /// <param name="_pitch">Image pitch in bytes.</param>
    @:native("bgfx_dbg_text_image") extern public static function dbgTextImage(_x: cpp.UInt16, _y: cpp.UInt16, _width: cpp.UInt16, _height: cpp.UInt16, _data: cpp.Star<cpp.Void>, _pitch: cpp.UInt16):cpp.Void;
    @:nocompletion
    @:native("bgfx_dbg_text_image")
    extern public static function bgfx_dbg_text_image(_x: cpp.UInt16, _y: cpp.UInt16, _width: cpp.UInt16, _height: cpp.UInt16, _data: cpp.Star<cpp.Void>, _pitch: cpp.UInt16):cpp.Void;


    /// Create static index buffer.
    /// <param name="_mem">Index buffer data.</param>
    /// <param name="_flags">Buffer creation flags.   - `BGFX_BUFFER_NONE` - No flags.   - `BGFX_BUFFER_COMPUTE_READ` - Buffer will be read from by compute shader.   - `BGFX_BUFFER_COMPUTE_WRITE` - Buffer will be written into by compute shader. When buffer       is created with `BGFX_BUFFER_COMPUTE_WRITE` flag it cannot be updated from CPU.   - `BGFX_BUFFER_COMPUTE_READ_WRITE` - Buffer will be used for read/write by compute shader.   - `BGFX_BUFFER_ALLOW_RESIZE` - Buffer will resize on buffer update if a different amount of       data is passed. If this flag is not specified, and more data is passed on update, the buffer       will be trimmed to fit the existing buffer size. This flag has effect only on dynamic       buffers.   - `BGFX_BUFFER_INDEX32` - Buffer is using 32-bit indices. This flag has effect only on       index buffers.</param>
    @:native("bgfx_create_index_buffer") extern public static function createIndexBuffer(_mem: cpp.Star<Memory>, _flags: cpp.UInt16):IndexBufferHandle;
    @:nocompletion
    @:native("bgfx_create_index_buffer")
    extern public static function bgfx_create_index_buffer(_mem: cpp.Star<Memory>, _flags: cpp.UInt16):IndexBufferHandle;


    /// Set static index buffer debug name.
    /// <param name="_handle">Static index buffer handle.</param>
    /// <param name="_name">Static index buffer name.</param>
    /// <param name="_len">Static index buffer name length (if length is INT32_MAX, it's expected that _name is zero terminated string.</param>
    @:native("bgfx_set_index_buffer_name") extern public static function setIndexBufferName(_handle: IndexBufferHandle, _name: cpp.ConstCharStar, _len: cpp.Int32):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_index_buffer_name")
    extern public static function bgfx_set_index_buffer_name(_handle: IndexBufferHandle, _name: cpp.ConstCharStar, _len: cpp.Int32):cpp.Void;


    /// Destroy static index buffer.
    /// <param name="_handle">Static index buffer handle.</param>
    @:native("bgfx_destroy_index_buffer") extern public static function destroyIndexBuffer(_handle: IndexBufferHandle):cpp.Void;
    @:nocompletion
    @:native("bgfx_destroy_index_buffer")
    extern public static function bgfx_destroy_index_buffer(_handle: IndexBufferHandle):cpp.Void;


    /// Create vertex layout.
    /// <param name="_layout">Vertex layout.</param>
    @:native("bgfx_create_vertex_layout") extern public static function createVertexLayout(_layout: cpp.Star<VertexLayout>):VertexLayoutHandle;
    @:nocompletion
    @:native("bgfx_create_vertex_layout")
    extern public static function bgfx_create_vertex_layout(_layout: cpp.Star<VertexLayout>):VertexLayoutHandle;


    /// Destroy vertex layout.
    /// <param name="_layoutHandle">Vertex layout handle.</param>
    @:native("bgfx_destroy_vertex_layout") extern public static function destroyVertexLayout(_layoutHandle: VertexLayoutHandle):cpp.Void;
    @:nocompletion
    @:native("bgfx_destroy_vertex_layout")
    extern public static function bgfx_destroy_vertex_layout(_layoutHandle: VertexLayoutHandle):cpp.Void;


    /// Create static vertex buffer.
    /// <param name="_mem">Vertex buffer data.</param>
    /// <param name="_layout">Vertex layout.</param>
    /// <param name="_flags">Buffer creation flags.  - `BGFX_BUFFER_NONE` - No flags.  - `BGFX_BUFFER_COMPUTE_READ` - Buffer will be read from by compute shader.  - `BGFX_BUFFER_COMPUTE_WRITE` - Buffer will be written into by compute shader. When buffer      is created with `BGFX_BUFFER_COMPUTE_WRITE` flag it cannot be updated from CPU.  - `BGFX_BUFFER_COMPUTE_READ_WRITE` - Buffer will be used for read/write by compute shader.  - `BGFX_BUFFER_ALLOW_RESIZE` - Buffer will resize on buffer update if a different amount of      data is passed. If this flag is not specified, and more data is passed on update, the buffer      will be trimmed to fit the existing buffer size. This flag has effect only on dynamic buffers.  - `BGFX_BUFFER_INDEX32` - Buffer is using 32-bit indices. This flag has effect only on index buffers.</param>
    @:native("bgfx_create_vertex_buffer") extern public static function createVertexBuffer(_mem: cpp.Star<Memory>, _layout: cpp.Star<VertexLayout>, _flags: cpp.UInt16):VertexBufferHandle;
    @:nocompletion
    @:native("bgfx_create_vertex_buffer")
    extern public static function bgfx_create_vertex_buffer(_mem: cpp.Star<Memory>, _layout: cpp.Star<VertexLayout>, _flags: cpp.UInt16):VertexBufferHandle;


    /// Set static vertex buffer debug name.
    /// <param name="_handle">Static vertex buffer handle.</param>
    /// <param name="_name">Static vertex buffer name.</param>
    /// <param name="_len">Static vertex buffer name length (if length is INT32_MAX, it's expected that _name is zero terminated string.</param>
    @:native("bgfx_set_vertex_buffer_name") extern public static function setVertexBufferName(_handle: VertexBufferHandle, _name: cpp.ConstCharStar, _len: cpp.Int32):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_vertex_buffer_name")
    extern public static function bgfx_set_vertex_buffer_name(_handle: VertexBufferHandle, _name: cpp.ConstCharStar, _len: cpp.Int32):cpp.Void;


    /// Destroy static vertex buffer.
    /// <param name="_handle">Static vertex buffer handle.</param>
    @:native("bgfx_destroy_vertex_buffer") extern public static function destroyVertexBuffer(_handle: VertexBufferHandle):cpp.Void;
    @:nocompletion
    @:native("bgfx_destroy_vertex_buffer")
    extern public static function bgfx_destroy_vertex_buffer(_handle: VertexBufferHandle):cpp.Void;


    /// Create empty dynamic index buffer.
    /// <param name="_num">Number of indices.</param>
    /// <param name="_flags">Buffer creation flags.   - `BGFX_BUFFER_NONE` - No flags.   - `BGFX_BUFFER_COMPUTE_READ` - Buffer will be read from by compute shader.   - `BGFX_BUFFER_COMPUTE_WRITE` - Buffer will be written into by compute shader. When buffer       is created with `BGFX_BUFFER_COMPUTE_WRITE` flag it cannot be updated from CPU.   - `BGFX_BUFFER_COMPUTE_READ_WRITE` - Buffer will be used for read/write by compute shader.   - `BGFX_BUFFER_ALLOW_RESIZE` - Buffer will resize on buffer update if a different amount of       data is passed. If this flag is not specified, and more data is passed on update, the buffer       will be trimmed to fit the existing buffer size. This flag has effect only on dynamic       buffers.   - `BGFX_BUFFER_INDEX32` - Buffer is using 32-bit indices. This flag has effect only on       index buffers.</param>
    @:native("bgfx_create_dynamic_index_buffer") extern public static function createDynamicIndexBuffer(_num: cpp.UInt32, _flags: cpp.UInt16):DynamicIndexBufferHandle;
    @:nocompletion
    @:native("bgfx_create_dynamic_index_buffer")
    extern public static function bgfx_create_dynamic_index_buffer(_num: cpp.UInt32, _flags: cpp.UInt16):DynamicIndexBufferHandle;


    /// Create a dynamic index buffer and initialize it.
    /// <param name="_mem">Index buffer data.</param>
    /// <param name="_flags">Buffer creation flags.   - `BGFX_BUFFER_NONE` - No flags.   - `BGFX_BUFFER_COMPUTE_READ` - Buffer will be read from by compute shader.   - `BGFX_BUFFER_COMPUTE_WRITE` - Buffer will be written into by compute shader. When buffer       is created with `BGFX_BUFFER_COMPUTE_WRITE` flag it cannot be updated from CPU.   - `BGFX_BUFFER_COMPUTE_READ_WRITE` - Buffer will be used for read/write by compute shader.   - `BGFX_BUFFER_ALLOW_RESIZE` - Buffer will resize on buffer update if a different amount of       data is passed. If this flag is not specified, and more data is passed on update, the buffer       will be trimmed to fit the existing buffer size. This flag has effect only on dynamic       buffers.   - `BGFX_BUFFER_INDEX32` - Buffer is using 32-bit indices. This flag has effect only on       index buffers.</param>
    @:native("bgfx_create_dynamic_index_buffer_mem") extern public static function createDynamicIndexBufferMem(_mem: cpp.Star<Memory>, _flags: cpp.UInt16):DynamicIndexBufferHandle;
    @:nocompletion
    @:native("bgfx_create_dynamic_index_buffer_mem")
    extern public static function bgfx_create_dynamic_index_buffer_mem(_mem: cpp.Star<Memory>, _flags: cpp.UInt16):DynamicIndexBufferHandle;


    /// Update dynamic index buffer.
    /// <param name="_handle">Dynamic index buffer handle.</param>
    /// <param name="_startIndex">Start index.</param>
    /// <param name="_mem">Index buffer data.</param>
    @:native("bgfx_update_dynamic_index_buffer") extern public static function updateDynamicIndexBuffer(_handle: DynamicIndexBufferHandle, _startIndex: cpp.UInt32, _mem: cpp.Star<Memory>):cpp.Void;
    @:nocompletion
    @:native("bgfx_update_dynamic_index_buffer")
    extern public static function bgfx_update_dynamic_index_buffer(_handle: DynamicIndexBufferHandle, _startIndex: cpp.UInt32, _mem: cpp.Star<Memory>):cpp.Void;


    /// Destroy dynamic index buffer.
    /// <param name="_handle">Dynamic index buffer handle.</param>
    @:native("bgfx_destroy_dynamic_index_buffer") extern public static function destroyDynamicIndexBuffer(_handle: DynamicIndexBufferHandle):cpp.Void;
    @:nocompletion
    @:native("bgfx_destroy_dynamic_index_buffer")
    extern public static function bgfx_destroy_dynamic_index_buffer(_handle: DynamicIndexBufferHandle):cpp.Void;


    /// Create empty dynamic vertex buffer.
    /// <param name="_num">Number of vertices.</param>
    /// <param name="_layout">Vertex layout.</param>
    /// <param name="_flags">Buffer creation flags.   - `BGFX_BUFFER_NONE` - No flags.   - `BGFX_BUFFER_COMPUTE_READ` - Buffer will be read from by compute shader.   - `BGFX_BUFFER_COMPUTE_WRITE` - Buffer will be written into by compute shader. When buffer       is created with `BGFX_BUFFER_COMPUTE_WRITE` flag it cannot be updated from CPU.   - `BGFX_BUFFER_COMPUTE_READ_WRITE` - Buffer will be used for read/write by compute shader.   - `BGFX_BUFFER_ALLOW_RESIZE` - Buffer will resize on buffer update if a different amount of       data is passed. If this flag is not specified, and more data is passed on update, the buffer       will be trimmed to fit the existing buffer size. This flag has effect only on dynamic       buffers.   - `BGFX_BUFFER_INDEX32` - Buffer is using 32-bit indices. This flag has effect only on       index buffers.</param>
    @:native("bgfx_create_dynamic_vertex_buffer") extern public static function createDynamicVertexBuffer(_num: cpp.UInt32, _layout: cpp.Star<VertexLayout>, _flags: cpp.UInt16):DynamicVertexBufferHandle;
    @:nocompletion
    @:native("bgfx_create_dynamic_vertex_buffer")
    extern public static function bgfx_create_dynamic_vertex_buffer(_num: cpp.UInt32, _layout: cpp.Star<VertexLayout>, _flags: cpp.UInt16):DynamicVertexBufferHandle;


    /// Create dynamic vertex buffer and initialize it.
    /// <param name="_mem">Vertex buffer data.</param>
    /// <param name="_layout">Vertex layout.</param>
    /// <param name="_flags">Buffer creation flags.   - `BGFX_BUFFER_NONE` - No flags.   - `BGFX_BUFFER_COMPUTE_READ` - Buffer will be read from by compute shader.   - `BGFX_BUFFER_COMPUTE_WRITE` - Buffer will be written into by compute shader. When buffer       is created with `BGFX_BUFFER_COMPUTE_WRITE` flag it cannot be updated from CPU.   - `BGFX_BUFFER_COMPUTE_READ_WRITE` - Buffer will be used for read/write by compute shader.   - `BGFX_BUFFER_ALLOW_RESIZE` - Buffer will resize on buffer update if a different amount of       data is passed. If this flag is not specified, and more data is passed on update, the buffer       will be trimmed to fit the existing buffer size. This flag has effect only on dynamic       buffers.   - `BGFX_BUFFER_INDEX32` - Buffer is using 32-bit indices. This flag has effect only on       index buffers.</param>
    @:native("bgfx_create_dynamic_vertex_buffer_mem") extern public static function createDynamicVertexBufferMem(_mem: cpp.Star<Memory>, _layout: cpp.Star<VertexLayout>, _flags: cpp.UInt16):DynamicVertexBufferHandle;
    @:nocompletion
    @:native("bgfx_create_dynamic_vertex_buffer_mem")
    extern public static function bgfx_create_dynamic_vertex_buffer_mem(_mem: cpp.Star<Memory>, _layout: cpp.Star<VertexLayout>, _flags: cpp.UInt16):DynamicVertexBufferHandle;


    /// Update dynamic vertex buffer.
    /// <param name="_handle">Dynamic vertex buffer handle.</param>
    /// <param name="_startVertex">Start vertex.</param>
    /// <param name="_mem">Vertex buffer data.</param>
    @:native("bgfx_update_dynamic_vertex_buffer") extern public static function updateDynamicVertexBuffer(_handle: DynamicVertexBufferHandle, _startVertex: cpp.UInt32, _mem: cpp.Star<Memory>):cpp.Void;
    @:nocompletion
    @:native("bgfx_update_dynamic_vertex_buffer")
    extern public static function bgfx_update_dynamic_vertex_buffer(_handle: DynamicVertexBufferHandle, _startVertex: cpp.UInt32, _mem: cpp.Star<Memory>):cpp.Void;


    /// Destroy dynamic vertex buffer.
    /// <param name="_handle">Dynamic vertex buffer handle.</param>
    @:native("bgfx_destroy_dynamic_vertex_buffer") extern public static function destroyDynamicVertexBuffer(_handle: DynamicVertexBufferHandle):cpp.Void;
    @:nocompletion
    @:native("bgfx_destroy_dynamic_vertex_buffer")
    extern public static function bgfx_destroy_dynamic_vertex_buffer(_handle: DynamicVertexBufferHandle):cpp.Void;


    /// Returns number of requested or maximum available indices.
    /// <param name="_num">Number of required indices.</param>
    /// <param name="_index32">Set to `true` if input indices will be 32-bit.</param>
    @:native("bgfx_get_avail_transient_index_buffer") extern public static function getAvailTransientIndexBuffer(_num: cpp.UInt32, _index32: Bool):cpp.UInt32;
    @:nocompletion
    @:native("bgfx_get_avail_transient_index_buffer")
    extern public static function bgfx_get_avail_transient_index_buffer(_num: cpp.UInt32, _index32: Bool):cpp.UInt32;


    /// Returns number of requested or maximum available vertices.
    /// <param name="_num">Number of required vertices.</param>
    /// <param name="_layout">Vertex layout.</param>
    @:native("bgfx_get_avail_transient_vertex_buffer") extern public static function getAvailTransientVertexBuffer(_num: cpp.UInt32, _layout: cpp.Star<VertexLayout>):cpp.UInt32;
    @:nocompletion
    @:native("bgfx_get_avail_transient_vertex_buffer")
    extern public static function bgfx_get_avail_transient_vertex_buffer(_num: cpp.UInt32, _layout: cpp.Star<VertexLayout>):cpp.UInt32;


    /// Returns number of requested or maximum available instance buffer slots.
    /// <param name="_num">Number of required instances.</param>
    /// <param name="_stride">Stride per instance.</param>
    @:native("bgfx_get_avail_instance_data_buffer") extern public static function getAvailInstanceDataBuffer(_num: cpp.UInt32, _stride: cpp.UInt16):cpp.UInt32;
    @:nocompletion
    @:native("bgfx_get_avail_instance_data_buffer")
    extern public static function bgfx_get_avail_instance_data_buffer(_num: cpp.UInt32, _stride: cpp.UInt16):cpp.UInt32;


    /// Allocate transient index buffer.
    /// <param name="_tib">TransientIndexBuffer structure will be filled, and will be valid for the duration of frame, and can be reused for multiple draw calls.</param>
    /// <param name="_num">Number of indices to allocate.</param>
    /// <param name="_index32">Set to `true` if input indices will be 32-bit.</param>
    @:native("bgfx_alloc_transient_index_buffer") extern public static function allocTransientIndexBuffer(_tib: cpp.Star<TransientIndexBuffer>, _num: cpp.UInt32, _index32: Bool):cpp.Void;
    @:nocompletion
    @:native("bgfx_alloc_transient_index_buffer")
    extern public static function bgfx_alloc_transient_index_buffer(_tib: cpp.Star<TransientIndexBuffer>, _num: cpp.UInt32, _index32: Bool):cpp.Void;


    /// Allocate transient vertex buffer.
    /// <param name="_tvb">TransientVertexBuffer structure will be filled, and will be valid for the duration of frame, and can be reused for multiple draw calls.</param>
    /// <param name="_num">Number of vertices to allocate.</param>
    /// <param name="_layout">Vertex layout.</param>
    @:native("bgfx_alloc_transient_vertex_buffer") extern public static function allocTransientVertexBuffer(_tvb: cpp.Star<TransientVertexBuffer>, _num: cpp.UInt32, _layout: cpp.Star<VertexLayout>):cpp.Void;
    @:nocompletion
    @:native("bgfx_alloc_transient_vertex_buffer")
    extern public static function bgfx_alloc_transient_vertex_buffer(_tvb: cpp.Star<TransientVertexBuffer>, _num: cpp.UInt32, _layout: cpp.Star<VertexLayout>):cpp.Void;


    /// Check for required space and allocate transient vertex and index
    /// buffers. If both space requirements are satisfied function returns
    /// true.
    /// <param name="_tvb">TransientVertexBuffer structure will be filled, and will be valid for the duration of frame, and can be reused for multiple draw calls.</param>
    /// <param name="_layout">Vertex layout.</param>
    /// <param name="_numVertices">Number of vertices to allocate.</param>
    /// <param name="_tib">TransientIndexBuffer structure will be filled, and will be valid for the duration of frame, and can be reused for multiple draw calls.</param>
    /// <param name="_numIndices">Number of indices to allocate.</param>
    /// <param name="_index32">Set to `true` if input indices will be 32-bit.</param>
    @:native("bgfx_alloc_transient_buffers") extern public static function allocTransientBuffers(_tvb: cpp.Star<TransientVertexBuffer>, _layout: cpp.Star<VertexLayout>, _numVertices: cpp.UInt32, _tib: cpp.Star<TransientIndexBuffer>, _numIndices: cpp.UInt32, _index32: Bool):Bool;
    @:nocompletion
    @:native("bgfx_alloc_transient_buffers")
    extern public static function bgfx_alloc_transient_buffers(_tvb: cpp.Star<TransientVertexBuffer>, _layout: cpp.Star<VertexLayout>, _numVertices: cpp.UInt32, _tib: cpp.Star<TransientIndexBuffer>, _numIndices: cpp.UInt32, _index32: Bool):Bool;


    /// Allocate instance data buffer.
    /// <param name="_idb">InstanceDataBuffer structure will be filled, and will be valid for duration of frame, and can be reused for multiple draw calls.</param>
    /// <param name="_num">Number of instances.</param>
    /// <param name="_stride">Instance stride. Must be multiple of 16.</param>
    @:native("bgfx_alloc_instance_data_buffer") extern public static function allocInstanceDataBuffer(_idb: cpp.Star<InstanceDataBuffer>, _num: cpp.UInt32, _stride: cpp.UInt16):cpp.Void;
    @:nocompletion
    @:native("bgfx_alloc_instance_data_buffer")
    extern public static function bgfx_alloc_instance_data_buffer(_idb: cpp.Star<InstanceDataBuffer>, _num: cpp.UInt32, _stride: cpp.UInt16):cpp.Void;


    /// Create draw indirect buffer.
    /// <param name="_num">Number of indirect calls.</param>
    @:native("bgfx_create_indirect_buffer") extern public static function createIndirectBuffer(_num: cpp.UInt32):IndirectBufferHandle;
    @:nocompletion
    @:native("bgfx_create_indirect_buffer")
    extern public static function bgfx_create_indirect_buffer(_num: cpp.UInt32):IndirectBufferHandle;


    /// Destroy draw indirect buffer.
    /// <param name="_handle">Indirect buffer handle.</param>
    @:native("bgfx_destroy_indirect_buffer") extern public static function destroyIndirectBuffer(_handle: IndirectBufferHandle):cpp.Void;
    @:nocompletion
    @:native("bgfx_destroy_indirect_buffer")
    extern public static function bgfx_destroy_indirect_buffer(_handle: IndirectBufferHandle):cpp.Void;


    /// Create shader from memory buffer.
    /// @remarks
    ///   Shader binary is obtained by compiling shader offline with shaderc command line tool.
    /// <param name="_mem">Shader binary.</param>
    @:native("bgfx_create_shader") extern public static function createShader(_mem: cpp.Star<Memory>):ShaderHandle;
    @:nocompletion
    @:native("bgfx_create_shader")
    extern public static function bgfx_create_shader(_mem: cpp.Star<Memory>):ShaderHandle;


    /// Returns the number of uniforms and uniform handles used inside a shader.
    /// @remarks
    ///   Only non-predefined uniforms are returned.
    /// <param name="_handle">Shader handle.</param>
    /// <param name="_uniforms">UniformHandle array where data will be stored.</param>
    /// <param name="_max">Maximum capacity of array.</param>
    @:native("bgfx_get_shader_uniforms") extern public static function getShaderUniforms(_handle: ShaderHandle, _uniforms: cpp.Star<UniformHandle>, _max: cpp.UInt16):cpp.UInt16;
    @:nocompletion
    @:native("bgfx_get_shader_uniforms")
    extern public static function bgfx_get_shader_uniforms(_handle: ShaderHandle, _uniforms: cpp.Star<UniformHandle>, _max: cpp.UInt16):cpp.UInt16;


    /// Set shader debug name.
    /// <param name="_handle">Shader handle.</param>
    /// <param name="_name">Shader name.</param>
    /// <param name="_len">Shader name length (if length is INT32_MAX, it's expected that _name is zero terminated string).</param>
    @:native("bgfx_set_shader_name") extern public static function setShaderName(_handle: ShaderHandle, _name: cpp.ConstCharStar, _len: cpp.Int32):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_shader_name")
    extern public static function bgfx_set_shader_name(_handle: ShaderHandle, _name: cpp.ConstCharStar, _len: cpp.Int32):cpp.Void;


    /// Destroy shader.
    /// @remark Once a shader program is created with _handle,
    ///   it is safe to destroy that shader.
    /// <param name="_handle">Shader handle.</param>
    @:native("bgfx_destroy_shader") extern public static function destroyShader(_handle: ShaderHandle):cpp.Void;
    @:nocompletion
    @:native("bgfx_destroy_shader")
    extern public static function bgfx_destroy_shader(_handle: ShaderHandle):cpp.Void;


    /// Create program with vertex and fragment shaders.
    /// <param name="_vsh">Vertex shader.</param>
    /// <param name="_fsh">Fragment shader.</param>
    /// <param name="_destroyShaders">If true, shaders will be destroyed when program is destroyed.</param>
    @:native("bgfx_create_program") extern public static function createProgram(_vsh: ShaderHandle, _fsh: ShaderHandle, _destroyShaders: Bool):ProgramHandle;
    @:nocompletion
    @:native("bgfx_create_program")
    extern public static function bgfx_create_program(_vsh: ShaderHandle, _fsh: ShaderHandle, _destroyShaders: Bool):ProgramHandle;


    /// Create program with compute shader.
    /// <param name="_csh">Compute shader.</param>
    /// <param name="_destroyShaders">If true, shaders will be destroyed when program is destroyed.</param>
    @:native("bgfx_create_compute_program") extern public static function createComputeProgram(_csh: ShaderHandle, _destroyShaders: Bool):ProgramHandle;
    @:nocompletion
    @:native("bgfx_create_compute_program")
    extern public static function bgfx_create_compute_program(_csh: ShaderHandle, _destroyShaders: Bool):ProgramHandle;


    /// Destroy program.
    /// <param name="_handle">Program handle.</param>
    @:native("bgfx_destroy_program") extern public static function destroyProgram(_handle: ProgramHandle):cpp.Void;
    @:nocompletion
    @:native("bgfx_destroy_program")
    extern public static function bgfx_destroy_program(_handle: ProgramHandle):cpp.Void;


    /// Validate texture parameters.
    /// <param name="_depth">Depth dimension of volume texture.</param>
    /// <param name="_cubeMap">Indicates that texture contains cubemap.</param>
    /// <param name="_numLayers">Number of layers in texture array.</param>
    /// <param name="_format">Texture format. See: `TextureFormat::Enum`.</param>
    /// <param name="_flags">Texture flags. See `BGFX_TEXTURE_*`.</param>
    @:native("bgfx_is_texture_valid") extern public static function isTextureValid(_depth: cpp.UInt16, _cubeMap: Bool, _numLayers: cpp.UInt16, _format: TextureFormat, _flags: cpp.UInt64):Bool;
    @:nocompletion
    @:native("bgfx_is_texture_valid")
    extern public static function bgfx_is_texture_valid(_depth: cpp.UInt16, _cubeMap: Bool, _numLayers: cpp.UInt16, _format: TextureFormat, _flags: cpp.UInt64):Bool;


    /// Validate frame buffer parameters.
    /// <param name="_num">Number of attachments.</param>
    /// <param name="_attachment">Attachment texture info. See: `bgfx::Attachment`.</param>
    @:native("bgfx_is_frame_buffer_valid") extern public static function isFrameBufferValid(_num: cpp.UInt8, _attachment: cpp.Star<Attachment>):Bool;
    @:nocompletion
    @:native("bgfx_is_frame_buffer_valid")
    extern public static function bgfx_is_frame_buffer_valid(_num: cpp.UInt8, _attachment: cpp.Star<Attachment>):Bool;


    /// Calculate amount of memory required for texture.
    /// <param name="_info">Resulting texture info structure. See: `TextureInfo`.</param>
    /// <param name="_width">Width.</param>
    /// <param name="_height">Height.</param>
    /// <param name="_depth">Depth dimension of volume texture.</param>
    /// <param name="_cubeMap">Indicates that texture contains cubemap.</param>
    /// <param name="_hasMips">Indicates that texture contains full mip-map chain.</param>
    /// <param name="_numLayers">Number of layers in texture array.</param>
    /// <param name="_format">Texture format. See: `TextureFormat::Enum`.</param>
    @:native("bgfx_calc_texture_size") extern public static function calcTextureSize(_info: cpp.Star<TextureInfo>, _width: cpp.UInt16, _height: cpp.UInt16, _depth: cpp.UInt16, _cubeMap: Bool, _hasMips: Bool, _numLayers: cpp.UInt16, _format: TextureFormat):cpp.Void;
    @:nocompletion
    @:native("bgfx_calc_texture_size")
    extern public static function bgfx_calc_texture_size(_info: cpp.Star<TextureInfo>, _width: cpp.UInt16, _height: cpp.UInt16, _depth: cpp.UInt16, _cubeMap: Bool, _hasMips: Bool, _numLayers: cpp.UInt16, _format: TextureFormat):cpp.Void;


    /// Create texture from memory buffer.
    /// <param name="_mem">DDS, KTX or PVR texture binary data.</param>
    /// <param name="_flags">Texture creation (see `BGFX_TEXTURE_*`.), and sampler (see `BGFX_SAMPLER_*`) flags. Default texture sampling mode is linear, and wrap mode is repeat. - `BGFX_SAMPLER_[U/V/W]_[MIRROR/CLAMP]` - Mirror or clamp to edge wrap   mode. - `BGFX_SAMPLER_[MIN/MAG/MIP]_[POINT/ANISOTROPIC]` - Point or anisotropic   sampling.</param>
    /// <param name="_skip">Skip top level mips when parsing texture.</param>
    /// <param name="_info">When non-`NULL` is specified it returns parsed texture information.</param>
    @:native("bgfx_create_texture") extern public static function createTexture(_mem: cpp.Star<Memory>, _flags: cpp.UInt64, _skip: cpp.UInt8, _info: cpp.Star<TextureInfo>):TextureHandle;
    @:nocompletion
    @:native("bgfx_create_texture")
    extern public static function bgfx_create_texture(_mem: cpp.Star<Memory>, _flags: cpp.UInt64, _skip: cpp.UInt8, _info: cpp.Star<TextureInfo>):TextureHandle;


    /// Create 2D texture.
    /// <param name="_width">Width.</param>
    /// <param name="_height">Height.</param>
    /// <param name="_hasMips">Indicates that texture contains full mip-map chain.</param>
    /// <param name="_numLayers">Number of layers in texture array. Must be 1 if caps `BGFX_CAPS_TEXTURE_2D_ARRAY` flag is not set.</param>
    /// <param name="_format">Texture format. See: `TextureFormat::Enum`.</param>
    /// <param name="_flags">Texture creation (see `BGFX_TEXTURE_*`.), and sampler (see `BGFX_SAMPLER_*`) flags. Default texture sampling mode is linear, and wrap mode is repeat. - `BGFX_SAMPLER_[U/V/W]_[MIRROR/CLAMP]` - Mirror or clamp to edge wrap   mode. - `BGFX_SAMPLER_[MIN/MAG/MIP]_[POINT/ANISOTROPIC]` - Point or anisotropic   sampling.</param>
    /// <param name="_mem">Texture data. If `_mem` is non-NULL, created texture will be immutable. If `_mem` is NULL content of the texture is uninitialized. When `_numLayers` is more than 1, expected memory layout is texture and all mips together for each array element.</param>
    @:native("bgfx_create_texture_2d") extern public static function createTexture2D(_width: cpp.UInt16, _height: cpp.UInt16, _hasMips: Bool, _numLayers: cpp.UInt16, _format: TextureFormat, _flags: cpp.UInt64, _mem: cpp.Star<Memory>):TextureHandle;
    @:nocompletion
    @:native("bgfx_create_texture_2d")
    extern public static function bgfx_create_texture_2d(_width: cpp.UInt16, _height: cpp.UInt16, _hasMips: Bool, _numLayers: cpp.UInt16, _format: TextureFormat, _flags: cpp.UInt64, _mem: cpp.Star<Memory>):TextureHandle;


    /// Create texture with size based on back-buffer ratio. Texture will maintain ratio
    /// if back buffer resolution changes.
    /// <param name="_ratio">Texture size in respect to back-buffer size. See: `BackbufferRatio::Enum`.</param>
    /// <param name="_hasMips">Indicates that texture contains full mip-map chain.</param>
    /// <param name="_numLayers">Number of layers in texture array. Must be 1 if caps `BGFX_CAPS_TEXTURE_2D_ARRAY` flag is not set.</param>
    /// <param name="_format">Texture format. See: `TextureFormat::Enum`.</param>
    /// <param name="_flags">Texture creation (see `BGFX_TEXTURE_*`.), and sampler (see `BGFX_SAMPLER_*`) flags. Default texture sampling mode is linear, and wrap mode is repeat. - `BGFX_SAMPLER_[U/V/W]_[MIRROR/CLAMP]` - Mirror or clamp to edge wrap   mode. - `BGFX_SAMPLER_[MIN/MAG/MIP]_[POINT/ANISOTROPIC]` - Point or anisotropic   sampling.</param>
    @:native("bgfx_create_texture_2d_scaled") extern public static function createTexture2DScaled(_ratio: BackbufferRatio, _hasMips: Bool, _numLayers: cpp.UInt16, _format: TextureFormat, _flags: cpp.UInt64):TextureHandle;
    @:nocompletion
    @:native("bgfx_create_texture_2d_scaled")
    extern public static function bgfx_create_texture_2d_scaled(_ratio: BackbufferRatio, _hasMips: Bool, _numLayers: cpp.UInt16, _format: TextureFormat, _flags: cpp.UInt64):TextureHandle;


    /// Create 3D texture.
    /// <param name="_width">Width.</param>
    /// <param name="_height">Height.</param>
    /// <param name="_depth">Depth.</param>
    /// <param name="_hasMips">Indicates that texture contains full mip-map chain.</param>
    /// <param name="_format">Texture format. See: `TextureFormat::Enum`.</param>
    /// <param name="_flags">Texture creation (see `BGFX_TEXTURE_*`.), and sampler (see `BGFX_SAMPLER_*`) flags. Default texture sampling mode is linear, and wrap mode is repeat. - `BGFX_SAMPLER_[U/V/W]_[MIRROR/CLAMP]` - Mirror or clamp to edge wrap   mode. - `BGFX_SAMPLER_[MIN/MAG/MIP]_[POINT/ANISOTROPIC]` - Point or anisotropic   sampling.</param>
    /// <param name="_mem">Texture data. If `_mem` is non-NULL, created texture will be immutable. If `_mem` is NULL content of the texture is uninitialized. When `_numLayers` is more than 1, expected memory layout is texture and all mips together for each array element.</param>
    @:native("bgfx_create_texture_3d") extern public static function createTexture3D(_width: cpp.UInt16, _height: cpp.UInt16, _depth: cpp.UInt16, _hasMips: Bool, _format: TextureFormat, _flags: cpp.UInt64, _mem: cpp.Star<Memory>):TextureHandle;
    @:nocompletion
    @:native("bgfx_create_texture_3d")
    extern public static function bgfx_create_texture_3d(_width: cpp.UInt16, _height: cpp.UInt16, _depth: cpp.UInt16, _hasMips: Bool, _format: TextureFormat, _flags: cpp.UInt64, _mem: cpp.Star<Memory>):TextureHandle;


    /// Create Cube texture.
    /// <param name="_size">Cube side size.</param>
    /// <param name="_hasMips">Indicates that texture contains full mip-map chain.</param>
    /// <param name="_numLayers">Number of layers in texture array. Must be 1 if caps `BGFX_CAPS_TEXTURE_2D_ARRAY` flag is not set.</param>
    /// <param name="_format">Texture format. See: `TextureFormat::Enum`.</param>
    /// <param name="_flags">Texture creation (see `BGFX_TEXTURE_*`.), and sampler (see `BGFX_SAMPLER_*`) flags. Default texture sampling mode is linear, and wrap mode is repeat. - `BGFX_SAMPLER_[U/V/W]_[MIRROR/CLAMP]` - Mirror or clamp to edge wrap   mode. - `BGFX_SAMPLER_[MIN/MAG/MIP]_[POINT/ANISOTROPIC]` - Point or anisotropic   sampling.</param>
    /// <param name="_mem">Texture data. If `_mem` is non-NULL, created texture will be immutable. If `_mem` is NULL content of the texture is uninitialized. When `_numLayers` is more than 1, expected memory layout is texture and all mips together for each array element.</param>
    @:native("bgfx_create_texture_cube") extern public static function createTextureCube(_size: cpp.UInt16, _hasMips: Bool, _numLayers: cpp.UInt16, _format: TextureFormat, _flags: cpp.UInt64, _mem: cpp.Star<Memory>):TextureHandle;
    @:nocompletion
    @:native("bgfx_create_texture_cube")
    extern public static function bgfx_create_texture_cube(_size: cpp.UInt16, _hasMips: Bool, _numLayers: cpp.UInt16, _format: TextureFormat, _flags: cpp.UInt64, _mem: cpp.Star<Memory>):TextureHandle;


    /// Update 2D texture.
    /// @attention It's valid to update only mutable texture. See `bgfx::createTexture2D` for more info.
    /// <param name="_handle">Texture handle.</param>
    /// <param name="_layer">Layer in texture array.</param>
    /// <param name="_mip">Mip level.</param>
    /// <param name="_x">X offset in texture.</param>
    /// <param name="_y">Y offset in texture.</param>
    /// <param name="_width">Width of texture block.</param>
    /// <param name="_height">Height of texture block.</param>
    /// <param name="_mem">Texture update data.</param>
    /// <param name="_pitch">Pitch of input image (bytes). When _pitch is set to UINT16_MAX, it will be calculated internally based on _width.</param>
    @:native("bgfx_update_texture_2d") extern public static function updateTexture2D(_handle: TextureHandle, _layer: cpp.UInt16, _mip: cpp.UInt8, _x: cpp.UInt16, _y: cpp.UInt16, _width: cpp.UInt16, _height: cpp.UInt16, _mem: cpp.Star<Memory>, _pitch: cpp.UInt16):cpp.Void;
    @:nocompletion
    @:native("bgfx_update_texture_2d")
    extern public static function bgfx_update_texture_2d(_handle: TextureHandle, _layer: cpp.UInt16, _mip: cpp.UInt8, _x: cpp.UInt16, _y: cpp.UInt16, _width: cpp.UInt16, _height: cpp.UInt16, _mem: cpp.Star<Memory>, _pitch: cpp.UInt16):cpp.Void;


    /// Update 3D texture.
    /// @attention It's valid to update only mutable texture. See `bgfx::createTexture3D` for more info.
    /// <param name="_handle">Texture handle.</param>
    /// <param name="_mip">Mip level.</param>
    /// <param name="_x">X offset in texture.</param>
    /// <param name="_y">Y offset in texture.</param>
    /// <param name="_z">Z offset in texture.</param>
    /// <param name="_width">Width of texture block.</param>
    /// <param name="_height">Height of texture block.</param>
    /// <param name="_depth">Depth of texture block.</param>
    /// <param name="_mem">Texture update data.</param>
    @:native("bgfx_update_texture_3d") extern public static function updateTexture3D(_handle: TextureHandle, _mip: cpp.UInt8, _x: cpp.UInt16, _y: cpp.UInt16, _z: cpp.UInt16, _width: cpp.UInt16, _height: cpp.UInt16, _depth: cpp.UInt16, _mem: cpp.Star<Memory>):cpp.Void;
    @:nocompletion
    @:native("bgfx_update_texture_3d")
    extern public static function bgfx_update_texture_3d(_handle: TextureHandle, _mip: cpp.UInt8, _x: cpp.UInt16, _y: cpp.UInt16, _z: cpp.UInt16, _width: cpp.UInt16, _height: cpp.UInt16, _depth: cpp.UInt16, _mem: cpp.Star<Memory>):cpp.Void;


    /// Update Cube texture.
    /// @attention It's valid to update only mutable texture. See `bgfx::createTextureCube` for more info.
    /// <param name="_handle">Texture handle.</param>
    /// <param name="_layer">Layer in texture array.</param>
    /// <param name="_side">Cubemap side `BGFX_CUBE_MAP_<POSITIVE or NEGATIVE>_<X, Y or Z>`,   where 0 is +X, 1 is -X, 2 is +Y, 3 is -Y, 4 is +Z, and 5 is -Z.                  +----------+                  |-z       2|                  | ^  +y    |                  | |        |    Unfolded cube:                  | +---->+x |       +----------+----------+----------+----------+       |+y       1|+y       4|+y       0|+y       5|       | ^  -x    | ^  +z    | ^  +x    | ^  -z    |       | |        | |        | |        | |        |       | +---->+z | +---->+x | +---->-z | +---->-x |       +----------+----------+----------+----------+                  |+z       3|                  | ^  -y    |                  | |        |                  | +---->+x |                  +----------+</param>
    /// <param name="_mip">Mip level.</param>
    /// <param name="_x">X offset in texture.</param>
    /// <param name="_y">Y offset in texture.</param>
    /// <param name="_width">Width of texture block.</param>
    /// <param name="_height">Height of texture block.</param>
    /// <param name="_mem">Texture update data.</param>
    /// <param name="_pitch">Pitch of input image (bytes). When _pitch is set to UINT16_MAX, it will be calculated internally based on _width.</param>
    @:native("bgfx_update_texture_cube") extern public static function updateTextureCube(_handle: TextureHandle, _layer: cpp.UInt16, _side: cpp.UInt8, _mip: cpp.UInt8, _x: cpp.UInt16, _y: cpp.UInt16, _width: cpp.UInt16, _height: cpp.UInt16, _mem: cpp.Star<Memory>, _pitch: cpp.UInt16):cpp.Void;
    @:nocompletion
    @:native("bgfx_update_texture_cube")
    extern public static function bgfx_update_texture_cube(_handle: TextureHandle, _layer: cpp.UInt16, _side: cpp.UInt8, _mip: cpp.UInt8, _x: cpp.UInt16, _y: cpp.UInt16, _width: cpp.UInt16, _height: cpp.UInt16, _mem: cpp.Star<Memory>, _pitch: cpp.UInt16):cpp.Void;


    /// Read back texture content.
    /// @attention Texture must be created with `BGFX_TEXTURE_READ_BACK` flag.
    /// @attention Availability depends on: `BGFX_CAPS_TEXTURE_READ_BACK`.
    /// <param name="_handle">Texture handle.</param>
    /// <param name="_data">Destination buffer.</param>
    /// <param name="_mip">Mip level.</param>
    @:native("bgfx_read_texture") extern public static function readTexture(_handle: TextureHandle, _data: cpp.Star<cpp.Void>, _mip: cpp.UInt8):cpp.UInt32;
    @:nocompletion
    @:native("bgfx_read_texture")
    extern public static function bgfx_read_texture(_handle: TextureHandle, _data: cpp.Star<cpp.Void>, _mip: cpp.UInt8):cpp.UInt32;


    /// Set texture debug name.
    /// <param name="_handle">Texture handle.</param>
    /// <param name="_name">Texture name.</param>
    /// <param name="_len">Texture name length (if length is INT32_MAX, it's expected that _name is zero terminated string.</param>
    @:native("bgfx_set_texture_name") extern public static function setTextureName(_handle: TextureHandle, _name: cpp.ConstCharStar, _len: cpp.Int32):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_texture_name")
    extern public static function bgfx_set_texture_name(_handle: TextureHandle, _name: cpp.ConstCharStar, _len: cpp.Int32):cpp.Void;


    /// Returns texture direct access pointer.
    /// @attention Availability depends on: `BGFX_CAPS_TEXTURE_DIRECT_ACCESS`. This feature
    ///   is available on GPUs that have unified memory architecture (UMA) support.
    /// <param name="_handle">Texture handle.</param>
    @:native("bgfx_get_direct_access_ptr") extern public static function getDirectAccessPtr(_handle: TextureHandle):cpp.Star<cpp.Void>;
    @:nocompletion
    @:native("bgfx_get_direct_access_ptr")
    extern public static function bgfx_get_direct_access_ptr(_handle: TextureHandle):cpp.Star<cpp.Void>;


    /// Destroy texture.
    /// <param name="_handle">Texture handle.</param>
    @:native("bgfx_destroy_texture") extern public static function destroyTexture(_handle: TextureHandle):cpp.Void;
    @:nocompletion
    @:native("bgfx_destroy_texture")
    extern public static function bgfx_destroy_texture(_handle: TextureHandle):cpp.Void;


    /// Create frame buffer (simple).
    /// <param name="_width">Texture width.</param>
    /// <param name="_height">Texture height.</param>
    /// <param name="_format">Texture format. See: `TextureFormat::Enum`.</param>
    /// <param name="_textureFlags">Texture creation (see `BGFX_TEXTURE_*`.), and sampler (see `BGFX_SAMPLER_*`) flags. Default texture sampling mode is linear, and wrap mode is repeat. - `BGFX_SAMPLER_[U/V/W]_[MIRROR/CLAMP]` - Mirror or clamp to edge wrap   mode. - `BGFX_SAMPLER_[MIN/MAG/MIP]_[POINT/ANISOTROPIC]` - Point or anisotropic   sampling.</param>
    @:native("bgfx_create_frame_buffer") extern public static function createFrameBuffer(_width: cpp.UInt16, _height: cpp.UInt16, _format: TextureFormat, _textureFlags: cpp.UInt64):FrameBufferHandle;
    @:nocompletion
    @:native("bgfx_create_frame_buffer")
    extern public static function bgfx_create_frame_buffer(_width: cpp.UInt16, _height: cpp.UInt16, _format: TextureFormat, _textureFlags: cpp.UInt64):FrameBufferHandle;


    /// Create frame buffer with size based on back-buffer ratio. Frame buffer will maintain ratio
    /// if back buffer resolution changes.
    /// <param name="_ratio">Frame buffer size in respect to back-buffer size. See: `BackbufferRatio::Enum`.</param>
    /// <param name="_format">Texture format. See: `TextureFormat::Enum`.</param>
    /// <param name="_textureFlags">Texture creation (see `BGFX_TEXTURE_*`.), and sampler (see `BGFX_SAMPLER_*`) flags. Default texture sampling mode is linear, and wrap mode is repeat. - `BGFX_SAMPLER_[U/V/W]_[MIRROR/CLAMP]` - Mirror or clamp to edge wrap   mode. - `BGFX_SAMPLER_[MIN/MAG/MIP]_[POINT/ANISOTROPIC]` - Point or anisotropic   sampling.</param>
    @:native("bgfx_create_frame_buffer_scaled") extern public static function createFrameBufferScaled(_ratio: BackbufferRatio, _format: TextureFormat, _textureFlags: cpp.UInt64):FrameBufferHandle;
    @:nocompletion
    @:native("bgfx_create_frame_buffer_scaled")
    extern public static function bgfx_create_frame_buffer_scaled(_ratio: BackbufferRatio, _format: TextureFormat, _textureFlags: cpp.UInt64):FrameBufferHandle;


    /// Create MRT frame buffer from texture handles (simple).
    /// <param name="_num">Number of texture handles.</param>
    /// <param name="_handles">Texture attachments.</param>
    /// <param name="_destroyTexture">If true, textures will be destroyed when frame buffer is destroyed.</param>
    @:native("bgfx_create_frame_buffer_from_handles") extern public static function createFrameBufferFromHandles(_num: cpp.UInt8, _handles: cpp.Star<TextureHandle>, _destroyTexture: Bool):FrameBufferHandle;
    @:nocompletion
    @:native("bgfx_create_frame_buffer_from_handles")
    extern public static function bgfx_create_frame_buffer_from_handles(_num: cpp.UInt8, _handles: cpp.Star<TextureHandle>, _destroyTexture: Bool):FrameBufferHandle;


    /// Create MRT frame buffer from texture handles with specific layer and
    /// mip level.
    /// <param name="_num">Number of attachments.</param>
    /// <param name="_attachment">Attachment texture info. See: `bgfx::Attachment`.</param>
    /// <param name="_destroyTexture">If true, textures will be destroyed when frame buffer is destroyed.</param>
    @:native("bgfx_create_frame_buffer_from_attachment") extern public static function createFrameBufferFromAttachment(_num: cpp.UInt8, _attachment: cpp.Star<Attachment>, _destroyTexture: Bool):FrameBufferHandle;
    @:nocompletion
    @:native("bgfx_create_frame_buffer_from_attachment")
    extern public static function bgfx_create_frame_buffer_from_attachment(_num: cpp.UInt8, _attachment: cpp.Star<Attachment>, _destroyTexture: Bool):FrameBufferHandle;


    /// Create frame buffer for multiple window rendering.
    /// @remarks
    ///   Frame buffer cannot be used for sampling.
    /// @attention Availability depends on: `BGFX_CAPS_SWAP_CHAIN`.
    /// <param name="_nwh">OS' target native window handle.</param>
    /// <param name="_width">Window back buffer width.</param>
    /// <param name="_height">Window back buffer height.</param>
    /// <param name="_format">Window back buffer color format.</param>
    /// <param name="_depthFormat">Window back buffer depth format.</param>
    @:native("bgfx_create_frame_buffer_from_nwh") extern public static function createFrameBufferFromNwh(_nwh: cpp.Star<cpp.Void>, _width: cpp.UInt16, _height: cpp.UInt16, _format: TextureFormat, _depthFormat: TextureFormat):FrameBufferHandle;
    @:nocompletion
    @:native("bgfx_create_frame_buffer_from_nwh")
    extern public static function bgfx_create_frame_buffer_from_nwh(_nwh: cpp.Star<cpp.Void>, _width: cpp.UInt16, _height: cpp.UInt16, _format: TextureFormat, _depthFormat: TextureFormat):FrameBufferHandle;


    /// Set frame buffer debug name.
    /// <param name="_handle">Frame buffer handle.</param>
    /// <param name="_name">Frame buffer name.</param>
    /// <param name="_len">Frame buffer name length (if length is INT32_MAX, it's expected that _name is zero terminated string.</param>
    @:native("bgfx_set_frame_buffer_name") extern public static function setFrameBufferName(_handle: FrameBufferHandle, _name: cpp.ConstCharStar, _len: cpp.Int32):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_frame_buffer_name")
    extern public static function bgfx_set_frame_buffer_name(_handle: FrameBufferHandle, _name: cpp.ConstCharStar, _len: cpp.Int32):cpp.Void;


    /// Obtain texture handle of frame buffer attachment.
    /// <param name="_handle">Frame buffer handle.</param>
    @:native("bgfx_get_texture") extern public static function getTexture(_handle: FrameBufferHandle, _attachment: cpp.UInt8):TextureHandle;
    @:nocompletion
    @:native("bgfx_get_texture")
    extern public static function bgfx_get_texture(_handle: FrameBufferHandle, _attachment: cpp.UInt8):TextureHandle;


    /// Destroy frame buffer.
    /// <param name="_handle">Frame buffer handle.</param>
    @:native("bgfx_destroy_frame_buffer") extern public static function destroyFrameBuffer(_handle: FrameBufferHandle):cpp.Void;
    @:nocompletion
    @:native("bgfx_destroy_frame_buffer")
    extern public static function bgfx_destroy_frame_buffer(_handle: FrameBufferHandle):cpp.Void;


    /// Create shader uniform parameter.
    /// @remarks
    ///   1. Uniform names are unique. It's valid to call `bgfx::createUniform`
    ///      multiple times with the same uniform name. The library will always
    ///      return the same handle, but the handle reference count will be
    ///      incremented. This means that the same number of `bgfx::destroyUniform`
    ///      must be called to properly destroy the uniform.
    ///   2. Predefined uniforms (declared in `bgfx_shader.sh`):
    ///      - `u_viewRect vec4(x, y, width, height)` - view rectangle for current
    ///        view, in pixels.
    ///      - `u_viewTexel vec4(1.0/width, 1.0/height, undef, undef)` - inverse
    ///        width and height
    ///      - `u_view mat4` - view matrix
    ///      - `u_invView mat4` - inverted view matrix
    ///      - `u_proj mat4` - projection matrix
    ///      - `u_invProj mat4` - inverted projection matrix
    ///      - `u_viewProj mat4` - concatenated view projection matrix
    ///      - `u_invViewProj mat4` - concatenated inverted view projection matrix
    ///      - `u_model mat4[BGFX_CONFIG_MAX_BONES]` - array of model matrices.
    ///      - `u_modelView mat4` - concatenated model view matrix, only first
    ///        model matrix from array is used.
    ///      - `u_modelViewProj mat4` - concatenated model view projection matrix.
    ///      - `u_alphaRef float` - alpha reference value for alpha test.
    /// <param name="_name">Uniform name in shader.</param>
    /// <param name="_type">Type of uniform (See: `bgfx::UniformType`).</param>
    /// <param name="_num">Number of elements in array.</param>
    @:native("bgfx_create_uniform") extern public static function createUniform(_name: cpp.ConstCharStar, _type: UniformType, _num: cpp.UInt16):UniformHandle;
    @:nocompletion
    @:native("bgfx_create_uniform")
    extern public static function bgfx_create_uniform(_name: cpp.ConstCharStar, _type: UniformType, _num: cpp.UInt16):UniformHandle;


    /// Retrieve uniform info.
    /// <param name="_handle">Handle to uniform object.</param>
    /// <param name="_info">Uniform info.</param>
    @:native("bgfx_get_uniform_info") extern public static function getUniformInfo(_handle: UniformHandle, _info: cpp.Star<UniformInfo>):cpp.Void;
    @:nocompletion
    @:native("bgfx_get_uniform_info")
    extern public static function bgfx_get_uniform_info(_handle: UniformHandle, _info: cpp.Star<UniformInfo>):cpp.Void;


    /// Destroy shader uniform parameter.
    /// <param name="_handle">Handle to uniform object.</param>
    @:native("bgfx_destroy_uniform") extern public static function destroyUniform(_handle: UniformHandle):cpp.Void;
    @:nocompletion
    @:native("bgfx_destroy_uniform")
    extern public static function bgfx_destroy_uniform(_handle: UniformHandle):cpp.Void;


    /// Create occlusion query.
    @:native("bgfx_create_occlusion_query") extern public static function createOcclusionQuery():OcclusionQueryHandle;
    @:nocompletion
    @:native("bgfx_create_occlusion_query")
    extern public static function bgfx_create_occlusion_query():OcclusionQueryHandle;


    /// Retrieve occlusion query result from previous frame.
    /// <param name="_handle">Handle to occlusion query object.</param>
    /// <param name="_result">Number of pixels that passed test. This argument can be `NULL` if result of occlusion query is not needed.</param>
    @:native("bgfx_get_result") extern public static function getResult(_handle: OcclusionQueryHandle, _result: cpp.Star<cpp.Int32>):OcclusionQueryResult;
    @:nocompletion
    @:native("bgfx_get_result")
    extern public static function bgfx_get_result(_handle: OcclusionQueryHandle, _result: cpp.Star<cpp.Int32>):OcclusionQueryResult;


    /// Destroy occlusion query.
    /// <param name="_handle">Handle to occlusion query object.</param>
    @:native("bgfx_destroy_occlusion_query") extern public static function destroyOcclusionQuery(_handle: OcclusionQueryHandle):cpp.Void;
    @:nocompletion
    @:native("bgfx_destroy_occlusion_query")
    extern public static function bgfx_destroy_occlusion_query(_handle: OcclusionQueryHandle):cpp.Void;


    /// Set palette color value.
    /// <param name="_index">Index into palette.</param>
    /// <param name="_rgba">RGBA floating point values.</param>
    @:native("bgfx_set_palette_color") extern public static function setPaletteColor(_index: cpp.UInt8, _rgba: cpp.Float32):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_palette_color")
    extern public static function bgfx_set_palette_color(_index: cpp.UInt8, _rgba: cpp.Float32):cpp.Void;


    /// Set palette color value.
    /// <param name="_index">Index into palette.</param>
    /// <param name="_rgba">Packed 32-bit RGBA value.</param>
    @:native("bgfx_set_palette_color_rgba8") extern public static function setPaletteColorRgba8(_index: cpp.UInt8, _rgba: cpp.UInt32):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_palette_color_rgba8")
    extern public static function bgfx_set_palette_color_rgba8(_index: cpp.UInt8, _rgba: cpp.UInt32):cpp.Void;


    /// Set view name.
    /// @remarks
    ///   This is debug only feature.
    ///   In graphics debugger view name will appear as:
    ///       "nnnc <view name>"
    ///        ^  ^ ^
    ///        |  +--- compute (C)
    ///        +------ view id
    /// <param name="_id">View id.</param>
    /// <param name="_name">View name.</param>
    @:native("bgfx_set_view_name") extern public static function setViewName(_id: ViewId, _name: cpp.ConstCharStar):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_view_name")
    extern public static function bgfx_set_view_name(_id: ViewId, _name: cpp.ConstCharStar):cpp.Void;


    /// Set view rectangle. Draw primitive outside view will be clipped.
    /// <param name="_id">View id.</param>
    /// <param name="_x">Position x from the left corner of the window.</param>
    /// <param name="_y">Position y from the top corner of the window.</param>
    /// <param name="_width">Width of view port region.</param>
    /// <param name="_height">Height of view port region.</param>
    @:native("bgfx_set_view_rect") extern public static function setViewRect(_id: ViewId, _x: cpp.UInt16, _y: cpp.UInt16, _width: cpp.UInt16, _height: cpp.UInt16):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_view_rect")
    extern public static function bgfx_set_view_rect(_id: ViewId, _x: cpp.UInt16, _y: cpp.UInt16, _width: cpp.UInt16, _height: cpp.UInt16):cpp.Void;


    /// Set view rectangle. Draw primitive outside view will be clipped.
    /// <param name="_id">View id.</param>
    /// <param name="_x">Position x from the left corner of the window.</param>
    /// <param name="_y">Position y from the top corner of the window.</param>
    /// <param name="_ratio">Width and height will be set in respect to back-buffer size. See: `BackbufferRatio::Enum`.</param>
    @:native("bgfx_set_view_rect_ratio") extern public static function setViewRectRatio(_id: ViewId, _x: cpp.UInt16, _y: cpp.UInt16, _ratio: BackbufferRatio):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_view_rect_ratio")
    extern public static function bgfx_set_view_rect_ratio(_id: ViewId, _x: cpp.UInt16, _y: cpp.UInt16, _ratio: BackbufferRatio):cpp.Void;


    /// Set view scissor. Draw primitive outside view will be clipped. When
    /// _x, _y, _width and _height are set to 0, scissor will be disabled.
    /// <param name="_id">View id.</param>
    /// <param name="_x">Position x from the left corner of the window.</param>
    /// <param name="_y">Position y from the top corner of the window.</param>
    /// <param name="_width">Width of view scissor region.</param>
    /// <param name="_height">Height of view scissor region.</param>
    @:native("bgfx_set_view_scissor") extern public static function setViewScissor(_id: ViewId, _x: cpp.UInt16, _y: cpp.UInt16, _width: cpp.UInt16, _height: cpp.UInt16):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_view_scissor")
    extern public static function bgfx_set_view_scissor(_id: ViewId, _x: cpp.UInt16, _y: cpp.UInt16, _width: cpp.UInt16, _height: cpp.UInt16):cpp.Void;


    /// Set view clear flags.
    /// <param name="_id">View id.</param>
    /// <param name="_flags">Clear flags. Use `BGFX_CLEAR_NONE` to remove any clear operation. See: `BGFX_CLEAR_*`.</param>
    /// <param name="_rgba">Color clear value.</param>
    /// <param name="_depth">Depth clear value.</param>
    /// <param name="_stencil">Stencil clear value.</param>
    @:native("bgfx_set_view_clear") extern public static function setViewClear(_id: ViewId, _flags: cpp.UInt16, _rgba: cpp.UInt32, _depth: cpp.Float32, _stencil: cpp.UInt8):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_view_clear")
    extern public static function bgfx_set_view_clear(_id: ViewId, _flags: cpp.UInt16, _rgba: cpp.UInt32, _depth: cpp.Float32, _stencil: cpp.UInt8):cpp.Void;


    /// Set view clear flags with different clear color for each
    /// frame buffer texture. `bgfx::setPaletteColor` must be used to set up a
    /// clear color palette.
    /// <param name="_id">View id.</param>
    /// <param name="_flags">Clear flags. Use `BGFX_CLEAR_NONE` to remove any clear operation. See: `BGFX_CLEAR_*`.</param>
    /// <param name="_depth">Depth clear value.</param>
    /// <param name="_stencil">Stencil clear value.</param>
    /// <param name="_c0">Palette index for frame buffer attachment 0.</param>
    /// <param name="_c1">Palette index for frame buffer attachment 1.</param>
    /// <param name="_c2">Palette index for frame buffer attachment 2.</param>
    /// <param name="_c3">Palette index for frame buffer attachment 3.</param>
    /// <param name="_c4">Palette index for frame buffer attachment 4.</param>
    /// <param name="_c5">Palette index for frame buffer attachment 5.</param>
    /// <param name="_c6">Palette index for frame buffer attachment 6.</param>
    /// <param name="_c7">Palette index for frame buffer attachment 7.</param>
    @:native("bgfx_set_view_clear_mrt") extern public static function setViewClearMrt(_id: ViewId, _flags: cpp.UInt16, _depth: cpp.Float32, _stencil: cpp.UInt8, _c0: cpp.UInt8, _c1: cpp.UInt8, _c2: cpp.UInt8, _c3: cpp.UInt8, _c4: cpp.UInt8, _c5: cpp.UInt8, _c6: cpp.UInt8, _c7: cpp.UInt8):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_view_clear_mrt")
    extern public static function bgfx_set_view_clear_mrt(_id: ViewId, _flags: cpp.UInt16, _depth: cpp.Float32, _stencil: cpp.UInt8, _c0: cpp.UInt8, _c1: cpp.UInt8, _c2: cpp.UInt8, _c3: cpp.UInt8, _c4: cpp.UInt8, _c5: cpp.UInt8, _c6: cpp.UInt8, _c7: cpp.UInt8):cpp.Void;


    /// Set view sorting mode.
    /// @remarks
    ///   View mode must be set prior calling `bgfx::submit` for the view.
    /// <param name="_id">View id.</param>
    /// <param name="_mode">View sort mode. See `ViewMode::Enum`.</param>
    @:native("bgfx_set_view_mode") extern public static function setViewMode(_id: ViewId, _mode: ViewMode):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_view_mode")
    extern public static function bgfx_set_view_mode(_id: ViewId, _mode: ViewMode):cpp.Void;


    /// Set view frame buffer.
    /// @remarks
    ///   Not persistent after `bgfx::reset` call.
    /// <param name="_id">View id.</param>
    /// <param name="_handle">Frame buffer handle. Passing `BGFX_INVALID_HANDLE` as frame buffer handle will draw primitives from this view into default back buffer.</param>
    @:native("bgfx_set_view_frame_buffer") extern public static function setViewFrameBuffer(_id: ViewId, _handle: FrameBufferHandle):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_view_frame_buffer")
    extern public static function bgfx_set_view_frame_buffer(_id: ViewId, _handle: FrameBufferHandle):cpp.Void;


    /// Set view's view matrix and projection matrix,
    /// all draw primitives in this view will use these two matrices.
    /// <param name="_id">View id.</param>
    /// <param name="_view">View matrix.</param>
    /// <param name="_proj">Projection matrix.</param>
    @:native("bgfx_set_view_transform") extern public static function setViewTransform(_id: ViewId, _view: cpp.Star<cpp.Void>, _proj: cpp.Star<cpp.Void>):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_view_transform")
    extern public static function bgfx_set_view_transform(_id: ViewId, _view: cpp.Star<cpp.Void>, _proj: cpp.Star<cpp.Void>):cpp.Void;


    /// Post submit view reordering.
    /// <param name="_id">First view id.</param>
    /// <param name="_num">Number of views to remap.</param>
    /// <param name="_order">View remap id table. Passing `NULL` will reset view ids to default state.</param>
    @:native("bgfx_set_view_order") extern public static function setViewOrder(_id: ViewId, _num: cpp.UInt16, _order: cpp.Star<ViewId>):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_view_order")
    extern public static function bgfx_set_view_order(_id: ViewId, _num: cpp.UInt16, _order: cpp.Star<ViewId>):cpp.Void;


    /// Reset all view settings to default.
    @:native("bgfx_reset_view") extern public static function resetView(_id: ViewId):cpp.Void;
    @:nocompletion
    @:native("bgfx_reset_view")
    extern public static function bgfx_reset_view(_id: ViewId):cpp.Void;


    /// Begin submitting draw calls from thread.
    /// <param name="_forThread">Explicitly request an encoder for a worker thread.</param>
    @:native("bgfx_encoder_begin") extern public static function encoderBegin(_forThread: Bool):cpp.Star<Encoder>;
    @:nocompletion
    @:native("bgfx_encoder_begin")
    extern public static function bgfx_encoder_begin(_forThread: Bool):cpp.Star<Encoder>;


    /// End submitting draw calls from thread.
    /// <param name="_encoder">Encoder.</param>
    @:native("bgfx_encoder_end") extern public static function encoderEnd(_encoder: cpp.Star<Encoder>):cpp.Void;
    @:nocompletion
    @:native("bgfx_encoder_end")
    extern public static function bgfx_encoder_end(_encoder: cpp.Star<Encoder>):cpp.Void;


    /// Sets a debug marker. This allows you to group graphics calls together for easy browsing in
    /// graphics debugging tools.
    /// <param name="_marker">Marker string.</param>
    @:nocompletion
    @:native("bgfx_encoder_set_marker")
    extern public static function bgfx_encoder_set_marker(self: cpp.Star<Encoder>, _marker: cpp.ConstCharStar):cpp.Void;


    /// Set render states for draw primitive.
    /// @remarks
    ///   1. To set up more complex states use:
    ///      `BGFX_STATE_ALPHA_REF(_ref)`,
    ///      `BGFX_STATE_POINT_SIZE(_size)`,
    ///      `BGFX_STATE_BLEND_FUNC(_src, _dst)`,
    ///      `BGFX_STATE_BLEND_FUNC_SEPARATE(_srcRGB, _dstRGB, _srcA, _dstA)`,
    ///      `BGFX_STATE_BLEND_EQUATION(_equation)`,
    ///      `BGFX_STATE_BLEND_EQUATION_SEPARATE(_equationRGB, _equationA)`
    ///   2. `BGFX_STATE_BLEND_EQUATION_ADD` is set when no other blend
    ///      equation is specified.
    /// <param name="_state">State flags. Default state for primitive type is   triangles. See: `BGFX_STATE_DEFAULT`.   - `BGFX_STATE_DEPTH_TEST_*` - Depth test function.   - `BGFX_STATE_BLEND_*` - See remark 1 about BGFX_STATE_BLEND_FUNC.   - `BGFX_STATE_BLEND_EQUATION_*` - See remark 2.   - `BGFX_STATE_CULL_*` - Backface culling mode.   - `BGFX_STATE_WRITE_*` - Enable R, G, B, A or Z write.   - `BGFX_STATE_MSAA` - Enable hardware multisample antialiasing.   - `BGFX_STATE_PT_[TRISTRIP/LINES/POINTS]` - Primitive type.</param>
    /// <param name="_rgba">Sets blend factor used by `BGFX_STATE_BLEND_FACTOR` and   `BGFX_STATE_BLEND_INV_FACTOR` blend modes.</param>
    @:nocompletion
    @:native("bgfx_encoder_set_state")
    extern public static function bgfx_encoder_set_state(self: cpp.Star<Encoder>, _state: cpp.UInt64, _rgba: cpp.UInt32):cpp.Void;


    /// Set condition for rendering.
    /// <param name="_handle">Occlusion query handle.</param>
    /// <param name="_visible">Render if occlusion query is visible.</param>
    @:nocompletion
    @:native("bgfx_encoder_set_condition")
    extern public static function bgfx_encoder_set_condition(self: cpp.Star<Encoder>, _handle: OcclusionQueryHandle, _visible: Bool):cpp.Void;


    /// Set stencil test state.
    /// <param name="_fstencil">Front stencil state.</param>
    /// <param name="_bstencil">Back stencil state. If back is set to `BGFX_STENCIL_NONE` _fstencil is applied to both front and back facing primitives.</param>
    @:nocompletion
    @:native("bgfx_encoder_set_stencil")
    extern public static function bgfx_encoder_set_stencil(self: cpp.Star<Encoder>, _fstencil: cpp.UInt32, _bstencil: cpp.UInt32):cpp.Void;


    /// Set scissor for draw primitive.
    /// @remark
    ///   To scissor for all primitives in view see `bgfx::setViewScissor`.
    /// <param name="_x">Position x from the left corner of the window.</param>
    /// <param name="_y">Position y from the top corner of the window.</param>
    /// <param name="_width">Width of view scissor region.</param>
    /// <param name="_height">Height of view scissor region.</param>
    @:nocompletion
    @:native("bgfx_encoder_set_scissor")
    extern public static function bgfx_encoder_set_scissor(self: cpp.Star<Encoder>, _x: cpp.UInt16, _y: cpp.UInt16, _width: cpp.UInt16, _height: cpp.UInt16):cpp.UInt16;


    /// Set scissor from cache for draw primitive.
    /// @remark
    ///   To scissor for all primitives in view see `bgfx::setViewScissor`.
    /// <param name="_cache">Index in scissor cache.</param>
    @:nocompletion
    @:native("bgfx_encoder_set_scissor_cached")
    extern public static function bgfx_encoder_set_scissor_cached(self: cpp.Star<Encoder>, _cache: cpp.UInt16):cpp.Void;


    /// Set model matrix for draw primitive. If it is not called,
    /// the model will be rendered with an identity model matrix.
    /// <param name="_mtx">Pointer to first matrix in array.</param>
    /// <param name="_num">Number of matrices in array.</param>
    @:nocompletion
    @:native("bgfx_encoder_set_transform")
    extern public static function bgfx_encoder_set_transform(self: cpp.Star<Encoder>, _mtx: cpp.Star<cpp.Void>, _num: cpp.UInt16):cpp.UInt32;


    ///  Set model matrix from matrix cache for draw primitive.
    /// <param name="_cache">Index in matrix cache.</param>
    /// <param name="_num">Number of matrices from cache.</param>
    @:nocompletion
    @:native("bgfx_encoder_set_transform_cached")
    extern public static function bgfx_encoder_set_transform_cached(self: cpp.Star<Encoder>, _cache: cpp.UInt32, _num: cpp.UInt16):cpp.Void;


    /// Reserve matrices in internal matrix cache.
    /// @attention Pointer returned can be modified until `bgfx::frame` is called.
    /// <param name="_transform">Pointer to `Transform` structure.</param>
    /// <param name="_num">Number of matrices.</param>
    @:nocompletion
    @:native("bgfx_encoder_alloc_transform")
    extern public static function bgfx_encoder_alloc_transform(self: cpp.Star<Encoder>, _transform: cpp.Star<Transform>, _num: cpp.UInt16):cpp.UInt32;


    /// Set shader uniform parameter for draw primitive.
    /// <param name="_handle">Uniform.</param>
    /// <param name="_value">Pointer to uniform data.</param>
    /// <param name="_num">Number of elements. Passing `UINT16_MAX` will use the _num passed on uniform creation.</param>
    @:nocompletion
    @:native("bgfx_encoder_set_uniform")
    extern public static function bgfx_encoder_set_uniform(self: cpp.Star<Encoder>, _handle: UniformHandle, _value: cpp.Star<cpp.Void>, _num: cpp.UInt16):cpp.Void;


    /// Set index buffer for draw primitive.
    /// <param name="_handle">Index buffer.</param>
    /// <param name="_firstIndex">First index to render.</param>
    /// <param name="_numIndices">Number of indices to render.</param>
    @:nocompletion
    @:native("bgfx_encoder_set_index_buffer")
    extern public static function bgfx_encoder_set_index_buffer(self: cpp.Star<Encoder>, _handle: IndexBufferHandle, _firstIndex: cpp.UInt32, _numIndices: cpp.UInt32):cpp.Void;


    /// Set index buffer for draw primitive.
    /// <param name="_handle">Dynamic index buffer.</param>
    /// <param name="_firstIndex">First index to render.</param>
    /// <param name="_numIndices">Number of indices to render.</param>
    @:nocompletion
    @:native("bgfx_encoder_set_dynamic_index_buffer")
    extern public static function bgfx_encoder_set_dynamic_index_buffer(self: cpp.Star<Encoder>, _handle: DynamicIndexBufferHandle, _firstIndex: cpp.UInt32, _numIndices: cpp.UInt32):cpp.Void;


    /// Set index buffer for draw primitive.
    /// <param name="_tib">Transient index buffer.</param>
    /// <param name="_firstIndex">First index to render.</param>
    /// <param name="_numIndices">Number of indices to render.</param>
    @:nocompletion
    @:native("bgfx_encoder_set_transient_index_buffer")
    extern public static function bgfx_encoder_set_transient_index_buffer(self: cpp.Star<Encoder>, _tib: cpp.Star<TransientIndexBuffer>, _firstIndex: cpp.UInt32, _numIndices: cpp.UInt32):cpp.Void;


    /// Set vertex buffer for draw primitive.
    /// <param name="_stream">Vertex stream.</param>
    /// <param name="_handle">Vertex buffer.</param>
    /// <param name="_startVertex">First vertex to render.</param>
    /// <param name="_numVertices">Number of vertices to render.</param>
    @:nocompletion
    @:native("bgfx_encoder_set_vertex_buffer")
    extern public static function bgfx_encoder_set_vertex_buffer(self: cpp.Star<Encoder>, _stream: cpp.UInt8, _handle: VertexBufferHandle, _startVertex: cpp.UInt32, _numVertices: cpp.UInt32):cpp.Void;


    /// Set vertex buffer for draw primitive.
    /// <param name="_stream">Vertex stream.</param>
    /// <param name="_handle">Vertex buffer.</param>
    /// <param name="_startVertex">First vertex to render.</param>
    /// <param name="_numVertices">Number of vertices to render.</param>
    /// <param name="_layoutHandle">Vertex layout for aliasing vertex buffer. If invalid handle is used, vertex layout used for creation of vertex buffer will be used.</param>
    @:nocompletion
    @:native("bgfx_encoder_set_vertex_buffer_with_layout")
    extern public static function bgfx_encoder_set_vertex_buffer_with_layout(self: cpp.Star<Encoder>, _stream: cpp.UInt8, _handle: VertexBufferHandle, _startVertex: cpp.UInt32, _numVertices: cpp.UInt32, _layoutHandle: VertexLayoutHandle):cpp.Void;


    /// Set vertex buffer for draw primitive.
    /// <param name="_stream">Vertex stream.</param>
    /// <param name="_handle">Dynamic vertex buffer.</param>
    /// <param name="_startVertex">First vertex to render.</param>
    /// <param name="_numVertices">Number of vertices to render.</param>
    @:nocompletion
    @:native("bgfx_encoder_set_dynamic_vertex_buffer")
    extern public static function bgfx_encoder_set_dynamic_vertex_buffer(self: cpp.Star<Encoder>, _stream: cpp.UInt8, _handle: DynamicVertexBufferHandle, _startVertex: cpp.UInt32, _numVertices: cpp.UInt32):cpp.Void;

    @:nocompletion
    @:native("bgfx_encoder_set_dynamic_vertex_buffer_with_layout")
    extern public static function bgfx_encoder_set_dynamic_vertex_buffer_with_layout(self: cpp.Star<Encoder>, _stream: cpp.UInt8, _handle: DynamicVertexBufferHandle, _startVertex: cpp.UInt32, _numVertices: cpp.UInt32, _layoutHandle: VertexLayoutHandle):cpp.Void;


    /// Set vertex buffer for draw primitive.
    /// <param name="_stream">Vertex stream.</param>
    /// <param name="_tvb">Transient vertex buffer.</param>
    /// <param name="_startVertex">First vertex to render.</param>
    /// <param name="_numVertices">Number of vertices to render.</param>
    @:nocompletion
    @:native("bgfx_encoder_set_transient_vertex_buffer")
    extern public static function bgfx_encoder_set_transient_vertex_buffer(self: cpp.Star<Encoder>, _stream: cpp.UInt8, _tvb: cpp.Star<TransientVertexBuffer>, _startVertex: cpp.UInt32, _numVertices: cpp.UInt32):cpp.Void;


    /// Set vertex buffer for draw primitive.
    /// <param name="_stream">Vertex stream.</param>
    /// <param name="_tvb">Transient vertex buffer.</param>
    /// <param name="_startVertex">First vertex to render.</param>
    /// <param name="_numVertices">Number of vertices to render.</param>
    /// <param name="_layoutHandle">Vertex layout for aliasing vertex buffer. If invalid handle is used, vertex layout used for creation of vertex buffer will be used.</param>
    @:nocompletion
    @:native("bgfx_encoder_set_transient_vertex_buffer_with_layout")
    extern public static function bgfx_encoder_set_transient_vertex_buffer_with_layout(self: cpp.Star<Encoder>, _stream: cpp.UInt8, _tvb: cpp.Star<TransientVertexBuffer>, _startVertex: cpp.UInt32, _numVertices: cpp.UInt32, _layoutHandle: VertexLayoutHandle):cpp.Void;


    /// Set number of vertices for auto generated vertices use in conjunction
    /// with gl_VertexID.
    /// @attention Availability depends on: `BGFX_CAPS_VERTEX_ID`.
    /// <param name="_numVertices">Number of vertices.</param>
    @:nocompletion
    @:native("bgfx_encoder_set_vertex_count")
    extern public static function bgfx_encoder_set_vertex_count(self: cpp.Star<Encoder>, _numVertices: cpp.UInt32):cpp.Void;


    /// Set instance data buffer for draw primitive.
    /// <param name="_idb">Transient instance data buffer.</param>
    /// <param name="_start">First instance data.</param>
    /// <param name="_num">Number of data instances.</param>
    @:nocompletion
    @:native("bgfx_encoder_set_instance_data_buffer")
    extern public static function bgfx_encoder_set_instance_data_buffer(self: cpp.Star<Encoder>, _idb: cpp.Star<InstanceDataBuffer>, _start: cpp.UInt32, _num: cpp.UInt32):cpp.Void;


    /// Set instance data buffer for draw primitive.
    /// <param name="_handle">Vertex buffer.</param>
    /// <param name="_startVertex">First instance data.</param>
    /// <param name="_num">Number of data instances.</param>
    @:nocompletion
    @:native("bgfx_encoder_set_instance_data_from_vertex_buffer")
    extern public static function bgfx_encoder_set_instance_data_from_vertex_buffer(self: cpp.Star<Encoder>, _handle: VertexBufferHandle, _startVertex: cpp.UInt32, _num: cpp.UInt32):cpp.Void;


    /// Set instance data buffer for draw primitive.
    /// <param name="_handle">Dynamic vertex buffer.</param>
    /// <param name="_startVertex">First instance data.</param>
    /// <param name="_num">Number of data instances.</param>
    @:nocompletion
    @:native("bgfx_encoder_set_instance_data_from_dynamic_vertex_buffer")
    extern public static function bgfx_encoder_set_instance_data_from_dynamic_vertex_buffer(self: cpp.Star<Encoder>, _handle: DynamicVertexBufferHandle, _startVertex: cpp.UInt32, _num: cpp.UInt32):cpp.Void;


    /// Set number of instances for auto generated instances use in conjunction
    /// with gl_InstanceID.
    /// @attention Availability depends on: `BGFX_CAPS_VERTEX_ID`.
    @:nocompletion
    @:native("bgfx_encoder_set_instance_count")
    extern public static function bgfx_encoder_set_instance_count(self: cpp.Star<Encoder>, _numInstances: cpp.UInt32):cpp.Void;


    /// Set texture stage for draw primitive.
    /// <param name="_stage">Texture unit.</param>
    /// <param name="_sampler">Program sampler.</param>
    /// <param name="_handle">Texture handle.</param>
    /// <param name="_flags">Texture sampling mode. Default value UINT32_MAX uses   texture sampling settings from the texture.   - `BGFX_SAMPLER_[U/V/W]_[MIRROR/CLAMP]` - Mirror or clamp to edge wrap     mode.   - `BGFX_SAMPLER_[MIN/MAG/MIP]_[POINT/ANISOTROPIC]` - Point or anisotropic     sampling.</param>
    @:nocompletion
    @:native("bgfx_encoder_set_texture")
    extern public static function bgfx_encoder_set_texture(self: cpp.Star<Encoder>, _stage: cpp.UInt8, _sampler: UniformHandle, _handle: TextureHandle, _flags: cpp.UInt32):cpp.Void;


    /// Submit an empty primitive for rendering. Uniforms and draw state
    /// will be applied but no geometry will be submitted. Useful in cases
    /// when no other draw/compute primitive is submitted to view, but it's
    /// desired to execute clear view.
    /// @remark
    ///   These empty draw calls will sort before ordinary draw calls.
    /// <param name="_id">View id.</param>
    @:nocompletion
    @:native("bgfx_encoder_touch")
    extern public static function bgfx_encoder_touch(self: cpp.Star<Encoder>, _id: ViewId):cpp.Void;


    /// Submit primitive for rendering.
    /// <param name="_id">View id.</param>
    /// <param name="_program">Program.</param>
    /// <param name="_depth">Depth for sorting.</param>
    /// <param name="_flags">Discard or preserve states. See `BGFX_DISCARD_*`.</param>
    @:nocompletion
    @:native("bgfx_encoder_submit")
    extern public static function bgfx_encoder_submit(self: cpp.Star<Encoder>, _id: ViewId, _program: ProgramHandle, _depth: cpp.UInt32, _flags: cpp.UInt8):cpp.Void;


    /// Submit primitive with occlusion query for rendering.
    /// <param name="_id">View id.</param>
    /// <param name="_program">Program.</param>
    /// <param name="_occlusionQuery">Occlusion query.</param>
    /// <param name="_depth">Depth for sorting.</param>
    /// <param name="_flags">Discard or preserve states. See `BGFX_DISCARD_*`.</param>
    @:nocompletion
    @:native("bgfx_encoder_submit_occlusion_query")
    extern public static function bgfx_encoder_submit_occlusion_query(self: cpp.Star<Encoder>, _id: ViewId, _program: ProgramHandle, _occlusionQuery: OcclusionQueryHandle, _depth: cpp.UInt32, _flags: cpp.UInt8):cpp.Void;


    /// Submit primitive for rendering with index and instance data info from
    /// indirect buffer.
    /// @attention Availability depends on: `BGFX_CAPS_DRAW_INDIRECT`.
    /// <param name="_id">View id.</param>
    /// <param name="_program">Program.</param>
    /// <param name="_indirectHandle">Indirect buffer.</param>
    /// <param name="_start">First element in indirect buffer.</param>
    /// <param name="_num">Number of draws.</param>
    /// <param name="_depth">Depth for sorting.</param>
    /// <param name="_flags">Discard or preserve states. See `BGFX_DISCARD_*`.</param>
    @:nocompletion
    @:native("bgfx_encoder_submit_indirect")
    extern public static function bgfx_encoder_submit_indirect(self: cpp.Star<Encoder>, _id: ViewId, _program: ProgramHandle, _indirectHandle: IndirectBufferHandle, _start: cpp.UInt32, _num: cpp.UInt32, _depth: cpp.UInt32, _flags: cpp.UInt8):cpp.Void;


    /// Submit primitive for rendering with index and instance data info and
    /// draw count from indirect buffers.
    /// @attention Availability depends on: `BGFX_CAPS_DRAW_INDIRECT_COUNT`.
    /// <param name="_id">View id.</param>
    /// <param name="_program">Program.</param>
    /// <param name="_indirectHandle">Indirect buffer.</param>
    /// <param name="_start">First element in indirect buffer.</param>
    /// <param name="_numHandle">Buffer for number of draws. Must be   created with `BGFX_BUFFER_INDEX32` and `BGFX_BUFFER_DRAW_INDIRECT`.</param>
    /// <param name="_numIndex">Element in number buffer.</param>
    /// <param name="_numMax">Max number of draws.</param>
    /// <param name="_depth">Depth for sorting.</param>
    /// <param name="_flags">Discard or preserve states. See `BGFX_DISCARD_*`.</param>
    @:nocompletion
    @:native("bgfx_encoder_submit_indirect_count")
    extern public static function bgfx_encoder_submit_indirect_count(self: cpp.Star<Encoder>, _id: ViewId, _program: ProgramHandle, _indirectHandle: IndirectBufferHandle, _start: cpp.UInt32, _numHandle: IndexBufferHandle, _numIndex: cpp.UInt32, _numMax: cpp.UInt32, _depth: cpp.UInt32, _flags: cpp.UInt8):cpp.Void;


    /// Set compute index buffer.
    /// <param name="_stage">Compute stage.</param>
    /// <param name="_handle">Index buffer handle.</param>
    /// <param name="_access">Buffer access. See `Access::Enum`.</param>
    @:nocompletion
    @:native("bgfx_encoder_set_compute_index_buffer")
    extern public static function bgfx_encoder_set_compute_index_buffer(self: cpp.Star<Encoder>, _stage: cpp.UInt8, _handle: IndexBufferHandle, _access: Access):cpp.Void;


    /// Set compute vertex buffer.
    /// <param name="_stage">Compute stage.</param>
    /// <param name="_handle">Vertex buffer handle.</param>
    /// <param name="_access">Buffer access. See `Access::Enum`.</param>
    @:nocompletion
    @:native("bgfx_encoder_set_compute_vertex_buffer")
    extern public static function bgfx_encoder_set_compute_vertex_buffer(self: cpp.Star<Encoder>, _stage: cpp.UInt8, _handle: VertexBufferHandle, _access: Access):cpp.Void;


    /// Set compute dynamic index buffer.
    /// <param name="_stage">Compute stage.</param>
    /// <param name="_handle">Dynamic index buffer handle.</param>
    /// <param name="_access">Buffer access. See `Access::Enum`.</param>
    @:nocompletion
    @:native("bgfx_encoder_set_compute_dynamic_index_buffer")
    extern public static function bgfx_encoder_set_compute_dynamic_index_buffer(self: cpp.Star<Encoder>, _stage: cpp.UInt8, _handle: DynamicIndexBufferHandle, _access: Access):cpp.Void;


    /// Set compute dynamic vertex buffer.
    /// <param name="_stage">Compute stage.</param>
    /// <param name="_handle">Dynamic vertex buffer handle.</param>
    /// <param name="_access">Buffer access. See `Access::Enum`.</param>
    @:nocompletion
    @:native("bgfx_encoder_set_compute_dynamic_vertex_buffer")
    extern public static function bgfx_encoder_set_compute_dynamic_vertex_buffer(self: cpp.Star<Encoder>, _stage: cpp.UInt8, _handle: DynamicVertexBufferHandle, _access: Access):cpp.Void;


    /// Set compute indirect buffer.
    /// <param name="_stage">Compute stage.</param>
    /// <param name="_handle">Indirect buffer handle.</param>
    /// <param name="_access">Buffer access. See `Access::Enum`.</param>
    @:nocompletion
    @:native("bgfx_encoder_set_compute_indirect_buffer")
    extern public static function bgfx_encoder_set_compute_indirect_buffer(self: cpp.Star<Encoder>, _stage: cpp.UInt8, _handle: IndirectBufferHandle, _access: Access):cpp.Void;


    /// Set compute image from texture.
    /// <param name="_stage">Compute stage.</param>
    /// <param name="_handle">Texture handle.</param>
    /// <param name="_mip">Mip level.</param>
    /// <param name="_access">Image access. See `Access::Enum`.</param>
    /// <param name="_format">Texture format. See: `TextureFormat::Enum`.</param>
    @:nocompletion
    @:native("bgfx_encoder_set_image")
    extern public static function bgfx_encoder_set_image(self: cpp.Star<Encoder>, _stage: cpp.UInt8, _handle: TextureHandle, _mip: cpp.UInt8, _access: Access, _format: TextureFormat):cpp.Void;


    /// Dispatch compute.
    /// <param name="_id">View id.</param>
    /// <param name="_program">Compute program.</param>
    /// <param name="_numX">Number of groups X.</param>
    /// <param name="_numY">Number of groups Y.</param>
    /// <param name="_numZ">Number of groups Z.</param>
    /// <param name="_flags">Discard or preserve states. See `BGFX_DISCARD_*`.</param>
    @:nocompletion
    @:native("bgfx_encoder_dispatch")
    extern public static function bgfx_encoder_dispatch(self: cpp.Star<Encoder>, _id: ViewId, _program: ProgramHandle, _numX: cpp.UInt32, _numY: cpp.UInt32, _numZ: cpp.UInt32, _flags: cpp.UInt8):cpp.Void;


    /// Dispatch compute indirect.
    /// <param name="_id">View id.</param>
    /// <param name="_program">Compute program.</param>
    /// <param name="_indirectHandle">Indirect buffer.</param>
    /// <param name="_start">First element in indirect buffer.</param>
    /// <param name="_num">Number of dispatches.</param>
    /// <param name="_flags">Discard or preserve states. See `BGFX_DISCARD_*`.</param>
    @:nocompletion
    @:native("bgfx_encoder_dispatch_indirect")
    extern public static function bgfx_encoder_dispatch_indirect(self: cpp.Star<Encoder>, _id: ViewId, _program: ProgramHandle, _indirectHandle: IndirectBufferHandle, _start: cpp.UInt32, _num: cpp.UInt32, _flags: cpp.UInt8):cpp.Void;


    /// Discard previously set state for draw or compute call.
    /// <param name="_flags">Discard or preserve states. See `BGFX_DISCARD_*`.</param>
    @:nocompletion
    @:native("bgfx_encoder_discard")
    extern public static function bgfx_encoder_discard(self: cpp.Star<Encoder>, _flags: cpp.UInt8):cpp.Void;


    /// Blit 2D texture region between two 2D textures.
    /// @attention Destination texture must be created with `BGFX_TEXTURE_BLIT_DST` flag.
    /// @attention Availability depends on: `BGFX_CAPS_TEXTURE_BLIT`.
    /// <param name="_id">View id.</param>
    /// <param name="_dst">Destination texture handle.</param>
    /// <param name="_dstMip">Destination texture mip level.</param>
    /// <param name="_dstX">Destination texture X position.</param>
    /// <param name="_dstY">Destination texture Y position.</param>
    /// <param name="_dstZ">If texture is 2D this argument should be 0. If destination texture is cube this argument represents destination texture cube face. For 3D texture this argument represents destination texture Z position.</param>
    /// <param name="_src">Source texture handle.</param>
    /// <param name="_srcMip">Source texture mip level.</param>
    /// <param name="_srcX">Source texture X position.</param>
    /// <param name="_srcY">Source texture Y position.</param>
    /// <param name="_srcZ">If texture is 2D this argument should be 0. If source texture is cube this argument represents source texture cube face. For 3D texture this argument represents source texture Z position.</param>
    /// <param name="_width">Width of region.</param>
    /// <param name="_height">Height of region.</param>
    /// <param name="_depth">If texture is 3D this argument represents depth of region, otherwise it's unused.</param>
    @:nocompletion
    @:native("bgfx_encoder_blit")
    extern public static function bgfx_encoder_blit(self: cpp.Star<Encoder>, _id: ViewId, _dst: TextureHandle, _dstMip: cpp.UInt8, _dstX: cpp.UInt16, _dstY: cpp.UInt16, _dstZ: cpp.UInt16, _src: TextureHandle, _srcMip: cpp.UInt8, _srcX: cpp.UInt16, _srcY: cpp.UInt16, _srcZ: cpp.UInt16, _width: cpp.UInt16, _height: cpp.UInt16, _depth: cpp.UInt16):cpp.Void;


    /// Request screen shot of window back buffer.
    /// @remarks
    ///   `bgfx::CallbackI::screenShot` must be implemented.
    /// @attention Frame buffer handle must be created with OS' target native window handle.
    /// <param name="_handle">Frame buffer handle. If handle is `BGFX_INVALID_HANDLE` request will be made for main window back buffer.</param>
    /// <param name="_filePath">Will be passed to `bgfx::CallbackI::screenShot` callback.</param>
    @:native("bgfx_request_screen_shot") extern public static function requestScreenShot(_handle: FrameBufferHandle, _filePath: cpp.ConstCharStar):cpp.Void;
    @:nocompletion
    @:native("bgfx_request_screen_shot")
    extern public static function bgfx_request_screen_shot(_handle: FrameBufferHandle, _filePath: cpp.ConstCharStar):cpp.Void;


    /// Render frame.
    /// @attention `bgfx::renderFrame` is blocking call. It waits for
    ///   `bgfx::frame` to be called from API thread to process frame.
    ///   If timeout value is passed call will timeout and return even
    ///   if `bgfx::frame` is not called.
    /// @warning This call should be only used on platforms that don't
    ///   allow creating separate rendering thread. If it is called before
    ///   to bgfx::init, render thread won't be created by bgfx::init call.
    /// <param name="_msecs">Timeout in milliseconds.</param>
    @:native("bgfx_render_frame") extern public static function renderFrame(_msecs: cpp.Int32):RenderFrame;
    @:nocompletion
    @:native("bgfx_render_frame")
    extern public static function bgfx_render_frame(_msecs: cpp.Int32):RenderFrame;


    /// Set platform data.
    /// @warning Must be called before `bgfx::init`.
    /// <param name="_data">Platform data.</param>
    @:native("bgfx_set_platform_data") extern public static function setPlatformData(_data: cpp.Star<PlatformData>):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_platform_data")
    extern public static function bgfx_set_platform_data(_data: cpp.Star<PlatformData>):cpp.Void;


    /// Get internal data for interop.
    /// @attention It's expected you understand some bgfx internals before you
    ///   use this call.
    /// @warning Must be called only on render thread.
    @:native("bgfx_get_internal_data") extern public static function getInternalData():cpp.Star<InternalData>;
    @:nocompletion
    @:native("bgfx_get_internal_data")
    extern public static function bgfx_get_internal_data():cpp.Star<InternalData>;


    /// Override internal texture with externally created texture. Previously
    /// created internal texture will released.
    /// @attention It's expected you understand some bgfx internals before you
    ///   use this call.
    /// @warning Must be called only on render thread.
    /// <param name="_handle">Texture handle.</param>
    /// <param name="_ptr">Native API pointer to texture.</param>
    @:native("bgfx_override_internal_texture_ptr") extern public static function overrideInternalTexturePtr(_handle: TextureHandle, _ptr: cpp.Star<cpp.Void>):cpp.Star<cpp.Void>;
    @:nocompletion
    @:native("bgfx_override_internal_texture_ptr")
    extern public static function bgfx_override_internal_texture_ptr(_handle: TextureHandle, _ptr: cpp.Star<cpp.Void>):cpp.Star<cpp.Void>;


    /// Override internal texture by creating new texture. Previously created
    /// internal texture will released.
    /// @attention It's expected you understand some bgfx internals before you
    ///   use this call.
    /// @returns Native API pointer to texture. If result is 0, texture is not created yet from the
    ///   main thread.
    /// @warning Must be called only on render thread.
    /// <param name="_handle">Texture handle.</param>
    /// <param name="_width">Width.</param>
    /// <param name="_height">Height.</param>
    /// <param name="_numMips">Number of mip-maps.</param>
    /// <param name="_format">Texture format. See: `TextureFormat::Enum`.</param>
    /// <param name="_flags">Texture creation (see `BGFX_TEXTURE_*`.), and sampler (see `BGFX_SAMPLER_*`) flags. Default texture sampling mode is linear, and wrap mode is repeat. - `BGFX_SAMPLER_[U/V/W]_[MIRROR/CLAMP]` - Mirror or clamp to edge wrap   mode. - `BGFX_SAMPLER_[MIN/MAG/MIP]_[POINT/ANISOTROPIC]` - Point or anisotropic   sampling.</param>
    @:native("bgfx_override_internal_texture") extern public static function overrideInternalTexture(_handle: TextureHandle, _width: cpp.UInt16, _height: cpp.UInt16, _numMips: cpp.UInt8, _format: TextureFormat, _flags: cpp.UInt64):cpp.Star<cpp.Void>;
    @:nocompletion
    @:native("bgfx_override_internal_texture")
    extern public static function bgfx_override_internal_texture(_handle: TextureHandle, _width: cpp.UInt16, _height: cpp.UInt16, _numMips: cpp.UInt8, _format: TextureFormat, _flags: cpp.UInt64):cpp.Star<cpp.Void>;


    /// Sets a debug marker. This allows you to group graphics calls together for easy browsing in
    /// graphics debugging tools.
    /// <param name="_marker">Marker string.</param>
    @:native("bgfx_set_marker") extern public static function setMarker(_marker: cpp.ConstCharStar):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_marker")
    extern public static function bgfx_set_marker(_marker: cpp.ConstCharStar):cpp.Void;


    /// Set render states for draw primitive.
    /// @remarks
    ///   1. To set up more complex states use:
    ///      `BGFX_STATE_ALPHA_REF(_ref)`,
    ///      `BGFX_STATE_POINT_SIZE(_size)`,
    ///      `BGFX_STATE_BLEND_FUNC(_src, _dst)`,
    ///      `BGFX_STATE_BLEND_FUNC_SEPARATE(_srcRGB, _dstRGB, _srcA, _dstA)`,
    ///      `BGFX_STATE_BLEND_EQUATION(_equation)`,
    ///      `BGFX_STATE_BLEND_EQUATION_SEPARATE(_equationRGB, _equationA)`
    ///   2. `BGFX_STATE_BLEND_EQUATION_ADD` is set when no other blend
    ///      equation is specified.
    /// <param name="_state">State flags. Default state for primitive type is   triangles. See: `BGFX_STATE_DEFAULT`.   - `BGFX_STATE_DEPTH_TEST_*` - Depth test function.   - `BGFX_STATE_BLEND_*` - See remark 1 about BGFX_STATE_BLEND_FUNC.   - `BGFX_STATE_BLEND_EQUATION_*` - See remark 2.   - `BGFX_STATE_CULL_*` - Backface culling mode.   - `BGFX_STATE_WRITE_*` - Enable R, G, B, A or Z write.   - `BGFX_STATE_MSAA` - Enable hardware multisample antialiasing.   - `BGFX_STATE_PT_[TRISTRIP/LINES/POINTS]` - Primitive type.</param>
    /// <param name="_rgba">Sets blend factor used by `BGFX_STATE_BLEND_FACTOR` and   `BGFX_STATE_BLEND_INV_FACTOR` blend modes.</param>
    @:native("bgfx_set_state") extern public static function setState(_state: cpp.UInt64, _rgba: cpp.UInt32):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_state")
    extern public static function bgfx_set_state(_state: cpp.UInt64, _rgba: cpp.UInt32):cpp.Void;


    /// Set condition for rendering.
    /// <param name="_handle">Occlusion query handle.</param>
    /// <param name="_visible">Render if occlusion query is visible.</param>
    @:native("bgfx_set_condition") extern public static function setCondition(_handle: OcclusionQueryHandle, _visible: Bool):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_condition")
    extern public static function bgfx_set_condition(_handle: OcclusionQueryHandle, _visible: Bool):cpp.Void;


    /// Set stencil test state.
    /// <param name="_fstencil">Front stencil state.</param>
    /// <param name="_bstencil">Back stencil state. If back is set to `BGFX_STENCIL_NONE` _fstencil is applied to both front and back facing primitives.</param>
    @:native("bgfx_set_stencil") extern public static function setStencil(_fstencil: cpp.UInt32, _bstencil: cpp.UInt32):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_stencil")
    extern public static function bgfx_set_stencil(_fstencil: cpp.UInt32, _bstencil: cpp.UInt32):cpp.Void;


    /// Set scissor for draw primitive.
    /// @remark
    ///   To scissor for all primitives in view see `bgfx::setViewScissor`.
    /// <param name="_x">Position x from the left corner of the window.</param>
    /// <param name="_y">Position y from the top corner of the window.</param>
    /// <param name="_width">Width of view scissor region.</param>
    /// <param name="_height">Height of view scissor region.</param>
    @:native("bgfx_set_scissor") extern public static function setScissor(_x: cpp.UInt16, _y: cpp.UInt16, _width: cpp.UInt16, _height: cpp.UInt16):cpp.UInt16;
    @:nocompletion
    @:native("bgfx_set_scissor")
    extern public static function bgfx_set_scissor(_x: cpp.UInt16, _y: cpp.UInt16, _width: cpp.UInt16, _height: cpp.UInt16):cpp.UInt16;


    /// Set scissor from cache for draw primitive.
    /// @remark
    ///   To scissor for all primitives in view see `bgfx::setViewScissor`.
    /// <param name="_cache">Index in scissor cache.</param>
    @:native("bgfx_set_scissor_cached") extern public static function setScissorCached(_cache: cpp.UInt16):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_scissor_cached")
    extern public static function bgfx_set_scissor_cached(_cache: cpp.UInt16):cpp.Void;


    /// Set model matrix for draw primitive. If it is not called,
    /// the model will be rendered with an identity model matrix.
    /// <param name="_mtx">Pointer to first matrix in array.</param>
    /// <param name="_num">Number of matrices in array.</param>
    @:native("bgfx_set_transform") extern public static function setTransform(_mtx: cpp.Star<cpp.Void>, _num: cpp.UInt16):cpp.UInt32;
    @:nocompletion
    @:native("bgfx_set_transform")
    extern public static function bgfx_set_transform(_mtx: cpp.Star<cpp.Void>, _num: cpp.UInt16):cpp.UInt32;


    ///  Set model matrix from matrix cache for draw primitive.
    /// <param name="_cache">Index in matrix cache.</param>
    /// <param name="_num">Number of matrices from cache.</param>
    @:native("bgfx_set_transform_cached") extern public static function setTransformCached(_cache: cpp.UInt32, _num: cpp.UInt16):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_transform_cached")
    extern public static function bgfx_set_transform_cached(_cache: cpp.UInt32, _num: cpp.UInt16):cpp.Void;


    /// Reserve matrices in internal matrix cache.
    /// @attention Pointer returned can be modified until `bgfx::frame` is called.
    /// <param name="_transform">Pointer to `Transform` structure.</param>
    /// <param name="_num">Number of matrices.</param>
    @:native("bgfx_alloc_transform") extern public static function allocTransform(_transform: cpp.Star<Transform>, _num: cpp.UInt16):cpp.UInt32;
    @:nocompletion
    @:native("bgfx_alloc_transform")
    extern public static function bgfx_alloc_transform(_transform: cpp.Star<Transform>, _num: cpp.UInt16):cpp.UInt32;


    /// Set shader uniform parameter for draw primitive.
    /// <param name="_handle">Uniform.</param>
    /// <param name="_value">Pointer to uniform data.</param>
    /// <param name="_num">Number of elements. Passing `UINT16_MAX` will use the _num passed on uniform creation.</param>
    @:native("bgfx_set_uniform") extern public static function setUniform(_handle: UniformHandle, _value: cpp.Star<cpp.Void>, _num: cpp.UInt16):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_uniform")
    extern public static function bgfx_set_uniform(_handle: UniformHandle, _value: cpp.Star<cpp.Void>, _num: cpp.UInt16):cpp.Void;


    /// Set index buffer for draw primitive.
    /// <param name="_handle">Index buffer.</param>
    /// <param name="_firstIndex">First index to render.</param>
    /// <param name="_numIndices">Number of indices to render.</param>
    @:native("bgfx_set_index_buffer") extern public static function setIndexBuffer(_handle: IndexBufferHandle, _firstIndex: cpp.UInt32, _numIndices: cpp.UInt32):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_index_buffer")
    extern public static function bgfx_set_index_buffer(_handle: IndexBufferHandle, _firstIndex: cpp.UInt32, _numIndices: cpp.UInt32):cpp.Void;


    /// Set index buffer for draw primitive.
    /// <param name="_handle">Dynamic index buffer.</param>
    /// <param name="_firstIndex">First index to render.</param>
    /// <param name="_numIndices">Number of indices to render.</param>
    @:native("bgfx_set_dynamic_index_buffer") extern public static function setDynamicIndexBuffer(_handle: DynamicIndexBufferHandle, _firstIndex: cpp.UInt32, _numIndices: cpp.UInt32):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_dynamic_index_buffer")
    extern public static function bgfx_set_dynamic_index_buffer(_handle: DynamicIndexBufferHandle, _firstIndex: cpp.UInt32, _numIndices: cpp.UInt32):cpp.Void;


    /// Set index buffer for draw primitive.
    /// <param name="_tib">Transient index buffer.</param>
    /// <param name="_firstIndex">First index to render.</param>
    /// <param name="_numIndices">Number of indices to render.</param>
    @:native("bgfx_set_transient_index_buffer") extern public static function setTransientIndexBuffer(_tib: cpp.Star<TransientIndexBuffer>, _firstIndex: cpp.UInt32, _numIndices: cpp.UInt32):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_transient_index_buffer")
    extern public static function bgfx_set_transient_index_buffer(_tib: cpp.Star<TransientIndexBuffer>, _firstIndex: cpp.UInt32, _numIndices: cpp.UInt32):cpp.Void;


    /// Set vertex buffer for draw primitive.
    /// <param name="_stream">Vertex stream.</param>
    /// <param name="_handle">Vertex buffer.</param>
    /// <param name="_startVertex">First vertex to render.</param>
    /// <param name="_numVertices">Number of vertices to render.</param>
    @:native("bgfx_set_vertex_buffer") extern public static function setVertexBuffer(_stream: cpp.UInt8, _handle: VertexBufferHandle, _startVertex: cpp.UInt32, _numVertices: cpp.UInt32):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_vertex_buffer")
    extern public static function bgfx_set_vertex_buffer(_stream: cpp.UInt8, _handle: VertexBufferHandle, _startVertex: cpp.UInt32, _numVertices: cpp.UInt32):cpp.Void;


    /// Set vertex buffer for draw primitive.
    /// <param name="_stream">Vertex stream.</param>
    /// <param name="_handle">Vertex buffer.</param>
    /// <param name="_startVertex">First vertex to render.</param>
    /// <param name="_numVertices">Number of vertices to render.</param>
    /// <param name="_layoutHandle">Vertex layout for aliasing vertex buffer. If invalid handle is used, vertex layout used for creation of vertex buffer will be used.</param>
    @:native("bgfx_set_vertex_buffer_with_layout") extern public static function setVertexBufferWithLayout(_stream: cpp.UInt8, _handle: VertexBufferHandle, _startVertex: cpp.UInt32, _numVertices: cpp.UInt32, _layoutHandle: VertexLayoutHandle):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_vertex_buffer_with_layout")
    extern public static function bgfx_set_vertex_buffer_with_layout(_stream: cpp.UInt8, _handle: VertexBufferHandle, _startVertex: cpp.UInt32, _numVertices: cpp.UInt32, _layoutHandle: VertexLayoutHandle):cpp.Void;


    /// Set vertex buffer for draw primitive.
    /// <param name="_stream">Vertex stream.</param>
    /// <param name="_handle">Dynamic vertex buffer.</param>
    /// <param name="_startVertex">First vertex to render.</param>
    /// <param name="_numVertices">Number of vertices to render.</param>
    @:native("bgfx_set_dynamic_vertex_buffer") extern public static function setDynamicVertexBuffer(_stream: cpp.UInt8, _handle: DynamicVertexBufferHandle, _startVertex: cpp.UInt32, _numVertices: cpp.UInt32):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_dynamic_vertex_buffer")
    extern public static function bgfx_set_dynamic_vertex_buffer(_stream: cpp.UInt8, _handle: DynamicVertexBufferHandle, _startVertex: cpp.UInt32, _numVertices: cpp.UInt32):cpp.Void;


    /// Set vertex buffer for draw primitive.
    /// <param name="_stream">Vertex stream.</param>
    /// <param name="_handle">Dynamic vertex buffer.</param>
    /// <param name="_startVertex">First vertex to render.</param>
    /// <param name="_numVertices">Number of vertices to render.</param>
    /// <param name="_layoutHandle">Vertex layout for aliasing vertex buffer. If invalid handle is used, vertex layout used for creation of vertex buffer will be used.</param>
    @:native("bgfx_set_dynamic_vertex_buffer_with_layout") extern public static function setDynamicVertexBufferWithLayout(_stream: cpp.UInt8, _handle: DynamicVertexBufferHandle, _startVertex: cpp.UInt32, _numVertices: cpp.UInt32, _layoutHandle: VertexLayoutHandle):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_dynamic_vertex_buffer_with_layout")
    extern public static function bgfx_set_dynamic_vertex_buffer_with_layout(_stream: cpp.UInt8, _handle: DynamicVertexBufferHandle, _startVertex: cpp.UInt32, _numVertices: cpp.UInt32, _layoutHandle: VertexLayoutHandle):cpp.Void;


    /// Set vertex buffer for draw primitive.
    /// <param name="_stream">Vertex stream.</param>
    /// <param name="_tvb">Transient vertex buffer.</param>
    /// <param name="_startVertex">First vertex to render.</param>
    /// <param name="_numVertices">Number of vertices to render.</param>
    @:native("bgfx_set_transient_vertex_buffer") extern public static function setTransientVertexBuffer(_stream: cpp.UInt8, _tvb: cpp.Star<TransientVertexBuffer>, _startVertex: cpp.UInt32, _numVertices: cpp.UInt32):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_transient_vertex_buffer")
    extern public static function bgfx_set_transient_vertex_buffer(_stream: cpp.UInt8, _tvb: cpp.Star<TransientVertexBuffer>, _startVertex: cpp.UInt32, _numVertices: cpp.UInt32):cpp.Void;


    /// Set vertex buffer for draw primitive.
    /// <param name="_stream">Vertex stream.</param>
    /// <param name="_tvb">Transient vertex buffer.</param>
    /// <param name="_startVertex">First vertex to render.</param>
    /// <param name="_numVertices">Number of vertices to render.</param>
    /// <param name="_layoutHandle">Vertex layout for aliasing vertex buffer. If invalid handle is used, vertex layout used for creation of vertex buffer will be used.</param>
    @:native("bgfx_set_transient_vertex_buffer_with_layout") extern public static function setTransientVertexBufferWithLayout(_stream: cpp.UInt8, _tvb: cpp.Star<TransientVertexBuffer>, _startVertex: cpp.UInt32, _numVertices: cpp.UInt32, _layoutHandle: VertexLayoutHandle):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_transient_vertex_buffer_with_layout")
    extern public static function bgfx_set_transient_vertex_buffer_with_layout(_stream: cpp.UInt8, _tvb: cpp.Star<TransientVertexBuffer>, _startVertex: cpp.UInt32, _numVertices: cpp.UInt32, _layoutHandle: VertexLayoutHandle):cpp.Void;


    /// Set number of vertices for auto generated vertices use in conjunction
    /// with gl_VertexID.
    /// @attention Availability depends on: `BGFX_CAPS_VERTEX_ID`.
    /// <param name="_numVertices">Number of vertices.</param>
    @:native("bgfx_set_vertex_count") extern public static function setVertexCount(_numVertices: cpp.UInt32):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_vertex_count")
    extern public static function bgfx_set_vertex_count(_numVertices: cpp.UInt32):cpp.Void;


    /// Set instance data buffer for draw primitive.
    /// <param name="_idb">Transient instance data buffer.</param>
    /// <param name="_start">First instance data.</param>
    /// <param name="_num">Number of data instances.</param>
    @:native("bgfx_set_instance_data_buffer") extern public static function setInstanceDataBuffer(_idb: cpp.Star<InstanceDataBuffer>, _start: cpp.UInt32, _num: cpp.UInt32):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_instance_data_buffer")
    extern public static function bgfx_set_instance_data_buffer(_idb: cpp.Star<InstanceDataBuffer>, _start: cpp.UInt32, _num: cpp.UInt32):cpp.Void;


    /// Set instance data buffer for draw primitive.
    /// <param name="_handle">Vertex buffer.</param>
    /// <param name="_startVertex">First instance data.</param>
    /// <param name="_num">Number of data instances.</param>
    @:native("bgfx_set_instance_data_from_vertex_buffer") extern public static function setInstanceDataFromVertexBuffer(_handle: VertexBufferHandle, _startVertex: cpp.UInt32, _num: cpp.UInt32):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_instance_data_from_vertex_buffer")
    extern public static function bgfx_set_instance_data_from_vertex_buffer(_handle: VertexBufferHandle, _startVertex: cpp.UInt32, _num: cpp.UInt32):cpp.Void;


    /// Set instance data buffer for draw primitive.
    /// <param name="_handle">Dynamic vertex buffer.</param>
    /// <param name="_startVertex">First instance data.</param>
    /// <param name="_num">Number of data instances.</param>
    @:native("bgfx_set_instance_data_from_dynamic_vertex_buffer") extern public static function setInstanceDataFromDynamicVertexBuffer(_handle: DynamicVertexBufferHandle, _startVertex: cpp.UInt32, _num: cpp.UInt32):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_instance_data_from_dynamic_vertex_buffer")
    extern public static function bgfx_set_instance_data_from_dynamic_vertex_buffer(_handle: DynamicVertexBufferHandle, _startVertex: cpp.UInt32, _num: cpp.UInt32):cpp.Void;


    /// Set number of instances for auto generated instances use in conjunction
    /// with gl_InstanceID.
    /// @attention Availability depends on: `BGFX_CAPS_VERTEX_ID`.
    @:native("bgfx_set_instance_count") extern public static function setInstanceCount(_numInstances: cpp.UInt32):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_instance_count")
    extern public static function bgfx_set_instance_count(_numInstances: cpp.UInt32):cpp.Void;


    /// Set texture stage for draw primitive.
    /// <param name="_stage">Texture unit.</param>
    /// <param name="_sampler">Program sampler.</param>
    /// <param name="_handle">Texture handle.</param>
    /// <param name="_flags">Texture sampling mode. Default value UINT32_MAX uses   texture sampling settings from the texture.   - `BGFX_SAMPLER_[U/V/W]_[MIRROR/CLAMP]` - Mirror or clamp to edge wrap     mode.   - `BGFX_SAMPLER_[MIN/MAG/MIP]_[POINT/ANISOTROPIC]` - Point or anisotropic     sampling.</param>
    @:native("bgfx_set_texture") extern public static function setTexture(_stage: cpp.UInt8, _sampler: UniformHandle, _handle: TextureHandle, _flags: cpp.UInt32):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_texture")
    extern public static function bgfx_set_texture(_stage: cpp.UInt8, _sampler: UniformHandle, _handle: TextureHandle, _flags: cpp.UInt32):cpp.Void;


    /// Submit an empty primitive for rendering. Uniforms and draw state
    /// will be applied but no geometry will be submitted.
    /// @remark
    ///   These empty draw calls will sort before ordinary draw calls.
    /// <param name="_id">View id.</param>
    @:native("bgfx_touch") extern public static function touch(_id: ViewId):cpp.Void;
    @:nocompletion
    @:native("bgfx_touch")
    extern public static function bgfx_touch(_id: ViewId):cpp.Void;


    /// Submit primitive for rendering.
    /// <param name="_id">View id.</param>
    /// <param name="_program">Program.</param>
    /// <param name="_depth">Depth for sorting.</param>
    /// <param name="_flags">Which states to discard for next draw. See `BGFX_DISCARD_*`.</param>
    @:native("bgfx_submit") extern public static function submit(_id: ViewId, _program: ProgramHandle, _depth: cpp.UInt32, _flags: cpp.UInt8):cpp.Void;
    @:nocompletion
    @:native("bgfx_submit")
    extern public static function bgfx_submit(_id: ViewId, _program: ProgramHandle, _depth: cpp.UInt32, _flags: cpp.UInt8):cpp.Void;


    /// Submit primitive with occlusion query for rendering.
    /// <param name="_id">View id.</param>
    /// <param name="_program">Program.</param>
    /// <param name="_occlusionQuery">Occlusion query.</param>
    /// <param name="_depth">Depth for sorting.</param>
    /// <param name="_flags">Which states to discard for next draw. See `BGFX_DISCARD_*`.</param>
    @:native("bgfx_submit_occlusion_query") extern public static function submitOcclusionQuery(_id: ViewId, _program: ProgramHandle, _occlusionQuery: OcclusionQueryHandle, _depth: cpp.UInt32, _flags: cpp.UInt8):cpp.Void;
    @:nocompletion
    @:native("bgfx_submit_occlusion_query")
    extern public static function bgfx_submit_occlusion_query(_id: ViewId, _program: ProgramHandle, _occlusionQuery: OcclusionQueryHandle, _depth: cpp.UInt32, _flags: cpp.UInt8):cpp.Void;


    /// Submit primitive for rendering with index and instance data info from
    /// indirect buffer.
    /// @attention Availability depends on: `BGFX_CAPS_DRAW_INDIRECT`.
    /// <param name="_id">View id.</param>
    /// <param name="_program">Program.</param>
    /// <param name="_indirectHandle">Indirect buffer.</param>
    /// <param name="_start">First element in indirect buffer.</param>
    /// <param name="_num">Number of draws.</param>
    /// <param name="_depth">Depth for sorting.</param>
    /// <param name="_flags">Which states to discard for next draw. See `BGFX_DISCARD_*`.</param>
    @:native("bgfx_submit_indirect") extern public static function submitIndirect(_id: ViewId, _program: ProgramHandle, _indirectHandle: IndirectBufferHandle, _start: cpp.UInt32, _num: cpp.UInt32, _depth: cpp.UInt32, _flags: cpp.UInt8):cpp.Void;
    @:nocompletion
    @:native("bgfx_submit_indirect")
    extern public static function bgfx_submit_indirect(_id: ViewId, _program: ProgramHandle, _indirectHandle: IndirectBufferHandle, _start: cpp.UInt32, _num: cpp.UInt32, _depth: cpp.UInt32, _flags: cpp.UInt8):cpp.Void;


    /// Submit primitive for rendering with index and instance data info and
    /// draw count from indirect buffers.
    /// @attention Availability depends on: `BGFX_CAPS_DRAW_INDIRECT_COUNT`.
    /// <param name="_id">View id.</param>
    /// <param name="_program">Program.</param>
    /// <param name="_indirectHandle">Indirect buffer.</param>
    /// <param name="_start">First element in indirect buffer.</param>
    /// <param name="_numHandle">Buffer for number of draws. Must be   created with `BGFX_BUFFER_INDEX32` and `BGFX_BUFFER_DRAW_INDIRECT`.</param>
    /// <param name="_numIndex">Element in number buffer.</param>
    /// <param name="_numMax">Max number of draws.</param>
    /// <param name="_depth">Depth for sorting.</param>
    /// <param name="_flags">Which states to discard for next draw. See `BGFX_DISCARD_*`.</param>
    @:native("bgfx_submit_indirect_count") extern public static function submitIndirectCount(_id: ViewId, _program: ProgramHandle, _indirectHandle: IndirectBufferHandle, _start: cpp.UInt32, _numHandle: IndexBufferHandle, _numIndex: cpp.UInt32, _numMax: cpp.UInt32, _depth: cpp.UInt32, _flags: cpp.UInt8):cpp.Void;
    @:nocompletion
    @:native("bgfx_submit_indirect_count")
    extern public static function bgfx_submit_indirect_count(_id: ViewId, _program: ProgramHandle, _indirectHandle: IndirectBufferHandle, _start: cpp.UInt32, _numHandle: IndexBufferHandle, _numIndex: cpp.UInt32, _numMax: cpp.UInt32, _depth: cpp.UInt32, _flags: cpp.UInt8):cpp.Void;


    /// Set compute index buffer.
    /// <param name="_stage">Compute stage.</param>
    /// <param name="_handle">Index buffer handle.</param>
    /// <param name="_access">Buffer access. See `Access::Enum`.</param>
    @:native("bgfx_set_compute_index_buffer") extern public static function setComputeIndexBuffer(_stage: cpp.UInt8, _handle: IndexBufferHandle, _access: Access):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_compute_index_buffer")
    extern public static function bgfx_set_compute_index_buffer(_stage: cpp.UInt8, _handle: IndexBufferHandle, _access: Access):cpp.Void;


    /// Set compute vertex buffer.
    /// <param name="_stage">Compute stage.</param>
    /// <param name="_handle">Vertex buffer handle.</param>
    /// <param name="_access">Buffer access. See `Access::Enum`.</param>
    @:native("bgfx_set_compute_vertex_buffer") extern public static function setComputeVertexBuffer(_stage: cpp.UInt8, _handle: VertexBufferHandle, _access: Access):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_compute_vertex_buffer")
    extern public static function bgfx_set_compute_vertex_buffer(_stage: cpp.UInt8, _handle: VertexBufferHandle, _access: Access):cpp.Void;


    /// Set compute dynamic index buffer.
    /// <param name="_stage">Compute stage.</param>
    /// <param name="_handle">Dynamic index buffer handle.</param>
    /// <param name="_access">Buffer access. See `Access::Enum`.</param>
    @:native("bgfx_set_compute_dynamic_index_buffer") extern public static function setComputeDynamicIndexBuffer(_stage: cpp.UInt8, _handle: DynamicIndexBufferHandle, _access: Access):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_compute_dynamic_index_buffer")
    extern public static function bgfx_set_compute_dynamic_index_buffer(_stage: cpp.UInt8, _handle: DynamicIndexBufferHandle, _access: Access):cpp.Void;


    /// Set compute dynamic vertex buffer.
    /// <param name="_stage">Compute stage.</param>
    /// <param name="_handle">Dynamic vertex buffer handle.</param>
    /// <param name="_access">Buffer access. See `Access::Enum`.</param>
    @:native("bgfx_set_compute_dynamic_vertex_buffer") extern public static function setComputeDynamicVertexBuffer(_stage: cpp.UInt8, _handle: DynamicVertexBufferHandle, _access: Access):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_compute_dynamic_vertex_buffer")
    extern public static function bgfx_set_compute_dynamic_vertex_buffer(_stage: cpp.UInt8, _handle: DynamicVertexBufferHandle, _access: Access):cpp.Void;


    /// Set compute indirect buffer.
    /// <param name="_stage">Compute stage.</param>
    /// <param name="_handle">Indirect buffer handle.</param>
    /// <param name="_access">Buffer access. See `Access::Enum`.</param>
    @:native("bgfx_set_compute_indirect_buffer") extern public static function setComputeIndirectBuffer(_stage: cpp.UInt8, _handle: IndirectBufferHandle, _access: Access):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_compute_indirect_buffer")
    extern public static function bgfx_set_compute_indirect_buffer(_stage: cpp.UInt8, _handle: IndirectBufferHandle, _access: Access):cpp.Void;


    /// Set compute image from texture.
    /// <param name="_stage">Compute stage.</param>
    /// <param name="_handle">Texture handle.</param>
    /// <param name="_mip">Mip level.</param>
    /// <param name="_access">Image access. See `Access::Enum`.</param>
    /// <param name="_format">Texture format. See: `TextureFormat::Enum`.</param>
    @:native("bgfx_set_image") extern public static function setImage(_stage: cpp.UInt8, _handle: TextureHandle, _mip: cpp.UInt8, _access: Access, _format: TextureFormat):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_image")
    extern public static function bgfx_set_image(_stage: cpp.UInt8, _handle: TextureHandle, _mip: cpp.UInt8, _access: Access, _format: TextureFormat):cpp.Void;


    /// Dispatch compute.
    /// <param name="_id">View id.</param>
    /// <param name="_program">Compute program.</param>
    /// <param name="_numX">Number of groups X.</param>
    /// <param name="_numY">Number of groups Y.</param>
    /// <param name="_numZ">Number of groups Z.</param>
    /// <param name="_flags">Discard or preserve states. See `BGFX_DISCARD_*`.</param>
    @:native("bgfx_dispatch") extern public static function dispatch(_id: ViewId, _program: ProgramHandle, _numX: cpp.UInt32, _numY: cpp.UInt32, _numZ: cpp.UInt32, _flags: cpp.UInt8):cpp.Void;
    @:nocompletion
    @:native("bgfx_dispatch")
    extern public static function bgfx_dispatch(_id: ViewId, _program: ProgramHandle, _numX: cpp.UInt32, _numY: cpp.UInt32, _numZ: cpp.UInt32, _flags: cpp.UInt8):cpp.Void;


    /// Dispatch compute indirect.
    /// <param name="_id">View id.</param>
    /// <param name="_program">Compute program.</param>
    /// <param name="_indirectHandle">Indirect buffer.</param>
    /// <param name="_start">First element in indirect buffer.</param>
    /// <param name="_num">Number of dispatches.</param>
    /// <param name="_flags">Discard or preserve states. See `BGFX_DISCARD_*`.</param>
    @:native("bgfx_dispatch_indirect") extern public static function dispatchIndirect(_id: ViewId, _program: ProgramHandle, _indirectHandle: IndirectBufferHandle, _start: cpp.UInt32, _num: cpp.UInt32, _flags: cpp.UInt8):cpp.Void;
    @:nocompletion
    @:native("bgfx_dispatch_indirect")
    extern public static function bgfx_dispatch_indirect(_id: ViewId, _program: ProgramHandle, _indirectHandle: IndirectBufferHandle, _start: cpp.UInt32, _num: cpp.UInt32, _flags: cpp.UInt8):cpp.Void;


    /// Discard previously set state for draw or compute call.
    /// <param name="_flags">Draw/compute states to discard.</param>
    @:native("bgfx_discard") extern public static function discard(_flags: cpp.UInt8):cpp.Void;
    @:nocompletion
    @:native("bgfx_discard")
    extern public static function bgfx_discard(_flags: cpp.UInt8):cpp.Void;


    /// Blit 2D texture region between two 2D textures.
    /// @attention Destination texture must be created with `BGFX_TEXTURE_BLIT_DST` flag.
    /// @attention Availability depends on: `BGFX_CAPS_TEXTURE_BLIT`.
    /// <param name="_id">View id.</param>
    /// <param name="_dst">Destination texture handle.</param>
    /// <param name="_dstMip">Destination texture mip level.</param>
    /// <param name="_dstX">Destination texture X position.</param>
    /// <param name="_dstY">Destination texture Y position.</param>
    /// <param name="_dstZ">If texture is 2D this argument should be 0. If destination texture is cube this argument represents destination texture cube face. For 3D texture this argument represents destination texture Z position.</param>
    /// <param name="_src">Source texture handle.</param>
    /// <param name="_srcMip">Source texture mip level.</param>
    /// <param name="_srcX">Source texture X position.</param>
    /// <param name="_srcY">Source texture Y position.</param>
    /// <param name="_srcZ">If texture is 2D this argument should be 0. If source texture is cube this argument represents source texture cube face. For 3D texture this argument represents source texture Z position.</param>
    /// <param name="_width">Width of region.</param>
    /// <param name="_height">Height of region.</param>
    /// <param name="_depth">If texture is 3D this argument represents depth of region, otherwise it's unused.</param>
    @:native("bgfx_blit") extern public static function blit(_id: ViewId, _dst: TextureHandle, _dstMip: cpp.UInt8, _dstX: cpp.UInt16, _dstY: cpp.UInt16, _dstZ: cpp.UInt16, _src: TextureHandle, _srcMip: cpp.UInt8, _srcX: cpp.UInt16, _srcY: cpp.UInt16, _srcZ: cpp.UInt16, _width: cpp.UInt16, _height: cpp.UInt16, _depth: cpp.UInt16):cpp.Void;
    @:nocompletion
    @:native("bgfx_blit")
    extern public static function bgfx_blit(_id: ViewId, _dst: TextureHandle, _dstMip: cpp.UInt8, _dstX: cpp.UInt16, _dstY: cpp.UInt16, _dstZ: cpp.UInt16, _src: TextureHandle, _srcMip: cpp.UInt8, _srcX: cpp.UInt16, _srcY: cpp.UInt16, _srcZ: cpp.UInt16, _width: cpp.UInt16, _height: cpp.UInt16, _depth: cpp.UInt16):cpp.Void;

}


