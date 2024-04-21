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

typedef Native_ViewId = cpp.UInt16;
typedef ViewId = Native_ViewId;

class StateFlags
{
	public static var WriteR : cpp.Int64                 = 0x0000000000000001i64;
	public static var WriteG : cpp.Int64                 = 0x0000000000000002i64;
	public static var WriteB : cpp.Int64                 = 0x0000000000000004i64;
	public static var WriteA : cpp.Int64                 = 0x0000000000000008i64;
	public static var WriteZ : cpp.Int64                 = 0x0000004000000000i64;
	public static var WriteRgb : cpp.Int64               = 0x0000000000000007i64;
	public static var WriteMask : cpp.Int64              = 0x000000400000000fi64;
	public static var DepthTestLess : cpp.Int64          = 0x0000000000000010i64;
	public static var DepthTestLequal : cpp.Int64        = 0x0000000000000020i64;
	public static var DepthTestEqual : cpp.Int64         = 0x0000000000000030i64;
	public static var DepthTestGequal : cpp.Int64        = 0x0000000000000040i64;
	public static var DepthTestGreater : cpp.Int64       = 0x0000000000000050i64;
	public static var DepthTestNotequal : cpp.Int64      = 0x0000000000000060i64;
	public static var DepthTestNever : cpp.Int64         = 0x0000000000000070i64;
	public static var DepthTestAlways : cpp.Int64        = 0x0000000000000080i64;
	public static var DepthTestShift : cpp.Int64         = 4i64;
	public static var DepthTestMask : cpp.Int64          = 0x00000000000000f0i64;
	public static var BlendZero : cpp.Int64              = 0x0000000000001000i64;
	public static var BlendOne : cpp.Int64               = 0x0000000000002000i64;
	public static var BlendSrcColor : cpp.Int64          = 0x0000000000003000i64;
	public static var BlendInvSrcColor : cpp.Int64       = 0x0000000000004000i64;
	public static var BlendSrcAlpha : cpp.Int64          = 0x0000000000005000i64;
	public static var BlendInvSrcAlpha : cpp.Int64       = 0x0000000000006000i64;
	public static var BlendDstAlpha : cpp.Int64          = 0x0000000000007000i64;
	public static var BlendInvDstAlpha : cpp.Int64       = 0x0000000000008000i64;
	public static var BlendDstColor : cpp.Int64          = 0x0000000000009000i64;
	public static var BlendInvDstColor : cpp.Int64       = 0x000000000000a000i64;
	public static var BlendSrcAlphaSat : cpp.Int64       = 0x000000000000b000i64;
	public static var BlendFactor : cpp.Int64            = 0x000000000000c000i64;
	public static var BlendInvFactor : cpp.Int64         = 0x000000000000d000i64;
	public static var BlendShift : cpp.Int64             = 12i64;
	public static var BlendMask : cpp.Int64              = 0x000000000ffff000i64;
	public static var BlendEquationAdd : cpp.Int64       = 0x0000000000000000i64;
	public static var BlendEquationSub : cpp.Int64       = 0x0000000010000000i64;
	public static var BlendEquationRevsub : cpp.Int64    = 0x0000000020000000i64;
	public static var BlendEquationMin : cpp.Int64       = 0x0000000030000000i64;
	public static var BlendEquationMax : cpp.Int64       = 0x0000000040000000i64;
	public static var BlendEquationShift : cpp.Int64     = 28i64;
	public static var BlendEquationMask : cpp.Int64      = 0x00000003f0000000i64;
	public static var CullCw : cpp.Int64                 = 0x0000001000000000i64;
	public static var CullCcw : cpp.Int64                = 0x0000002000000000i64;
	public static var CullShift : cpp.Int64              = 36i64;
	public static var CullMask : cpp.Int64               = 0x0000003000000000i64;
	public static var AlphaRefShift : cpp.Int64          = 40i64;
	public static var AlphaRefMask : cpp.Int64           = 0x0000ff0000000000i64;
	public static var PtTristrip : cpp.Int64             = 0x0001000000000000i64;
	public static var PtLines : cpp.Int64                = 0x0002000000000000i64;
	public static var PtLinestrip : cpp.Int64            = 0x0003000000000000i64;
	public static var PtPoints : cpp.Int64               = 0x0004000000000000i64;
	public static var PtShift : cpp.Int64                = 48i64;
	public static var PtMask : cpp.Int64                 = 0x0007000000000000i64;
	public static var PointSizeShift : cpp.Int64         = 52i64;
	public static var PointSizeMask : cpp.Int64          = 0x00f0000000000000i64;
	public static var Msaa : cpp.Int64                   = 0x0100000000000000i64;
	public static var Lineaa : cpp.Int64                 = 0x0200000000000000i64;
	public static var ConservativeRaster : cpp.Int64     = 0x0400000000000000i64;
	public static var None : cpp.Int64                   = 0x0000000000000000i64;
	public static var FrontCcw : cpp.Int64               = 0x0000008000000000i64;
	public static var BlendIndependent : cpp.Int64       = 0x0000000400000000i64;
	public static var BlendAlphaToCoverage : cpp.Int64   = 0x0000000800000000i64;
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
	public static var TestLess : Int               = 0x00010000;
	public static var TestLequal : Int             = 0x00020000;
	public static var TestEqual : Int              = 0x00030000;
	public static var TestGequal : Int             = 0x00040000;
	public static var TestGreater : Int            = 0x00050000;
	public static var TestNotequal : Int           = 0x00060000;
	public static var TestNever : Int              = 0x00070000;
	public static var TestAlways : Int             = 0x00080000;
	public static var TestShift : Int              = 16;
	public static var TestMask : Int               = 0x000f0000;
	public static var OpFailSZero : Int            = 0x00000000;
	public static var OpFailSKeep : Int            = 0x00100000;
	public static var OpFailSReplace : Int         = 0x00200000;
	public static var OpFailSIncr : Int            = 0x00300000;
	public static var OpFailSIncrsat : Int         = 0x00400000;
	public static var OpFailSDecr : Int            = 0x00500000;
	public static var OpFailSDecrsat : Int         = 0x00600000;
	public static var OpFailSInvert : Int          = 0x00700000;
	public static var OpFailSShift : Int           = 20;
	public static var OpFailSMask : Int            = 0x00f00000;
	public static var OpFailZZero : Int            = 0x00000000;
	public static var OpFailZKeep : Int            = 0x01000000;
	public static var OpFailZReplace : Int         = 0x02000000;
	public static var OpFailZIncr : Int            = 0x03000000;
	public static var OpFailZIncrsat : Int         = 0x04000000;
	public static var OpFailZDecr : Int            = 0x05000000;
	public static var OpFailZDecrsat : Int         = 0x06000000;
	public static var OpFailZInvert : Int          = 0x07000000;
	public static var OpFailZShift : Int           = 24;
	public static var OpFailZMask : Int            = 0x0f000000;
	public static var OpPassZZero : Int            = 0x00000000;
	public static var OpPassZKeep : Int            = 0x10000000;
	public static var OpPassZReplace : Int         = 0x20000000;
	public static var OpPassZIncr : Int            = 0x30000000;
	public static var OpPassZIncrsat : Int         = 0x40000000;
	public static var OpPassZDecr : Int            = 0x50000000;
	public static var OpPassZDecrsat : Int         = 0x60000000;
	public static var OpPassZInvert : Int          = 0x70000000;
	public static var OpPassZShift : Int           = 28;
	public static var OpPassZMask : Int            = 0xf0000000;
}

class ClearFlags
{
	public static var None : cpp.Int16                   = 0x0000;
	public static var Color : cpp.Int16                  = 0x0001;
	public static var Depth : cpp.Int16                  = 0x0002;
	public static var Stencil : cpp.Int16                = 0x0004;
	public static var DiscardColor0 : cpp.Int16          = 0x0008;
	public static var DiscardColor1 : cpp.Int16          = 0x0010;
	public static var DiscardColor2 : cpp.Int16          = 0x0020;
	public static var DiscardColor3 : cpp.Int16          = 0x0040;
	public static var DiscardColor4 : cpp.Int16          = 0x0080;
	public static var DiscardColor5 : cpp.Int16          = 0x0100;
	public static var DiscardColor6 : cpp.Int16          = 0x0200;
	public static var DiscardColor7 : cpp.Int16          = 0x0400;
	public static var DiscardDepth : cpp.Int16           = 0x0800;
	public static var DiscardStencil : cpp.Int16         = 0x1000;
	public static var DiscardColorMask : cpp.Int16       = 0x07f8;
	public static var DiscardMask : cpp.Int16            = 0x1ff8;
}

class DiscardFlags
{
	public static var None : Int                   = 0x00000000;
	public static var Bindings : Int               = 0x00000001;
	public static var IndexBuffer : Int            = 0x00000002;
	public static var InstanceData : Int           = 0x00000004;
	public static var State : Int                  = 0x00000008;
	public static var Transform : Int              = 0x00000010;
	public static var VertexStreams : Int          = 0x00000020;
	public static var All : Int                    = 0x000000ff;
}

class DebugFlags
{
	public static var None : Int                   = 0x00000000;
	public static var Wireframe : Int              = 0x00000001;
	public static var Ifh : Int                    = 0x00000002;
	public static var Stats : Int                  = 0x00000004;
	public static var Text : Int                   = 0x00000008;
	public static var Profiler : Int               = 0x00000010;
}

class BufferFlags
{
	public static var ComputeFormat8x1 : cpp.Int16       = 0x0001;
	public static var ComputeFormat8x2 : cpp.Int16       = 0x0002;
	public static var ComputeFormat8x4 : cpp.Int16       = 0x0003;
	public static var ComputeFormat16x1 : cpp.Int16      = 0x0004;
	public static var ComputeFormat16x2 : cpp.Int16      = 0x0005;
	public static var ComputeFormat16x4 : cpp.Int16      = 0x0006;
	public static var ComputeFormat32x1 : cpp.Int16      = 0x0007;
	public static var ComputeFormat32x2 : cpp.Int16      = 0x0008;
	public static var ComputeFormat32x4 : cpp.Int16      = 0x0009;
	public static var ComputeFormatShift : cpp.Int16     = 0;
	public static var ComputeFormatMask : cpp.Int16      = 0x000f;
	public static var ComputeTypeInt : cpp.Int16         = 0x0010;
	public static var ComputeTypeUint : cpp.Int16        = 0x0020;
	public static var ComputeTypeFloat : cpp.Int16       = 0x0030;
	public static var ComputeTypeShift : cpp.Int16       = 4;
	public static var ComputeTypeMask : cpp.Int16        = 0x0030;
	public static var None : cpp.Int16                   = 0x0000;
	public static var ComputeRead : cpp.Int16            = 0x0100;
	public static var ComputeWrite : cpp.Int16           = 0x0200;
	public static var DrawIndirect : cpp.Int16           = 0x0400;
	public static var AllowResize : cpp.Int16            = 0x0800;
	public static var Index32 : cpp.Int16                = 0x1000;
	public static var ComputeReadWrite : cpp.Int16       = 0x0300;
}

class TextureFlags
{
	public static var None : cpp.Int64                   = 0x0000000000000000i64;
	public static var MsaaSample : cpp.Int64             = 0x0000000800000000i64;
	public static var Rt : cpp.Int64                     = 0x0000001000000000i64;
	public static var ComputeWrite : cpp.Int64           = 0x0000100000000000i64;
	public static var Srgb : cpp.Int64                   = 0x0000200000000000i64;
	public static var BlitDst : cpp.Int64                = 0x0000400000000000i64;
	public static var ReadBack : cpp.Int64               = 0x0000800000000000i64;
	public static var RtMsaaX2 : cpp.Int64               = 0x0000002000000000i64;
	public static var RtMsaaX4 : cpp.Int64               = 0x0000003000000000i64;
	public static var RtMsaaX8 : cpp.Int64               = 0x0000004000000000i64;
	public static var RtMsaaX16 : cpp.Int64              = 0x0000005000000000i64;
	public static var RtMsaaShift : cpp.Int64            = 36i64;
	public static var RtMsaaMask : cpp.Int64             = 0x0000007000000000i64;
	public static var RtWriteOnly : cpp.Int64            = 0x0000008000000000i64;
	public static var RtShift : cpp.Int64                = 36i64;
	public static var RtMask : cpp.Int64                 = 0x000000f000000000i64;
}

class SamplerFlags
{
	public static var UMirror : Int                = 0x00000001;
	public static var UClamp : Int                 = 0x00000002;
	public static var UBorder : Int                = 0x00000003;
	public static var UShift : Int                 = 0;
	public static var UMask : Int                  = 0x00000003;
	public static var VMirror : Int                = 0x00000004;
	public static var VClamp : Int                 = 0x00000008;
	public static var VBorder : Int                = 0x0000000c;
	public static var VShift : Int                 = 2;
	public static var VMask : Int                  = 0x0000000c;
	public static var WMirror : Int                = 0x00000010;
	public static var WClamp : Int                 = 0x00000020;
	public static var WBorder : Int                = 0x00000030;
	public static var WShift : Int                 = 4;
	public static var WMask : Int                  = 0x00000030;
	public static var MinPoint : Int               = 0x00000040;
	public static var MinAnisotropic : Int         = 0x00000080;
	public static var MinShift : Int               = 6;
	public static var MinMask : Int                = 0x000000c0;
	public static var MagPoint : Int               = 0x00000100;
	public static var MagAnisotropic : Int         = 0x00000200;
	public static var MagShift : Int               = 8;
	public static var MagMask : Int                = 0x00000300;
	public static var MipPoint : Int               = 0x00000400;
	public static var MipShift : Int               = 10;
	public static var MipMask : Int                = 0x00000400;
	public static var CompareLess : Int            = 0x00010000;
	public static var CompareLequal : Int          = 0x00020000;
	public static var CompareEqual : Int           = 0x00030000;
	public static var CompareGequal : Int          = 0x00040000;
	public static var CompareGreater : Int         = 0x00050000;
	public static var CompareNotequal : Int        = 0x00060000;
	public static var CompareNever : Int           = 0x00070000;
	public static var CompareAlways : Int          = 0x00080000;
	public static var CompareShift : Int           = 16;
	public static var CompareMask : Int            = 0x000f0000;
	public static var BorderColorShift : Int       = 24;
	public static var BorderColorMask : Int        = 0x0f000000;
	public static var ReservedShift : Int          = 28;
	public static var ReservedMask : Int           = 0xf0000000;
	public static var None : Int                   = 0x00000000;
	public static var SampleStencil : Int          = 0x00100000;
	public static var Point : Int                  = 0x00000540;
	public static var UvwMirror : Int              = 0x00000015;
	public static var UvwClamp : Int               = 0x0000002a;
	public static var UvwBorder : Int              = 0x0000003f;
	public static var BitsMask : Int               = 0x000f07ff;
}

class ResetFlags
{
	public static var MsaaX2 : Int                 = 0x00000010;
	public static var MsaaX4 : Int                 = 0x00000020;
	public static var MsaaX8 : Int                 = 0x00000030;
	public static var MsaaX16 : Int                = 0x00000040;
	public static var MsaaShift : Int              = 4;
	public static var MsaaMask : Int               = 0x00000070;
	public static var None : Int                   = 0x00000000;
	public static var Fullscreen : Int             = 0x00000001;
	public static var Vsync : Int                  = 0x00000080;
	public static var Maxanisotropy : Int          = 0x00000100;
	public static var Capture : Int                = 0x00000200;
	public static var FlushAfterRender : Int       = 0x00002000;
	public static var FlipAfterRender : Int        = 0x00004000;
	public static var SrgbBackbuffer : Int         = 0x00008000;
	public static var Hdr10 : Int                  = 0x00010000;
	public static var Hidpi : Int                  = 0x00020000;
	public static var DepthClamp : Int             = 0x00040000;
	public static var Suspend : Int                = 0x00080000;
	public static var TransparentBackbuffer : Int  = 0x00100000;
	public static var FullscreenShift : Int        = 0;
	public static var FullscreenMask : Int         = 0x00000001;
	public static var ReservedShift : Int          = 31;
	public static var ReservedMask : Int           = 0x80000000;
}

class CapsFlags
{
	public static var AlphaToCoverage : cpp.Int64        = 0x0000000000000001i64;
	public static var BlendIndependent : cpp.Int64       = 0x0000000000000002i64;
	public static var Compute : cpp.Int64                = 0x0000000000000004i64;
	public static var ConservativeRaster : cpp.Int64     = 0x0000000000000008i64;
	public static var DrawIndirect : cpp.Int64           = 0x0000000000000010i64;
	public static var FragmentDepth : cpp.Int64          = 0x0000000000000020i64;
	public static var FragmentOrdering : cpp.Int64       = 0x0000000000000040i64;
	public static var GraphicsDebugger : cpp.Int64       = 0x0000000000000080i64;
	public static var Hdr10 : cpp.Int64                  = 0x0000000000000100i64;
	public static var Hidpi : cpp.Int64                  = 0x0000000000000200i64;
	public static var ImageRw : cpp.Int64                = 0x0000000000000400i64;
	public static var Index32 : cpp.Int64                = 0x0000000000000800i64;
	public static var Instancing : cpp.Int64             = 0x0000000000001000i64;
	public static var OcclusionQuery : cpp.Int64         = 0x0000000000002000i64;
	public static var RendererMultithreaded : cpp.Int64  = 0x0000000000004000i64;
	public static var SwapChain : cpp.Int64              = 0x0000000000008000i64;
	public static var Texture2dArray : cpp.Int64         = 0x0000000000010000i64;
	public static var Texture3d : cpp.Int64              = 0x0000000000020000i64;
	public static var TextureBlit : cpp.Int64            = 0x0000000000040000i64;
	public static var TransparentBackbuffer : cpp.Int64  = 0x0000000000080000i64;
	public static var TextureCompareReserved : cpp.Int64 = 0x0000000000100000i64;
	public static var TextureCompareLequal : cpp.Int64   = 0x0000000000200000i64;
	public static var TextureCubeArray : cpp.Int64       = 0x0000000000400000i64;
	public static var TextureDirectAccess : cpp.Int64    = 0x0000000000800000i64;
	public static var TextureReadBack : cpp.Int64        = 0x0000000001000000i64;
	public static var VertexAttribHalf : cpp.Int64       = 0x0000000002000000i64;
	public static var VertexAttribUint10 : cpp.Int64     = 0x0000000004000000i64;
	public static var VertexId : cpp.Int64               = 0x0000000008000000i64;
	public static var PrimitiveId : cpp.Int64            = 0x0000000010000000i64;
	public static var ViewportLayerArray : cpp.Int64     = 0x0000000020000000i64;
	public static var DrawIndirectCount : cpp.Int64      = 0x0000000040000000i64;
	public static var TextureCompareAll : cpp.Int64      = 0x0000000000300000i64;
}

