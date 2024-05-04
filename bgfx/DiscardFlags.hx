package bgfx;
class DiscardFlags {
	/**
		Preserve everything.
	**/
	public static var None : cpp.UInt32 = 0x00000000;
	/**
		Discard texture sampler and buffer bindings.
	**/
	public static var Bindings : cpp.UInt32 = 0x00000001;
	/**
		Discard index buffer.
	**/
	public static var IndexBuffer : cpp.UInt32 = 0x00000002;
	/**
		Discard instance data.
	**/
	public static var InstanceData : cpp.UInt32 = 0x00000004;
	/**
		Discard state and uniform bindings.
	**/
	public static var State : cpp.UInt32 = 0x00000008;
	/**
		Discard transform.
	**/
	public static var Transform : cpp.UInt32 = 0x00000010;
	/**
		Discard vertex streams.
	**/
	public static var VertexStreams : cpp.UInt32 = 0x00000020;
	/**
		Discard all states.
	**/
	public static var All : cpp.UInt32 = 0x000000ff;
}