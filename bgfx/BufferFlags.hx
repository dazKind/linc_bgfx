package bgfx;
class BufferFlags {
	/**
		1 8-bit value
	**/
	public static var ComputeFormat8x1 : cpp.UInt16 = 0x0001;
	/**
		2 8-bit values
	**/
	public static var ComputeFormat8x2 : cpp.UInt16 = 0x0002;
	/**
		4 8-bit values
	**/
	public static var ComputeFormat8x4 : cpp.UInt16 = 0x0003;
	/**
		1 16-bit value
	**/
	public static var ComputeFormat16x1 : cpp.UInt16 = 0x0004;
	/**
		2 16-bit values
	**/
	public static var ComputeFormat16x2 : cpp.UInt16 = 0x0005;
	/**
		4 16-bit values
	**/
	public static var ComputeFormat16x4 : cpp.UInt16 = 0x0006;
	/**
		1 32-bit value
	**/
	public static var ComputeFormat32x1 : cpp.UInt16 = 0x0007;
	/**
		2 32-bit values
	**/
	public static var ComputeFormat32x2 : cpp.UInt16 = 0x0008;
	/**
		4 32-bit values
	**/
	public static var ComputeFormat32x4 : cpp.UInt16 = 0x0009;
	public static var ComputeFormatShift : cpp.UInt16 = 0;
	public static var ComputeFormatMask : cpp.UInt16 = 0x000f;
	/**
		Type `int`.
	**/
	public static var ComputeTypeInt : cpp.UInt16 = 0x0010;
	/**
		Type `uint`.
	**/
	public static var ComputeTypeUint : cpp.UInt16 = 0x0020;
	/**
		Type `float`.
	**/
	public static var ComputeTypeFloat : cpp.UInt16 = 0x0030;
	public static var ComputeTypeShift : cpp.UInt16 = 4;
	public static var ComputeTypeMask : cpp.UInt16 = 0x0030;
	public static var None : cpp.UInt16 = 0x0000;
	/**
		Buffer will be read by shader.
	**/
	public static var ComputeRead : cpp.UInt16 = 0x0100;
	/**
		Buffer will be used for writing.
	**/
	public static var ComputeWrite : cpp.UInt16 = 0x0200;
	/**
		Buffer will be used for storing draw indirect commands.
	**/
	public static var DrawIndirect : cpp.UInt16 = 0x0400;
	/**
		Allow dynamic index/vertex buffer resize during update.
	**/
	public static var AllowResize : cpp.UInt16 = 0x0800;
	/**
		Index buffer contains 32-bit indices.
	**/
	public static var Index32 : cpp.UInt16 = 0x1000;
	public static var ComputeReadWrite : cpp.UInt16 = 0x0300;
}