class CapsFormatFlags
{
	public static var TextureNone : Int            = 0x00000000;
	public static var Texture2d : Int              = 0x00000001;
	public static var Texture2dSrgb : Int          = 0x00000002;
	public static var Texture2dEmulated : Int      = 0x00000004;
	public static var Texture3d : Int              = 0x00000008;
	public static var Texture3dSrgb : Int          = 0x00000010;
	public static var Texture3dEmulated : Int      = 0x00000020;
	public static var TextureCube : Int            = 0x00000040;
	public static var TextureCubeSrgb : Int        = 0x00000080;
	public static var TextureCubeEmulated : Int    = 0x00000100;
	public static var TextureVertex : Int          = 0x00000200;
	public static var TextureImageRead : Int       = 0x00000400;
	public static var TextureImageWrite : Int      = 0x00000800;
	public static var TextureFramebuffer : Int     = 0x00001000;
	public static var TextureFramebufferMsaa : Int = 0x00002000;
	public static var TextureMsaa : Int            = 0x00004000;
	public static var TextureMipAutogen : Int      = 0x00008000;
}

class ResolveFlags
{
	public static var None : Int                   = 0x00000000;
	public static var AutoGenMips : Int            = 0x00000001;
}

class PciIdFlags
{
	public static var None : cpp.Int16                   = 0x0000;
	public static var SoftwareRasterizer : cpp.Int16     = 0x0001;
	public static var Amd : cpp.Int16                    = 0x1002;
	public static var Apple : cpp.Int16                  = 0x106b;
	public static var Intel : cpp.Int16                  = 0x8086;
	public static var Nvidia : cpp.Int16                 = 0x10de;
	public static var Microsoft : cpp.Int16              = 0x1414;
	public static var Arm : cpp.Int16                    = 0x13b5;
}

class CubeMapFlags
{
	public static var PositiveX : Int              = 0x00000000;
	public static var NegativeX : Int              = 0x00000001;
	public static var PositiveY : Int              = 0x00000002;
	public static var NegativeY : Int              = 0x00000003;
	public static var PositiveZ : Int              = 0x00000004;
	public static var NegativeZ : Int              = 0x00000005;
}

@:unreflective
extern enum abstract Native_Fatal(Native_FatalImpl) {
	@:native("bgfx_fatal_t::BGFX_FATAL_DEBUGCHECK")
	var DebugCheck;
	@:native("bgfx_fatal_t::BGFX_FATAL_INVALIDSHADER")
	var InvalidShader;
	@:native("bgfx_fatal_t::BGFX_FATAL_UNABLETOINITIALIZE")
	var UnableToInitialize;
	@:native("bgfx_fatal_t::BGFX_FATAL_UNABLETOCREATETEXTURE")
	var UnableToCreateTexture;
	@:native("bgfx_fatal_t::BGFX_FATAL_DEVICELOST")
	var DeviceLost;

	@:native('bgfx_fatal_t::BGFX_FATAL_COUNT')
	var Count;
}
@:unreflective
@:native('bgfx_fatal_t')
@:lincCppiaDef('Fatal', 'enum')
extern class Native_FatalImpl { }
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapEnumExtern('Native_Fatal'))
//     enum abstract Fatal(Int) from Int to Int {}
// #else
    typedef Fatal = Native_Fatal;
// #end

@:unreflective
extern enum abstract Native_RendererType(Native_RendererTypeImpl) {
	@:native("bgfx_renderer_type_t::BGFX_RENDERER_TYPE_NOOP")
	var Noop;
	@:native("bgfx_renderer_type_t::BGFX_RENDERER_TYPE_AGC")
	var Agc;
	@:native("bgfx_renderer_type_t::BGFX_RENDERER_TYPE_DIRECT3D11")
	var Direct3D11;
	@:native("bgfx_renderer_type_t::BGFX_RENDERER_TYPE_DIRECT3D12")
	var Direct3D12;
	@:native("bgfx_renderer_type_t::BGFX_RENDERER_TYPE_GNM")
	var Gnm;
	@:native("bgfx_renderer_type_t::BGFX_RENDERER_TYPE_METAL")
	var Metal;
	@:native("bgfx_renderer_type_t::BGFX_RENDERER_TYPE_NVN")
	var Nvn;
	@:native("bgfx_renderer_type_t::BGFX_RENDERER_TYPE_OPENGLES")
	var OpenGLES;
	@:native("bgfx_renderer_type_t::BGFX_RENDERER_TYPE_OPENGL")
	var OpenGL;
	@:native("bgfx_renderer_type_t::BGFX_RENDERER_TYPE_VULKAN")
	var Vulkan;

	@:native('bgfx_renderer_type_t::BGFX_RENDERER_TYPE_COUNT')
	var Count;
}
@:unreflective
@:native('bgfx_renderer_type_t')
@:lincCppiaDef('RendererType', 'enum')
extern class Native_RendererTypeImpl { }
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapEnumExtern('Native_RendererType'))
//     enum abstract RendererType(Int) from Int to Int {}
// #else
    typedef RendererType = Native_RendererType;
// #end

@:unreflective
extern enum abstract Native_Access(Native_AccessImpl) {
	@:native("bgfx_access_t::BGFX_ACCESS_READ")
	var Read;
	@:native("bgfx_access_t::BGFX_ACCESS_WRITE")
	var Write;
	@:native("bgfx_access_t::BGFX_ACCESS_READWRITE")
	var ReadWrite;

	@:native('bgfx_access_t::BGFX_ACCESS_COUNT')
	var Count;
}
@:unreflective
@:native('bgfx_access_t')
@:lincCppiaDef('Access', 'enum')
extern class Native_AccessImpl { }
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapEnumExtern('Native_Access'))
//     enum abstract Access(Int) from Int to Int {}
// #else
    typedef Access = Native_Access;
// #end

@:unreflective
extern enum abstract Native_Attrib(Native_AttribImpl) {
	@:native("bgfx_attrib_t::BGFX_ATTRIB_POSITION")
	var Position;
	@:native("bgfx_attrib_t::BGFX_ATTRIB_NORMAL")
	var Normal;
	@:native("bgfx_attrib_t::BGFX_ATTRIB_TANGENT")
	var Tangent;
	@:native("bgfx_attrib_t::BGFX_ATTRIB_BITANGENT")
	var Bitangent;
	@:native("bgfx_attrib_t::BGFX_ATTRIB_COLOR0")
	var Color0;
	@:native("bgfx_attrib_t::BGFX_ATTRIB_COLOR1")
	var Color1;
	@:native("bgfx_attrib_t::BGFX_ATTRIB_COLOR2")
	var Color2;
	@:native("bgfx_attrib_t::BGFX_ATTRIB_COLOR3")
	var Color3;
	@:native("bgfx_attrib_t::BGFX_ATTRIB_INDICES")
	var Indices;
	@:native("bgfx_attrib_t::BGFX_ATTRIB_WEIGHT")
	var Weight;
	@:native("bgfx_attrib_t::BGFX_ATTRIB_TEXCOORD0")
	var TexCoord0;
	@:native("bgfx_attrib_t::BGFX_ATTRIB_TEXCOORD1")
	var TexCoord1;
	@:native("bgfx_attrib_t::BGFX_ATTRIB_TEXCOORD2")
	var TexCoord2;
	@:native("bgfx_attrib_t::BGFX_ATTRIB_TEXCOORD3")
	var TexCoord3;
	@:native("bgfx_attrib_t::BGFX_ATTRIB_TEXCOORD4")
	var TexCoord4;
	@:native("bgfx_attrib_t::BGFX_ATTRIB_TEXCOORD5")
	var TexCoord5;
	@:native("bgfx_attrib_t::BGFX_ATTRIB_TEXCOORD6")
	var TexCoord6;
	@:native("bgfx_attrib_t::BGFX_ATTRIB_TEXCOORD7")
	var TexCoord7;

	@:native('bgfx_attrib_t::BGFX_ATTRIB_COUNT')
	var Count;
}
@:unreflective
@:native('bgfx_attrib_t')
@:lincCppiaDef('Attrib', 'enum')
extern class Native_AttribImpl { }
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapEnumExtern('Native_Attrib'))
//     enum abstract Attrib(Int) from Int to Int {}
// #else
    typedef Attrib = Native_Attrib;
// #end

@:unreflective
extern enum abstract Native_AttribType(Native_AttribTypeImpl) {
	@:native("bgfx_attrib_type_t::BGFX_ATTRIB_TYPE_UINT8")
	var Uint8;
	@:native("bgfx_attrib_type_t::BGFX_ATTRIB_TYPE_UINT10")
	var Uint10;
	@:native("bgfx_attrib_type_t::BGFX_ATTRIB_TYPE_INT16")
	var Int16;
	@:native("bgfx_attrib_type_t::BGFX_ATTRIB_TYPE_HALF")
	var Half;
	@:native("bgfx_attrib_type_t::BGFX_ATTRIB_TYPE_FLOAT")
	var Float;

	@:native('bgfx_attrib_type_t::BGFX_ATTRIB_TYPE_COUNT')
	var Count;
}
@:unreflective
@:native('bgfx_attrib_type_t')
@:lincCppiaDef('AttribType', 'enum')
extern class Native_AttribTypeImpl { }
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapEnumExtern('Native_AttribType'))
//     enum abstract AttribType(Int) from Int to Int {}
// #else
    typedef AttribType = Native_AttribType;
// #end

@:unreflective
extern enum abstract Native_TextureFormat(Native_TextureFormatImpl) {
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_BC1")
	var BC1;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_BC2")
	var BC2;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_BC3")
	var BC3;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_BC4")
	var BC4;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_BC5")
	var BC5;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_BC6H")
	var BC6H;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_BC7")
	var BC7;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_ETC1")
	var ETC1;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_ETC2")
	var ETC2;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_ETC2A")
	var ETC2A;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_ETC2A1")
	var ETC2A1;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_PTC12")
	var PTC12;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_PTC14")
	var PTC14;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_PTC12A")
	var PTC12A;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_PTC14A")
	var PTC14A;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_PTC22")
	var PTC22;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_PTC24")
	var PTC24;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_ATC")
	var ATC;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_ATCE")
	var ATCE;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_ATCI")
	var ATCI;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_ASTC4X4")
	var ASTC4x4;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_ASTC5X4")
	var ASTC5x4;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_ASTC5X5")
	var ASTC5x5;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_ASTC6X5")
	var ASTC6x5;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_ASTC6X6")
	var ASTC6x6;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_ASTC8X5")
	var ASTC8x5;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_ASTC8X6")
	var ASTC8x6;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_ASTC8X8")
	var ASTC8x8;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_ASTC10X5")
	var ASTC10x5;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_ASTC10X6")
	var ASTC10x6;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_ASTC10X8")
	var ASTC10x8;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_ASTC10X10")
	var ASTC10x10;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_ASTC12X10")
	var ASTC12x10;
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_ASTC12X12")
	var ASTC12x12;
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
	@:native("bgfx_texture_format_t::BGFX_TEXTURE_FORMAT_UNKNOWNDEPTH")
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
@:unreflective
@:native('bgfx_texture_format_t')
@:lincCppiaDef('TextureFormat', 'enum')
extern class Native_TextureFormatImpl { }
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapEnumExtern('Native_TextureFormat'))
//     enum abstract TextureFormat(Int) from Int to Int {}
// #else
    typedef TextureFormat = Native_TextureFormat;
// #end

@:unreflective
extern enum abstract Native_UniformType(Native_UniformTypeImpl) {
	@:native("bgfx_uniform_type_t::BGFX_UNIFORM_TYPE_SAMPLER")
	var Sampler;
	@:native("bgfx_uniform_type_t::BGFX_UNIFORM_TYPE_END")
	var End;
	@:native("bgfx_uniform_type_t::BGFX_UNIFORM_TYPE_VEC4")
	var Vec4;
	@:native("bgfx_uniform_type_t::BGFX_UNIFORM_TYPE_MAT3")
	var Mat3;
	@:native("bgfx_uniform_type_t::BGFX_UNIFORM_TYPE_MAT4")
	var Mat4;

	@:native('bgfx_uniform_type_t::BGFX_UNIFORM_TYPE_COUNT')
	var Count;
}
@:unreflective
@:native('bgfx_uniform_type_t')
@:lincCppiaDef('UniformType', 'enum')
extern class Native_UniformTypeImpl { }
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapEnumExtern('Native_UniformType'))
//     enum abstract UniformType(Int) from Int to Int {}
// #else
    typedef UniformType = Native_UniformType;
// #end

@:unreflective
extern enum abstract Native_BackbufferRatio(Native_BackbufferRatioImpl) {
	@:native("bgfx_backbuffer_ratio_t::BGFX_BACKBUFFER_RATIO_EQUAL")
	var Equal;
	@:native("bgfx_backbuffer_ratio_t::BGFX_BACKBUFFER_RATIO_HALF")
	var Half;
	@:native("bgfx_backbuffer_ratio_t::BGFX_BACKBUFFER_RATIO_QUARTER")
	var Quarter;
	@:native("bgfx_backbuffer_ratio_t::BGFX_BACKBUFFER_RATIO_EIGHTH")
	var Eighth;
	@:native("bgfx_backbuffer_ratio_t::BGFX_BACKBUFFER_RATIO_SIXTEENTH")
	var Sixteenth;
	@:native("bgfx_backbuffer_ratio_t::BGFX_BACKBUFFER_RATIO_DOUBLE")
	var Double;

	@:native('bgfx_backbuffer_ratio_t::BGFX_BACKBUFFER_RATIO_COUNT')
	var Count;
}
@:unreflective
@:native('bgfx_backbuffer_ratio_t')
@:lincCppiaDef('BackbufferRatio', 'enum')
extern class Native_BackbufferRatioImpl { }
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapEnumExtern('Native_BackbufferRatio'))
//     enum abstract BackbufferRatio(Int) from Int to Int {}
// #else
    typedef BackbufferRatio = Native_BackbufferRatio;
// #end

@:unreflective
extern enum abstract Native_OcclusionQueryResult(Native_OcclusionQueryResultImpl) {
	@:native("bgfx_occlusion_query_result_t::BGFX_OCCLUSION_QUERY_RESULT_INVISIBLE")
	var Invisible;
	@:native("bgfx_occlusion_query_result_t::BGFX_OCCLUSION_QUERY_RESULT_VISIBLE")
	var Visible;
	@:native("bgfx_occlusion_query_result_t::BGFX_OCCLUSION_QUERY_RESULT_NORESULT")
	var NoResult;

	@:native('bgfx_occlusion_query_result_t::BGFX_OCCLUSION_QUERY_RESULT_COUNT')
	var Count;
}
@:unreflective
@:native('bgfx_occlusion_query_result_t')
@:lincCppiaDef('OcclusionQueryResult', 'enum')
extern class Native_OcclusionQueryResultImpl { }
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapEnumExtern('Native_OcclusionQueryResult'))
//     enum abstract OcclusionQueryResult(Int) from Int to Int {}
// #else
    typedef OcclusionQueryResult = Native_OcclusionQueryResult;
// #end

@:unreflective
extern enum abstract Native_Topology(Native_TopologyImpl) {
	@:native("bgfx_topology_t::BGFX_TOPOLOGY_TRILIST")
	var TriList;
	@:native("bgfx_topology_t::BGFX_TOPOLOGY_TRISTRIP")
	var TriStrip;
	@:native("bgfx_topology_t::BGFX_TOPOLOGY_LINELIST")
	var LineList;
	@:native("bgfx_topology_t::BGFX_TOPOLOGY_LINESTRIP")
	var LineStrip;
	@:native("bgfx_topology_t::BGFX_TOPOLOGY_POINTLIST")
	var PointList;

	@:native('bgfx_topology_t::BGFX_TOPOLOGY_COUNT')
	var Count;
}
@:unreflective
@:native('bgfx_topology_t')
@:lincCppiaDef('Topology', 'enum')
extern class Native_TopologyImpl { }
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapEnumExtern('Native_Topology'))
//     enum abstract Topology(Int) from Int to Int {}
// #else
    typedef Topology = Native_Topology;
// #end

@:unreflective
extern enum abstract Native_TopologyConvert(Native_TopologyConvertImpl) {
	@:native("bgfx_topology_convert_t::BGFX_TOPOLOGY_CONVERT_TRILISTFLIPWINDING")
	var TriListFlipWinding;
	@:native("bgfx_topology_convert_t::BGFX_TOPOLOGY_CONVERT_TRISTRIPFLIPWINDING")
	var TriStripFlipWinding;
	@:native("bgfx_topology_convert_t::BGFX_TOPOLOGY_CONVERT_TRILISTTOLINELIST")
	var TriListToLineList;
	@:native("bgfx_topology_convert_t::BGFX_TOPOLOGY_CONVERT_TRISTRIPTOTRILIST")
	var TriStripToTriList;
	@:native("bgfx_topology_convert_t::BGFX_TOPOLOGY_CONVERT_LINESTRIPTOLINELIST")
	var LineStripToLineList;

	@:native('bgfx_topology_convert_t::BGFX_TOPOLOGY_CONVERT_COUNT')
	var Count;
}
@:unreflective
@:native('bgfx_topology_convert_t')
@:lincCppiaDef('TopologyConvert', 'enum')
extern class Native_TopologyConvertImpl { }
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapEnumExtern('Native_TopologyConvert'))
//     enum abstract TopologyConvert(Int) from Int to Int {}
// #else
    typedef TopologyConvert = Native_TopologyConvert;
// #end

@:unreflective
extern enum abstract Native_TopologySort(Native_TopologySortImpl) {
	@:native("bgfx_topology_sort_t::BGFX_TOPOLOGY_SORT_DIRECTIONFRONTTOBACKMIN")
	var DirectionFrontToBackMin;
	@:native("bgfx_topology_sort_t::BGFX_TOPOLOGY_SORT_DIRECTIONFRONTTOBACKAVG")
	var DirectionFrontToBackAvg;
	@:native("bgfx_topology_sort_t::BGFX_TOPOLOGY_SORT_DIRECTIONFRONTTOBACKMAX")
	var DirectionFrontToBackMax;
	@:native("bgfx_topology_sort_t::BGFX_TOPOLOGY_SORT_DIRECTIONBACKTOFRONTMIN")
	var DirectionBackToFrontMin;
	@:native("bgfx_topology_sort_t::BGFX_TOPOLOGY_SORT_DIRECTIONBACKTOFRONTAVG")
	var DirectionBackToFrontAvg;
	@:native("bgfx_topology_sort_t::BGFX_TOPOLOGY_SORT_DIRECTIONBACKTOFRONTMAX")
	var DirectionBackToFrontMax;
	@:native("bgfx_topology_sort_t::BGFX_TOPOLOGY_SORT_DISTANCEFRONTTOBACKMIN")
	var DistanceFrontToBackMin;
	@:native("bgfx_topology_sort_t::BGFX_TOPOLOGY_SORT_DISTANCEFRONTTOBACKAVG")
	var DistanceFrontToBackAvg;
	@:native("bgfx_topology_sort_t::BGFX_TOPOLOGY_SORT_DISTANCEFRONTTOBACKMAX")
	var DistanceFrontToBackMax;
	@:native("bgfx_topology_sort_t::BGFX_TOPOLOGY_SORT_DISTANCEBACKTOFRONTMIN")
	var DistanceBackToFrontMin;
	@:native("bgfx_topology_sort_t::BGFX_TOPOLOGY_SORT_DISTANCEBACKTOFRONTAVG")
	var DistanceBackToFrontAvg;
	@:native("bgfx_topology_sort_t::BGFX_TOPOLOGY_SORT_DISTANCEBACKTOFRONTMAX")
	var DistanceBackToFrontMax;

	@:native('bgfx_topology_sort_t::BGFX_TOPOLOGY_SORT_COUNT')
	var Count;
}
@:unreflective
@:native('bgfx_topology_sort_t')
@:lincCppiaDef('TopologySort', 'enum')
extern class Native_TopologySortImpl { }
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapEnumExtern('Native_TopologySort'))
//     enum abstract TopologySort(Int) from Int to Int {}
// #else
    typedef TopologySort = Native_TopologySort;
