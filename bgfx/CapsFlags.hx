package bgfx;
class CapsFlags {
	/**
		Alpha to coverage is supported.
	**/
	public static var AlphaToCoverage : cpp.Int64 = cast 0x0000000000000001i64;
	/**
		Blend independent is supported.
	**/
	public static var BlendIndependent : cpp.Int64 = cast 0x0000000000000002i64;
	/**
		Compute shaders are supported.
	**/
	public static var Compute : cpp.Int64 = cast 0x0000000000000004i64;
	/**
		Conservative rasterization is supported.
	**/
	public static var ConservativeRaster : cpp.Int64 = cast 0x0000000000000008i64;
	/**
		Draw indirect is supported.
	**/
	public static var DrawIndirect : cpp.Int64 = cast 0x0000000000000010i64;
	/**
		Fragment depth is available in fragment shader.
	**/
	public static var FragmentDepth : cpp.Int64 = cast 0x0000000000000020i64;
	/**
		Fragment ordering is available in fragment shader.
	**/
	public static var FragmentOrdering : cpp.Int64 = cast 0x0000000000000040i64;
	/**
		Graphics debugger is present.
	**/
	public static var GraphicsDebugger : cpp.Int64 = cast 0x0000000000000080i64;
	/**
		HDR10 rendering is supported.
	**/
	public static var Hdr10 : cpp.Int64 = cast 0x0000000000000100i64;
	/**
		HiDPI rendering is supported.
	**/
	public static var Hidpi : cpp.Int64 = cast 0x0000000000000200i64;
	/**
		Image Read/Write is supported.
	**/
	public static var ImageRw : cpp.Int64 = cast 0x0000000000000400i64;
	/**
		32-bit indices are supported.
	**/
	public static var Index32 : cpp.Int64 = cast 0x0000000000000800i64;
	/**
		Instancing is supported.
	**/
	public static var Instancing : cpp.Int64 = cast 0x0000000000001000i64;
	/**
		Occlusion query is supported.
	**/
	public static var OcclusionQuery : cpp.Int64 = cast 0x0000000000002000i64;
	/**
		Renderer is on separate thread.
	**/
	public static var RendererMultithreaded : cpp.Int64 = cast 0x0000000000004000i64;
	/**
		Multiple windows are supported.
	**/
	public static var SwapChain : cpp.Int64 = cast 0x0000000000008000i64;
	/**
		2D texture array is supported.
	**/
	public static var Texture2dArray : cpp.Int64 = cast 0x0000000000010000i64;
	/**
		3D textures are supported.
	**/
	public static var Texture3d : cpp.Int64 = cast 0x0000000000020000i64;
	/**
		Texture blit is supported.
	**/
	public static var TextureBlit : cpp.Int64 = cast 0x0000000000040000i64;
	/**
		Transparent back buffer supported.
	**/
	public static var TransparentBackbuffer : cpp.Int64 = cast 0x0000000000080000i64;
	public static var TextureCompareReserved : cpp.Int64 = cast 0x0000000000100000i64;
	/**
		Texture compare less equal mode is supported.
	**/
	public static var TextureCompareLequal : cpp.Int64 = cast 0x0000000000200000i64;
	/**
		Cubemap texture array is supported.
	**/
	public static var TextureCubeArray : cpp.Int64 = cast 0x0000000000400000i64;
	/**
		CPU direct access to GPU texture memory.
	**/
	public static var TextureDirectAccess : cpp.Int64 = cast 0x0000000000800000i64;
	/**
		Read-back texture is supported.
	**/
	public static var TextureReadBack : cpp.Int64 = cast 0x0000000001000000i64;
	/**
		Vertex attribute half-float is supported.
	**/
	public static var VertexAttribHalf : cpp.Int64 = cast 0x0000000002000000i64;
	/**
		Vertex attribute 10_10_10_2 is supported.
	**/
	public static var VertexAttribUint10 : cpp.Int64 = cast 0x0000000004000000i64;
	/**
		Rendering with VertexID only is supported.
	**/
	public static var VertexId : cpp.Int64 = cast 0x0000000008000000i64;
	/**
		PrimitiveID is available in fragment shader.
	**/
	public static var PrimitiveId : cpp.Int64 = cast 0x0000000010000000i64;
	/**
		Viewport layer is available in vertex shader.
	**/
	public static var ViewportLayerArray : cpp.Int64 = cast 0x0000000020000000i64;
	/**
		Draw indirect with indirect count is supported.
	**/
	public static var DrawIndirectCount : cpp.Int64 = cast 0x0000000040000000i64;
	/**
		All texture compare modes are supported.
	**/
	public static var TextureCompareAll : cpp.Int64 = cast 0x0000000000300000i64;
}