// #end

@:unreflective
extern enum abstract Native_ViewMode(Native_ViewModeImpl) {
	@:native("bgfx_view_mode_t::BGFX_VIEW_MODE_DEFAULT")
	var Default;
	@:native("bgfx_view_mode_t::BGFX_VIEW_MODE_SEQUENTIAL")
	var Sequential;
	@:native("bgfx_view_mode_t::BGFX_VIEW_MODE_DEPTHASCENDING")
	var DepthAscending;
	@:native("bgfx_view_mode_t::BGFX_VIEW_MODE_DEPTHDESCENDING")
	var DepthDescending;

	@:native('bgfx_view_mode_t::BGFX_VIEW_MODE_COUNT')
	var Count;
}
@:unreflective
@:native('bgfx_view_mode_t')
@:lincCppiaDef('ViewMode', 'enum')
extern class Native_ViewModeImpl { }
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapEnumExtern('Native_ViewMode'))
//     enum abstract ViewMode(Int) from Int to Int {}
// #else
    typedef ViewMode = Native_ViewMode;
// #end

@:unreflective
extern enum abstract Native_NativeWindowHandleType(Native_NativeWindowHandleTypeImpl) {
	@:native("bgfx_native_window_handle_type_t::BGFX_NATIVE_WINDOW_HANDLE_TYPE_DEFAULT")
	var Default;
	@:native("bgfx_native_window_handle_type_t::BGFX_NATIVE_WINDOW_HANDLE_TYPE_WAYLAND")
	var Wayland;

	@:native('bgfx_native_window_handle_type_t::BGFX_NATIVE_WINDOW_HANDLE_TYPE_COUNT')
	var Count;
}
@:unreflective
@:native('bgfx_native_window_handle_type_t')
@:lincCppiaDef('NativeWindowHandleType', 'enum')
extern class Native_NativeWindowHandleTypeImpl { }
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapEnumExtern('Native_NativeWindowHandleType'))
//     enum abstract NativeWindowHandleType(Int) from Int to Int {}
// #else
    typedef NativeWindowHandleType = Native_NativeWindowHandleType;
// #end

@:unreflective
extern enum abstract Native_RenderFrame(Native_RenderFrameImpl) {
	@:native("bgfx_render_frame_t::BGFX_RENDER_FRAME_NOCONTEXT")
	var NoContext;
	@:native("bgfx_render_frame_t::BGFX_RENDER_FRAME_RENDER")
	var Render;
	@:native("bgfx_render_frame_t::BGFX_RENDER_FRAME_TIMEOUT")
	var Timeout;
	@:native("bgfx_render_frame_t::BGFX_RENDER_FRAME_EXITING")
	var Exiting;

	@:native('bgfx_render_frame_t::BGFX_RENDER_FRAME_COUNT')
	var Count;
}
@:unreflective
@:native('bgfx_render_frame_t')
@:lincCppiaDef('RenderFrame', 'enum')
extern class Native_RenderFrameImpl { }
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapEnumExtern('Native_RenderFrame'))
//     enum abstract RenderFrame(Int) from Int to Int {}
// #else
    typedef RenderFrame = Native_RenderFrame;
// #end

@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:lincCppiaDef('CapsGPU', 'struct')
@:native("bgfx_caps_gpu_t")
extern class Native_CapsGPU {
    public function new();
    public var vendorId: cpp.UInt16;
    public var deviceId: cpp.UInt16;
}
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapStructExtern('Native_CapsGPU'))
//     class CapsGPU {}
// #else
    typedef CapsGPU = Native_CapsGPU;
// #end

@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:lincCppiaDef('CapsLimits', 'struct')
@:native("bgfx_caps_limits_t")
extern class Native_CapsLimits {
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
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapStructExtern('Native_CapsLimits'))
//     class CapsLimits {}
// #else
    typedef CapsLimits = Native_CapsLimits;
// #end

@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:lincCppiaDef('Caps', 'struct')
@:native("bgfx_caps_t")
extern class Native_Caps {
    public function new();
    public var rendererType: Native_RendererType;
    public var supported: cpp.UInt64;
    public var vendorId: cpp.UInt16;
    public var deviceId: cpp.UInt16;
    public var homogeneousDepth: Bool;
    public var originBottomLeft: Bool;
    public var numGPUs: cpp.UInt8;
    public var gpu: Native_CapsGPU;
    public var limits: Native_CapsLimits;
    public var formats: Array<cpp.UInt16>; // [96]cpp.UInt16;
}
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapStructExtern('Native_Caps'))
//     class Caps {}
// #else
    typedef Caps = Native_Caps;
// #end

@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:lincCppiaDef('InternalData', 'struct')
@:native("bgfx_internal_data_t")
extern class Native_InternalData {
    public function new();
    public var caps: cpp.ConstStar<Native_Caps>;
    public var context: cpp.Star<cpp.Void>;
}
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapStructExtern('Native_InternalData'))
//     class InternalData {}
// #else
    typedef InternalData = Native_InternalData;
// #end

@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:lincCppiaDef('PlatformData', 'struct')
@:native("bgfx_platform_data_t")
extern class Native_PlatformData {
    public function new();
    public var ndt: cpp.Star<cpp.Void>;
    public var nwh: cpp.Star<cpp.Void>;
    public var context: cpp.Star<cpp.Void>;
    public var backBuffer: cpp.Star<cpp.Void>;
    public var backBufferDS: cpp.Star<cpp.Void>;
    public var type: Native_NativeWindowHandleType;
}
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapStructExtern('Native_PlatformData'))
//     class PlatformData {}
// #else
    typedef PlatformData = Native_PlatformData;
// #end

@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:lincCppiaDef('Resolution', 'struct')
@:native("bgfx_resolution_t")
extern class Native_Resolution {
    public function new();
    public var format: Native_TextureFormat;
    public var width: cpp.UInt32;
    public var height: cpp.UInt32;
    public var reset: cpp.UInt32;
    public var numBackBuffers: cpp.UInt8;
    public var maxFrameLatency: cpp.UInt8;
    public var debugTextScale: cpp.UInt8;
}
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapStructExtern('Native_Resolution'))
//     class Resolution {}
// #else
    typedef Resolution = Native_Resolution;
// #end

@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:lincCppiaDef('InitLimits', 'struct')
@:native("bgfx_init_limits_t")
extern class Native_InitLimits {
    public function new();
    public var maxEncoders: cpp.UInt16;
    public var minResourceCbSize: cpp.UInt32;
    public var transientVbSize: cpp.UInt32;
    public var transientIbSize: cpp.UInt32;
}
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapStructExtern('Native_InitLimits'))
//     class InitLimits {}
// #else
    typedef InitLimits = Native_InitLimits;
// #end

@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:lincCppiaDef('Init', 'struct')
@:native("bgfx_init_t")
extern class Native_Init {
    public function new();
    public var type: Native_RendererType;
    public var vendorId: cpp.UInt16;
    public var deviceId: cpp.UInt16;
    public var capabilities: cpp.UInt64;
    public var debug: Bool;
    public var profile: Bool;
    public var platformData: Native_PlatformData;
    public var resolution: Native_Resolution;
    public var limits: Native_InitLimits;
    public var callback: cpp.Star<cpp.Void>;
    public var allocator: cpp.Star<cpp.Void>;
}
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapStructExtern('Native_Init'))
//     class Init {}
// #else
    typedef Init = Native_Init;
// #end

@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:lincCppiaDef('Memory', 'struct')
@:native("bgfx_memory_t")
extern class Native_Memory {
    public function new();
    public var data: cpp.RawConstPointer<cpp.UInt8>;
    public var size: cpp.UInt32;
}
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapStructExtern('Native_Memory'))
//     class Memory {}
// #else
    typedef Memory = Native_Memory;
// #end

@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:lincCppiaDef('TransientIndexBuffer', 'struct')
@:native("bgfx_transient_index_buffer_t")
extern class Native_TransientIndexBuffer {
    public function new();
    public var data: cpp.Star<cpp.UInt8>;
    public var size: cpp.UInt32;
    public var startIndex: cpp.UInt32;
    public var handle: Native_IndexBufferHandle;
    public var isIndex16: Bool;
}
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapStructExtern('Native_TransientIndexBuffer'))
//     class TransientIndexBuffer {}
// #else
    typedef TransientIndexBuffer = Native_TransientIndexBuffer;
// #end

@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:lincCppiaDef('TransientVertexBuffer', 'struct')
@:native("bgfx_transient_vertex_buffer_t")
extern class Native_TransientVertexBuffer {
    public function new();
    public var data: cpp.Star<cpp.UInt8>;
    public var size: cpp.UInt32;
    public var startVertex: cpp.UInt32;
    public var stride: cpp.UInt16;
    public var handle: Native_VertexBufferHandle;
    public var layoutHandle: Native_VertexLayoutHandle;
}
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapStructExtern('Native_TransientVertexBuffer'))
//     class TransientVertexBuffer {}
// #else
    typedef TransientVertexBuffer = Native_TransientVertexBuffer;
// #end

@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:lincCppiaDef('InstanceDataBuffer', 'struct')
@:native("bgfx_instance_data_buffer_t")
extern class Native_InstanceDataBuffer {
    public function new();
    public var data: cpp.Star<cpp.UInt8>;
    public var size: cpp.UInt32;
    public var offset: cpp.UInt32;
    public var num: cpp.UInt32;
    public var stride: cpp.UInt16;
    public var handle: Native_VertexBufferHandle;
}
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapStructExtern('Native_InstanceDataBuffer'))
//     class InstanceDataBuffer {}
// #else
    typedef InstanceDataBuffer = Native_InstanceDataBuffer;
// #end

@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:lincCppiaDef('TextureInfo', 'struct')
@:native("bgfx_texture_info_t")
extern class Native_TextureInfo {
    public function new();
    public var format: Native_TextureFormat;
    public var storageSize: cpp.UInt32;
    public var width: cpp.UInt16;
    public var height: cpp.UInt16;
    public var depth: cpp.UInt16;
    public var numLayers: cpp.UInt16;
    public var numMips: cpp.UInt8;
    public var bitsPerPixel: cpp.UInt8;
    public var cubeMap: Bool;
}
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapStructExtern('Native_TextureInfo'))
//     class TextureInfo {}
// #else
    typedef TextureInfo = Native_TextureInfo;
// #end

@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:lincCppiaDef('UniformInfo', 'struct')
@:native("bgfx_uniform_info_t")
extern class Native_UniformInfo {
    public function new();
    public var name: cpp.Char;
    public var type: Native_UniformType;
    public var num: cpp.UInt16;
}
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapStructExtern('Native_UniformInfo'))
//     class UniformInfo {}
// #else
    typedef UniformInfo = Native_UniformInfo;
// #end

@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:lincCppiaDef('Attachment', 'struct')
@:native("bgfx_attachment_t")
extern class Native_Attachment {
    public function new();
    public var access: Native_Access;
    public var handle: Native_TextureHandle;
    public var mip: cpp.UInt16;
    public var layer: cpp.UInt16;
    public var numLayers: cpp.UInt16;
    public var resolve: cpp.UInt8;

    inline public function init(_handle: Native_TextureHandle, _access: Access, _layer: cpp.UInt16, _numLayers: cpp.UInt16, _mip: cpp.UInt16, _resolve: cpp.UInt8):cpp.Void {
        return Bgfx.bgfx_attachment_init(this, _handle, _access, _layer, _numLayers, _mip, _resolve);
    }
}
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapStructExtern('Native_Attachment'))
//     class Attachment {}
// #else
    typedef Attachment = Native_Attachment;
// #end

@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:lincCppiaDef('Transform', 'struct')
@:native("bgfx_transform_t")
extern class Native_Transform {
    public function new();
    public var data: cpp.Star<cpp.Float32>;
    public var num: cpp.UInt16;
}
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapStructExtern('Native_Transform'))
//     class Transform {}
// #else
    typedef Transform = Native_Transform;
// #end

@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:lincCppiaDef('ViewStats', 'struct')
@:native("bgfx_view_stats_t")
extern class Native_ViewStats {
    public function new();
    public var name: cpp.Char;
    public var view: Native_ViewId;
    public var cpuTimeBegin: cpp.Int64;
    public var cpuTimeEnd: cpp.Int64;
    public var gpuTimeBegin: cpp.Int64;
    public var gpuTimeEnd: cpp.Int64;
    public var gpuFrameNum: cpp.UInt32;
}
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapStructExtern('Native_ViewStats'))
//     class ViewStats {}
// #else
    typedef ViewStats = Native_ViewStats;
// #end

@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:lincCppiaDef('EncoderStats', 'struct')
@:native("bgfx_encoder_stats_t")
extern class Native_EncoderStats {
    public function new();
    public var cpuTimeBegin: cpp.Int64;
    public var cpuTimeEnd: cpp.Int64;
}
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapStructExtern('Native_EncoderStats'))
//     class EncoderStats {}
// #else
    typedef EncoderStats = Native_EncoderStats;
// #end

@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:lincCppiaDef('Stats', 'struct')
@:native("bgfx_stats_t")
extern class Native_Stats {
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
    public var viewStats: cpp.Star<Native_ViewStats>;
    public var numEncoders: cpp.UInt8;
    public var encoderStats: cpp.Star<Native_EncoderStats>;
}
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapStructExtern('Native_Stats'))
//     class Stats {}
// #else
    typedef Stats = Native_Stats;
// #end

@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:lincCppiaDef('VertexLayout', 'struct')
@:native("bgfx_vertex_layout_t")
extern class Native_VertexLayout {
    public function new();
    public var hash: cpp.UInt32;
    public var stride: cpp.UInt16;
    public var offset: Array<cpp.UInt16>; // [18]cpp.UInt16;
    public var attributes: Array<cpp.UInt16>; // [18]cpp.UInt16;

    inline public function begin(_rendererType: RendererType):cpp.Star<Native_VertexLayout> {
        return Bgfx.bgfx_vertex_layout_begin(this, _rendererType);
    }

    inline public function add(_attrib: Attrib, _num: cpp.UInt8, _type: AttribType, _normalized: Bool, _asInt: Bool):cpp.Star<Native_VertexLayout> {
        return Bgfx.bgfx_vertex_layout_add(this, _attrib, _num, _type, _normalized, _asInt);
    }

    inline public function decode(_attrib: Attrib, _num: cpp.Star<cpp.UInt8 >, _type: cpp.Star<Native_AttribType>, _normalized: cpp.Star<Bool >, _asInt: cpp.Star<Bool >):cpp.Void {
        return Bgfx.bgfx_vertex_layout_decode(this, _attrib, _num, _type, _normalized, _asInt);
    }

    inline public function has(_attrib: Attrib):Bool {
        return Bgfx.bgfx_vertex_layout_has(this, _attrib);
    }

    inline public function skip(_num: cpp.UInt8):cpp.Star<Native_VertexLayout> {
        return Bgfx.bgfx_vertex_layout_skip(this, _num);
    }

    inline public function end():cpp.Void {
        return Bgfx.bgfx_vertex_layout_end(this);
    }
}
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapStructExtern('Native_VertexLayout'))
//     class VertexLayout {}
// #else
    typedef VertexLayout = Native_VertexLayout;
// #end

@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:lincCppiaDef('Encoder', 'struct')
@:native("bgfx_encoder_t")
extern class Native_Encoder {
    public function new();

    inline public function setMarker(_name: cpp.ConstCharStar, _len: cpp.Int32):cpp.Void {
        return Bgfx.bgfx_encoder_set_marker(this, _name, _len);
    }

    inline public function setState(_state: cpp.UInt64, _rgba: cpp.UInt32):cpp.Void {
        return Bgfx.bgfx_encoder_set_state(this, _state, _rgba);
    }

    inline public function setCondition(_handle: Native_OcclusionQueryHandle, _visible: Bool):cpp.Void {
        return Bgfx.bgfx_encoder_set_condition(this, _handle, _visible);
    }

    inline public function setStencil(_fstencil: cpp.UInt32, _bstencil: cpp.UInt32):cpp.Void {
        return Bgfx.bgfx_encoder_set_stencil(this, _fstencil, _bstencil);
    }

    inline public function setScissor(_x: cpp.UInt16, _y: cpp.UInt16, _width: cpp.UInt16, _height: cpp.UInt16):cpp.UInt16 {
        return Bgfx.bgfx_encoder_set_scissor(this, _x, _y, _width, _height);
    }

    inline public function setScissorCached(_cache: cpp.UInt16):cpp.Void {
        return Bgfx.bgfx_encoder_set_scissor_cached(this, _cache);
    }

    inline public function setTransform(_mtx: cpp.Star<cpp.Void>, _num: cpp.UInt16):cpp.UInt32 {
        return Bgfx.bgfx_encoder_set_transform(this, _mtx, _num);
    }

    inline public function setTransformCached(_cache: cpp.UInt32, _num: cpp.UInt16):cpp.Void {
        return Bgfx.bgfx_encoder_set_transform_cached(this, _cache, _num);
    }

    inline public function allocTransform(_transform: cpp.Star<Native_Transform>, _num: cpp.UInt16):cpp.UInt32 {
        return Bgfx.bgfx_encoder_alloc_transform(this, _transform, _num);
    }

    inline public function setUniform(_handle: Native_UniformHandle, _value: cpp.Star<cpp.Void>, _num: cpp.UInt16):cpp.Void {
        return Bgfx.bgfx_encoder_set_uniform(this, _handle, _value, _num);
    }

    inline public function setIndexBuffer(_handle: Native_IndexBufferHandle, _firstIndex: cpp.UInt32, _numIndices: cpp.UInt32):cpp.Void {
        return Bgfx.bgfx_encoder_set_index_buffer(this, _handle, _firstIndex, _numIndices);
    }

    inline public function setDynamicIndexBuffer(_handle: Native_DynamicIndexBufferHandle, _firstIndex: cpp.UInt32, _numIndices: cpp.UInt32):cpp.Void {
        return Bgfx.bgfx_encoder_set_dynamic_index_buffer(this, _handle, _firstIndex, _numIndices);
    }

    inline public function setTransientIndexBuffer(_tib: cpp.ConstStar<Native_TransientIndexBuffer>, _firstIndex: cpp.UInt32, _numIndices: cpp.UInt32):cpp.Void {
        return Bgfx.bgfx_encoder_set_transient_index_buffer(this, _tib, _firstIndex, _numIndices);
    }

    inline public function setVertexBuffer(_stream: cpp.UInt8, _handle: Native_VertexBufferHandle, _startVertex: cpp.UInt32, _numVertices: cpp.UInt32):cpp.Void {
        return Bgfx.bgfx_encoder_set_vertex_buffer(this, _stream, _handle, _startVertex, _numVertices);
    }

    inline public function setVertexBufferWithLayout(_stream: cpp.UInt8, _handle: Native_VertexBufferHandle, _startVertex: cpp.UInt32, _numVertices: cpp.UInt32, _layoutHandle: Native_VertexLayoutHandle):cpp.Void {
        return Bgfx.bgfx_encoder_set_vertex_buffer_with_layout(this, _stream, _handle, _startVertex, _numVertices, _layoutHandle);
    }

    inline public function setDynamicVertexBuffer(_stream: cpp.UInt8, _handle: Native_DynamicVertexBufferHandle, _startVertex: cpp.UInt32, _numVertices: cpp.UInt32):cpp.Void {
        return Bgfx.bgfx_encoder_set_dynamic_vertex_buffer(this, _stream, _handle, _startVertex, _numVertices);
    }
    inline public function setDynamicVertexBufferWithLayout(_stream: cpp.UInt8, _handle: Native_DynamicVertexBufferHandle, _startVertex: cpp.UInt32, _numVertices: cpp.UInt32, _layoutHandle: Native_VertexLayoutHandle):cpp.Void {
        return Bgfx.bgfx_encoder_set_dynamic_vertex_buffer_with_layout(this, _stream, _handle, _startVertex, _numVertices, _layoutHandle);
    }

    inline public function setTransientVertexBuffer(_stream: cpp.UInt8, _tvb: cpp.ConstStar<Native_TransientVertexBuffer>, _startVertex: cpp.UInt32, _numVertices: cpp.UInt32):cpp.Void {
        return Bgfx.bgfx_encoder_set_transient_vertex_buffer(this, _stream, _tvb, _startVertex, _numVertices);
    }

    inline public function setTransientVertexBufferWithLayout(_stream: cpp.UInt8, _tvb: cpp.ConstStar<Native_TransientVertexBuffer>, _startVertex: cpp.UInt32, _numVertices: cpp.UInt32, _layoutHandle: Native_VertexLayoutHandle):cpp.Void {
        return Bgfx.bgfx_encoder_set_transient_vertex_buffer_with_layout(this, _stream, _tvb, _startVertex, _numVertices, _layoutHandle);
    }

    inline public function setVertexCount(_numVertices: cpp.UInt32):cpp.Void {
        return Bgfx.bgfx_encoder_set_vertex_count(this, _numVertices);
    }

    inline public function setInstanceDataBuffer(_idb: cpp.ConstStar<Native_InstanceDataBuffer>, _start: cpp.UInt32, _num: cpp.UInt32):cpp.Void {
        return Bgfx.bgfx_encoder_set_instance_data_buffer(this, _idb, _start, _num);
    }

    inline public function setInstanceDataFromVertexBuffer(_handle: Native_VertexBufferHandle, _startVertex: cpp.UInt32, _num: cpp.UInt32):cpp.Void {
        return Bgfx.bgfx_encoder_set_instance_data_from_vertex_buffer(this, _handle, _startVertex, _num);
    }

    inline public function setInstanceDataFromDynamicVertexBuffer(_handle: Native_DynamicVertexBufferHandle, _startVertex: cpp.UInt32, _num: cpp.UInt32):cpp.Void {
        return Bgfx.bgfx_encoder_set_instance_data_from_dynamic_vertex_buffer(this, _handle, _startVertex, _num);
    }

    inline public function setInstanceCount(_numInstances: cpp.UInt32):cpp.Void {
        return Bgfx.bgfx_encoder_set_instance_count(this, _numInstances);
    }

    inline public function setTexture(_stage: cpp.UInt8, _sampler: Native_UniformHandle, _handle: Native_TextureHandle, _flags: cpp.UInt32):cpp.Void {
        return Bgfx.bgfx_encoder_set_texture(this, _stage, _sampler, _handle, _flags);
    }

    inline public function touch(_id: ViewId):cpp.Void {
        return Bgfx.bgfx_encoder_touch(this, _id);
    }

    inline public function submit(_id: ViewId, _program: Native_ProgramHandle, _depth: cpp.UInt32, _flags: cpp.UInt8):cpp.Void {
        return Bgfx.bgfx_encoder_submit(this, _id, _program, _depth, _flags);
    }

    inline public function submitOcclusionQuery(_id: ViewId, _program: Native_ProgramHandle, _occlusionQuery: Native_OcclusionQueryHandle, _depth: cpp.UInt32, _flags: cpp.UInt8):cpp.Void {
        return Bgfx.bgfx_encoder_submit_occlusion_query(this, _id, _program, _occlusionQuery, _depth, _flags);
    }

    inline public function submitIndirect(_id: ViewId, _program: Native_ProgramHandle, _indirectHandle: Native_IndirectBufferHandle, _start: cpp.UInt32, _num: cpp.UInt32, _depth: cpp.UInt32, _flags: cpp.UInt8):cpp.Void {
        return Bgfx.bgfx_encoder_submit_indirect(this, _id, _program, _indirectHandle, _start, _num, _depth, _flags);
    }

    inline public function submitIndirectCount(_id: ViewId, _program: Native_ProgramHandle, _indirectHandle: Native_IndirectBufferHandle, _start: cpp.UInt32, _numHandle: Native_IndexBufferHandle, _numIndex: cpp.UInt32, _numMax: cpp.UInt32, _depth: cpp.UInt32, _flags: cpp.UInt8):cpp.Void {
        return Bgfx.bgfx_encoder_submit_indirect_count(this, _id, _program, _indirectHandle, _start, _numHandle, _numIndex, _numMax, _depth, _flags);
    }

    inline public function setComputeIndexBuffer(_stage: cpp.UInt8, _handle: Native_IndexBufferHandle, _access: Access):cpp.Void {
        return Bgfx.bgfx_encoder_set_compute_index_buffer(this, _stage, _handle, _access);
    }

    inline public function setComputeVertexBuffer(_stage: cpp.UInt8, _handle: Native_VertexBufferHandle, _access: Access):cpp.Void {
        return Bgfx.bgfx_encoder_set_compute_vertex_buffer(this, _stage, _handle, _access);
    }

    inline public function setComputeDynamicIndexBuffer(_stage: cpp.UInt8, _handle: Native_DynamicIndexBufferHandle, _access: Access):cpp.Void {
        return Bgfx.bgfx_encoder_set_compute_dynamic_index_buffer(this, _stage, _handle, _access);
    }

    inline public function setComputeDynamicVertexBuffer(_stage: cpp.UInt8, _handle: Native_DynamicVertexBufferHandle, _access: Access):cpp.Void {
        return Bgfx.bgfx_encoder_set_compute_dynamic_vertex_buffer(this, _stage, _handle, _access);
    }

    inline public function setComputeIndirectBuffer(_stage: cpp.UInt8, _handle: Native_IndirectBufferHandle, _access: Access):cpp.Void {
        return Bgfx.bgfx_encoder_set_compute_indirect_buffer(this, _stage, _handle, _access);
    }

    inline public function setImage(_stage: cpp.UInt8, _handle: Native_TextureHandle, _mip: cpp.UInt8, _access: Access, _format: TextureFormat):cpp.Void {
        return Bgfx.bgfx_encoder_set_image(this, _stage, _handle, _mip, _access, _format);
    }

    inline public function dispatch(_id: ViewId, _program: Native_ProgramHandle, _numX: cpp.UInt32, _numY: cpp.UInt32, _numZ: cpp.UInt32, _flags: cpp.UInt8):cpp.Void {
        return Bgfx.bgfx_encoder_dispatch(this, _id, _program, _numX, _numY, _numZ, _flags);
    }

    inline public function dispatchIndirect(_id: ViewId, _program: Native_ProgramHandle, _indirectHandle: Native_IndirectBufferHandle, _start: cpp.UInt32, _num: cpp.UInt32, _flags: cpp.UInt8):cpp.Void {
        return Bgfx.bgfx_encoder_dispatch_indirect(this, _id, _program, _indirectHandle, _start, _num, _flags);
    }

    inline public function discard(_flags: cpp.UInt8):cpp.Void {
        return Bgfx.bgfx_encoder_discard(this, _flags);
    }

    inline public function blit(_id: ViewId, _dst: Native_TextureHandle, _dstMip: cpp.UInt8, _dstX: cpp.UInt16, _dstY: cpp.UInt16, _dstZ: cpp.UInt16, _src: Native_TextureHandle, _srcMip: cpp.UInt8, _srcX: cpp.UInt16, _srcY: cpp.UInt16, _srcZ: cpp.UInt16, _width: cpp.UInt16, _height: cpp.UInt16, _depth: cpp.UInt16):cpp.Void {
        return Bgfx.bgfx_encoder_blit(this, _id, _dst, _dstMip, _dstX, _dstY, _dstZ, _src, _srcMip, _srcX, _srcY, _srcZ, _width, _height, _depth);
    }
}
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapStructExtern('Native_Encoder'))
//     class Encoder {}
// #else
    typedef Encoder = Native_Encoder;
// #end

@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native("bgfx_dynamic_index_buffer_handle_t")
@:lincCppiaDef('DynamicIndexBufferHandle', 'struct')
extern class Native_DynamicIndexBufferHandle {
    public function new();
    public var idx:cpp.UInt16;
    inline public function valid():Bool return idx != 0xffff;
}
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapStructExtern('Native_DynamicIndexBufferHandle'))
//     class DynamicIndexBufferHandle {}
// #else
    typedef DynamicIndexBufferHandle = Native_DynamicIndexBufferHandle;
// #end

@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native("bgfx_dynamic_vertex_buffer_handle_t")
@:lincCppiaDef('DynamicVertexBufferHandle', 'struct')
extern class Native_DynamicVertexBufferHandle {
    public function new();
    public var idx:cpp.UInt16;
    inline public function valid():Bool return idx != 0xffff;
}
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapStructExtern('Native_DynamicVertexBufferHandle'))
//     class DynamicVertexBufferHandle {}
// #else
    typedef DynamicVertexBufferHandle = Native_DynamicVertexBufferHandle;
// #end

@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native("bgfx_frame_buffer_handle_t")
@:lincCppiaDef('FrameBufferHandle', 'struct')
extern class Native_FrameBufferHandle {
    public function new();
    public var idx:cpp.UInt16;
    inline public function valid():Bool return idx != 0xffff;
}
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapStructExtern('Native_FrameBufferHandle'))
//     class FrameBufferHandle {}
// #else
    typedef FrameBufferHandle = Native_FrameBufferHandle;
// #end

@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native("bgfx_index_buffer_handle_t")
@:lincCppiaDef('IndexBufferHandle', 'struct')
extern class Native_IndexBufferHandle {
    public function new();
    public var idx:cpp.UInt16;
    inline public function valid():Bool return idx != 0xffff;
}
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapStructExtern('Native_IndexBufferHandle'))
//     class IndexBufferHandle {}
// #else
    typedef IndexBufferHandle = Native_IndexBufferHandle;
// #end

@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native("bgfx_indirect_buffer_handle_t")
@:lincCppiaDef('IndirectBufferHandle', 'struct')
extern class Native_IndirectBufferHandle {
    public function new();
    public var idx:cpp.UInt16;
    inline public function valid():Bool return idx != 0xffff;
}
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapStructExtern('Native_IndirectBufferHandle'))
//     class IndirectBufferHandle {}
// #else
    typedef IndirectBufferHandle = Native_IndirectBufferHandle;
// #end

@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native("bgfx_occlusion_query_handle_t")
@:lincCppiaDef('OcclusionQueryHandle', 'struct')
extern class Native_OcclusionQueryHandle {
    public function new();
    public var idx:cpp.UInt16;
    inline public function valid():Bool return idx != 0xffff;
}
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapStructExtern('Native_OcclusionQueryHandle'))
//     class OcclusionQueryHandle {}
// #else
    typedef OcclusionQueryHandle = Native_OcclusionQueryHandle;
// #end

@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native("bgfx_program_handle_t")
@:lincCppiaDef('ProgramHandle', 'struct')
extern class Native_ProgramHandle {
    public function new();
    public var idx:cpp.UInt16;
    inline public function valid():Bool return idx != 0xffff;
}
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapStructExtern('Native_ProgramHandle'))
//     class ProgramHandle {}
// #else
    typedef ProgramHandle = Native_ProgramHandle;
// #end

@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native("bgfx_shader_handle_t")
@:lincCppiaDef('ShaderHandle', 'struct')
extern class Native_ShaderHandle {
    public function new();
    public var idx:cpp.UInt16;
    inline public function valid():Bool return idx != 0xffff;
}
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapStructExtern('Native_ShaderHandle'))
//     class ShaderHandle {}
// #else
    typedef ShaderHandle = Native_ShaderHandle;
// #end

@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native("bgfx_texture_handle_t")
@:lincCppiaDef('TextureHandle', 'struct')
extern class Native_TextureHandle {
    public function new();
    public var idx:cpp.UInt16;
    inline public function valid():Bool return idx != 0xffff;
}
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapStructExtern('Native_TextureHandle'))
//     class TextureHandle {}
// #else
    typedef TextureHandle = Native_TextureHandle;
// #end

@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native("bgfx_uniform_handle_t")
@:lincCppiaDef('UniformHandle', 'struct')
extern class Native_UniformHandle {
    public function new();
    public var idx:cpp.UInt16;
    inline public function valid():Bool return idx != 0xffff;
}
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapStructExtern('Native_UniformHandle'))
//     class UniformHandle {}
// #else
    typedef UniformHandle = Native_UniformHandle;
// #end

@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native("bgfx_vertex_buffer_handle_t")
@:lincCppiaDef('VertexBufferHandle', 'struct')
extern class Native_VertexBufferHandle {
    public function new();
    public var idx:cpp.UInt16;
    inline public function valid():Bool return idx != 0xffff;
}
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapStructExtern('Native_VertexBufferHandle'))
//     class VertexBufferHandle {}
// #else
    typedef VertexBufferHandle = Native_VertexBufferHandle;
// #end

@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native("bgfx_vertex_layout_handle_t")
@:lincCppiaDef('VertexLayoutHandle', 'struct')
extern class Native_VertexLayoutHandle {
    public function new();
    public var idx:cpp.UInt16;
    inline public function valid():Bool return idx != 0xffff;
}
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapStructExtern('Native_VertexLayoutHandle'))
//     class VertexLayoutHandle {}
// #else
    typedef VertexLayoutHandle = Native_VertexLayoutHandle;
// #end


@:headerCode('#include <Dynamic2.h>')
@:include("linc_bgfx.h")
@:build(linc.Linc.touch())
@:build(linc.Linc.xml("bgfx"))
extern class Native_Bgfx {
	@:include("linc_bgfx.h")
	@:native('linc_bgfx::getBgfxCallback')
	extern public static function getCallback():cpp.Star<cpp.Void>;


    @:nocompletion
    @:native("bgfx_attachment_init")
    extern public static function bgfx_attachment_init(self: cpp.Star<Native_Attachment>, _handle: Native_TextureHandle, _access: Access, _layer: cpp.UInt16, _numLayers: cpp.UInt16, _mip: cpp.UInt16, _resolve: cpp.UInt8):cpp.Void;


    @:nocompletion
    @:native("bgfx_vertex_layout_begin")
    extern public static function bgfx_vertex_layout_begin(self: cpp.Star<Native_VertexLayout>, _rendererType: RendererType):cpp.Star<Native_VertexLayout>;


    @:nocompletion
    @:native("bgfx_vertex_layout_add")
    extern public static function bgfx_vertex_layout_add(self: cpp.Star<Native_VertexLayout>, _attrib: Attrib, _num: cpp.UInt8, _type: AttribType, _normalized: Bool, _asInt: Bool):cpp.Star<Native_VertexLayout>;


    @:nocompletion
    @:native("bgfx_vertex_layout_decode")
    extern public static function bgfx_vertex_layout_decode(self: cpp.Star<Native_VertexLayout>, _attrib: Attrib, _num: cpp.Star<cpp.UInt8 >, _type: cpp.Star<Native_AttribType>, _normalized: cpp.Star<Bool >, _asInt: cpp.Star<Bool >):cpp.Void;


    @:nocompletion
    @:native("bgfx_vertex_layout_has")
    extern public static function bgfx_vertex_layout_has(self: cpp.Star<Native_VertexLayout>, _attrib: Attrib):Bool;


    @:nocompletion
    @:native("bgfx_vertex_layout_skip")
    extern public static function bgfx_vertex_layout_skip(self: cpp.Star<Native_VertexLayout>, _num: cpp.UInt8):cpp.Star<Native_VertexLayout>;


    @:nocompletion
    @:native("bgfx_vertex_layout_end")
    extern public static function bgfx_vertex_layout_end(self: cpp.Star<Native_VertexLayout>):cpp.Void;


    @:native("bgfx_vertex_pack") extern public static function vertexPack(_input: cpp.Float32, _inputNormalized: Bool, _attr: Attrib, _layout: cpp.ConstStar<Native_VertexLayout>, _data: cpp.Star<cpp.Void>, _index: cpp.UInt32):cpp.Void;
    @:nocompletion
    @:native("bgfx_vertex_pack")
    extern public static function bgfx_vertex_pack(_input: cpp.Float32, _inputNormalized: Bool, _attr: Attrib, _layout: cpp.ConstStar<Native_VertexLayout>, _data: cpp.Star<cpp.Void>, _index: cpp.UInt32):cpp.Void;


    @:native("bgfx_vertex_unpack") extern public static function vertexUnpack(_output: cpp.Float32, _attr: Attrib, _layout: cpp.ConstStar<Native_VertexLayout>, _data: cpp.Star<cpp.Void>, _index: cpp.UInt32):cpp.Void;
    @:nocompletion
    @:native("bgfx_vertex_unpack")
    extern public static function bgfx_vertex_unpack(_output: cpp.Float32, _attr: Attrib, _layout: cpp.ConstStar<Native_VertexLayout>, _data: cpp.Star<cpp.Void>, _index: cpp.UInt32):cpp.Void;


    @:native("bgfx_vertex_convert") extern public static function vertexConvert(_dstLayout: cpp.ConstStar<Native_VertexLayout>, _dstData: cpp.Star<cpp.Void>, _srcLayout: cpp.ConstStar<Native_VertexLayout>, _srcData: cpp.Star<cpp.Void>, _num: cpp.UInt32):cpp.Void;
    @:nocompletion
    @:native("bgfx_vertex_convert")
    extern public static function bgfx_vertex_convert(_dstLayout: cpp.ConstStar<Native_VertexLayout>, _dstData: cpp.Star<cpp.Void>, _srcLayout: cpp.ConstStar<Native_VertexLayout>, _srcData: cpp.Star<cpp.Void>, _num: cpp.UInt32):cpp.Void;


    @:native("bgfx_weld_vertices") extern public static function weldVertices(_output: cpp.Star<cpp.Void>, _layout: cpp.ConstStar<Native_VertexLayout>, _data: cpp.Star<cpp.Void>, _num: cpp.UInt32, _index32: Bool, _epsilon: cpp.Float32):cpp.UInt32;
    @:nocompletion
    @:native("bgfx_weld_vertices")
    extern public static function bgfx_weld_vertices(_output: cpp.Star<cpp.Void>, _layout: cpp.ConstStar<Native_VertexLayout>, _data: cpp.Star<cpp.Void>, _num: cpp.UInt32, _index32: Bool, _epsilon: cpp.Float32):cpp.UInt32;


    @:native("bgfx_topology_convert") extern public static function topologyConvert(_conversion: TopologyConvert, _dst: cpp.Star<cpp.Void>, _dstSize: cpp.UInt32, _indices: cpp.Star<cpp.Void>, _numIndices: cpp.UInt32, _index32: Bool):cpp.UInt32;
    @:nocompletion
    @:native("bgfx_topology_convert")
    extern public static function bgfx_topology_convert(_conversion: TopologyConvert, _dst: cpp.Star<cpp.Void>, _dstSize: cpp.UInt32, _indices: cpp.Star<cpp.Void>, _numIndices: cpp.UInt32, _index32: Bool):cpp.UInt32;


    @:native("bgfx_topology_sort_tri_list") extern public static function topologySortTriList(_sort: TopologySort, _dst: cpp.Star<cpp.Void>, _dstSize: cpp.UInt32, _dir: cpp.Float32, _pos: cpp.Float32, _vertices: cpp.Star<cpp.Void>, _stride: cpp.UInt32, _indices: cpp.Star<cpp.Void>, _numIndices: cpp.UInt32, _index32: Bool):cpp.Void;
    @:nocompletion
    @:native("bgfx_topology_sort_tri_list")
    extern public static function bgfx_topology_sort_tri_list(_sort: TopologySort, _dst: cpp.Star<cpp.Void>, _dstSize: cpp.UInt32, _dir: cpp.Float32, _pos: cpp.Float32, _vertices: cpp.Star<cpp.Void>, _stride: cpp.UInt32, _indices: cpp.Star<cpp.Void>, _numIndices: cpp.UInt32, _index32: Bool):cpp.Void;


    @:native("bgfx_get_supported_renderers") extern public static function getSupportedRenderers(_max: cpp.UInt8, _enum: cpp.Star<Native_RendererType>):cpp.UInt8;
    @:nocompletion
    @:native("bgfx_get_supported_renderers")
    extern public static function bgfx_get_supported_renderers(_max: cpp.UInt8, _enum: cpp.Star<Native_RendererType>):cpp.UInt8;


    @:native("bgfx_get_renderer_name") extern public static function getRendererName(_type: RendererType):cpp.ConstCharStar;
    @:nocompletion
    @:native("bgfx_get_renderer_name")
    extern public static function bgfx_get_renderer_name(_type: RendererType):cpp.ConstCharStar;


    @:native("bgfx_init_ctor") extern public static function initCtor(_init: cpp.Star<Native_Init>):cpp.Void;
    @:nocompletion
    @:native("bgfx_init_ctor")
    extern public static function bgfx_init_ctor(_init: cpp.Star<Native_Init>):cpp.Void;


    @:native("bgfx_init") extern public static function init(_init: cpp.ConstStar<Native_Init>):Bool;
    @:nocompletion
    @:native("bgfx_init")
    extern public static function bgfx_init(_init: cpp.ConstStar<Native_Init>):Bool;


    @:native("bgfx_shutdown") extern public static function shutdown():cpp.Void;
    @:nocompletion
    @:native("bgfx_shutdown")
    extern public static function bgfx_shutdown():cpp.Void;


    @:native("bgfx_reset") extern public static function reset(_width: cpp.UInt32, _height: cpp.UInt32, _flags: cpp.UInt32, _format: TextureFormat):cpp.Void;
    @:nocompletion
    @:native("bgfx_reset")
    extern public static function bgfx_reset(_width: cpp.UInt32, _height: cpp.UInt32, _flags: cpp.UInt32, _format: TextureFormat):cpp.Void;


    @:native("bgfx_frame") extern public static function frame(_capture: Bool):cpp.UInt32;
    @:nocompletion
    @:native("bgfx_frame")
    extern public static function bgfx_frame(_capture: Bool):cpp.UInt32;


    @:native("bgfx_get_renderer_type") extern public static function getRendererType():RendererType;
    @:nocompletion
    @:native("bgfx_get_renderer_type")
    extern public static function bgfx_get_renderer_type():RendererType;


    @:native("bgfx_get_caps") extern public static function getCaps():cpp.ConstStar<Native_Caps>;
    @:nocompletion
    @:native("bgfx_get_caps")
    extern public static function bgfx_get_caps():cpp.ConstStar<Native_Caps>;


    @:native("bgfx_get_stats") extern public static function getStats():cpp.ConstStar<Native_Stats>;
    @:nocompletion
    @:native("bgfx_get_stats")
    extern public static function bgfx_get_stats():cpp.ConstStar<Native_Stats>;


    @:native("bgfx_alloc") extern public static function alloc(_size: cpp.UInt32):cpp.ConstStar<Native_Memory>;
    @:nocompletion
    @:native("bgfx_alloc")
    extern public static function bgfx_alloc(_size: cpp.UInt32):cpp.ConstStar<Native_Memory>;


    @:native("bgfx_copy") extern public static function copy(_data: cpp.Star<cpp.Void>, _size: cpp.UInt32):cpp.ConstStar<Native_Memory>;
    @:nocompletion
    @:native("bgfx_copy")
    extern public static function bgfx_copy(_data: cpp.Star<cpp.Void>, _size: cpp.UInt32):cpp.ConstStar<Native_Memory>;


    @:native("bgfx_make_ref") extern public static function makeRef(_data: cpp.Star<cpp.Void>, _size: cpp.UInt32):cpp.ConstStar<Native_Memory>;
    @:nocompletion
    @:native("bgfx_make_ref")
    extern public static function bgfx_make_ref(_data: cpp.Star<cpp.Void>, _size: cpp.UInt32):cpp.ConstStar<Native_Memory>;


    @:native("bgfx_make_ref_release") extern public static function makeRefRelease(_data: cpp.Star<cpp.Void>, _size: cpp.UInt32, _releaseFn: cpp.Star<cpp.Void>, _userData: cpp.Star<cpp.Void>):cpp.ConstStar<Native_Memory>;
    @:nocompletion
    @:native("bgfx_make_ref_release")
    extern public static function bgfx_make_ref_release(_data: cpp.Star<cpp.Void>, _size: cpp.UInt32, _releaseFn: cpp.Star<cpp.Void>, _userData: cpp.Star<cpp.Void>):cpp.ConstStar<Native_Memory>;


    @:native("bgfx_set_debug") extern public static function setDebug(_debug: cpp.UInt32):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_debug")
    extern public static function bgfx_set_debug(_debug: cpp.UInt32):cpp.Void;


    @:native("bgfx_dbg_text_clear") extern public static function dbgTextClear(_attr: cpp.UInt8, _small: Bool):cpp.Void;
    @:nocompletion
    @:native("bgfx_dbg_text_clear")
    extern public static function bgfx_dbg_text_clear(_attr: cpp.UInt8, _small: Bool):cpp.Void;


    @:native("bgfx_dbg_text_image") extern public static function dbgTextImage(_x: cpp.UInt16, _y: cpp.UInt16, _width: cpp.UInt16, _height: cpp.UInt16, _data: cpp.Star<cpp.Void>, _pitch: cpp.UInt16):cpp.Void;
    @:nocompletion
    @:native("bgfx_dbg_text_image")
    extern public static function bgfx_dbg_text_image(_x: cpp.UInt16, _y: cpp.UInt16, _width: cpp.UInt16, _height: cpp.UInt16, _data: cpp.Star<cpp.Void>, _pitch: cpp.UInt16):cpp.Void;


    @:native("bgfx_create_index_buffer") extern public static function createIndexBuffer(_mem: cpp.ConstStar<Native_Memory>, _flags: cpp.UInt16):Native_IndexBufferHandle;
    @:nocompletion
    @:native("bgfx_create_index_buffer")
    extern public static function bgfx_create_index_buffer(_mem: cpp.ConstStar<Native_Memory>, _flags: cpp.UInt16):Native_IndexBufferHandle;


    @:native("bgfx_set_index_buffer_name") extern public static function setIndexBufferName(_handle: Native_IndexBufferHandle, _name: cpp.ConstCharStar, _len: cpp.Int32):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_index_buffer_name")
    extern public static function bgfx_set_index_buffer_name(_handle: Native_IndexBufferHandle, _name: cpp.ConstCharStar, _len: cpp.Int32):cpp.Void;


    @:native("bgfx_destroy_index_buffer") extern public static function destroyIndexBuffer(_handle: Native_IndexBufferHandle):cpp.Void;
    @:nocompletion
    @:native("bgfx_destroy_index_buffer")
    extern public static function bgfx_destroy_index_buffer(_handle: Native_IndexBufferHandle):cpp.Void;


    @:native("bgfx_create_vertex_layout") extern public static function createVertexLayout(_layout: cpp.ConstStar<Native_VertexLayout>):Native_VertexLayoutHandle;
    @:nocompletion
    @:native("bgfx_create_vertex_layout")
    extern public static function bgfx_create_vertex_layout(_layout: cpp.ConstStar<Native_VertexLayout>):Native_VertexLayoutHandle;


    @:native("bgfx_destroy_vertex_layout") extern public static function destroyVertexLayout(_layoutHandle: Native_VertexLayoutHandle):cpp.Void;
    @:nocompletion
    @:native("bgfx_destroy_vertex_layout")
    extern public static function bgfx_destroy_vertex_layout(_layoutHandle: Native_VertexLayoutHandle):cpp.Void;


    @:native("bgfx_create_vertex_buffer") extern public static function createVertexBuffer(_mem: cpp.ConstStar<Native_Memory>, _layout: cpp.ConstStar<Native_VertexLayout>, _flags: cpp.UInt16):Native_VertexBufferHandle;
    @:nocompletion
    @:native("bgfx_create_vertex_buffer")
    extern public static function bgfx_create_vertex_buffer(_mem: cpp.ConstStar<Native_Memory>, _layout: cpp.ConstStar<Native_VertexLayout>, _flags: cpp.UInt16):Native_VertexBufferHandle;


    @:native("bgfx_set_vertex_buffer_name") extern public static function setVertexBufferName(_handle: Native_VertexBufferHandle, _name: cpp.ConstCharStar, _len: cpp.Int32):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_vertex_buffer_name")
    extern public static function bgfx_set_vertex_buffer_name(_handle: Native_VertexBufferHandle, _name: cpp.ConstCharStar, _len: cpp.Int32):cpp.Void;


    @:native("bgfx_destroy_vertex_buffer") extern public static function destroyVertexBuffer(_handle: Native_VertexBufferHandle):cpp.Void;
    @:nocompletion
    @:native("bgfx_destroy_vertex_buffer")
    extern public static function bgfx_destroy_vertex_buffer(_handle: Native_VertexBufferHandle):cpp.Void;


    @:native("bgfx_create_dynamic_index_buffer") extern public static function createDynamicIndexBuffer(_num: cpp.UInt32, _flags: cpp.UInt16):Native_DynamicIndexBufferHandle;
    @:nocompletion
    @:native("bgfx_create_dynamic_index_buffer")
    extern public static function bgfx_create_dynamic_index_buffer(_num: cpp.UInt32, _flags: cpp.UInt16):Native_DynamicIndexBufferHandle;


    @:native("bgfx_create_dynamic_index_buffer_mem") extern public static function createDynamicIndexBufferMem(_mem: cpp.ConstStar<Native_Memory>, _flags: cpp.UInt16):Native_DynamicIndexBufferHandle;
    @:nocompletion
    @:native("bgfx_create_dynamic_index_buffer_mem")
    extern public static function bgfx_create_dynamic_index_buffer_mem(_mem: cpp.ConstStar<Native_Memory>, _flags: cpp.UInt16):Native_DynamicIndexBufferHandle;


    @:native("bgfx_update_dynamic_index_buffer") extern public static function updateDynamicIndexBuffer(_handle: Native_DynamicIndexBufferHandle, _startIndex: cpp.UInt32, _mem: cpp.ConstStar<Native_Memory>):cpp.Void;
    @:nocompletion
    @:native("bgfx_update_dynamic_index_buffer")
    extern public static function bgfx_update_dynamic_index_buffer(_handle: Native_DynamicIndexBufferHandle, _startIndex: cpp.UInt32, _mem: cpp.ConstStar<Native_Memory>):cpp.Void;


    @:native("bgfx_destroy_dynamic_index_buffer") extern public static function destroyDynamicIndexBuffer(_handle: Native_DynamicIndexBufferHandle):cpp.Void;
    @:nocompletion
    @:native("bgfx_destroy_dynamic_index_buffer")
    extern public static function bgfx_destroy_dynamic_index_buffer(_handle: Native_DynamicIndexBufferHandle):cpp.Void;


    @:native("bgfx_create_dynamic_vertex_buffer") extern public static function createDynamicVertexBuffer(_num: cpp.UInt32, _layout: cpp.ConstStar<Native_VertexLayout>, _flags: cpp.UInt16):Native_DynamicVertexBufferHandle;
    @:nocompletion
    @:native("bgfx_create_dynamic_vertex_buffer")
    extern public static function bgfx_create_dynamic_vertex_buffer(_num: cpp.UInt32, _layout: cpp.ConstStar<Native_VertexLayout>, _flags: cpp.UInt16):Native_DynamicVertexBufferHandle;


    @:native("bgfx_create_dynamic_vertex_buffer_mem") extern public static function createDynamicVertexBufferMem(_mem: cpp.ConstStar<Native_Memory>, _layout: cpp.ConstStar<Native_VertexLayout>, _flags: cpp.UInt16):Native_DynamicVertexBufferHandle;
    @:nocompletion
    @:native("bgfx_create_dynamic_vertex_buffer_mem")
    extern public static function bgfx_create_dynamic_vertex_buffer_mem(_mem: cpp.ConstStar<Native_Memory>, _layout: cpp.ConstStar<Native_VertexLayout>, _flags: cpp.UInt16):Native_DynamicVertexBufferHandle;


    @:native("bgfx_update_dynamic_vertex_buffer") extern public static function updateDynamicVertexBuffer(_handle: Native_DynamicVertexBufferHandle, _startVertex: cpp.UInt32, _mem: cpp.ConstStar<Native_Memory>):cpp.Void;
    @:nocompletion
    @:native("bgfx_update_dynamic_vertex_buffer")
    extern public static function bgfx_update_dynamic_vertex_buffer(_handle: Native_DynamicVertexBufferHandle, _startVertex: cpp.UInt32, _mem: cpp.ConstStar<Native_Memory>):cpp.Void;


    @:native("bgfx_destroy_dynamic_vertex_buffer") extern public static function destroyDynamicVertexBuffer(_handle: Native_DynamicVertexBufferHandle):cpp.Void;
    @:nocompletion
    @:native("bgfx_destroy_dynamic_vertex_buffer")
    extern public static function bgfx_destroy_dynamic_vertex_buffer(_handle: Native_DynamicVertexBufferHandle):cpp.Void;


    @:native("bgfx_get_avail_transient_index_buffer") extern public static function getAvailTransientIndexBuffer(_num: cpp.UInt32, _index32: Bool):cpp.UInt32;
    @:nocompletion
    @:native("bgfx_get_avail_transient_index_buffer")
    extern public static function bgfx_get_avail_transient_index_buffer(_num: cpp.UInt32, _index32: Bool):cpp.UInt32;


    @:native("bgfx_get_avail_transient_vertex_buffer") extern public static function getAvailTransientVertexBuffer(_num: cpp.UInt32, _layout: cpp.ConstStar<Native_VertexLayout>):cpp.UInt32;
    @:nocompletion
    @:native("bgfx_get_avail_transient_vertex_buffer")
    extern public static function bgfx_get_avail_transient_vertex_buffer(_num: cpp.UInt32, _layout: cpp.ConstStar<Native_VertexLayout>):cpp.UInt32;


    @:native("bgfx_get_avail_instance_data_buffer") extern public static function getAvailInstanceDataBuffer(_num: cpp.UInt32, _stride: cpp.UInt16):cpp.UInt32;
    @:nocompletion
    @:native("bgfx_get_avail_instance_data_buffer")
    extern public static function bgfx_get_avail_instance_data_buffer(_num: cpp.UInt32, _stride: cpp.UInt16):cpp.UInt32;


    @:native("bgfx_alloc_transient_index_buffer") extern public static function allocTransientIndexBuffer(_tib: cpp.Star<Native_TransientIndexBuffer>, _num: cpp.UInt32, _index32: Bool):cpp.Void;
    @:nocompletion
    @:native("bgfx_alloc_transient_index_buffer")
    extern public static function bgfx_alloc_transient_index_buffer(_tib: cpp.Star<Native_TransientIndexBuffer>, _num: cpp.UInt32, _index32: Bool):cpp.Void;


    @:native("bgfx_alloc_transient_vertex_buffer") extern public static function allocTransientVertexBuffer(_tvb: cpp.Star<Native_TransientVertexBuffer>, _num: cpp.UInt32, _layout: cpp.ConstStar<Native_VertexLayout>):cpp.Void;
    @:nocompletion
    @:native("bgfx_alloc_transient_vertex_buffer")
    extern public static function bgfx_alloc_transient_vertex_buffer(_tvb: cpp.Star<Native_TransientVertexBuffer>, _num: cpp.UInt32, _layout: cpp.ConstStar<Native_VertexLayout>):cpp.Void;


    @:native("bgfx_alloc_transient_buffers") extern public static function allocTransientBuffers(_tvb: cpp.Star<Native_TransientVertexBuffer>, _layout: cpp.ConstStar<Native_VertexLayout>, _numVertices: cpp.UInt32, _tib: cpp.Star<Native_TransientIndexBuffer>, _numIndices: cpp.UInt32, _index32: Bool):Bool;
    @:nocompletion
    @:native("bgfx_alloc_transient_buffers")
    extern public static function bgfx_alloc_transient_buffers(_tvb: cpp.Star<Native_TransientVertexBuffer>, _layout: cpp.ConstStar<Native_VertexLayout>, _numVertices: cpp.UInt32, _tib: cpp.Star<Native_TransientIndexBuffer>, _numIndices: cpp.UInt32, _index32: Bool):Bool;


    @:native("bgfx_alloc_instance_data_buffer") extern public static function allocInstanceDataBuffer(_idb: cpp.Star<Native_InstanceDataBuffer>, _num: cpp.UInt32, _stride: cpp.UInt16):cpp.Void;
    @:nocompletion
    @:native("bgfx_alloc_instance_data_buffer")
    extern public static function bgfx_alloc_instance_data_buffer(_idb: cpp.Star<Native_InstanceDataBuffer>, _num: cpp.UInt32, _stride: cpp.UInt16):cpp.Void;


    @:native("bgfx_create_indirect_buffer") extern public static function createIndirectBuffer(_num: cpp.UInt32):Native_IndirectBufferHandle;
    @:nocompletion
    @:native("bgfx_create_indirect_buffer")
    extern public static function bgfx_create_indirect_buffer(_num: cpp.UInt32):Native_IndirectBufferHandle;


    @:native("bgfx_destroy_indirect_buffer") extern public static function destroyIndirectBuffer(_handle: Native_IndirectBufferHandle):cpp.Void;
    @:nocompletion
    @:native("bgfx_destroy_indirect_buffer")
    extern public static function bgfx_destroy_indirect_buffer(_handle: Native_IndirectBufferHandle):cpp.Void;


    @:native("bgfx_create_shader") extern public static function createShader(_mem: cpp.ConstStar<Native_Memory>):Native_ShaderHandle;
    @:nocompletion
    @:native("bgfx_create_shader")
    extern public static function bgfx_create_shader(_mem: cpp.ConstStar<Native_Memory>):Native_ShaderHandle;


    @:native("bgfx_get_shader_uniforms") extern public static function getShaderUniforms(_handle: Native_ShaderHandle, _uniforms: cpp.Star<Native_UniformHandle>, _max: cpp.UInt16):cpp.UInt16;
    @:nocompletion
    @:native("bgfx_get_shader_uniforms")
    extern public static function bgfx_get_shader_uniforms(_handle: Native_ShaderHandle, _uniforms: cpp.Star<Native_UniformHandle>, _max: cpp.UInt16):cpp.UInt16;


    @:native("bgfx_set_shader_name") extern public static function setShaderName(_handle: Native_ShaderHandle, _name: cpp.ConstCharStar, _len: cpp.Int32):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_shader_name")
    extern public static function bgfx_set_shader_name(_handle: Native_ShaderHandle, _name: cpp.ConstCharStar, _len: cpp.Int32):cpp.Void;


    @:native("bgfx_destroy_shader") extern public static function destroyShader(_handle: Native_ShaderHandle):cpp.Void;
    @:nocompletion
    @:native("bgfx_destroy_shader")
    extern public static function bgfx_destroy_shader(_handle: Native_ShaderHandle):cpp.Void;


    @:native("bgfx_create_program") extern public static function createProgram(_vsh: Native_ShaderHandle, _fsh: Native_ShaderHandle, _destroyShaders: Bool):Native_ProgramHandle;
    @:nocompletion
    @:native("bgfx_create_program")
    extern public static function bgfx_create_program(_vsh: Native_ShaderHandle, _fsh: Native_ShaderHandle, _destroyShaders: Bool):Native_ProgramHandle;


    @:native("bgfx_create_compute_program") extern public static function createComputeProgram(_csh: Native_ShaderHandle, _destroyShaders: Bool):Native_ProgramHandle;
    @:nocompletion
    @:native("bgfx_create_compute_program")
    extern public static function bgfx_create_compute_program(_csh: Native_ShaderHandle, _destroyShaders: Bool):Native_ProgramHandle;


    @:native("bgfx_destroy_program") extern public static function destroyProgram(_handle: Native_ProgramHandle):cpp.Void;
    @:nocompletion
    @:native("bgfx_destroy_program")
    extern public static function bgfx_destroy_program(_handle: Native_ProgramHandle):cpp.Void;


    @:native("bgfx_is_texture_valid") extern public static function isTextureValid(_depth: cpp.UInt16, _cubeMap: Bool, _numLayers: cpp.UInt16, _format: TextureFormat, _flags: cpp.UInt64):Bool;
    @:nocompletion
    @:native("bgfx_is_texture_valid")
    extern public static function bgfx_is_texture_valid(_depth: cpp.UInt16, _cubeMap: Bool, _numLayers: cpp.UInt16, _format: TextureFormat, _flags: cpp.UInt64):Bool;


    @:native("bgfx_is_frame_buffer_valid") extern public static function isFrameBufferValid(_num: cpp.UInt8, _attachment: cpp.ConstStar<Native_Attachment>):Bool;
    @:nocompletion
    @:native("bgfx_is_frame_buffer_valid")
    extern public static function bgfx_is_frame_buffer_valid(_num: cpp.UInt8, _attachment: cpp.ConstStar<Native_Attachment>):Bool;


    @:native("bgfx_calc_texture_size") extern public static function calcTextureSize(_info: cpp.Star<Native_TextureInfo>, _width: cpp.UInt16, _height: cpp.UInt16, _depth: cpp.UInt16, _cubeMap: Bool, _hasMips: Bool, _numLayers: cpp.UInt16, _format: TextureFormat):cpp.Void;
    @:nocompletion
    @:native("bgfx_calc_texture_size")
    extern public static function bgfx_calc_texture_size(_info: cpp.Star<Native_TextureInfo>, _width: cpp.UInt16, _height: cpp.UInt16, _depth: cpp.UInt16, _cubeMap: Bool, _hasMips: Bool, _numLayers: cpp.UInt16, _format: TextureFormat):cpp.Void;


    @:native("bgfx_create_texture") extern public static function createTexture(_mem: cpp.ConstStar<Native_Memory>, _flags: cpp.UInt64, _skip: cpp.UInt8, _info: cpp.Star<Native_TextureInfo>):Native_TextureHandle;
    @:nocompletion
    @:native("bgfx_create_texture")
    extern public static function bgfx_create_texture(_mem: cpp.ConstStar<Native_Memory>, _flags: cpp.UInt64, _skip: cpp.UInt8, _info: cpp.Star<Native_TextureInfo>):Native_TextureHandle;


    @:native("bgfx_create_texture_2d") extern public static function createTexture2D(_width: cpp.UInt16, _height: cpp.UInt16, _hasMips: Bool, _numLayers: cpp.UInt16, _format: TextureFormat, _flags: cpp.UInt64, _mem: cpp.ConstStar<Native_Memory>):Native_TextureHandle;
    @:nocompletion
    @:native("bgfx_create_texture_2d")
    extern public static function bgfx_create_texture_2d(_width: cpp.UInt16, _height: cpp.UInt16, _hasMips: Bool, _numLayers: cpp.UInt16, _format: TextureFormat, _flags: cpp.UInt64, _mem: cpp.ConstStar<Native_Memory>):Native_TextureHandle;


    @:native("bgfx_create_texture_2d_scaled") extern public static function createTexture2DScaled(_ratio: BackbufferRatio, _hasMips: Bool, _numLayers: cpp.UInt16, _format: TextureFormat, _flags: cpp.UInt64):Native_TextureHandle;
    @:nocompletion
    @:native("bgfx_create_texture_2d_scaled")
    extern public static function bgfx_create_texture_2d_scaled(_ratio: BackbufferRatio, _hasMips: Bool, _numLayers: cpp.UInt16, _format: TextureFormat, _flags: cpp.UInt64):Native_TextureHandle;


    @:native("bgfx_create_texture_3d") extern public static function createTexture3D(_width: cpp.UInt16, _height: cpp.UInt16, _depth: cpp.UInt16, _hasMips: Bool, _format: TextureFormat, _flags: cpp.UInt64, _mem: cpp.ConstStar<Native_Memory>):Native_TextureHandle;
    @:nocompletion
    @:native("bgfx_create_texture_3d")
    extern public static function bgfx_create_texture_3d(_width: cpp.UInt16, _height: cpp.UInt16, _depth: cpp.UInt16, _hasMips: Bool, _format: TextureFormat, _flags: cpp.UInt64, _mem: cpp.ConstStar<Native_Memory>):Native_TextureHandle;


    @:native("bgfx_create_texture_cube") extern public static function createTextureCube(_size: cpp.UInt16, _hasMips: Bool, _numLayers: cpp.UInt16, _format: TextureFormat, _flags: cpp.UInt64, _mem: cpp.ConstStar<Native_Memory>):Native_TextureHandle;
    @:nocompletion
    @:native("bgfx_create_texture_cube")
    extern public static function bgfx_create_texture_cube(_size: cpp.UInt16, _hasMips: Bool, _numLayers: cpp.UInt16, _format: TextureFormat, _flags: cpp.UInt64, _mem: cpp.ConstStar<Native_Memory>):Native_TextureHandle;


    @:native("bgfx_update_texture_2d") extern public static function updateTexture2D(_handle: Native_TextureHandle, _layer: cpp.UInt16, _mip: cpp.UInt8, _x: cpp.UInt16, _y: cpp.UInt16, _width: cpp.UInt16, _height: cpp.UInt16, _mem: cpp.ConstStar<Native_Memory>, _pitch: cpp.UInt16):cpp.Void;
    @:nocompletion
    @:native("bgfx_update_texture_2d")
    extern public static function bgfx_update_texture_2d(_handle: Native_TextureHandle, _layer: cpp.UInt16, _mip: cpp.UInt8, _x: cpp.UInt16, _y: cpp.UInt16, _width: cpp.UInt16, _height: cpp.UInt16, _mem: cpp.ConstStar<Native_Memory>, _pitch: cpp.UInt16):cpp.Void;


    @:native("bgfx_update_texture_3d") extern public static function updateTexture3D(_handle: Native_TextureHandle, _mip: cpp.UInt8, _x: cpp.UInt16, _y: cpp.UInt16, _z: cpp.UInt16, _width: cpp.UInt16, _height: cpp.UInt16, _depth: cpp.UInt16, _mem: cpp.ConstStar<Native_Memory>):cpp.Void;
    @:nocompletion
    @:native("bgfx_update_texture_3d")
    extern public static function bgfx_update_texture_3d(_handle: Native_TextureHandle, _mip: cpp.UInt8, _x: cpp.UInt16, _y: cpp.UInt16, _z: cpp.UInt16, _width: cpp.UInt16, _height: cpp.UInt16, _depth: cpp.UInt16, _mem: cpp.ConstStar<Native_Memory>):cpp.Void;


    @:native("bgfx_update_texture_cube") extern public static function updateTextureCube(_handle: Native_TextureHandle, _layer: cpp.UInt16, _side: cpp.UInt8, _mip: cpp.UInt8, _x: cpp.UInt16, _y: cpp.UInt16, _width: cpp.UInt16, _height: cpp.UInt16, _mem: cpp.ConstStar<Native_Memory>, _pitch: cpp.UInt16):cpp.Void;
    @:nocompletion
    @:native("bgfx_update_texture_cube")
    extern public static function bgfx_update_texture_cube(_handle: Native_TextureHandle, _layer: cpp.UInt16, _side: cpp.UInt8, _mip: cpp.UInt8, _x: cpp.UInt16, _y: cpp.UInt16, _width: cpp.UInt16, _height: cpp.UInt16, _mem: cpp.ConstStar<Native_Memory>, _pitch: cpp.UInt16):cpp.Void;


    @:native("bgfx_read_texture") extern public static function readTexture(_handle: Native_TextureHandle, _data: cpp.Star<cpp.Void>, _mip: cpp.UInt8):cpp.UInt32;
    @:nocompletion
    @:native("bgfx_read_texture")
    extern public static function bgfx_read_texture(_handle: Native_TextureHandle, _data: cpp.Star<cpp.Void>, _mip: cpp.UInt8):cpp.UInt32;


    @:native("bgfx_set_texture_name") extern public static function setTextureName(_handle: Native_TextureHandle, _name: cpp.ConstCharStar, _len: cpp.Int32):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_texture_name")
    extern public static function bgfx_set_texture_name(_handle: Native_TextureHandle, _name: cpp.ConstCharStar, _len: cpp.Int32):cpp.Void;


    @:native("bgfx_get_direct_access_ptr") extern public static function getDirectAccessPtr(_handle: Native_TextureHandle):cpp.Star<cpp.Void>;
    @:nocompletion
    @:native("bgfx_get_direct_access_ptr")
    extern public static function bgfx_get_direct_access_ptr(_handle: Native_TextureHandle):cpp.Star<cpp.Void>;


    @:native("bgfx_destroy_texture") extern public static function destroyTexture(_handle: Native_TextureHandle):cpp.Void;
    @:nocompletion
    @:native("bgfx_destroy_texture")
    extern public static function bgfx_destroy_texture(_handle: Native_TextureHandle):cpp.Void;


    @:native("bgfx_create_frame_buffer") extern public static function createFrameBuffer(_width: cpp.UInt16, _height: cpp.UInt16, _format: TextureFormat, _textureFlags: cpp.UInt64):Native_FrameBufferHandle;
    @:nocompletion
    @:native("bgfx_create_frame_buffer")
    extern public static function bgfx_create_frame_buffer(_width: cpp.UInt16, _height: cpp.UInt16, _format: TextureFormat, _textureFlags: cpp.UInt64):Native_FrameBufferHandle;


    @:native("bgfx_create_frame_buffer_scaled") extern public static function createFrameBufferScaled(_ratio: BackbufferRatio, _format: TextureFormat, _textureFlags: cpp.UInt64):Native_FrameBufferHandle;
    @:nocompletion
    @:native("bgfx_create_frame_buffer_scaled")
    extern public static function bgfx_create_frame_buffer_scaled(_ratio: BackbufferRatio, _format: TextureFormat, _textureFlags: cpp.UInt64):Native_FrameBufferHandle;


    @:native("bgfx_create_frame_buffer_from_handles") extern public static function createFrameBufferFromHandles(_num: cpp.UInt8, _handles: cpp.ConstStar<Native_TextureHandle>, _destroyTexture: Bool):Native_FrameBufferHandle;
    @:nocompletion
    @:native("bgfx_create_frame_buffer_from_handles")
    extern public static function bgfx_create_frame_buffer_from_handles(_num: cpp.UInt8, _handles: cpp.ConstStar<Native_TextureHandle>, _destroyTexture: Bool):Native_FrameBufferHandle;


    @:native("bgfx_create_frame_buffer_from_attachment") extern public static function createFrameBufferFromAttachment(_num: cpp.UInt8, _attachment: cpp.ConstStar<Native_Attachment>, _destroyTexture: Bool):Native_FrameBufferHandle;
    @:nocompletion
    @:native("bgfx_create_frame_buffer_from_attachment")
    extern public static function bgfx_create_frame_buffer_from_attachment(_num: cpp.UInt8, _attachment: cpp.ConstStar<Native_Attachment>, _destroyTexture: Bool):Native_FrameBufferHandle;


    @:native("bgfx_create_frame_buffer_from_nwh") extern public static function createFrameBufferFromNwh(_nwh: cpp.Star<cpp.Void>, _width: cpp.UInt16, _height: cpp.UInt16, _format: TextureFormat, _depthFormat: TextureFormat):Native_FrameBufferHandle;
    @:nocompletion
    @:native("bgfx_create_frame_buffer_from_nwh")
    extern public static function bgfx_create_frame_buffer_from_nwh(_nwh: cpp.Star<cpp.Void>, _width: cpp.UInt16, _height: cpp.UInt16, _format: TextureFormat, _depthFormat: TextureFormat):Native_FrameBufferHandle;


    @:native("bgfx_set_frame_buffer_name") extern public static function setFrameBufferName(_handle: Native_FrameBufferHandle, _name: cpp.ConstCharStar, _len: cpp.Int32):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_frame_buffer_name")
    extern public static function bgfx_set_frame_buffer_name(_handle: Native_FrameBufferHandle, _name: cpp.ConstCharStar, _len: cpp.Int32):cpp.Void;


    @:native("bgfx_get_texture") extern public static function getTexture(_handle: Native_FrameBufferHandle, _attachment: cpp.UInt8):Native_TextureHandle;
    @:nocompletion
    @:native("bgfx_get_texture")
    extern public static function bgfx_get_texture(_handle: Native_FrameBufferHandle, _attachment: cpp.UInt8):Native_TextureHandle;


    @:native("bgfx_destroy_frame_buffer") extern public static function destroyFrameBuffer(_handle: Native_FrameBufferHandle):cpp.Void;
    @:nocompletion
    @:native("bgfx_destroy_frame_buffer")
    extern public static function bgfx_destroy_frame_buffer(_handle: Native_FrameBufferHandle):cpp.Void;


    @:native("bgfx_create_uniform") extern public static function createUniform(_name: cpp.ConstCharStar, _type: UniformType, _num: cpp.UInt16):Native_UniformHandle;
    @:nocompletion
    @:native("bgfx_create_uniform")
    extern public static function bgfx_create_uniform(_name: cpp.ConstCharStar, _type: UniformType, _num: cpp.UInt16):Native_UniformHandle;


    @:native("bgfx_get_uniform_info") extern public static function getUniformInfo(_handle: Native_UniformHandle, _info: cpp.Star<Native_UniformInfo>):cpp.Void;
    @:nocompletion
    @:native("bgfx_get_uniform_info")
    extern public static function bgfx_get_uniform_info(_handle: Native_UniformHandle, _info: cpp.Star<Native_UniformInfo>):cpp.Void;


    @:native("bgfx_destroy_uniform") extern public static function destroyUniform(_handle: Native_UniformHandle):cpp.Void;
    @:nocompletion
    @:native("bgfx_destroy_uniform")
    extern public static function bgfx_destroy_uniform(_handle: Native_UniformHandle):cpp.Void;


    @:native("bgfx_create_occlusion_query") extern public static function createOcclusionQuery():Native_OcclusionQueryHandle;
    @:nocompletion
    @:native("bgfx_create_occlusion_query")
    extern public static function bgfx_create_occlusion_query():Native_OcclusionQueryHandle;


    @:native("bgfx_get_result") extern public static function getResult(_handle: Native_OcclusionQueryHandle, _result: cpp.Star<cpp.Int32>):OcclusionQueryResult;
    @:nocompletion
    @:native("bgfx_get_result")
    extern public static function bgfx_get_result(_handle: Native_OcclusionQueryHandle, _result: cpp.Star<cpp.Int32>):OcclusionQueryResult;


    @:native("bgfx_destroy_occlusion_query") extern public static function destroyOcclusionQuery(_handle: Native_OcclusionQueryHandle):cpp.Void;
    @:nocompletion
    @:native("bgfx_destroy_occlusion_query")
    extern public static function bgfx_destroy_occlusion_query(_handle: Native_OcclusionQueryHandle):cpp.Void;


    @:native("bgfx_set_palette_color") extern public static function setPaletteColor(_index: cpp.UInt8, _rgba: cpp.Float32):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_palette_color")
    extern public static function bgfx_set_palette_color(_index: cpp.UInt8, _rgba: cpp.Float32):cpp.Void;


    @:native("bgfx_set_palette_color_rgba8") extern public static function setPaletteColorRgba8(_index: cpp.UInt8, _rgba: cpp.UInt32):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_palette_color_rgba8")
    extern public static function bgfx_set_palette_color_rgba8(_index: cpp.UInt8, _rgba: cpp.UInt32):cpp.Void;


    @:native("bgfx_set_view_name") extern public static function setViewName(_id: ViewId, _name: cpp.ConstCharStar, _len: cpp.Int32):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_view_name")
    extern public static function bgfx_set_view_name(_id: ViewId, _name: cpp.ConstCharStar, _len: cpp.Int32):cpp.Void;


    @:native("bgfx_set_view_rect") extern public static function setViewRect(_id: ViewId, _x: cpp.UInt16, _y: cpp.UInt16, _width: cpp.UInt16, _height: cpp.UInt16):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_view_rect")
    extern public static function bgfx_set_view_rect(_id: ViewId, _x: cpp.UInt16, _y: cpp.UInt16, _width: cpp.UInt16, _height: cpp.UInt16):cpp.Void;


    @:native("bgfx_set_view_rect_ratio") extern public static function setViewRectRatio(_id: ViewId, _x: cpp.UInt16, _y: cpp.UInt16, _ratio: BackbufferRatio):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_view_rect_ratio")
    extern public static function bgfx_set_view_rect_ratio(_id: ViewId, _x: cpp.UInt16, _y: cpp.UInt16, _ratio: BackbufferRatio):cpp.Void;


    @:native("bgfx_set_view_scissor") extern public static function setViewScissor(_id: ViewId, _x: cpp.UInt16, _y: cpp.UInt16, _width: cpp.UInt16, _height: cpp.UInt16):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_view_scissor")
    extern public static function bgfx_set_view_scissor(_id: ViewId, _x: cpp.UInt16, _y: cpp.UInt16, _width: cpp.UInt16, _height: cpp.UInt16):cpp.Void;


    @:native("bgfx_set_view_clear") extern public static function setViewClear(_id: ViewId, _flags: cpp.UInt16, _rgba: cpp.UInt32, _depth: cpp.Float32, _stencil: cpp.UInt8):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_view_clear")
    extern public static function bgfx_set_view_clear(_id: ViewId, _flags: cpp.UInt16, _rgba: cpp.UInt32, _depth: cpp.Float32, _stencil: cpp.UInt8):cpp.Void;


    @:native("bgfx_set_view_clear_mrt") extern public static function setViewClearMrt(_id: ViewId, _flags: cpp.UInt16, _depth: cpp.Float32, _stencil: cpp.UInt8, _c0: cpp.UInt8, _c1: cpp.UInt8, _c2: cpp.UInt8, _c3: cpp.UInt8, _c4: cpp.UInt8, _c5: cpp.UInt8, _c6: cpp.UInt8, _c7: cpp.UInt8):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_view_clear_mrt")
    extern public static function bgfx_set_view_clear_mrt(_id: ViewId, _flags: cpp.UInt16, _depth: cpp.Float32, _stencil: cpp.UInt8, _c0: cpp.UInt8, _c1: cpp.UInt8, _c2: cpp.UInt8, _c3: cpp.UInt8, _c4: cpp.UInt8, _c5: cpp.UInt8, _c6: cpp.UInt8, _c7: cpp.UInt8):cpp.Void;


    @:native("bgfx_set_view_mode") extern public static function setViewMode(_id: ViewId, _mode: ViewMode):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_view_mode")
    extern public static function bgfx_set_view_mode(_id: ViewId, _mode: ViewMode):cpp.Void;


    @:native("bgfx_set_view_frame_buffer") extern public static function setViewFrameBuffer(_id: ViewId, _handle: Native_FrameBufferHandle):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_view_frame_buffer")
    extern public static function bgfx_set_view_frame_buffer(_id: ViewId, _handle: Native_FrameBufferHandle):cpp.Void;


    @:native("bgfx_set_view_transform") extern public static function setViewTransform(_id: ViewId, _view: cpp.Star<cpp.Void>, _proj: cpp.Star<cpp.Void>):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_view_transform")
    extern public static function bgfx_set_view_transform(_id: ViewId, _view: cpp.Star<cpp.Void>, _proj: cpp.Star<cpp.Void>):cpp.Void;


    @:native("bgfx_set_view_order") extern public static function setViewOrder(_id: ViewId, _num: cpp.UInt16, _order: cpp.ConstStar<Native_ViewId>):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_view_order")
    extern public static function bgfx_set_view_order(_id: ViewId, _num: cpp.UInt16, _order: cpp.ConstStar<Native_ViewId>):cpp.Void;


    @:native("bgfx_reset_view") extern public static function resetView(_id: ViewId):cpp.Void;
    @:nocompletion
    @:native("bgfx_reset_view")
    extern public static function bgfx_reset_view(_id: ViewId):cpp.Void;


    @:native("bgfx_encoder_begin") extern public static function encoderBegin(_forThread: Bool):cpp.Star<Encoder>;
    @:nocompletion
    @:native("bgfx_encoder_begin")
    extern public static function bgfx_encoder_begin(_forThread: Bool):cpp.Star<Encoder>;


    @:native("bgfx_encoder_end") extern public static function encoderEnd(_encoder: cpp.Star<Encoder>):cpp.Void;
    @:nocompletion
    @:native("bgfx_encoder_end")
    extern public static function bgfx_encoder_end(_encoder: cpp.Star<Encoder>):cpp.Void;


    @:nocompletion
    @:native("bgfx_encoder_set_marker")
    extern public static function bgfx_encoder_set_marker(self: cpp.Star<Native_Encoder>, _name: cpp.ConstCharStar, _len: cpp.Int32):cpp.Void;


    @:nocompletion
    @:native("bgfx_encoder_set_state")
    extern public static function bgfx_encoder_set_state(self: cpp.Star<Native_Encoder>, _state: cpp.UInt64, _rgba: cpp.UInt32):cpp.Void;


    @:nocompletion
    @:native("bgfx_encoder_set_condition")
    extern public static function bgfx_encoder_set_condition(self: cpp.Star<Native_Encoder>, _handle: Native_OcclusionQueryHandle, _visible: Bool):cpp.Void;


    @:nocompletion
    @:native("bgfx_encoder_set_stencil")
    extern public static function bgfx_encoder_set_stencil(self: cpp.Star<Native_Encoder>, _fstencil: cpp.UInt32, _bstencil: cpp.UInt32):cpp.Void;


    @:nocompletion
    @:native("bgfx_encoder_set_scissor")
    extern public static function bgfx_encoder_set_scissor(self: cpp.Star<Native_Encoder>, _x: cpp.UInt16, _y: cpp.UInt16, _width: cpp.UInt16, _height: cpp.UInt16):cpp.UInt16;


    @:nocompletion
    @:native("bgfx_encoder_set_scissor_cached")
    extern public static function bgfx_encoder_set_scissor_cached(self: cpp.Star<Native_Encoder>, _cache: cpp.UInt16):cpp.Void;


    @:nocompletion
    @:native("bgfx_encoder_set_transform")
    extern public static function bgfx_encoder_set_transform(self: cpp.Star<Native_Encoder>, _mtx: cpp.Star<cpp.Void>, _num: cpp.UInt16):cpp.UInt32;


    @:nocompletion
    @:native("bgfx_encoder_set_transform_cached")
    extern public static function bgfx_encoder_set_transform_cached(self: cpp.Star<Native_Encoder>, _cache: cpp.UInt32, _num: cpp.UInt16):cpp.Void;


    @:nocompletion
    @:native("bgfx_encoder_alloc_transform")
    extern public static function bgfx_encoder_alloc_transform(self: cpp.Star<Native_Encoder>, _transform: cpp.Star<Native_Transform>, _num: cpp.UInt16):cpp.UInt32;


    @:nocompletion
    @:native("bgfx_encoder_set_uniform")
    extern public static function bgfx_encoder_set_uniform(self: cpp.Star<Native_Encoder>, _handle: Native_UniformHandle, _value: cpp.Star<cpp.Void>, _num: cpp.UInt16):cpp.Void;


    @:nocompletion
    @:native("bgfx_encoder_set_index_buffer")
    extern public static function bgfx_encoder_set_index_buffer(self: cpp.Star<Native_Encoder>, _handle: Native_IndexBufferHandle, _firstIndex: cpp.UInt32, _numIndices: cpp.UInt32):cpp.Void;


    @:nocompletion
    @:native("bgfx_encoder_set_dynamic_index_buffer")
    extern public static function bgfx_encoder_set_dynamic_index_buffer(self: cpp.Star<Native_Encoder>, _handle: Native_DynamicIndexBufferHandle, _firstIndex: cpp.UInt32, _numIndices: cpp.UInt32):cpp.Void;


    @:nocompletion
    @:native("bgfx_encoder_set_transient_index_buffer")
    extern public static function bgfx_encoder_set_transient_index_buffer(self: cpp.Star<Native_Encoder>, _tib: cpp.ConstStar<Native_TransientIndexBuffer>, _firstIndex: cpp.UInt32, _numIndices: cpp.UInt32):cpp.Void;


    @:nocompletion
    @:native("bgfx_encoder_set_vertex_buffer")
    extern public static function bgfx_encoder_set_vertex_buffer(self: cpp.Star<Native_Encoder>, _stream: cpp.UInt8, _handle: Native_VertexBufferHandle, _startVertex: cpp.UInt32, _numVertices: cpp.UInt32):cpp.Void;


    @:nocompletion
    @:native("bgfx_encoder_set_vertex_buffer_with_layout")
    extern public static function bgfx_encoder_set_vertex_buffer_with_layout(self: cpp.Star<Native_Encoder>, _stream: cpp.UInt8, _handle: Native_VertexBufferHandle, _startVertex: cpp.UInt32, _numVertices: cpp.UInt32, _layoutHandle: Native_VertexLayoutHandle):cpp.Void;


    @:nocompletion
    @:native("bgfx_encoder_set_dynamic_vertex_buffer")
    extern public static function bgfx_encoder_set_dynamic_vertex_buffer(self: cpp.Star<Native_Encoder>, _stream: cpp.UInt8, _handle: Native_DynamicVertexBufferHandle, _startVertex: cpp.UInt32, _numVertices: cpp.UInt32):cpp.Void;

    @:nocompletion
    @:native("bgfx_encoder_set_dynamic_vertex_buffer_with_layout")
    extern public static function bgfx_encoder_set_dynamic_vertex_buffer_with_layout(self: cpp.Star<Native_Encoder>, _stream: cpp.UInt8, _handle: Native_DynamicVertexBufferHandle, _startVertex: cpp.UInt32, _numVertices: cpp.UInt32, _layoutHandle: Native_VertexLayoutHandle):cpp.Void;


    @:nocompletion
    @:native("bgfx_encoder_set_transient_vertex_buffer")
    extern public static function bgfx_encoder_set_transient_vertex_buffer(self: cpp.Star<Native_Encoder>, _stream: cpp.UInt8, _tvb: cpp.ConstStar<Native_TransientVertexBuffer>, _startVertex: cpp.UInt32, _numVertices: cpp.UInt32):cpp.Void;


    @:nocompletion
    @:native("bgfx_encoder_set_transient_vertex_buffer_with_layout")
    extern public static function bgfx_encoder_set_transient_vertex_buffer_with_layout(self: cpp.Star<Native_Encoder>, _stream: cpp.UInt8, _tvb: cpp.ConstStar<Native_TransientVertexBuffer>, _startVertex: cpp.UInt32, _numVertices: cpp.UInt32, _layoutHandle: Native_VertexLayoutHandle):cpp.Void;


    @:nocompletion
    @:native("bgfx_encoder_set_vertex_count")
    extern public static function bgfx_encoder_set_vertex_count(self: cpp.Star<Native_Encoder>, _numVertices: cpp.UInt32):cpp.Void;


    @:nocompletion
    @:native("bgfx_encoder_set_instance_data_buffer")
    extern public static function bgfx_encoder_set_instance_data_buffer(self: cpp.Star<Native_Encoder>, _idb: cpp.ConstStar<Native_InstanceDataBuffer>, _start: cpp.UInt32, _num: cpp.UInt32):cpp.Void;


    @:nocompletion
    @:native("bgfx_encoder_set_instance_data_from_vertex_buffer")
    extern public static function bgfx_encoder_set_instance_data_from_vertex_buffer(self: cpp.Star<Native_Encoder>, _handle: Native_VertexBufferHandle, _startVertex: cpp.UInt32, _num: cpp.UInt32):cpp.Void;


    @:nocompletion
    @:native("bgfx_encoder_set_instance_data_from_dynamic_vertex_buffer")
    extern public static function bgfx_encoder_set_instance_data_from_dynamic_vertex_buffer(self: cpp.Star<Native_Encoder>, _handle: Native_DynamicVertexBufferHandle, _startVertex: cpp.UInt32, _num: cpp.UInt32):cpp.Void;


    @:nocompletion
    @:native("bgfx_encoder_set_instance_count")
    extern public static function bgfx_encoder_set_instance_count(self: cpp.Star<Native_Encoder>, _numInstances: cpp.UInt32):cpp.Void;


    @:nocompletion
    @:native("bgfx_encoder_set_texture")
    extern public static function bgfx_encoder_set_texture(self: cpp.Star<Native_Encoder>, _stage: cpp.UInt8, _sampler: Native_UniformHandle, _handle: Native_TextureHandle, _flags: cpp.UInt32):cpp.Void;


    @:nocompletion
    @:native("bgfx_encoder_touch")
    extern public static function bgfx_encoder_touch(self: cpp.Star<Native_Encoder>, _id: ViewId):cpp.Void;


    @:nocompletion
    @:native("bgfx_encoder_submit")
    extern public static function bgfx_encoder_submit(self: cpp.Star<Native_Encoder>, _id: ViewId, _program: Native_ProgramHandle, _depth: cpp.UInt32, _flags: cpp.UInt8):cpp.Void;


    @:nocompletion
    @:native("bgfx_encoder_submit_occlusion_query")
    extern public static function bgfx_encoder_submit_occlusion_query(self: cpp.Star<Native_Encoder>, _id: ViewId, _program: Native_ProgramHandle, _occlusionQuery: Native_OcclusionQueryHandle, _depth: cpp.UInt32, _flags: cpp.UInt8):cpp.Void;


    @:nocompletion
    @:native("bgfx_encoder_submit_indirect")
    extern public static function bgfx_encoder_submit_indirect(self: cpp.Star<Native_Encoder>, _id: ViewId, _program: Native_ProgramHandle, _indirectHandle: Native_IndirectBufferHandle, _start: cpp.UInt32, _num: cpp.UInt32, _depth: cpp.UInt32, _flags: cpp.UInt8):cpp.Void;


    @:nocompletion
    @:native("bgfx_encoder_submit_indirect_count")
    extern public static function bgfx_encoder_submit_indirect_count(self: cpp.Star<Native_Encoder>, _id: ViewId, _program: Native_ProgramHandle, _indirectHandle: Native_IndirectBufferHandle, _start: cpp.UInt32, _numHandle: Native_IndexBufferHandle, _numIndex: cpp.UInt32, _numMax: cpp.UInt32, _depth: cpp.UInt32, _flags: cpp.UInt8):cpp.Void;


    @:nocompletion
    @:native("bgfx_encoder_set_compute_index_buffer")
    extern public static function bgfx_encoder_set_compute_index_buffer(self: cpp.Star<Native_Encoder>, _stage: cpp.UInt8, _handle: Native_IndexBufferHandle, _access: Access):cpp.Void;


    @:nocompletion
    @:native("bgfx_encoder_set_compute_vertex_buffer")
    extern public static function bgfx_encoder_set_compute_vertex_buffer(self: cpp.Star<Native_Encoder>, _stage: cpp.UInt8, _handle: Native_VertexBufferHandle, _access: Access):cpp.Void;


    @:nocompletion
    @:native("bgfx_encoder_set_compute_dynamic_index_buffer")
    extern public static function bgfx_encoder_set_compute_dynamic_index_buffer(self: cpp.Star<Native_Encoder>, _stage: cpp.UInt8, _handle: Native_DynamicIndexBufferHandle, _access: Access):cpp.Void;


    @:nocompletion
    @:native("bgfx_encoder_set_compute_dynamic_vertex_buffer")
    extern public static function bgfx_encoder_set_compute_dynamic_vertex_buffer(self: cpp.Star<Native_Encoder>, _stage: cpp.UInt8, _handle: Native_DynamicVertexBufferHandle, _access: Access):cpp.Void;


    @:nocompletion
    @:native("bgfx_encoder_set_compute_indirect_buffer")
    extern public static function bgfx_encoder_set_compute_indirect_buffer(self: cpp.Star<Native_Encoder>, _stage: cpp.UInt8, _handle: Native_IndirectBufferHandle, _access: Access):cpp.Void;


    @:nocompletion
    @:native("bgfx_encoder_set_image")
    extern public static function bgfx_encoder_set_image(self: cpp.Star<Native_Encoder>, _stage: cpp.UInt8, _handle: Native_TextureHandle, _mip: cpp.UInt8, _access: Access, _format: TextureFormat):cpp.Void;


    @:nocompletion
    @:native("bgfx_encoder_dispatch")
    extern public static function bgfx_encoder_dispatch(self: cpp.Star<Native_Encoder>, _id: ViewId, _program: Native_ProgramHandle, _numX: cpp.UInt32, _numY: cpp.UInt32, _numZ: cpp.UInt32, _flags: cpp.UInt8):cpp.Void;


    @:nocompletion
    @:native("bgfx_encoder_dispatch_indirect")
    extern public static function bgfx_encoder_dispatch_indirect(self: cpp.Star<Native_Encoder>, _id: ViewId, _program: Native_ProgramHandle, _indirectHandle: Native_IndirectBufferHandle, _start: cpp.UInt32, _num: cpp.UInt32, _flags: cpp.UInt8):cpp.Void;


    @:nocompletion
    @:native("bgfx_encoder_discard")
    extern public static function bgfx_encoder_discard(self: cpp.Star<Native_Encoder>, _flags: cpp.UInt8):cpp.Void;


    @:nocompletion
    @:native("bgfx_encoder_blit")
    extern public static function bgfx_encoder_blit(self: cpp.Star<Native_Encoder>, _id: ViewId, _dst: Native_TextureHandle, _dstMip: cpp.UInt8, _dstX: cpp.UInt16, _dstY: cpp.UInt16, _dstZ: cpp.UInt16, _src: Native_TextureHandle, _srcMip: cpp.UInt8, _srcX: cpp.UInt16, _srcY: cpp.UInt16, _srcZ: cpp.UInt16, _width: cpp.UInt16, _height: cpp.UInt16, _depth: cpp.UInt16):cpp.Void;


    @:native("bgfx_request_screen_shot") extern public static function requestScreenShot(_handle: Native_FrameBufferHandle, _filePath: cpp.ConstCharStar):cpp.Void;
    @:nocompletion
    @:native("bgfx_request_screen_shot")
    extern public static function bgfx_request_screen_shot(_handle: Native_FrameBufferHandle, _filePath: cpp.ConstCharStar):cpp.Void;


    @:native("bgfx_render_frame") extern public static function renderFrame(_msecs: cpp.Int32):RenderFrame;
    @:nocompletion
    @:native("bgfx_render_frame")
    extern public static function bgfx_render_frame(_msecs: cpp.Int32):RenderFrame;


    @:native("bgfx_set_platform_data") extern public static function setPlatformData(_data: cpp.ConstStar<Native_PlatformData>):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_platform_data")
    extern public static function bgfx_set_platform_data(_data: cpp.ConstStar<Native_PlatformData>):cpp.Void;


    @:native("bgfx_get_internal_data") extern public static function getInternalData():cpp.ConstStar<Native_InternalData>;
    @:nocompletion
    @:native("bgfx_get_internal_data")
    extern public static function bgfx_get_internal_data():cpp.ConstStar<Native_InternalData>;


    @:native("bgfx_override_internal_texture_ptr") extern public static function overrideInternalTexturePtr(_handle: Native_TextureHandle, _ptr: cpp.Star<cpp.Void>):cpp.Star<cpp.Void>;
    @:nocompletion
    @:native("bgfx_override_internal_texture_ptr")
    extern public static function bgfx_override_internal_texture_ptr(_handle: Native_TextureHandle, _ptr: cpp.Star<cpp.Void>):cpp.Star<cpp.Void>;


    @:native("bgfx_override_internal_texture") extern public static function overrideInternalTexture(_handle: Native_TextureHandle, _width: cpp.UInt16, _height: cpp.UInt16, _numMips: cpp.UInt8, _format: TextureFormat, _flags: cpp.UInt64):cpp.Star<cpp.Void>;
    @:nocompletion
    @:native("bgfx_override_internal_texture")
    extern public static function bgfx_override_internal_texture(_handle: Native_TextureHandle, _width: cpp.UInt16, _height: cpp.UInt16, _numMips: cpp.UInt8, _format: TextureFormat, _flags: cpp.UInt64):cpp.Star<cpp.Void>;


    @:native("bgfx_set_marker") extern public static function setMarker(_name: cpp.ConstCharStar, _len: cpp.Int32):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_marker")
    extern public static function bgfx_set_marker(_name: cpp.ConstCharStar, _len: cpp.Int32):cpp.Void;


    @:native("bgfx_set_state") extern public static function setState(_state: cpp.UInt64, _rgba: cpp.UInt32):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_state")
    extern public static function bgfx_set_state(_state: cpp.UInt64, _rgba: cpp.UInt32):cpp.Void;


    @:native("bgfx_set_condition") extern public static function setCondition(_handle: Native_OcclusionQueryHandle, _visible: Bool):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_condition")
    extern public static function bgfx_set_condition(_handle: Native_OcclusionQueryHandle, _visible: Bool):cpp.Void;


    @:native("bgfx_set_stencil") extern public static function setStencil(_fstencil: cpp.UInt32, _bstencil: cpp.UInt32):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_stencil")
    extern public static function bgfx_set_stencil(_fstencil: cpp.UInt32, _bstencil: cpp.UInt32):cpp.Void;


    @:native("bgfx_set_scissor") extern public static function setScissor(_x: cpp.UInt16, _y: cpp.UInt16, _width: cpp.UInt16, _height: cpp.UInt16):cpp.UInt16;
    @:nocompletion
    @:native("bgfx_set_scissor")
    extern public static function bgfx_set_scissor(_x: cpp.UInt16, _y: cpp.UInt16, _width: cpp.UInt16, _height: cpp.UInt16):cpp.UInt16;


    @:native("bgfx_set_scissor_cached") extern public static function setScissorCached(_cache: cpp.UInt16):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_scissor_cached")
    extern public static function bgfx_set_scissor_cached(_cache: cpp.UInt16):cpp.Void;


    @:native("bgfx_set_transform") extern public static function setTransform(_mtx: cpp.Star<cpp.Void>, _num: cpp.UInt16):cpp.UInt32;
    @:nocompletion
    @:native("bgfx_set_transform")
    extern public static function bgfx_set_transform(_mtx: cpp.Star<cpp.Void>, _num: cpp.UInt16):cpp.UInt32;


    @:native("bgfx_set_transform_cached") extern public static function setTransformCached(_cache: cpp.UInt32, _num: cpp.UInt16):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_transform_cached")
    extern public static function bgfx_set_transform_cached(_cache: cpp.UInt32, _num: cpp.UInt16):cpp.Void;


    @:native("bgfx_alloc_transform") extern public static function allocTransform(_transform: cpp.Star<Native_Transform>, _num: cpp.UInt16):cpp.UInt32;
    @:nocompletion
    @:native("bgfx_alloc_transform")
    extern public static function bgfx_alloc_transform(_transform: cpp.Star<Native_Transform>, _num: cpp.UInt16):cpp.UInt32;


    @:native("bgfx_set_uniform") extern public static function setUniform(_handle: Native_UniformHandle, _value: cpp.Star<cpp.Void>, _num: cpp.UInt16):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_uniform")
    extern public static function bgfx_set_uniform(_handle: Native_UniformHandle, _value: cpp.Star<cpp.Void>, _num: cpp.UInt16):cpp.Void;


    @:native("bgfx_set_index_buffer") extern public static function setIndexBuffer(_handle: Native_IndexBufferHandle, _firstIndex: cpp.UInt32, _numIndices: cpp.UInt32):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_index_buffer")
    extern public static function bgfx_set_index_buffer(_handle: Native_IndexBufferHandle, _firstIndex: cpp.UInt32, _numIndices: cpp.UInt32):cpp.Void;


    @:native("bgfx_set_dynamic_index_buffer") extern public static function setDynamicIndexBuffer(_handle: Native_DynamicIndexBufferHandle, _firstIndex: cpp.UInt32, _numIndices: cpp.UInt32):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_dynamic_index_buffer")
    extern public static function bgfx_set_dynamic_index_buffer(_handle: Native_DynamicIndexBufferHandle, _firstIndex: cpp.UInt32, _numIndices: cpp.UInt32):cpp.Void;


    @:native("bgfx_set_transient_index_buffer") extern public static function setTransientIndexBuffer(_tib: cpp.ConstStar<Native_TransientIndexBuffer>, _firstIndex: cpp.UInt32, _numIndices: cpp.UInt32):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_transient_index_buffer")
    extern public static function bgfx_set_transient_index_buffer(_tib: cpp.ConstStar<Native_TransientIndexBuffer>, _firstIndex: cpp.UInt32, _numIndices: cpp.UInt32):cpp.Void;


    @:native("bgfx_set_vertex_buffer") extern public static function setVertexBuffer(_stream: cpp.UInt8, _handle: Native_VertexBufferHandle, _startVertex: cpp.UInt32, _numVertices: cpp.UInt32):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_vertex_buffer")
    extern public static function bgfx_set_vertex_buffer(_stream: cpp.UInt8, _handle: Native_VertexBufferHandle, _startVertex: cpp.UInt32, _numVertices: cpp.UInt32):cpp.Void;


    @:native("bgfx_set_vertex_buffer_with_layout") extern public static function setVertexBufferWithLayout(_stream: cpp.UInt8, _handle: Native_VertexBufferHandle, _startVertex: cpp.UInt32, _numVertices: cpp.UInt32, _layoutHandle: Native_VertexLayoutHandle):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_vertex_buffer_with_layout")
    extern public static function bgfx_set_vertex_buffer_with_layout(_stream: cpp.UInt8, _handle: Native_VertexBufferHandle, _startVertex: cpp.UInt32, _numVertices: cpp.UInt32, _layoutHandle: Native_VertexLayoutHandle):cpp.Void;


    @:native("bgfx_set_dynamic_vertex_buffer") extern public static function setDynamicVertexBuffer(_stream: cpp.UInt8, _handle: Native_DynamicVertexBufferHandle, _startVertex: cpp.UInt32, _numVertices: cpp.UInt32):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_dynamic_vertex_buffer")
    extern public static function bgfx_set_dynamic_vertex_buffer(_stream: cpp.UInt8, _handle: Native_DynamicVertexBufferHandle, _startVertex: cpp.UInt32, _numVertices: cpp.UInt32):cpp.Void;


    @:native("bgfx_set_dynamic_vertex_buffer_with_layout") extern public static function setDynamicVertexBufferWithLayout(_stream: cpp.UInt8, _handle: Native_DynamicVertexBufferHandle, _startVertex: cpp.UInt32, _numVertices: cpp.UInt32, _layoutHandle: Native_VertexLayoutHandle):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_dynamic_vertex_buffer_with_layout")
    extern public static function bgfx_set_dynamic_vertex_buffer_with_layout(_stream: cpp.UInt8, _handle: Native_DynamicVertexBufferHandle, _startVertex: cpp.UInt32, _numVertices: cpp.UInt32, _layoutHandle: Native_VertexLayoutHandle):cpp.Void;


    @:native("bgfx_set_transient_vertex_buffer") extern public static function setTransientVertexBuffer(_stream: cpp.UInt8, _tvb: cpp.ConstStar<Native_TransientVertexBuffer>, _startVertex: cpp.UInt32, _numVertices: cpp.UInt32):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_transient_vertex_buffer")
    extern public static function bgfx_set_transient_vertex_buffer(_stream: cpp.UInt8, _tvb: cpp.ConstStar<Native_TransientVertexBuffer>, _startVertex: cpp.UInt32, _numVertices: cpp.UInt32):cpp.Void;


    @:native("bgfx_set_transient_vertex_buffer_with_layout") extern public static function setTransientVertexBufferWithLayout(_stream: cpp.UInt8, _tvb: cpp.ConstStar<Native_TransientVertexBuffer>, _startVertex: cpp.UInt32, _numVertices: cpp.UInt32, _layoutHandle: Native_VertexLayoutHandle):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_transient_vertex_buffer_with_layout")
    extern public static function bgfx_set_transient_vertex_buffer_with_layout(_stream: cpp.UInt8, _tvb: cpp.ConstStar<Native_TransientVertexBuffer>, _startVertex: cpp.UInt32, _numVertices: cpp.UInt32, _layoutHandle: Native_VertexLayoutHandle):cpp.Void;


    @:native("bgfx_set_vertex_count") extern public static function setVertexCount(_numVertices: cpp.UInt32):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_vertex_count")
    extern public static function bgfx_set_vertex_count(_numVertices: cpp.UInt32):cpp.Void;


    @:native("bgfx_set_instance_data_buffer") extern public static function setInstanceDataBuffer(_idb: cpp.ConstStar<Native_InstanceDataBuffer>, _start: cpp.UInt32, _num: cpp.UInt32):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_instance_data_buffer")
    extern public static function bgfx_set_instance_data_buffer(_idb: cpp.ConstStar<Native_InstanceDataBuffer>, _start: cpp.UInt32, _num: cpp.UInt32):cpp.Void;


    @:native("bgfx_set_instance_data_from_vertex_buffer") extern public static function setInstanceDataFromVertexBuffer(_handle: Native_VertexBufferHandle, _startVertex: cpp.UInt32, _num: cpp.UInt32):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_instance_data_from_vertex_buffer")
    extern public static function bgfx_set_instance_data_from_vertex_buffer(_handle: Native_VertexBufferHandle, _startVertex: cpp.UInt32, _num: cpp.UInt32):cpp.Void;


    @:native("bgfx_set_instance_data_from_dynamic_vertex_buffer") extern public static function setInstanceDataFromDynamicVertexBuffer(_handle: Native_DynamicVertexBufferHandle, _startVertex: cpp.UInt32, _num: cpp.UInt32):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_instance_data_from_dynamic_vertex_buffer")
    extern public static function bgfx_set_instance_data_from_dynamic_vertex_buffer(_handle: Native_DynamicVertexBufferHandle, _startVertex: cpp.UInt32, _num: cpp.UInt32):cpp.Void;


    @:native("bgfx_set_instance_count") extern public static function setInstanceCount(_numInstances: cpp.UInt32):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_instance_count")
    extern public static function bgfx_set_instance_count(_numInstances: cpp.UInt32):cpp.Void;


    @:native("bgfx_set_texture") extern public static function setTexture(_stage: cpp.UInt8, _sampler: Native_UniformHandle, _handle: Native_TextureHandle, _flags: cpp.UInt32):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_texture")
    extern public static function bgfx_set_texture(_stage: cpp.UInt8, _sampler: Native_UniformHandle, _handle: Native_TextureHandle, _flags: cpp.UInt32):cpp.Void;


    @:native("bgfx_touch") extern public static function touch(_id: ViewId):cpp.Void;
    @:nocompletion
    @:native("bgfx_touch")
    extern public static function bgfx_touch(_id: ViewId):cpp.Void;


    @:native("bgfx_submit") extern public static function submit(_id: ViewId, _program: Native_ProgramHandle, _depth: cpp.UInt32, _flags: cpp.UInt8):cpp.Void;
    @:nocompletion
    @:native("bgfx_submit")
    extern public static function bgfx_submit(_id: ViewId, _program: Native_ProgramHandle, _depth: cpp.UInt32, _flags: cpp.UInt8):cpp.Void;


    @:native("bgfx_submit_occlusion_query") extern public static function submitOcclusionQuery(_id: ViewId, _program: Native_ProgramHandle, _occlusionQuery: Native_OcclusionQueryHandle, _depth: cpp.UInt32, _flags: cpp.UInt8):cpp.Void;
    @:nocompletion
    @:native("bgfx_submit_occlusion_query")
    extern public static function bgfx_submit_occlusion_query(_id: ViewId, _program: Native_ProgramHandle, _occlusionQuery: Native_OcclusionQueryHandle, _depth: cpp.UInt32, _flags: cpp.UInt8):cpp.Void;


    @:native("bgfx_submit_indirect") extern public static function submitIndirect(_id: ViewId, _program: Native_ProgramHandle, _indirectHandle: Native_IndirectBufferHandle, _start: cpp.UInt32, _num: cpp.UInt32, _depth: cpp.UInt32, _flags: cpp.UInt8):cpp.Void;
    @:nocompletion
    @:native("bgfx_submit_indirect")
    extern public static function bgfx_submit_indirect(_id: ViewId, _program: Native_ProgramHandle, _indirectHandle: Native_IndirectBufferHandle, _start: cpp.UInt32, _num: cpp.UInt32, _depth: cpp.UInt32, _flags: cpp.UInt8):cpp.Void;


    @:native("bgfx_submit_indirect_count") extern public static function submitIndirectCount(_id: ViewId, _program: Native_ProgramHandle, _indirectHandle: Native_IndirectBufferHandle, _start: cpp.UInt32, _numHandle: Native_IndexBufferHandle, _numIndex: cpp.UInt32, _numMax: cpp.UInt32, _depth: cpp.UInt32, _flags: cpp.UInt8):cpp.Void;
    @:nocompletion
    @:native("bgfx_submit_indirect_count")
    extern public static function bgfx_submit_indirect_count(_id: ViewId, _program: Native_ProgramHandle, _indirectHandle: Native_IndirectBufferHandle, _start: cpp.UInt32, _numHandle: Native_IndexBufferHandle, _numIndex: cpp.UInt32, _numMax: cpp.UInt32, _depth: cpp.UInt32, _flags: cpp.UInt8):cpp.Void;


    @:native("bgfx_set_compute_index_buffer") extern public static function setComputeIndexBuffer(_stage: cpp.UInt8, _handle: Native_IndexBufferHandle, _access: Access):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_compute_index_buffer")
    extern public static function bgfx_set_compute_index_buffer(_stage: cpp.UInt8, _handle: Native_IndexBufferHandle, _access: Access):cpp.Void;


    @:native("bgfx_set_compute_vertex_buffer") extern public static function setComputeVertexBuffer(_stage: cpp.UInt8, _handle: Native_VertexBufferHandle, _access: Access):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_compute_vertex_buffer")
    extern public static function bgfx_set_compute_vertex_buffer(_stage: cpp.UInt8, _handle: Native_VertexBufferHandle, _access: Access):cpp.Void;


    @:native("bgfx_set_compute_dynamic_index_buffer") extern public static function setComputeDynamicIndexBuffer(_stage: cpp.UInt8, _handle: Native_DynamicIndexBufferHandle, _access: Access):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_compute_dynamic_index_buffer")
    extern public static function bgfx_set_compute_dynamic_index_buffer(_stage: cpp.UInt8, _handle: Native_DynamicIndexBufferHandle, _access: Access):cpp.Void;


    @:native("bgfx_set_compute_dynamic_vertex_buffer") extern public static function setComputeDynamicVertexBuffer(_stage: cpp.UInt8, _handle: Native_DynamicVertexBufferHandle, _access: Access):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_compute_dynamic_vertex_buffer")
    extern public static function bgfx_set_compute_dynamic_vertex_buffer(_stage: cpp.UInt8, _handle: Native_DynamicVertexBufferHandle, _access: Access):cpp.Void;


    @:native("bgfx_set_compute_indirect_buffer") extern public static function setComputeIndirectBuffer(_stage: cpp.UInt8, _handle: Native_IndirectBufferHandle, _access: Access):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_compute_indirect_buffer")
    extern public static function bgfx_set_compute_indirect_buffer(_stage: cpp.UInt8, _handle: Native_IndirectBufferHandle, _access: Access):cpp.Void;


    @:native("bgfx_set_image") extern public static function setImage(_stage: cpp.UInt8, _handle: Native_TextureHandle, _mip: cpp.UInt8, _access: Access, _format: TextureFormat):cpp.Void;
    @:nocompletion
    @:native("bgfx_set_image")
    extern public static function bgfx_set_image(_stage: cpp.UInt8, _handle: Native_TextureHandle, _mip: cpp.UInt8, _access: Access, _format: TextureFormat):cpp.Void;


    @:native("bgfx_dispatch") extern public static function dispatch(_id: ViewId, _program: Native_ProgramHandle, _numX: cpp.UInt32, _numY: cpp.UInt32, _numZ: cpp.UInt32, _flags: cpp.UInt8):cpp.Void;
    @:nocompletion
    @:native("bgfx_dispatch")
    extern public static function bgfx_dispatch(_id: ViewId, _program: Native_ProgramHandle, _numX: cpp.UInt32, _numY: cpp.UInt32, _numZ: cpp.UInt32, _flags: cpp.UInt8):cpp.Void;


    @:native("bgfx_dispatch_indirect") extern public static function dispatchIndirect(_id: ViewId, _program: Native_ProgramHandle, _indirectHandle: Native_IndirectBufferHandle, _start: cpp.UInt32, _num: cpp.UInt32, _flags: cpp.UInt8):cpp.Void;
    @:nocompletion
    @:native("bgfx_dispatch_indirect")
    extern public static function bgfx_dispatch_indirect(_id: ViewId, _program: Native_ProgramHandle, _indirectHandle: Native_IndirectBufferHandle, _start: cpp.UInt32, _num: cpp.UInt32, _flags: cpp.UInt8):cpp.Void;


    @:native("bgfx_discard") extern public static function discard(_flags: cpp.UInt8):cpp.Void;
    @:nocompletion
    @:native("bgfx_discard")
    extern public static function bgfx_discard(_flags: cpp.UInt8):cpp.Void;


    @:native("bgfx_blit") extern public static function blit(_id: ViewId, _dst: Native_TextureHandle, _dstMip: cpp.UInt8, _dstX: cpp.UInt16, _dstY: cpp.UInt16, _dstZ: cpp.UInt16, _src: Native_TextureHandle, _srcMip: cpp.UInt8, _srcX: cpp.UInt16, _srcY: cpp.UInt16, _srcZ: cpp.UInt16, _width: cpp.UInt16, _height: cpp.UInt16, _depth: cpp.UInt16):cpp.Void;
    @:nocompletion
    @:native("bgfx_blit")
    extern public static function bgfx_blit(_id: ViewId, _dst: Native_TextureHandle, _dstMip: cpp.UInt8, _dstX: cpp.UInt16, _dstY: cpp.UInt16, _dstZ: cpp.UInt16, _src: Native_TextureHandle, _srcMip: cpp.UInt8, _srcX: cpp.UInt16, _srcY: cpp.UInt16, _srcZ: cpp.UInt16, _width: cpp.UInt16, _height: cpp.UInt16, _depth: cpp.UInt16):cpp.Void;

}

// #if (scriptable || cppia)
//    @:build(linc.LincCppia.wrapMainExtern('Native_Bgfx'))
//    class Bgfx {} 
//    typedef BgfxCpp = Native_Bgfx; // allow explicit cpp use in scriptable host
// #else
    typedef Bgfx = Native_Bgfx;
    typedef BgfxCpp = Native_Bgfx;
// #end


