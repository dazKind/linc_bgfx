package bgfx;

import bgfx.ViewId;
import bgfx.StateFlags;
import bgfx.StencilFlags;
import bgfx.ClearFlags;
import bgfx.DiscardFlags;
import bgfx.DebugFlags;
import bgfx.BufferFlags;
import bgfx.TextureFlags;
import bgfx.SamplerFlags;
import bgfx.ResetFlags;
import bgfx.CapsFlags;
import bgfx.CapsFormatFlags;
import bgfx.ResolveFlags;
import bgfx.PciIdFlags;
import bgfx.CubeMapFlags;
import bgfx.Fatal;
import bgfx.RendererType;
import bgfx.Access;
import bgfx.Attrib;
import bgfx.AttribType;
import bgfx.TextureFormat;
import bgfx.UniformType;
import bgfx.BackbufferRatio;
import bgfx.OcclusionQueryResult;
import bgfx.Topology;
import bgfx.TopologyConvert;
import bgfx.TopologySort;
import bgfx.ViewMode;
import bgfx.NativeWindowHandleType;
import bgfx.RenderFrame;
import bgfx.CapsGPU;
import bgfx.CapsLimits;
import bgfx.Caps;
import bgfx.InternalData;
import bgfx.PlatformData;
import bgfx.Resolution;
import bgfx.InitLimits;
import bgfx.Init;
import bgfx.Memory;
import bgfx.TransientIndexBuffer;
import bgfx.TransientVertexBuffer;
import bgfx.InstanceDataBuffer;
import bgfx.TextureInfo;
import bgfx.UniformInfo;
import bgfx.Attachment;
import bgfx.Transform;
import bgfx.ViewStats;
import bgfx.EncoderStats;
import bgfx.Stats;
import bgfx.VertexLayout;
import bgfx.Encoder;
import bgfx.DynamicIndexBufferHandle;
import bgfx.DynamicVertexBufferHandle;
import bgfx.FrameBufferHandle;
import bgfx.IndexBufferHandle;
import bgfx.IndirectBufferHandle;
import bgfx.OcclusionQueryHandle;
import bgfx.ProgramHandle;
import bgfx.ShaderHandle;
import bgfx.TextureHandle;
import bgfx.UniformHandle;
import bgfx.VertexBufferHandle;
import bgfx.VertexLayoutHandle;

@:headerCode("#include <Dynamic2.h>")
@:include("linc_bgfx.h")
@:build(linc.Linc.touch())
@:build(linc.Linc.xml("bgfx"))
extern class Native_Bgfx {

    @:include("linc_bgfx.h")
    @:native("linc_bgfx::getBgfxCallback")
    extern public static function getCallback():cpp.Star<cpp.Void>;

    /**
    Init attachment.
    @param: _handle : bgfx.TextureHandle.Native_TextureHandle - Render target texture handle.
    @param: _access : bgfx.Access.Native_Access - Access. See `Access::Enum`.
    @param: _layer : cpp.UInt16 - Cubemap side or depth layer/slice to use.
    @param: _numLayers : cpp.UInt16 - Number of texture layer/slice(s) in array to use.
    @param: _mip : cpp.UInt16 - Mip level.
    @param: _resolve : cpp.UInt8 - Resolve flags. See: `BGFX_RESOLVE_*`
    **/
    @:native("bgfx_attachment_init")
    overload extern public static function attachmentInit(_this:cpp.Star<bgfx.Attachment.Native_Attachment>, _handle:bgfx.TextureHandle.Native_TextureHandle, _access:bgfx.Access.Native_Access, _layer:cpp.UInt16, _numLayers:cpp.UInt16, _mip:cpp.UInt16, _resolve:cpp.UInt8):cpp.Void;

    /**
    Start VertexLayout.
    @param: _rendererType : bgfx.RendererType.Native_RendererType - Renderer backend type. See: `bgfx::RendererType`
    **/
    @:native("bgfx_vertex_layout_begin")
    overload extern public static function vertexLayoutBegin(_this:cpp.Star<bgfx.VertexLayout.Native_VertexLayout>, _rendererType:bgfx.RendererType.Native_RendererType):cpp.Reference<bgfx.VertexLayout.Native_VertexLayout>;

    /**
    Add attribute to VertexLayout.
    @remarks Must be called between begin/end.
    @param: _attrib : bgfx.Attrib.Native_Attrib - Attribute semantics. See: `bgfx::Attrib`
    @param: _num : cpp.UInt8 - Number of elements 1, 2, 3 or 4.
    @param: _type : bgfx.AttribType.Native_AttribType - Element type.
    @param: _normalized : Bool - When using fixed point AttribType (f.e. Uint8)
    @param: value will be normalized for vertex shader usage. When normalized
    @param: is set to true, AttribType::Uint8 value in range 0-255 will be
    @param: in range 0.0-1.0 in vertex shader.
    @param: _asInt : Bool - Packaging rule for vertexPack, vertexUnpack, and
    @param: vertexConvert for AttribType::Uint8 and AttribType::Int16.
    @param: Unpacking code must be implemented inside vertex shader.
    **/
    @:native("bgfx_vertex_layout_add")
    overload extern public static function vertexLayoutAdd(_this:cpp.Star<bgfx.VertexLayout.Native_VertexLayout>, _attrib:bgfx.Attrib.Native_Attrib, _num:cpp.UInt8, _type:bgfx.AttribType.Native_AttribType, _normalized:Bool, _asInt:Bool):cpp.Reference<bgfx.VertexLayout.Native_VertexLayout>;

    /**
    Decode attribute.
    @param: _attrib : bgfx.Attrib.Native_Attrib - Attribute semantics. See: `bgfx::Attrib`
    @param: _num : cpp.UInt8 - Number of elements.
    @param: _type : bgfx.AttribType.Native_AttribType - Element type.
    @param: _normalized : Bool - Attribute is normalized.
    @param: _asInt : Bool - Attribute is packed as int.
    **/
    @:native("bgfx_vertex_layout_decode")
    overload extern public static function vertexLayoutDecode(_this:cpp.Star<bgfx.VertexLayout.Native_VertexLayout>, _attrib:bgfx.Attrib.Native_Attrib, _num:cpp.UInt8, _type:bgfx.AttribType.Native_AttribType, _normalized:Bool, _asInt:Bool):cpp.Void;

    /**
    Returns `true` if VertexLayout contains attribute.
    @param: _attrib : bgfx.Attrib.Native_Attrib - Attribute semantics. See: `bgfx::Attrib`
    **/
    @:native("bgfx_vertex_layout_has")
    overload extern public static function vertexLayoutHas(_this:cpp.Star<bgfx.VertexLayout.Native_VertexLayout>, _attrib:bgfx.Attrib.Native_Attrib):Bool;

    /**
    Skip `_num` bytes in vertex stream.
    @param: _num : cpp.UInt8 - Number of bytes to skip.
    **/
    @:native("bgfx_vertex_layout_skip")
    overload extern public static function vertexLayoutSkip(_this:cpp.Star<bgfx.VertexLayout.Native_VertexLayout>, _num:cpp.UInt8):cpp.Reference<bgfx.VertexLayout.Native_VertexLayout>;

    /**
    End VertexLayout.
    **/
    @:native("bgfx_vertex_layout_end")
    overload extern public static function vertexLayoutEnd(_this:cpp.Star<bgfx.VertexLayout.Native_VertexLayout>):cpp.Void;

    /**
    Returns relative attribute offset from the vertex.
    @param: _attrib : bgfx.Attrib.Native_Attrib - Attribute semantics. See: `bgfx::Attrib`
    **/
    @:native("bgfx_vertex_layout_get_offset")
    overload extern public static function vertexLayoutGetOffset(_this:cpp.Star<bgfx.VertexLayout.Native_VertexLayout>, _attrib:bgfx.Attrib.Native_Attrib):cpp.UInt16;

    /**
    Returns vertex stride.
    **/
    @:native("bgfx_vertex_layout_get_stride")
    overload extern public static function vertexLayoutGetStride(_this:cpp.Star<bgfx.VertexLayout.Native_VertexLayout>):cpp.UInt16;

    /**
    Returns size of vertex buffer for number of vertices.
    @param: _num : cpp.UInt32 - Number of vertices.
    **/
    @:native("bgfx_vertex_layout_get_size")
    overload extern public static function vertexLayoutGetSize(_this:cpp.Star<bgfx.VertexLayout.Native_VertexLayout>, _num:cpp.UInt32):cpp.UInt32;

    /**
    Pack vertex attribute into vertex stream format.
    @param: _input : cpp.Float32 - Value to be packed into vertex stream.
    @param: _inputNormalized : Bool - `true` if input value is already normalized.
    @param: _attr : bgfx.Attrib.Native_Attrib - Attribute to pack.
    @param: _layout : cpp.Reference<bgfx.VertexLayout.Native_VertexLayout> - Vertex stream layout.
    @param: _data : cpp.RawPointer<cpp.Void> - Destination vertex stream where data will be packed.
    @param: _index : cpp.UInt32 - Vertex index that will be modified.
    **/
    @:native("bgfx_vertex_pack")
    overload extern public static function vertexPack(_input:cpp.Float32, _inputNormalized:Bool, _attr:bgfx.Attrib.Native_Attrib, _layout:cpp.Reference<bgfx.VertexLayout.Native_VertexLayout>, _data:cpp.RawPointer<cpp.Void>, _index:cpp.UInt32):cpp.Void;

    /**
    Unpack vertex attribute from vertex stream format.
    @param: _output : cpp.Float32 - Result of unpacking.
    @param: _attr : bgfx.Attrib.Native_Attrib - Attribute to unpack.
    @param: _layout : cpp.Reference<bgfx.VertexLayout.Native_VertexLayout> - Vertex stream layout.
    @param: _data : cpp.RawPointer<cpp.Void> - Source vertex stream from where data will be unpacked.
    @param: _index : cpp.UInt32 - Vertex index that will be unpacked.
    **/
    @:native("bgfx_vertex_unpack")
    overload extern public static function vertexUnpack(_output:cpp.Float32, _attr:bgfx.Attrib.Native_Attrib, _layout:cpp.Reference<bgfx.VertexLayout.Native_VertexLayout>, _data:cpp.RawPointer<cpp.Void>, _index:cpp.UInt32):cpp.Void;

    /**
    Converts vertex stream data from one vertex stream format to another.
    @param: _dstLayout : cpp.Reference<bgfx.VertexLayout.Native_VertexLayout> - Destination vertex stream layout.
    @param: _dstData : cpp.RawPointer<cpp.Void> - Destination vertex stream.
    @param: _srcLayout : cpp.Reference<bgfx.VertexLayout.Native_VertexLayout> - Source vertex stream layout.
    @param: _srcData : cpp.RawPointer<cpp.Void> - Source vertex stream data.
    @param: _num : cpp.UInt32 - Number of vertices to convert from source to destination.
    **/
    @:native("bgfx_vertex_convert")
    overload extern public static function vertexConvert(_dstLayout:cpp.Reference<bgfx.VertexLayout.Native_VertexLayout>, _dstData:cpp.RawPointer<cpp.Void>, _srcLayout:cpp.Reference<bgfx.VertexLayout.Native_VertexLayout>, _srcData:cpp.RawPointer<cpp.Void>, _num:cpp.UInt32):cpp.Void;

    /**
    Weld vertices.
    @param: _output : cpp.RawPointer<cpp.Void> - Welded vertices remapping table. The size of buffer
    @param: must be the same as number of vertices.
    @param: _layout : cpp.Reference<bgfx.VertexLayout.Native_VertexLayout> - Vertex stream layout.
    @param: _data : cpp.RawPointer<cpp.Void> - Vertex stream.
    @param: _num : cpp.UInt32 - Number of vertices in vertex stream.
    @param: _index32 : Bool - Set to `true` if input indices are 32-bit.
    @param: _epsilon : cpp.Float32 - Error tolerance for vertex position comparison.
    **/
    @:native("bgfx_weld_vertices")
    overload extern public static function weldVertices(_output:cpp.RawPointer<cpp.Void>, _layout:cpp.Reference<bgfx.VertexLayout.Native_VertexLayout>, _data:cpp.RawPointer<cpp.Void>, _num:cpp.UInt32, _index32:Bool, _epsilon:cpp.Float32):cpp.UInt32;

    /**
    Convert index buffer for use with different primitive topologies.
    @param: _conversion : bgfx.TopologyConvert.Native_TopologyConvert - Conversion type, see `TopologyConvert::Enum`.
    @param: _dst : cpp.RawPointer<cpp.Void> - Destination index buffer. If this argument is NULL
    @param: function will return number of indices after conversion.
    @param: _dstSize : cpp.UInt32 - Destination index buffer in bytes. It must be
    @param: large enough to contain output indices. If destination size is
    @param: insufficient index buffer will be truncated.
    @param: _indices : cpp.RawPointer<cpp.Void> - Source indices.
    @param: _numIndices : cpp.UInt32 - Number of input indices.
    @param: _index32 : Bool - Set to `true` if input indices are 32-bit.
    **/
    @:native("bgfx_topology_convert")
    overload extern public static function topologyConvert(_conversion:bgfx.TopologyConvert.Native_TopologyConvert, _dst:cpp.RawPointer<cpp.Void>, _dstSize:cpp.UInt32, _indices:cpp.RawPointer<cpp.Void>, _numIndices:cpp.UInt32, _index32:Bool):cpp.UInt32;

    /**
    Sort indices.
    @param: _sort : bgfx.TopologySort.Native_TopologySort - Sort order, see `TopologySort::Enum`.
    @param: _dst : cpp.RawPointer<cpp.Void> - Destination index buffer.
    @param: _dstSize : cpp.UInt32 - Destination index buffer in bytes. It must be
    @param: large enough to contain output indices. If destination size is
    @param: insufficient index buffer will be truncated.
    @param: _dir : cpp.Float32 - Direction (vector must be normalized).
    @param: _pos : cpp.Float32 - Position.
    @param: _vertices : cpp.RawPointer<cpp.Void> - Pointer to first vertex represented as
    @param: float x, y, z. Must contain at least number of vertices
    @param: referencende by index buffer.
    @param: _stride : cpp.UInt32 - Vertex stride.
    @param: _indices : cpp.RawPointer<cpp.Void> - Source indices.
    @param: _numIndices : cpp.UInt32 - Number of input indices.
    @param: _index32 : Bool - Set to `true` if input indices are 32-bit.
    **/
    @:native("bgfx_topology_sort_tri_list")
    overload extern public static function topologySortTriList(_sort:bgfx.TopologySort.Native_TopologySort, _dst:cpp.RawPointer<cpp.Void>, _dstSize:cpp.UInt32, _dir:cpp.Float32, _pos:cpp.Float32, _vertices:cpp.RawPointer<cpp.Void>, _stride:cpp.UInt32, _indices:cpp.RawPointer<cpp.Void>, _numIndices:cpp.UInt32, _index32:Bool):cpp.Void;

    /**
    Returns supported backend API renderers.
    @param: _max : cpp.UInt8 - Maximum number of elements in _enum array.
    @param: _enum : bgfx.RendererType.Native_RendererType - Array where supported renderers will be written.
    **/
    @:native("bgfx_get_supported_renderers")
    overload extern public static function getSupportedRenderers(_max:cpp.UInt8, _enum:bgfx.RendererType.Native_RendererType):cpp.UInt8;

    /**
    Returns name of renderer.
    @param: _type : bgfx.RendererType.Native_RendererType - Renderer backend type. See: `bgfx::RendererType`
    **/
    @:native("bgfx_get_renderer_name")
    overload extern public static function getRendererName(_type:bgfx.RendererType.Native_RendererType):cpp.Char;

    /**
    Fill bgfx::Init struct with default values, before using it to initialize the library.
    @param: _init : cpp.Star<bgfx.Init.Native_Init> - Pointer to structure to be initialized. See: `bgfx::Init` for more info.
    **/
    @:native("bgfx_init_ctor")
    overload extern public static function initCtor(_init:cpp.Star<bgfx.Init.Native_Init>):cpp.Void;

    /**
    Initialize the bgfx library.
    @param: _init : cpp.ConstStar<bgfx.Init.Native_Init> - Initialization parameters. See: `bgfx::Init` for more info.
    **/
    @:native("bgfx_init")
    overload extern public static function init(_init:cpp.ConstStar<bgfx.Init.Native_Init>):Bool;

    /**
    Shutdown bgfx library.
    **/
    @:native("bgfx_shutdown")
    overload extern public static function shutdown():cpp.Void;

    /**
    Reset graphic settings and back-buffer size.
    @attention This call doesn’t change the window size, it just resizes
      the back-buffer. Your windowing code controls the window size.
    @param: _width : cpp.UInt32 - Back-buffer width.
    @param: _height : cpp.UInt32 - Back-buffer height.
    @param: _flags : cpp.UInt32 - See: `BGFX_RESET_*` for more info.
    @param:   - `BGFX_RESET_NONE` - No reset flags.
    @param:   - `BGFX_RESET_FULLSCREEN` - Not supported yet.
    @param:   - `BGFX_RESET_MSAA_X[2/4/8/16]` - Enable 2, 4, 8 or 16 x MSAA.
    @param:   - `BGFX_RESET_VSYNC` - Enable V-Sync.
    @param:   - `BGFX_RESET_MAXANISOTROPY` - Turn on/off max anisotropy.
    @param:   - `BGFX_RESET_CAPTURE` - Begin screen capture.
    @param:   - `BGFX_RESET_FLUSH_AFTER_RENDER` - Flush rendering after submitting to GPU.
    @param:   - `BGFX_RESET_FLIP_AFTER_RENDER` - This flag  specifies where flip
    @param:     occurs. Default behaviour is that flip occurs before rendering new
    @param:     frame. This flag only has effect when `BGFX_CONFIG_MULTITHREADED=0`.
    @param:   - `BGFX_RESET_SRGB_BACKBUFFER` - Enable sRGB back-buffer.
    @param: _format : bgfx.TextureFormat.Native_TextureFormat - Texture format. See: `TextureFormat::Enum`.
    **/
    @:native("bgfx_reset")
    overload extern public static function reset(_width:cpp.UInt32, _height:cpp.UInt32, _flags:cpp.UInt32, _format:bgfx.TextureFormat.Native_TextureFormat):cpp.Void;

    /**
    Advance to next frame. When using multithreaded renderer, this call
    just swaps internal buffers, kicks render thread, and returns. In
    singlethreaded renderer this call does frame rendering.
    @param: _capture : Bool - Capture frame with graphics debugger.
    **/
    @:native("bgfx_frame")
    overload extern public static function frame(_capture:Bool):cpp.UInt32;

    /**
    Returns current renderer backend API type.
    @remarks
      Library must be initialized.
    **/
    @:native("bgfx_get_renderer_type")
    overload extern public static function getRendererType():bgfx.RendererType.Native_RendererType;

    /**
    Returns renderer capabilities.
    @remarks
      Library must be initialized.
    **/
    @:native("bgfx_get_caps")
    overload extern public static function getCaps():cpp.ConstStar<bgfx.Caps.Native_Caps>;

    /**
    Returns performance counters.
    @attention Pointer returned is valid until `bgfx::frame` is called.
    **/
    @:native("bgfx_get_stats")
    overload extern public static function getStats():cpp.ConstStar<bgfx.Stats.Native_Stats>;

    /**
    Allocate buffer to pass to bgfx calls. Data will be freed inside bgfx.
    @param: _size : cpp.UInt32 - Size to allocate.
    **/
    @:native("bgfx_alloc")
    overload extern public static function alloc(_size:cpp.UInt32):cpp.ConstStar<bgfx.Memory.Native_Memory>;

    /**
    Allocate buffer and copy data into it. Data will be freed inside bgfx.
    @param: _data : cpp.RawPointer<cpp.Void> - Pointer to data to be copied.
    @param: _size : cpp.UInt32 - Size of data to be copied.
    **/
    @:native("bgfx_copy")
    overload extern public static function copy(_data:cpp.RawPointer<cpp.Void>, _size:cpp.UInt32):cpp.ConstStar<bgfx.Memory.Native_Memory>;

    /**
    Make reference to data to pass to bgfx. Unlike `bgfx::alloc`, this call
    doesn't allocate memory for data. It just copies the _data pointer. You
    can pass `ReleaseFn` function pointer to release this memory after it's
    consumed, otherwise you must make sure _data is available for at least 2
    `bgfx::frame` calls. `ReleaseFn` function must be able to be called
    from any thread.
    @attention Data passed must be available for at least 2 `bgfx::frame` calls.
    @param: _data : cpp.RawPointer<cpp.Void> - Pointer to data.
    @param: _size : cpp.UInt32 - Size of data.
    **/
    @:native("bgfx_make_ref")
    overload extern public static function makeRef(_data:cpp.RawPointer<cpp.Void>, _size:cpp.UInt32):cpp.ConstStar<bgfx.Memory.Native_Memory>;

    /**
    Set debug flags.
    @param: _debug : cpp.UInt32 - Available flags:
    @param:   - `BGFX_DEBUG_IFH` - Infinitely fast hardware. When this flag is set
    @param:     all rendering calls will be skipped. This is useful when profiling
    @param:     to quickly assess potential bottlenecks between CPU and GPU.
    @param:   - `BGFX_DEBUG_PROFILER` - Enable profiler.
    @param:   - `BGFX_DEBUG_STATS` - Display internal statistics.
    @param:   - `BGFX_DEBUG_TEXT` - Display debug text.
    @param:   - `BGFX_DEBUG_WIREFRAME` - Wireframe rendering. All rendering
    @param:     primitives will be rendered as lines.
    **/
    @:native("bgfx_set_debug")
    overload extern public static function setDebug(_debug:cpp.UInt32):cpp.Void;

    /**
    Draw image into internal debug text buffer.
    @param: _x : cpp.UInt16 - Position x from the left corner of the window.
    @param: _y : cpp.UInt16 - Position y from the top corner of the window.
    @param: _width : cpp.UInt16 - Image width.
    @param: _height : cpp.UInt16 - Image height.
    @param: _data : cpp.RawPointer<cpp.Void> - Raw image data (character/attribute raw encoding).
    @param: _pitch : cpp.UInt16 - Image pitch in bytes.
    **/
    @:native("bgfx_dbg_text_image")
    overload extern public static function dbgTextImage(_x:cpp.UInt16, _y:cpp.UInt16, _width:cpp.UInt16, _height:cpp.UInt16, _data:cpp.RawPointer<cpp.Void>, _pitch:cpp.UInt16):cpp.Void;

    /**
    Create static index buffer.
    @param: _mem : cpp.ConstStar<bgfx.Memory.Native_Memory> - Index buffer data.
    @param: _flags : cpp.UInt16 - Buffer creation flags.
    @param:   - `BGFX_BUFFER_NONE` - No flags.
    @param:   - `BGFX_BUFFER_COMPUTE_READ` - Buffer will be read from by compute shader.
    @param:   - `BGFX_BUFFER_COMPUTE_WRITE` - Buffer will be written into by compute shader. When buffer
    @param:       is created with `BGFX_BUFFER_COMPUTE_WRITE` flag it cannot be updated from CPU.
    @param:   - `BGFX_BUFFER_COMPUTE_READ_WRITE` - Buffer will be used for read/write by compute shader.
    @param:   - `BGFX_BUFFER_ALLOW_RESIZE` - Buffer will resize on buffer update if a different amount of
    @param:       data is passed. If this flag is not specified, and more data is passed on update, the buffer
    @param:       will be trimmed to fit the existing buffer size. This flag has effect only on dynamic
    @param:       buffers.
    @param:   - `BGFX_BUFFER_INDEX32` - Buffer is using 32-bit indices. This flag has effect only on
    @param:       index buffers.
    **/
    @:native("bgfx_create_index_buffer")
    overload extern public static function createIndexBuffer(_mem:cpp.ConstStar<bgfx.Memory.Native_Memory>, _flags:cpp.UInt16):bgfx.IndexBufferHandle.Native_IndexBufferHandle;

    /**
    Set static index buffer debug name.
    @param: _handle : bgfx.IndexBufferHandle.Native_IndexBufferHandle - Static index buffer handle.
    @param: _name : cpp.Char - Static index buffer name.
    @param: _len : cpp.Int32 - Static index buffer name length (if length is INT32_MAX, it's expected
    @param: that _name is zero terminated string.
    **/
    @:native("bgfx_set_index_buffer_name")
    overload extern public static function setIndexBufferName(_handle:bgfx.IndexBufferHandle.Native_IndexBufferHandle, _name:cpp.Char, _len:cpp.Int32):cpp.Void;

    /**
    Destroy static index buffer.
    @param: _handle : bgfx.IndexBufferHandle.Native_IndexBufferHandle - Static index buffer handle.
    **/
    @:native("bgfx_destroy_index_buffer")
    overload extern public static function destroyIndexBuffer(_handle:bgfx.IndexBufferHandle.Native_IndexBufferHandle):cpp.Void;

    /**
    Create vertex layout.
    @param: _layout : cpp.Reference<bgfx.VertexLayout.Native_VertexLayout> - Vertex layout.
    **/
    @:native("bgfx_create_vertex_layout")
    overload extern public static function createVertexLayout(_layout:cpp.Reference<bgfx.VertexLayout.Native_VertexLayout>):bgfx.VertexLayoutHandle.Native_VertexLayoutHandle;

    /**
    Destroy vertex layout.
    @param: _layoutHandle : bgfx.VertexLayoutHandle.Native_VertexLayoutHandle - Vertex layout handle.
    **/
    @:native("bgfx_destroy_vertex_layout")
    overload extern public static function destroyVertexLayout(_layoutHandle:bgfx.VertexLayoutHandle.Native_VertexLayoutHandle):cpp.Void;

    /**
    Create static vertex buffer.
    @param: _mem : cpp.ConstStar<bgfx.Memory.Native_Memory> - Vertex buffer data.
    @param: _layout : cpp.Reference<bgfx.VertexLayout.Native_VertexLayout> - Vertex layout.
    @param: _flags : cpp.UInt16 - Buffer creation flags.
    @param:  - `BGFX_BUFFER_NONE` - No flags.
    @param:  - `BGFX_BUFFER_COMPUTE_READ` - Buffer will be read from by compute shader.
    @param:  - `BGFX_BUFFER_COMPUTE_WRITE` - Buffer will be written into by compute shader. When buffer
    @param:      is created with `BGFX_BUFFER_COMPUTE_WRITE` flag it cannot be updated from CPU.
    @param:  - `BGFX_BUFFER_COMPUTE_READ_WRITE` - Buffer will be used for read/write by compute shader.
    @param:  - `BGFX_BUFFER_ALLOW_RESIZE` - Buffer will resize on buffer update if a different amount of
    @param:      data is passed. If this flag is not specified, and more data is passed on update, the buffer
    @param:      will be trimmed to fit the existing buffer size. This flag has effect only on dynamic buffers.
    @param:  - `BGFX_BUFFER_INDEX32` - Buffer is using 32-bit indices. This flag has effect only on index buffers.
    **/
    @:native("bgfx_create_vertex_buffer")
    overload extern public static function createVertexBuffer(_mem:cpp.ConstStar<bgfx.Memory.Native_Memory>, _layout:cpp.Reference<bgfx.VertexLayout.Native_VertexLayout>, _flags:cpp.UInt16):bgfx.VertexBufferHandle.Native_VertexBufferHandle;

    /**
    Set static vertex buffer debug name.
    @param: _handle : bgfx.VertexBufferHandle.Native_VertexBufferHandle - Static vertex buffer handle.
    @param: _name : cpp.Char - Static vertex buffer name.
    @param: _len : cpp.Int32 - Static vertex buffer name length (if length is INT32_MAX, it's expected
    @param: that _name is zero terminated string.
    **/
    @:native("bgfx_set_vertex_buffer_name")
    overload extern public static function setVertexBufferName(_handle:bgfx.VertexBufferHandle.Native_VertexBufferHandle, _name:cpp.Char, _len:cpp.Int32):cpp.Void;

    /**
    Destroy static vertex buffer.
    @param: _handle : bgfx.VertexBufferHandle.Native_VertexBufferHandle - Static vertex buffer handle.
    **/
    @:native("bgfx_destroy_vertex_buffer")
    overload extern public static function destroyVertexBuffer(_handle:bgfx.VertexBufferHandle.Native_VertexBufferHandle):cpp.Void;

    /**
    Create empty dynamic index buffer.
    @param: _num : cpp.UInt32 - Number of indices.
    @param: _flags : cpp.UInt16 - Buffer creation flags.
    @param:   - `BGFX_BUFFER_NONE` - No flags.
    @param:   - `BGFX_BUFFER_COMPUTE_READ` - Buffer will be read from by compute shader.
    @param:   - `BGFX_BUFFER_COMPUTE_WRITE` - Buffer will be written into by compute shader. When buffer
    @param:       is created with `BGFX_BUFFER_COMPUTE_WRITE` flag it cannot be updated from CPU.
    @param:   - `BGFX_BUFFER_COMPUTE_READ_WRITE` - Buffer will be used for read/write by compute shader.
    @param:   - `BGFX_BUFFER_ALLOW_RESIZE` - Buffer will resize on buffer update if a different amount of
    @param:       data is passed. If this flag is not specified, and more data is passed on update, the buffer
    @param:       will be trimmed to fit the existing buffer size. This flag has effect only on dynamic
    @param:       buffers.
    @param:   - `BGFX_BUFFER_INDEX32` - Buffer is using 32-bit indices. This flag has effect only on
    @param:       index buffers.
    **/
    @:native("bgfx_create_dynamic_index_buffer")
    overload extern public static function createDynamicIndexBuffer(_num:cpp.UInt32, _flags:cpp.UInt16):bgfx.DynamicIndexBufferHandle.Native_DynamicIndexBufferHandle;

    /**
    Create a dynamic index buffer and initialize it.
    @param: _mem : cpp.ConstStar<bgfx.Memory.Native_Memory> - Index buffer data.
    @param: _flags : cpp.UInt16 - Buffer creation flags.
    @param:   - `BGFX_BUFFER_NONE` - No flags.
    @param:   - `BGFX_BUFFER_COMPUTE_READ` - Buffer will be read from by compute shader.
    @param:   - `BGFX_BUFFER_COMPUTE_WRITE` - Buffer will be written into by compute shader. When buffer
    @param:       is created with `BGFX_BUFFER_COMPUTE_WRITE` flag it cannot be updated from CPU.
    @param:   - `BGFX_BUFFER_COMPUTE_READ_WRITE` - Buffer will be used for read/write by compute shader.
    @param:   - `BGFX_BUFFER_ALLOW_RESIZE` - Buffer will resize on buffer update if a different amount of
    @param:       data is passed. If this flag is not specified, and more data is passed on update, the buffer
    @param:       will be trimmed to fit the existing buffer size. This flag has effect only on dynamic
    @param:       buffers.
    @param:   - `BGFX_BUFFER_INDEX32` - Buffer is using 32-bit indices. This flag has effect only on
    @param:       index buffers.
    **/
    @:native("bgfx_create_dynamic_index_buffer_mem")
    overload extern public static function createDynamicIndexBufferMem(_mem:cpp.ConstStar<bgfx.Memory.Native_Memory>, _flags:cpp.UInt16):bgfx.DynamicIndexBufferHandle.Native_DynamicIndexBufferHandle;

    /**
    Update dynamic index buffer.
    @param: _handle : bgfx.DynamicIndexBufferHandle.Native_DynamicIndexBufferHandle - Dynamic index buffer handle.
    @param: _startIndex : cpp.UInt32 - Start index.
    @param: _mem : cpp.ConstStar<bgfx.Memory.Native_Memory> - Index buffer data.
    **/
    @:native("bgfx_update_dynamic_index_buffer")
    overload extern public static function updateDynamicIndexBuffer(_handle:bgfx.DynamicIndexBufferHandle.Native_DynamicIndexBufferHandle, _startIndex:cpp.UInt32, _mem:cpp.ConstStar<bgfx.Memory.Native_Memory>):cpp.Void;

    /**
    Destroy dynamic index buffer.
    @param: _handle : bgfx.DynamicIndexBufferHandle.Native_DynamicIndexBufferHandle - Dynamic index buffer handle.
    **/
    @:native("bgfx_destroy_dynamic_index_buffer")
    overload extern public static function destroyDynamicIndexBuffer(_handle:bgfx.DynamicIndexBufferHandle.Native_DynamicIndexBufferHandle):cpp.Void;

    /**
    Create empty dynamic vertex buffer.
    @param: _num : cpp.UInt32 - Number of vertices.
    @param: _layout : cpp.Reference<bgfx.VertexLayout.Native_VertexLayout> - Vertex layout.
    @param: _flags : cpp.UInt16 - Buffer creation flags.
    @param:   - `BGFX_BUFFER_NONE` - No flags.
    @param:   - `BGFX_BUFFER_COMPUTE_READ` - Buffer will be read from by compute shader.
    @param:   - `BGFX_BUFFER_COMPUTE_WRITE` - Buffer will be written into by compute shader. When buffer
    @param:       is created with `BGFX_BUFFER_COMPUTE_WRITE` flag it cannot be updated from CPU.
    @param:   - `BGFX_BUFFER_COMPUTE_READ_WRITE` - Buffer will be used for read/write by compute shader.
    @param:   - `BGFX_BUFFER_ALLOW_RESIZE` - Buffer will resize on buffer update if a different amount of
    @param:       data is passed. If this flag is not specified, and more data is passed on update, the buffer
    @param:       will be trimmed to fit the existing buffer size. This flag has effect only on dynamic
    @param:       buffers.
    @param:   - `BGFX_BUFFER_INDEX32` - Buffer is using 32-bit indices. This flag has effect only on
    @param:       index buffers.
    **/
    @:native("bgfx_create_dynamic_vertex_buffer")
    overload extern public static function createDynamicVertexBuffer(_num:cpp.UInt32, _layout:cpp.Reference<bgfx.VertexLayout.Native_VertexLayout>, _flags:cpp.UInt16):bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle;

    /**
    Create dynamic vertex buffer and initialize it.
    @param: _mem : cpp.ConstStar<bgfx.Memory.Native_Memory> - Vertex buffer data.
    @param: _layout : cpp.Reference<bgfx.VertexLayout.Native_VertexLayout> - Vertex layout.
    @param: _flags : cpp.UInt16 - Buffer creation flags.
    @param:   - `BGFX_BUFFER_NONE` - No flags.
    @param:   - `BGFX_BUFFER_COMPUTE_READ` - Buffer will be read from by compute shader.
    @param:   - `BGFX_BUFFER_COMPUTE_WRITE` - Buffer will be written into by compute shader. When buffer
    @param:       is created with `BGFX_BUFFER_COMPUTE_WRITE` flag it cannot be updated from CPU.
    @param:   - `BGFX_BUFFER_COMPUTE_READ_WRITE` - Buffer will be used for read/write by compute shader.
    @param:   - `BGFX_BUFFER_ALLOW_RESIZE` - Buffer will resize on buffer update if a different amount of
    @param:       data is passed. If this flag is not specified, and more data is passed on update, the buffer
    @param:       will be trimmed to fit the existing buffer size. This flag has effect only on dynamic
    @param:       buffers.
    @param:   - `BGFX_BUFFER_INDEX32` - Buffer is using 32-bit indices. This flag has effect only on
    @param:       index buffers.
    **/
    @:native("bgfx_create_dynamic_vertex_buffer_mem")
    overload extern public static function createDynamicVertexBufferMem(_mem:cpp.ConstStar<bgfx.Memory.Native_Memory>, _layout:cpp.Reference<bgfx.VertexLayout.Native_VertexLayout>, _flags:cpp.UInt16):bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle;

    /**
    Update dynamic vertex buffer.
    @param: _handle : bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle - Dynamic vertex buffer handle.
    @param: _startVertex : cpp.UInt32 - Start vertex.
    @param: _mem : cpp.ConstStar<bgfx.Memory.Native_Memory> - Vertex buffer data.
    **/
    @:native("bgfx_update_dynamic_vertex_buffer")
    overload extern public static function updateDynamicVertexBuffer(_handle:bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle, _startVertex:cpp.UInt32, _mem:cpp.ConstStar<bgfx.Memory.Native_Memory>):cpp.Void;

    /**
    Destroy dynamic vertex buffer.
    @param: _handle : bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle - Dynamic vertex buffer handle.
    **/
    @:native("bgfx_destroy_dynamic_vertex_buffer")
    overload extern public static function destroyDynamicVertexBuffer(_handle:bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle):cpp.Void;

    /**
    Returns number of requested or maximum available indices.
    @param: _num : cpp.UInt32 - Number of required indices.
    @param: _index32 : Bool - Set to `true` if input indices will be 32-bit.
    **/
    @:native("bgfx_get_avail_transient_index_buffer")
    overload extern public static function getAvailTransientIndexBuffer(_num:cpp.UInt32, _index32:Bool):cpp.UInt32;

    /**
    Returns number of requested or maximum available vertices.
    @param: _num : cpp.UInt32 - Number of required vertices.
    @param: _layout : cpp.Reference<bgfx.VertexLayout.Native_VertexLayout> - Vertex layout.
    **/
    @:native("bgfx_get_avail_transient_vertex_buffer")
    overload extern public static function getAvailTransientVertexBuffer(_num:cpp.UInt32, _layout:cpp.Reference<bgfx.VertexLayout.Native_VertexLayout>):cpp.UInt32;

    /**
    Returns number of requested or maximum available instance buffer slots.
    @param: _num : cpp.UInt32 - Number of required instances.
    @param: _stride : cpp.UInt16 - Stride per instance.
    **/
    @:native("bgfx_get_avail_instance_data_buffer")
    overload extern public static function getAvailInstanceDataBuffer(_num:cpp.UInt32, _stride:cpp.UInt16):cpp.UInt32;

    /**
    Allocate transient index buffer.
    @param: _tib : cpp.Star<bgfx.TransientIndexBuffer.Native_TransientIndexBuffer> - TransientIndexBuffer structure will be filled, and will be valid
    @param: for the duration of frame, and can be reused for multiple draw
    @param: calls.
    @param: _num : cpp.UInt32 - Number of indices to allocate.
    @param: _index32 : Bool - Set to `true` if input indices will be 32-bit.
    **/
    @:native("bgfx_alloc_transient_index_buffer")
    overload extern public static function allocTransientIndexBuffer(_tib:cpp.Star<bgfx.TransientIndexBuffer.Native_TransientIndexBuffer>, _num:cpp.UInt32, _index32:Bool):cpp.Void;

    /**
    Allocate transient vertex buffer.
    @param: _tvb : cpp.Star<bgfx.TransientVertexBuffer.Native_TransientVertexBuffer> - TransientVertexBuffer structure will be filled, and will be valid
    @param: for the duration of frame, and can be reused for multiple draw
    @param: calls.
    @param: _num : cpp.UInt32 - Number of vertices to allocate.
    @param: _layout : cpp.Reference<bgfx.VertexLayout.Native_VertexLayout> - Vertex layout.
    **/
    @:native("bgfx_alloc_transient_vertex_buffer")
    overload extern public static function allocTransientVertexBuffer(_tvb:cpp.Star<bgfx.TransientVertexBuffer.Native_TransientVertexBuffer>, _num:cpp.UInt32, _layout:cpp.Reference<bgfx.VertexLayout.Native_VertexLayout>):cpp.Void;

    /**
    Check for required space and allocate transient vertex and index
    buffers. If both space requirements are satisfied function returns
    true.
    @param: _tvb : cpp.Star<bgfx.TransientVertexBuffer.Native_TransientVertexBuffer> - TransientVertexBuffer structure will be filled, and will be valid
    @param: for the duration of frame, and can be reused for multiple draw
    @param: calls.
    @param: _layout : cpp.Reference<bgfx.VertexLayout.Native_VertexLayout> - Vertex layout.
    @param: _numVertices : cpp.UInt32 - Number of vertices to allocate.
    @param: _tib : cpp.Star<bgfx.TransientIndexBuffer.Native_TransientIndexBuffer> - TransientIndexBuffer structure will be filled, and will be valid
    @param: for the duration of frame, and can be reused for multiple draw
    @param: calls.
    @param: _numIndices : cpp.UInt32 - Number of indices to allocate.
    @param: _index32 : Bool - Set to `true` if input indices will be 32-bit.
    **/
    @:native("bgfx_alloc_transient_buffers")
    overload extern public static function allocTransientBuffers(_tvb:cpp.Star<bgfx.TransientVertexBuffer.Native_TransientVertexBuffer>, _layout:cpp.Reference<bgfx.VertexLayout.Native_VertexLayout>, _numVertices:cpp.UInt32, _tib:cpp.Star<bgfx.TransientIndexBuffer.Native_TransientIndexBuffer>, _numIndices:cpp.UInt32, _index32:Bool):Bool;

    /**
    Allocate instance data buffer.
    @param: _idb : cpp.Star<bgfx.InstanceDataBuffer.Native_InstanceDataBuffer> - InstanceDataBuffer structure will be filled, and will be valid
    @param: for duration of frame, and can be reused for multiple draw
    @param: calls.
    @param: _num : cpp.UInt32 - Number of instances.
    @param: _stride : cpp.UInt16 - Instance stride. Must be multiple of 16.
    **/
    @:native("bgfx_alloc_instance_data_buffer")
    overload extern public static function allocInstanceDataBuffer(_idb:cpp.Star<bgfx.InstanceDataBuffer.Native_InstanceDataBuffer>, _num:cpp.UInt32, _stride:cpp.UInt16):cpp.Void;

    /**
    Create draw indirect buffer.
    @param: _num : cpp.UInt32 - Number of indirect calls.
    **/
    @:native("bgfx_create_indirect_buffer")
    overload extern public static function createIndirectBuffer(_num:cpp.UInt32):bgfx.IndirectBufferHandle.Native_IndirectBufferHandle;

    /**
    Destroy draw indirect buffer.
    @param: _handle : bgfx.IndirectBufferHandle.Native_IndirectBufferHandle - Indirect buffer handle.
    **/
    @:native("bgfx_destroy_indirect_buffer")
    overload extern public static function destroyIndirectBuffer(_handle:bgfx.IndirectBufferHandle.Native_IndirectBufferHandle):cpp.Void;

    /**
    Create shader from memory buffer.
    @remarks
      Shader binary is obtained by compiling shader offline with shaderc command line tool.
    @param: _mem : cpp.ConstStar<bgfx.Memory.Native_Memory> - Shader binary.
    **/
    @:native("bgfx_create_shader")
    overload extern public static function createShader(_mem:cpp.ConstStar<bgfx.Memory.Native_Memory>):bgfx.ShaderHandle.Native_ShaderHandle;

    /**
    Returns the number of uniforms and uniform handles used inside a shader.
    @remarks
      Only non-predefined uniforms are returned.
    @param: _handle : bgfx.ShaderHandle.Native_ShaderHandle - Shader handle.
    @param: _uniforms : cpp.Star<bgfx.UniformHandle.Native_UniformHandle> - UniformHandle array where data will be stored.
    @param: _max : cpp.UInt16 - Maximum capacity of array.
    **/
    @:native("bgfx_get_shader_uniforms")
    overload extern public static function getShaderUniforms(_handle:bgfx.ShaderHandle.Native_ShaderHandle, _uniforms:cpp.Star<bgfx.UniformHandle.Native_UniformHandle>, _max:cpp.UInt16):cpp.UInt16;

    /**
    Set shader debug name.
    @param: _handle : bgfx.ShaderHandle.Native_ShaderHandle - Shader handle.
    @param: _name : cpp.Char - Shader name.
    @param: _len : cpp.Int32 - Shader name length (if length is INT32_MAX, it's expected
    @param: that _name is zero terminated string).
    **/
    @:native("bgfx_set_shader_name")
    overload extern public static function setShaderName(_handle:bgfx.ShaderHandle.Native_ShaderHandle, _name:cpp.Char, _len:cpp.Int32):cpp.Void;

    /**
    Destroy shader.
    @remark Once a shader program is created with _handle,
      it is safe to destroy that shader.
    @param: _handle : bgfx.ShaderHandle.Native_ShaderHandle - Shader handle.
    **/
    @:native("bgfx_destroy_shader")
    overload extern public static function destroyShader(_handle:bgfx.ShaderHandle.Native_ShaderHandle):cpp.Void;

    /**
    Create program with vertex and fragment shaders.
    @param: _vsh : bgfx.ShaderHandle.Native_ShaderHandle - Vertex shader.
    @param: _fsh : bgfx.ShaderHandle.Native_ShaderHandle - Fragment shader.
    @param: _destroyShaders : Bool - If true, shaders will be destroyed when program is destroyed.
    **/
    @:native("bgfx_create_program")
    overload extern public static function createProgram(_vsh:bgfx.ShaderHandle.Native_ShaderHandle, _fsh:bgfx.ShaderHandle.Native_ShaderHandle, _destroyShaders:Bool):bgfx.ProgramHandle.Native_ProgramHandle;

    /**
    Create program with compute shader.
    @param: _csh : bgfx.ShaderHandle.Native_ShaderHandle - Compute shader.
    @param: _destroyShaders : Bool - If true, shaders will be destroyed when program is destroyed.
    **/
    @:native("bgfx_create_compute_program")
    overload extern public static function createComputeProgram(_csh:bgfx.ShaderHandle.Native_ShaderHandle, _destroyShaders:Bool):bgfx.ProgramHandle.Native_ProgramHandle;

    /**
    Destroy program.
    @param: _handle : bgfx.ProgramHandle.Native_ProgramHandle - Program handle.
    **/
    @:native("bgfx_destroy_program")
    overload extern public static function destroyProgram(_handle:bgfx.ProgramHandle.Native_ProgramHandle):cpp.Void;

    /**
    Validate texture parameters.
    @param: _depth : cpp.UInt16 - Depth dimension of volume texture.
    @param: _cubeMap : Bool - Indicates that texture contains cubemap.
    @param: _numLayers : cpp.UInt16 - Number of layers in texture array.
    @param: _format : bgfx.TextureFormat.Native_TextureFormat - Texture format. See: `TextureFormat::Enum`.
    @param: _flags : cpp.UInt64 - Texture flags. See `BGFX_TEXTURE_*`.
    **/
    @:native("bgfx_is_texture_valid")
    overload extern public static function isTextureValid(_depth:cpp.UInt16, _cubeMap:Bool, _numLayers:cpp.UInt16, _format:bgfx.TextureFormat.Native_TextureFormat, _flags:cpp.UInt64):Bool;

    /**
    Validate frame buffer parameters.
    @param: _num : cpp.UInt8 - Number of attachments.
    @param: _attachment : cpp.ConstStar<bgfx.Attachment.Native_Attachment> - Attachment texture info. See: `bgfx::Attachment`.
    **/
    @:native("bgfx_is_frame_buffer_valid")
    overload extern public static function isFrameBufferValid(_num:cpp.UInt8, _attachment:cpp.ConstStar<bgfx.Attachment.Native_Attachment>):Bool;

    /**
    Calculate amount of memory required for texture.
    @param: _info : cpp.Reference<bgfx.TextureInfo.Native_TextureInfo> - Resulting texture info structure. See: `TextureInfo`.
    @param: _width : cpp.UInt16 - Width.
    @param: _height : cpp.UInt16 - Height.
    @param: _depth : cpp.UInt16 - Depth dimension of volume texture.
    @param: _cubeMap : Bool - Indicates that texture contains cubemap.
    @param: _hasMips : Bool - Indicates that texture contains full mip-map chain.
    @param: _numLayers : cpp.UInt16 - Number of layers in texture array.
    @param: _format : bgfx.TextureFormat.Native_TextureFormat - Texture format. See: `TextureFormat::Enum`.
    **/
    @:native("bgfx_calc_texture_size")
    overload extern public static function calcTextureSize(_info:cpp.Reference<bgfx.TextureInfo.Native_TextureInfo>, _width:cpp.UInt16, _height:cpp.UInt16, _depth:cpp.UInt16, _cubeMap:Bool, _hasMips:Bool, _numLayers:cpp.UInt16, _format:bgfx.TextureFormat.Native_TextureFormat):cpp.Void;

    /**
    Create texture from memory buffer.
    @param: _mem : cpp.ConstStar<bgfx.Memory.Native_Memory> - DDS, KTX or PVR texture binary data.
    @param: _flags : cpp.UInt64 - Texture creation (see `BGFX_TEXTURE_*`.), and sampler (see `BGFX_SAMPLER_*`)
    @param: flags. Default texture sampling mode is linear, and wrap mode is repeat.
    @param: - `BGFX_SAMPLER_[U/V/W]_[MIRROR/CLAMP]` - Mirror or clamp to edge wrap
    @param:   mode.
    @param: - `BGFX_SAMPLER_[MIN/MAG/MIP]_[POINT/ANISOTROPIC]` - Point or anisotropic
    @param:   sampling.
    @param: _skip : cpp.UInt8 - Skip top level mips when parsing texture.
    @param: _info : cpp.Star<bgfx.TextureInfo.Native_TextureInfo> - When non-`NULL` is specified it returns parsed texture information.
    **/
    @:native("bgfx_create_texture")
    overload extern public static function createTexture(_mem:cpp.ConstStar<bgfx.Memory.Native_Memory>, _flags:cpp.UInt64, _skip:cpp.UInt8, _info:cpp.Star<bgfx.TextureInfo.Native_TextureInfo>):bgfx.TextureHandle.Native_TextureHandle;

    /**
    Create 2D texture.
    @param: _width : cpp.UInt16 - Width.
    @param: _height : cpp.UInt16 - Height.
    @param: _hasMips : Bool - Indicates that texture contains full mip-map chain.
    @param: _numLayers : cpp.UInt16 - Number of layers in texture array. Must be 1 if caps
    @param: `BGFX_CAPS_TEXTURE_2D_ARRAY` flag is not set.
    @param: _format : bgfx.TextureFormat.Native_TextureFormat - Texture format. See: `TextureFormat::Enum`.
    @param: _flags : cpp.UInt64 - Texture creation (see `BGFX_TEXTURE_*`.), and sampler (see `BGFX_SAMPLER_*`)
    @param: flags. Default texture sampling mode is linear, and wrap mode is repeat.
    @param: - `BGFX_SAMPLER_[U/V/W]_[MIRROR/CLAMP]` - Mirror or clamp to edge wrap
    @param:   mode.
    @param: - `BGFX_SAMPLER_[MIN/MAG/MIP]_[POINT/ANISOTROPIC]` - Point or anisotropic
    @param:   sampling.
    @param: _mem : cpp.ConstStar<bgfx.Memory.Native_Memory> - Texture data. If `_mem` is non-NULL, created texture will be immutable. If
    @param: `_mem` is NULL content of the texture is uninitialized. When `_numLayers` is more than
    @param: 1, expected memory layout is texture and all mips together for each array element.
    **/
    @:native("bgfx_create_texture_2d")
    overload extern public static function createTexture2d(_width:cpp.UInt16, _height:cpp.UInt16, _hasMips:Bool, _numLayers:cpp.UInt16, _format:bgfx.TextureFormat.Native_TextureFormat, _flags:cpp.UInt64, _mem:cpp.ConstStar<bgfx.Memory.Native_Memory>):bgfx.TextureHandle.Native_TextureHandle;

    /**
    Create texture with size based on back-buffer ratio. Texture will maintain ratio
    if back buffer resolution changes.
    @param: _ratio : bgfx.BackbufferRatio.Native_BackbufferRatio - Texture size in respect to back-buffer size. See: `BackbufferRatio::Enum`.
    @param: _hasMips : Bool - Indicates that texture contains full mip-map chain.
    @param: _numLayers : cpp.UInt16 - Number of layers in texture array. Must be 1 if caps
    @param: `BGFX_CAPS_TEXTURE_2D_ARRAY` flag is not set.
    @param: _format : bgfx.TextureFormat.Native_TextureFormat - Texture format. See: `TextureFormat::Enum`.
    @param: _flags : cpp.UInt64 - Texture creation (see `BGFX_TEXTURE_*`.), and sampler (see `BGFX_SAMPLER_*`)
    @param: flags. Default texture sampling mode is linear, and wrap mode is repeat.
    @param: - `BGFX_SAMPLER_[U/V/W]_[MIRROR/CLAMP]` - Mirror or clamp to edge wrap
    @param:   mode.
    @param: - `BGFX_SAMPLER_[MIN/MAG/MIP]_[POINT/ANISOTROPIC]` - Point or anisotropic
    @param:   sampling.
    **/
    @:native("bgfx_create_texture_2d_scaled")
    overload extern public static function createTexture2dScaled(_ratio:bgfx.BackbufferRatio.Native_BackbufferRatio, _hasMips:Bool, _numLayers:cpp.UInt16, _format:bgfx.TextureFormat.Native_TextureFormat, _flags:cpp.UInt64):bgfx.TextureHandle.Native_TextureHandle;

    /**
    Create 3D texture.
    @param: _width : cpp.UInt16 - Width.
    @param: _height : cpp.UInt16 - Height.
    @param: _depth : cpp.UInt16 - Depth.
    @param: _hasMips : Bool - Indicates that texture contains full mip-map chain.
    @param: _format : bgfx.TextureFormat.Native_TextureFormat - Texture format. See: `TextureFormat::Enum`.
    @param: _flags : cpp.UInt64 - Texture creation (see `BGFX_TEXTURE_*`.), and sampler (see `BGFX_SAMPLER_*`)
    @param: flags. Default texture sampling mode is linear, and wrap mode is repeat.
    @param: - `BGFX_SAMPLER_[U/V/W]_[MIRROR/CLAMP]` - Mirror or clamp to edge wrap
    @param:   mode.
    @param: - `BGFX_SAMPLER_[MIN/MAG/MIP]_[POINT/ANISOTROPIC]` - Point or anisotropic
    @param:   sampling.
    @param: _mem : cpp.ConstStar<bgfx.Memory.Native_Memory> - Texture data. If `_mem` is non-NULL, created texture will be immutable. If
    @param: `_mem` is NULL content of the texture is uninitialized. When `_numLayers` is more than
    @param: 1, expected memory layout is texture and all mips together for each array element.
    **/
    @:native("bgfx_create_texture_3d")
    overload extern public static function createTexture3d(_width:cpp.UInt16, _height:cpp.UInt16, _depth:cpp.UInt16, _hasMips:Bool, _format:bgfx.TextureFormat.Native_TextureFormat, _flags:cpp.UInt64, _mem:cpp.ConstStar<bgfx.Memory.Native_Memory>):bgfx.TextureHandle.Native_TextureHandle;

    /**
    Create Cube texture.
    @param: _size : cpp.UInt16 - Cube side size.
    @param: _hasMips : Bool - Indicates that texture contains full mip-map chain.
    @param: _numLayers : cpp.UInt16 - Number of layers in texture array. Must be 1 if caps
    @param: `BGFX_CAPS_TEXTURE_2D_ARRAY` flag is not set.
    @param: _format : bgfx.TextureFormat.Native_TextureFormat - Texture format. See: `TextureFormat::Enum`.
    @param: _flags : cpp.UInt64 - Texture creation (see `BGFX_TEXTURE_*`.), and sampler (see `BGFX_SAMPLER_*`)
    @param: flags. Default texture sampling mode is linear, and wrap mode is repeat.
    @param: - `BGFX_SAMPLER_[U/V/W]_[MIRROR/CLAMP]` - Mirror or clamp to edge wrap
    @param:   mode.
    @param: - `BGFX_SAMPLER_[MIN/MAG/MIP]_[POINT/ANISOTROPIC]` - Point or anisotropic
    @param:   sampling.
    @param: _mem : cpp.ConstStar<bgfx.Memory.Native_Memory> - Texture data. If `_mem` is non-NULL, created texture will be immutable. If
    @param: `_mem` is NULL content of the texture is uninitialized. When `_numLayers` is more than
    @param: 1, expected memory layout is texture and all mips together for each array element.
    **/
    @:native("bgfx_create_texture_cube")
    overload extern public static function createTextureCube(_size:cpp.UInt16, _hasMips:Bool, _numLayers:cpp.UInt16, _format:bgfx.TextureFormat.Native_TextureFormat, _flags:cpp.UInt64, _mem:cpp.ConstStar<bgfx.Memory.Native_Memory>):bgfx.TextureHandle.Native_TextureHandle;

    /**
    Update 2D texture.
    @attention It's valid to update only mutable texture. See `bgfx::createTexture2D` for more info.
    @param: _handle : bgfx.TextureHandle.Native_TextureHandle - Texture handle.
    @param: _layer : cpp.UInt16 - Layer in texture array.
    @param: _mip : cpp.UInt8 - Mip level.
    @param: _x : cpp.UInt16 - X offset in texture.
    @param: _y : cpp.UInt16 - Y offset in texture.
    @param: _width : cpp.UInt16 - Width of texture block.
    @param: _height : cpp.UInt16 - Height of texture block.
    @param: _mem : cpp.ConstStar<bgfx.Memory.Native_Memory> - Texture update data.
    @param: _pitch : cpp.UInt16 - Pitch of input image (bytes). When _pitch is set to
    @param: UINT16_MAX, it will be calculated internally based on _width.
    **/
    @:native("bgfx_update_texture_2d")
    overload extern public static function updateTexture2d(_handle:bgfx.TextureHandle.Native_TextureHandle, _layer:cpp.UInt16, _mip:cpp.UInt8, _x:cpp.UInt16, _y:cpp.UInt16, _width:cpp.UInt16, _height:cpp.UInt16, _mem:cpp.ConstStar<bgfx.Memory.Native_Memory>, _pitch:cpp.UInt16):cpp.Void;

    /**
    Update 3D texture.
    @attention It's valid to update only mutable texture. See `bgfx::createTexture3D` for more info.
    @param: _handle : bgfx.TextureHandle.Native_TextureHandle - Texture handle.
    @param: _mip : cpp.UInt8 - Mip level.
    @param: _x : cpp.UInt16 - X offset in texture.
    @param: _y : cpp.UInt16 - Y offset in texture.
    @param: _z : cpp.UInt16 - Z offset in texture.
    @param: _width : cpp.UInt16 - Width of texture block.
    @param: _height : cpp.UInt16 - Height of texture block.
    @param: _depth : cpp.UInt16 - Depth of texture block.
    @param: _mem : cpp.ConstStar<bgfx.Memory.Native_Memory> - Texture update data.
    **/
    @:native("bgfx_update_texture_3d")
    overload extern public static function updateTexture3d(_handle:bgfx.TextureHandle.Native_TextureHandle, _mip:cpp.UInt8, _x:cpp.UInt16, _y:cpp.UInt16, _z:cpp.UInt16, _width:cpp.UInt16, _height:cpp.UInt16, _depth:cpp.UInt16, _mem:cpp.ConstStar<bgfx.Memory.Native_Memory>):cpp.Void;

    /**
    Update Cube texture.
    @attention It's valid to update only mutable texture. See `bgfx::createTextureCube` for more info.
    @param: _handle : bgfx.TextureHandle.Native_TextureHandle - Texture handle.
    @param: _layer : cpp.UInt16 - Layer in texture array.
    @param: _side : cpp.UInt8 - Cubemap side `BGFX_CUBE_MAP_<POSITIVE or NEGATIVE>_<X, Y or Z>`,
    @param:   where 0 is +X, 1 is -X, 2 is +Y, 3 is -Y, 4 is +Z, and 5 is -Z.
    @param:                  +----------+
    @param:                  |-z       2|
    @param:                  | ^  +y    |
    @param:                  | |        |    Unfolded cube:
    @param:                  | +---->+x |
    @param:       +----------+----------+----------+----------+
    @param:       |+y       1|+y       4|+y       0|+y       5|
    @param:       | ^  -x    | ^  +z    | ^  +x    | ^  -z    |
    @param:       | |        | |        | |        | |        |
    @param:       | +---->+z | +---->+x | +---->-z | +---->-x |
    @param:       +----------+----------+----------+----------+
    @param:                  |+z       3|
    @param:                  | ^  -y    |
    @param:                  | |        |
    @param:                  | +---->+x |
    @param:                  +----------+
    @param: _mip : cpp.UInt8 - Mip level.
    @param: _x : cpp.UInt16 - X offset in texture.
    @param: _y : cpp.UInt16 - Y offset in texture.
    @param: _width : cpp.UInt16 - Width of texture block.
    @param: _height : cpp.UInt16 - Height of texture block.
    @param: _mem : cpp.ConstStar<bgfx.Memory.Native_Memory> - Texture update data.
    @param: _pitch : cpp.UInt16 - Pitch of input image (bytes). When _pitch is set to
    @param: UINT16_MAX, it will be calculated internally based on _width.
    **/
    @:native("bgfx_update_texture_cube")
    overload extern public static function updateTextureCube(_handle:bgfx.TextureHandle.Native_TextureHandle, _layer:cpp.UInt16, _side:cpp.UInt8, _mip:cpp.UInt8, _x:cpp.UInt16, _y:cpp.UInt16, _width:cpp.UInt16, _height:cpp.UInt16, _mem:cpp.ConstStar<bgfx.Memory.Native_Memory>, _pitch:cpp.UInt16):cpp.Void;

    /**
    Read back texture content.
    @attention Texture must be created with `BGFX_TEXTURE_READ_BACK` flag.
    @attention Availability depends on: `BGFX_CAPS_TEXTURE_READ_BACK`.
    @param: _handle : bgfx.TextureHandle.Native_TextureHandle - Texture handle.
    @param: _data : cpp.RawPointer<cpp.Void> - Destination buffer.
    @param: _mip : cpp.UInt8 - Mip level.
    **/
    @:native("bgfx_read_texture")
    overload extern public static function readTexture(_handle:bgfx.TextureHandle.Native_TextureHandle, _data:cpp.RawPointer<cpp.Void>, _mip:cpp.UInt8):cpp.UInt32;

    /**
    Set texture debug name.
    @param: _handle : bgfx.TextureHandle.Native_TextureHandle - Texture handle.
    @param: _name : cpp.Char - Texture name.
    @param: _len : cpp.Int32 - Texture name length (if length is INT32_MAX, it's expected
    @param: that _name is zero terminated string.
    **/
    @:native("bgfx_set_texture_name")
    overload extern public static function setTextureName(_handle:bgfx.TextureHandle.Native_TextureHandle, _name:cpp.Char, _len:cpp.Int32):cpp.Void;

    /**
    Returns texture direct access pointer.
    @attention Availability depends on: `BGFX_CAPS_TEXTURE_DIRECT_ACCESS`. This feature
      is available on GPUs that have unified memory architecture (UMA) support.
    @param: _handle : bgfx.TextureHandle.Native_TextureHandle - Texture handle.
    **/
    @:native("bgfx_get_direct_access_ptr")
    overload extern public static function getDirectAccessPtr(_handle:bgfx.TextureHandle.Native_TextureHandle):cpp.RawPointer<cpp.Void>;

    /**
    Destroy texture.
    @param: _handle : bgfx.TextureHandle.Native_TextureHandle - Texture handle.
    **/
    @:native("bgfx_destroy_texture")
    overload extern public static function destroyTexture(_handle:bgfx.TextureHandle.Native_TextureHandle):cpp.Void;

    /**
    Create frame buffer (simple).
    @param: _width : cpp.UInt16 - Texture width.
    @param: _height : cpp.UInt16 - Texture height.
    @param: _format : bgfx.TextureFormat.Native_TextureFormat - Texture format. See: `TextureFormat::Enum`.
    @param: _textureFlags : cpp.UInt64 - Texture creation (see `BGFX_TEXTURE_*`.), and sampler (see `BGFX_SAMPLER_*`)
    @param: flags. Default texture sampling mode is linear, and wrap mode is repeat.
    @param: - `BGFX_SAMPLER_[U/V/W]_[MIRROR/CLAMP]` - Mirror or clamp to edge wrap
    @param:   mode.
    @param: - `BGFX_SAMPLER_[MIN/MAG/MIP]_[POINT/ANISOTROPIC]` - Point or anisotropic
    @param:   sampling.
    **/
    @:native("bgfx_create_frame_buffer")
    overload extern public static function createFrameBuffer(_width:cpp.UInt16, _height:cpp.UInt16, _format:bgfx.TextureFormat.Native_TextureFormat, _textureFlags:cpp.UInt64):bgfx.FrameBufferHandle.Native_FrameBufferHandle;

    /**
    Create frame buffer with size based on back-buffer ratio. Frame buffer will maintain ratio
    if back buffer resolution changes.
    @param: _ratio : bgfx.BackbufferRatio.Native_BackbufferRatio - Frame buffer size in respect to back-buffer size. See:
    @param: `BackbufferRatio::Enum`.
    @param: _format : bgfx.TextureFormat.Native_TextureFormat - Texture format. See: `TextureFormat::Enum`.
    @param: _textureFlags : cpp.UInt64 - Texture creation (see `BGFX_TEXTURE_*`.), and sampler (see `BGFX_SAMPLER_*`)
    @param: flags. Default texture sampling mode is linear, and wrap mode is repeat.
    @param: - `BGFX_SAMPLER_[U/V/W]_[MIRROR/CLAMP]` - Mirror or clamp to edge wrap
    @param:   mode.
    @param: - `BGFX_SAMPLER_[MIN/MAG/MIP]_[POINT/ANISOTROPIC]` - Point or anisotropic
    @param:   sampling.
    **/
    @:native("bgfx_create_frame_buffer_scaled")
    overload extern public static function createFrameBufferScaled(_ratio:bgfx.BackbufferRatio.Native_BackbufferRatio, _format:bgfx.TextureFormat.Native_TextureFormat, _textureFlags:cpp.UInt64):bgfx.FrameBufferHandle.Native_FrameBufferHandle;

    /**
    Create MRT frame buffer from texture handles (simple).
    @param: _num : cpp.UInt8 - Number of texture handles.
    @param: _handles : cpp.ConstStar<bgfx.TextureHandle.Native_TextureHandle> - Texture attachments.
    @param: _destroyTexture : Bool - If true, textures will be destroyed when
    @param: frame buffer is destroyed.
    **/
    @:native("bgfx_create_frame_buffer_from_handles")
    overload extern public static function createFrameBufferFromHandles(_num:cpp.UInt8, _handles:cpp.ConstStar<bgfx.TextureHandle.Native_TextureHandle>, _destroyTexture:Bool):bgfx.FrameBufferHandle.Native_FrameBufferHandle;

    /**
    Create MRT frame buffer from texture handles with specific layer and
    mip level.
    @param: _num : cpp.UInt8 - Number of attachments.
    @param: _attachment : cpp.ConstStar<bgfx.Attachment.Native_Attachment> - Attachment texture info. See: `bgfx::Attachment`.
    @param: _destroyTexture : Bool - If true, textures will be destroyed when
    @param: frame buffer is destroyed.
    **/
    @:native("bgfx_create_frame_buffer_from_attachment")
    overload extern public static function createFrameBufferFromAttachment(_num:cpp.UInt8, _attachment:cpp.ConstStar<bgfx.Attachment.Native_Attachment>, _destroyTexture:Bool):bgfx.FrameBufferHandle.Native_FrameBufferHandle;

    /**
    Create frame buffer for multiple window rendering.
    @remarks
      Frame buffer cannot be used for sampling.
    @attention Availability depends on: `BGFX_CAPS_SWAP_CHAIN`.
    @param: _nwh : cpp.RawPointer<cpp.Void> - OS' target native window handle.
    @param: _width : cpp.UInt16 - Window back buffer width.
    @param: _height : cpp.UInt16 - Window back buffer height.
    @param: _format : bgfx.TextureFormat.Native_TextureFormat - Window back buffer color format.
    @param: _depthFormat : bgfx.TextureFormat.Native_TextureFormat - Window back buffer depth format.
    **/
    @:native("bgfx_create_frame_buffer_from_nwh")
    overload extern public static function createFrameBufferFromNwh(_nwh:cpp.RawPointer<cpp.Void>, _width:cpp.UInt16, _height:cpp.UInt16, _format:bgfx.TextureFormat.Native_TextureFormat, _depthFormat:bgfx.TextureFormat.Native_TextureFormat):bgfx.FrameBufferHandle.Native_FrameBufferHandle;

    /**
    Set frame buffer debug name.
    @param: _handle : bgfx.FrameBufferHandle.Native_FrameBufferHandle - Frame buffer handle.
    @param: _name : cpp.Char - Frame buffer name.
    @param: _len : cpp.Int32 - Frame buffer name length (if length is INT32_MAX, it's expected
    @param: that _name is zero terminated string.
    **/
    @:native("bgfx_set_frame_buffer_name")
    overload extern public static function setFrameBufferName(_handle:bgfx.FrameBufferHandle.Native_FrameBufferHandle, _name:cpp.Char, _len:cpp.Int32):cpp.Void;

    /**
    Obtain texture handle of frame buffer attachment.
    @param: _handle : bgfx.FrameBufferHandle.Native_FrameBufferHandle - Frame buffer handle.
    **/
    @:native("bgfx_get_texture")
    overload extern public static function getTexture(_handle:bgfx.FrameBufferHandle.Native_FrameBufferHandle, _attachment:cpp.UInt8):bgfx.TextureHandle.Native_TextureHandle;

    /**
    Destroy frame buffer.
    @param: _handle : bgfx.FrameBufferHandle.Native_FrameBufferHandle - Frame buffer handle.
    **/
    @:native("bgfx_destroy_frame_buffer")
    overload extern public static function destroyFrameBuffer(_handle:bgfx.FrameBufferHandle.Native_FrameBufferHandle):cpp.Void;

    /**
    Create shader uniform parameter.
    @remarks
      1. Uniform names are unique. It's valid to call `bgfx::createUniform`
         multiple times with the same uniform name. The library will always
         return the same handle, but the handle reference count will be
         incremented. This means that the same number of `bgfx::destroyUniform`
         must be called to properly destroy the uniform.
      2. Predefined uniforms (declared in `bgfx_shader.sh`):
         - `u_viewRect vec4(x, y, width, height)` - view rectangle for current
           view, in pixels.
         - `u_viewTexel vec4(1.0/width, 1.0/height, undef, undef)` - inverse
           width and height
         - `u_view mat4` - view matrix
         - `u_invView mat4` - inverted view matrix
         - `u_proj mat4` - projection matrix
         - `u_invProj mat4` - inverted projection matrix
         - `u_viewProj mat4` - concatenated view projection matrix
         - `u_invViewProj mat4` - concatenated inverted view projection matrix
         - `u_model mat4[BGFX_CONFIG_MAX_BONES]` - array of model matrices.
         - `u_modelView mat4` - concatenated model view matrix, only first
           model matrix from array is used.
         - `u_modelViewProj mat4` - concatenated model view projection matrix.
         - `u_alphaRef float` - alpha reference value for alpha test.
    @param: _name : cpp.Char - Uniform name in shader.
    @param: _type : bgfx.UniformType.Native_UniformType - Type of uniform (See: `bgfx::UniformType`).
    @param: _num : cpp.UInt16 - Number of elements in array.
    **/
    @:native("bgfx_create_uniform")
    overload extern public static function createUniform(_name:cpp.Char, _type:bgfx.UniformType.Native_UniformType, _num:cpp.UInt16):bgfx.UniformHandle.Native_UniformHandle;

    /**
    Retrieve uniform info.
    @param: _handle : bgfx.UniformHandle.Native_UniformHandle - Handle to uniform object.
    @param: _info : cpp.Reference<bgfx.UniformInfo.Native_UniformInfo> - Uniform info.
    **/
    @:native("bgfx_get_uniform_info")
    overload extern public static function getUniformInfo(_handle:bgfx.UniformHandle.Native_UniformHandle, _info:cpp.Reference<bgfx.UniformInfo.Native_UniformInfo>):cpp.Void;

    /**
    Destroy shader uniform parameter.
    @param: _handle : bgfx.UniformHandle.Native_UniformHandle - Handle to uniform object.
    **/
    @:native("bgfx_destroy_uniform")
    overload extern public static function destroyUniform(_handle:bgfx.UniformHandle.Native_UniformHandle):cpp.Void;

    /**
    Create occlusion query.
    **/
    @:native("bgfx_create_occlusion_query")
    overload extern public static function createOcclusionQuery():bgfx.OcclusionQueryHandle.Native_OcclusionQueryHandle;

    /**
    Retrieve occlusion query result from previous frame.
    @param: _handle : bgfx.OcclusionQueryHandle.Native_OcclusionQueryHandle - Handle to occlusion query object.
    @param: _result : cpp.RawPointer<cpp.Int32> - Number of pixels that passed test. This argument
    @param: can be `NULL` if result of occlusion query is not needed.
    **/
    @:native("bgfx_get_result")
    overload extern public static function getResult(_handle:bgfx.OcclusionQueryHandle.Native_OcclusionQueryHandle, _result:cpp.RawPointer<cpp.Int32>):bgfx.OcclusionQueryResult.Native_OcclusionQueryResult;

    /**
    Destroy occlusion query.
    @param: _handle : bgfx.OcclusionQueryHandle.Native_OcclusionQueryHandle - Handle to occlusion query object.
    **/
    @:native("bgfx_destroy_occlusion_query")
    overload extern public static function destroyOcclusionQuery(_handle:bgfx.OcclusionQueryHandle.Native_OcclusionQueryHandle):cpp.Void;

    /**
    Set palette color value.
    @param: _index : cpp.UInt8 - Index into palette.
    @param: _rgba : cpp.Float32 - RGBA floating point values.
    **/
    @:native("bgfx_set_palette_color")
    overload extern public static function setPaletteColor(_index:cpp.UInt8, _rgba:cpp.Float32):cpp.Void;

    /**
    Set palette color value.
    @param: _index : cpp.UInt8 - Index into palette.
    @param: _rgba : cpp.UInt32 - Packed 32-bit RGBA value.
    **/
    @:native("bgfx_set_palette_color_rgba8")
    overload extern public static function setPaletteColorRgba8(_index:cpp.UInt8, _rgba:cpp.UInt32):cpp.Void;

    /**
    Set view name.
    @remarks
      This is debug only feature.
      In graphics debugger view name will appear as:
          "nnnc <view name>"
           ^  ^ ^
           |  +--- compute (C)
           +------ view id
    @param: _id : bgfx.ViewId - View id.
    @param: _name : cpp.Char - View name.
    @param: _len : cpp.Int32 - View name length (if length is INT32_MAX, it's expected
    @param: that _name is zero terminated string.
    **/
    @:native("bgfx_set_view_name")
    overload extern public static function setViewName(_id:bgfx.ViewId, _name:cpp.Char, _len:cpp.Int32):cpp.Void;

    /**
    Set view rectangle. Draw primitive outside view will be clipped.
    @param: _id : bgfx.ViewId - View id.
    @param: _x : cpp.UInt16 - Position x from the left corner of the window.
    @param: _y : cpp.UInt16 - Position y from the top corner of the window.
    @param: _width : cpp.UInt16 - Width of view port region.
    @param: _height : cpp.UInt16 - Height of view port region.
    **/
    @:native("bgfx_set_view_rect")
    overload extern public static function setViewRect(_id:bgfx.ViewId, _x:cpp.UInt16, _y:cpp.UInt16, _width:cpp.UInt16, _height:cpp.UInt16):cpp.Void;

    /**
    Set view rectangle. Draw primitive outside view will be clipped.
    @param: _id : bgfx.ViewId - View id.
    @param: _x : cpp.UInt16 - Position x from the left corner of the window.
    @param: _y : cpp.UInt16 - Position y from the top corner of the window.
    @param: _ratio : bgfx.BackbufferRatio.Native_BackbufferRatio - Width and height will be set in respect to back-buffer size.
    @param: See: `BackbufferRatio::Enum`.
    **/
    @:native("bgfx_set_view_rect_ratio")
    overload extern public static function setViewRectRatio(_id:bgfx.ViewId, _x:cpp.UInt16, _y:cpp.UInt16, _ratio:bgfx.BackbufferRatio.Native_BackbufferRatio):cpp.Void;

    /**
    Set view scissor. Draw primitive outside view will be clipped. When
    _x, _y, _width and _height are set to 0, scissor will be disabled.
    @param: _id : bgfx.ViewId - View id.
    @param: _x : cpp.UInt16 - Position x from the left corner of the window.
    @param: _y : cpp.UInt16 - Position y from the top corner of the window.
    @param: _width : cpp.UInt16 - Width of view scissor region.
    @param: _height : cpp.UInt16 - Height of view scissor region.
    **/
    @:native("bgfx_set_view_scissor")
    overload extern public static function setViewScissor(_id:bgfx.ViewId, _x:cpp.UInt16, _y:cpp.UInt16, _width:cpp.UInt16, _height:cpp.UInt16):cpp.Void;

    /**
    Set view clear flags.
    @param: _id : bgfx.ViewId - View id.
    @param: _flags : cpp.UInt16 - Clear flags. Use `BGFX_CLEAR_NONE` to remove any clear
    @param: operation. See: `BGFX_CLEAR_*`.
    @param: _rgba : cpp.UInt32 - Color clear value.
    @param: _depth : cpp.Float32 - Depth clear value.
    @param: _stencil : cpp.UInt8 - Stencil clear value.
    **/
    @:native("bgfx_set_view_clear")
    overload extern public static function setViewClear(_id:bgfx.ViewId, _flags:cpp.UInt16, _rgba:cpp.UInt32, _depth:cpp.Float32, _stencil:cpp.UInt8):cpp.Void;

    /**
    Set view clear flags with different clear color for each
    frame buffer texture. `bgfx::setPaletteColor` must be used to set up a
    clear color palette.
    @param: _id : bgfx.ViewId - View id.
    @param: _flags : cpp.UInt16 - Clear flags. Use `BGFX_CLEAR_NONE` to remove any clear
    @param: operation. See: `BGFX_CLEAR_*`.
    @param: _depth : cpp.Float32 - Depth clear value.
    @param: _stencil : cpp.UInt8 - Stencil clear value.
    @param: _c0 : cpp.UInt8 - Palette index for frame buffer attachment 0.
    @param: _c1 : cpp.UInt8 - Palette index for frame buffer attachment 1.
    @param: _c2 : cpp.UInt8 - Palette index for frame buffer attachment 2.
    @param: _c3 : cpp.UInt8 - Palette index for frame buffer attachment 3.
    @param: _c4 : cpp.UInt8 - Palette index for frame buffer attachment 4.
    @param: _c5 : cpp.UInt8 - Palette index for frame buffer attachment 5.
    @param: _c6 : cpp.UInt8 - Palette index for frame buffer attachment 6.
    @param: _c7 : cpp.UInt8 - Palette index for frame buffer attachment 7.
    **/
    @:native("bgfx_set_view_clear_mrt")
    overload extern public static function setViewClearMrt(_id:bgfx.ViewId, _flags:cpp.UInt16, _depth:cpp.Float32, _stencil:cpp.UInt8, _c0:cpp.UInt8, _c1:cpp.UInt8, _c2:cpp.UInt8, _c3:cpp.UInt8, _c4:cpp.UInt8, _c5:cpp.UInt8, _c6:cpp.UInt8, _c7:cpp.UInt8):cpp.Void;

    /**
    Set view sorting mode.
    @remarks
      View mode must be set prior calling `bgfx::submit` for the view.
    @param: _id : bgfx.ViewId - View id.
    @param: _mode : bgfx.ViewMode.Native_ViewMode - View sort mode. See `ViewMode::Enum`.
    **/
    @:native("bgfx_set_view_mode")
    overload extern public static function setViewMode(_id:bgfx.ViewId, _mode:bgfx.ViewMode.Native_ViewMode):cpp.Void;

    /**
    Set view frame buffer.
    @remarks
      Not persistent after `bgfx::reset` call.
    @param: _id : bgfx.ViewId - View id.
    @param: _handle : bgfx.FrameBufferHandle.Native_FrameBufferHandle - Frame buffer handle. Passing `BGFX_INVALID_HANDLE` as
    @param: frame buffer handle will draw primitives from this view into
    @param: default back buffer.
    **/
    @:native("bgfx_set_view_frame_buffer")
    overload extern public static function setViewFrameBuffer(_id:bgfx.ViewId, _handle:bgfx.FrameBufferHandle.Native_FrameBufferHandle):cpp.Void;

    /**
    Set view's view matrix and projection matrix,
    all draw primitives in this view will use these two matrices.
    @param: _id : bgfx.ViewId - View id.
    @param: _view : cpp.RawPointer<cpp.Void> - View matrix.
    @param: _proj : cpp.RawPointer<cpp.Void> - Projection matrix.
    **/
    @:native("bgfx_set_view_transform")
    overload extern public static function setViewTransform(_id:bgfx.ViewId, _view:cpp.RawPointer<cpp.Void>, _proj:cpp.RawPointer<cpp.Void>):cpp.Void;

    /**
    Post submit view reordering.
    @param: _id : bgfx.ViewId - First view id.
    @param: _num : cpp.UInt16 - Number of views to remap.
    @param: _order : cpp.Star<cpp.Void> - View remap id table. Passing `NULL` will reset view ids
    @param: to default state.
    **/
    @:native("bgfx_set_view_order")
    overload extern public static function setViewOrder(_id:bgfx.ViewId, _num:cpp.UInt16, _order:cpp.Star<cpp.Void>):cpp.Void;

    /**
    Reset all view settings to default.
    **/
    @:native("bgfx_reset_view")
    overload extern public static function resetView(_id:bgfx.ViewId):cpp.Void;

    /**
    Begin submitting draw calls from thread.
    @param: _forThread : Bool - Explicitly request an encoder for a worker thread.
    **/
    @:native("bgfx_encoder_begin")
    overload extern public static function encoderBegin(_forThread:Bool):cpp.Star<bgfx.Encoder.Native_Encoder>;

    /**
    End submitting draw calls from thread.
    @param: _encoder : cpp.Star<bgfx.Encoder.Native_Encoder> - Encoder.
    **/
    @:native("bgfx_encoder_end")
    overload extern public static function encoderEnd(_encoder:cpp.Star<bgfx.Encoder.Native_Encoder>):cpp.Void;

    /**
    Sets a debug marker. This allows you to group graphics calls together for easy browsing in
    graphics debugging tools.
    @param: _name : cpp.Char - Marker name.
    @param: _len : cpp.Int32 - Marker name length (if length is INT32_MAX, it's expected
    @param: that _name is zero terminated string.
    **/
    @:native("bgfx_encoder_set_marker")
    overload extern public static function encoderSetMarker(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _name:cpp.Char, _len:cpp.Int32):cpp.Void;

    /**
    Set render states for draw primitive.
    @remarks
      1. To set up more complex states use:
         `BGFX_STATE_ALPHA_REF(_ref)`,
         `BGFX_STATE_POINT_SIZE(_size)`,
         `BGFX_STATE_BLEND_FUNC(_src, _dst)`,
         `BGFX_STATE_BLEND_FUNC_SEPARATE(_srcRGB, _dstRGB, _srcA, _dstA)`,
         `BGFX_STATE_BLEND_EQUATION(_equation)`,
         `BGFX_STATE_BLEND_EQUATION_SEPARATE(_equationRGB, _equationA)`
      2. `BGFX_STATE_BLEND_EQUATION_ADD` is set when no other blend
         equation is specified.
    @param: _state : cpp.UInt64 - State flags. Default state for primitive type is
    @param:   triangles. See: `BGFX_STATE_DEFAULT`.
    @param:   - `BGFX_STATE_DEPTH_TEST_*` - Depth test function.
    @param:   - `BGFX_STATE_BLEND_*` - See remark 1 about BGFX_STATE_BLEND_FUNC.
    @param:   - `BGFX_STATE_BLEND_EQUATION_*` - See remark 2.
    @param:   - `BGFX_STATE_CULL_*` - Backface culling mode.
    @param:   - `BGFX_STATE_WRITE_*` - Enable R, G, B, A or Z write.
    @param:   - `BGFX_STATE_MSAA` - Enable hardware multisample antialiasing.
    @param:   - `BGFX_STATE_PT_[TRISTRIP/LINES/POINTS]` - Primitive type.
    @param: _rgba : cpp.UInt32 - Sets blend factor used by `BGFX_STATE_BLEND_FACTOR` and
    @param:   `BGFX_STATE_BLEND_INV_FACTOR` blend modes.
    **/
    @:native("bgfx_encoder_set_state")
    overload extern public static function encoderSetState(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _state:cpp.UInt64, _rgba:cpp.UInt32):cpp.Void;

    /**
    Set condition for rendering.
    @param: _handle : bgfx.OcclusionQueryHandle.Native_OcclusionQueryHandle - Occlusion query handle.
    @param: _visible : Bool - Render if occlusion query is visible.
    **/
    @:native("bgfx_encoder_set_condition")
    overload extern public static function encoderSetCondition(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _handle:bgfx.OcclusionQueryHandle.Native_OcclusionQueryHandle, _visible:Bool):cpp.Void;

    /**
    Set stencil test state.
    @param: _fstencil : cpp.UInt32 - Front stencil state.
    @param: _bstencil : cpp.UInt32 - Back stencil state. If back is set to `BGFX_STENCIL_NONE`
    @param: _fstencil is applied to both front and back facing primitives.
    **/
    @:native("bgfx_encoder_set_stencil")
    overload extern public static function encoderSetStencil(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _fstencil:cpp.UInt32, _bstencil:cpp.UInt32):cpp.Void;

    /**
    Set scissor for draw primitive.
    @remark
      To scissor for all primitives in view see `bgfx::setViewScissor`.
    @param: _x : cpp.UInt16 - Position x from the left corner of the window.
    @param: _y : cpp.UInt16 - Position y from the top corner of the window.
    @param: _width : cpp.UInt16 - Width of view scissor region.
    @param: _height : cpp.UInt16 - Height of view scissor region.
    **/
    @:native("bgfx_encoder_set_scissor")
    overload extern public static function encoderSetScissor(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _x:cpp.UInt16, _y:cpp.UInt16, _width:cpp.UInt16, _height:cpp.UInt16):cpp.UInt16;

    /**
    Set scissor from cache for draw primitive.
    @remark
      To scissor for all primitives in view see `bgfx::setViewScissor`.
    @param: _cache : cpp.UInt16 - Index in scissor cache.
    **/
    @:native("bgfx_encoder_set_scissor_cached")
    overload extern public static function encoderSetScissorCached(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _cache:cpp.UInt16):cpp.Void;

    /**
    Set model matrix for draw primitive. If it is not called,
    the model will be rendered with an identity model matrix.
    @param: _mtx : cpp.RawPointer<cpp.Void> - Pointer to first matrix in array.
    @param: _num : cpp.UInt16 - Number of matrices in array.
    **/
    @:native("bgfx_encoder_set_transform")
    overload extern public static function encoderSetTransform(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _mtx:cpp.RawPointer<cpp.Void>, _num:cpp.UInt16):cpp.UInt32;

    /**
     Set model matrix from matrix cache for draw primitive.
    @param: _cache : cpp.UInt32 - Index in matrix cache.
    @param: _num : cpp.UInt16 - Number of matrices from cache.
    **/
    @:native("bgfx_encoder_set_transform_cached")
    overload extern public static function encoderSetTransformCached(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _cache:cpp.UInt32, _num:cpp.UInt16):cpp.Void;

    /**
    Reserve matrices in internal matrix cache.
    @attention Pointer returned can be modified until `bgfx::frame` is called.
    @param: _transform : cpp.Star<bgfx.Transform.Native_Transform> - Pointer to `Transform` structure.
    @param: _num : cpp.UInt16 - Number of matrices.
    **/
    @:native("bgfx_encoder_alloc_transform")
    overload extern public static function encoderAllocTransform(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _transform:cpp.Star<bgfx.Transform.Native_Transform>, _num:cpp.UInt16):cpp.UInt32;

    /**
    Set shader uniform parameter for draw primitive.
    @param: _handle : bgfx.UniformHandle.Native_UniformHandle - Uniform.
    @param: _value : cpp.RawPointer<cpp.Void> - Pointer to uniform data.
    @param: _num : cpp.UInt16 - Number of elements. Passing `UINT16_MAX` will
    @param: use the _num passed on uniform creation.
    **/
    @:native("bgfx_encoder_set_uniform")
    overload extern public static function encoderSetUniform(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _handle:bgfx.UniformHandle.Native_UniformHandle, _value:cpp.RawPointer<cpp.Void>, _num:cpp.UInt16):cpp.Void;

    /**
    Set index buffer for draw primitive.
    @param: _handle : bgfx.IndexBufferHandle.Native_IndexBufferHandle - Index buffer.
    **/
    @:native("bgfx_encoder_set_index_buffer")
    overload extern public static function encoderSetIndexBuffer(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _handle:bgfx.IndexBufferHandle.Native_IndexBufferHandle):cpp.Void;

    /**
    Set index buffer for draw primitive.
    @param: _handle : bgfx.IndexBufferHandle.Native_IndexBufferHandle - Index buffer.
    @param: _firstIndex : cpp.UInt32 - First index to render.
    @param: _numIndices : cpp.UInt32 - Number of indices to render.
    **/
    @:native("bgfx_encoder_set_index_buffer")
    overload extern public static function encoderSetIndexBuffer(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _handle:bgfx.IndexBufferHandle.Native_IndexBufferHandle, _firstIndex:cpp.UInt32, _numIndices:cpp.UInt32):cpp.Void;

    /**
    Set index buffer for draw primitive.
    @param: _handle : bgfx.DynamicIndexBufferHandle.Native_DynamicIndexBufferHandle - Dynamic index buffer.
    **/
    @:native("bgfx_encoder_set_index_buffer")
    overload extern public static function encoderSetIndexBuffer(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _handle:bgfx.DynamicIndexBufferHandle.Native_DynamicIndexBufferHandle):cpp.Void;

    /**
    Set index buffer for draw primitive.
    @param: _handle : bgfx.DynamicIndexBufferHandle.Native_DynamicIndexBufferHandle - Dynamic index buffer.
    @param: _firstIndex : cpp.UInt32 - First index to render.
    @param: _numIndices : cpp.UInt32 - Number of indices to render.
    **/
    @:native("bgfx_encoder_set_dynamic_index_buffer")
    overload extern public static function encoderSetDynamicIndexBuffer(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _handle:bgfx.DynamicIndexBufferHandle.Native_DynamicIndexBufferHandle, _firstIndex:cpp.UInt32, _numIndices:cpp.UInt32):cpp.Void;

    /**
    Set index buffer for draw primitive.
    @param: _tib : cpp.ConstStar<bgfx.TransientIndexBuffer.Native_TransientIndexBuffer> - Transient index buffer.
    **/
    @:native("bgfx_encoder_set_index_buffer")
    overload extern public static function encoderSetIndexBuffer(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _tib:cpp.ConstStar<bgfx.TransientIndexBuffer.Native_TransientIndexBuffer>):cpp.Void;

    /**
    Set index buffer for draw primitive.
    @param: _tib : cpp.ConstStar<bgfx.TransientIndexBuffer.Native_TransientIndexBuffer> - Transient index buffer.
    @param: _firstIndex : cpp.UInt32 - First index to render.
    @param: _numIndices : cpp.UInt32 - Number of indices to render.
    **/
    @:native("bgfx_encoder_set_transient_index_buffer")
    overload extern public static function encoderSetTransientIndexBuffer(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _tib:cpp.ConstStar<bgfx.TransientIndexBuffer.Native_TransientIndexBuffer>, _firstIndex:cpp.UInt32, _numIndices:cpp.UInt32):cpp.Void;

    /**
    Set vertex buffer for draw primitive.
    @param: _stream : cpp.UInt8 - Vertex stream.
    @param: _handle : bgfx.VertexBufferHandle.Native_VertexBufferHandle - Vertex buffer.
    **/
    @:native("bgfx_encoder_set_vertex_buffer")
    overload extern public static function encoderSetVertexBuffer(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _stream:cpp.UInt8, _handle:bgfx.VertexBufferHandle.Native_VertexBufferHandle):cpp.Void;

    /**
    Set vertex buffer for draw primitive.
    @param: _stream : cpp.UInt8 - Vertex stream.
    @param: _handle : bgfx.VertexBufferHandle.Native_VertexBufferHandle - Vertex buffer.
    @param: _startVertex : cpp.UInt32 - First vertex to render.
    @param: _numVertices : cpp.UInt32 - Number of vertices to render.
    **/
    @:native("bgfx_encoder_set_vertex_buffer")
    overload extern public static function encoderSetVertexBuffer(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _stream:cpp.UInt8, _handle:bgfx.VertexBufferHandle.Native_VertexBufferHandle, _startVertex:cpp.UInt32, _numVertices:cpp.UInt32):cpp.Void;

    /**
    Set vertex buffer for draw primitive.
    @param: _stream : cpp.UInt8 - Vertex stream.
    @param: _handle : bgfx.VertexBufferHandle.Native_VertexBufferHandle - Vertex buffer.
    @param: _startVertex : cpp.UInt32 - First vertex to render.
    @param: _numVertices : cpp.UInt32 - Number of vertices to render.
    @param: _layoutHandle : bgfx.VertexLayoutHandle.Native_VertexLayoutHandle - Vertex layout for aliasing vertex buffer. If invalid
    @param: handle is used, vertex layout used for creation
    @param: of vertex buffer will be used.
    **/
    @:native("bgfx_encoder_set_vertex_buffer_with_layout")
    overload extern public static function encoderSetVertexBufferWithLayout(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _stream:cpp.UInt8, _handle:bgfx.VertexBufferHandle.Native_VertexBufferHandle, _startVertex:cpp.UInt32, _numVertices:cpp.UInt32, _layoutHandle:bgfx.VertexLayoutHandle.Native_VertexLayoutHandle):cpp.Void;

    /**
    Set vertex buffer for draw primitive.
    @param: _stream : cpp.UInt8 - Vertex stream.
    @param: _handle : bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle - Dynamic vertex buffer.
    **/
    @:native("bgfx_encoder_set_vertex_buffer")
    overload extern public static function encoderSetVertexBuffer(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _stream:cpp.UInt8, _handle:bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle):cpp.Void;

    /**
    Set vertex buffer for draw primitive.
    @param: _stream : cpp.UInt8 - Vertex stream.
    @param: _handle : bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle - Dynamic vertex buffer.
    @param: _startVertex : cpp.UInt32 - First vertex to render.
    @param: _numVertices : cpp.UInt32 - Number of vertices to render.
    **/
    @:native("bgfx_encoder_set_dynamic_vertex_buffer")
    overload extern public static function encoderSetDynamicVertexBuffer(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _stream:cpp.UInt8, _handle:bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle, _startVertex:cpp.UInt32, _numVertices:cpp.UInt32):cpp.Void;

    /**
    encoderSetDynamicVertexBufferWithLayout
    @param: _stream : cpp.UInt8 - Vertex stream.
    @param: _handle : bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle - Dynamic vertex buffer.
    @param: _startVertex : cpp.UInt32 - First vertex to render.
    @param: _numVertices : cpp.UInt32 - Number of vertices to render.
    @param: _layoutHandle : bgfx.VertexLayoutHandle.Native_VertexLayoutHandle - Vertex layout for aliasing vertex buffer. If invalid
    @param: handle is used, vertex layout used for creation
    @param: of vertex buffer will be used.
    **/
    @:native("bgfx_encoder_set_dynamic_vertex_buffer_with_layout")
    overload extern public static function encoderSetDynamicVertexBufferWithLayout(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _stream:cpp.UInt8, _handle:bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle, _startVertex:cpp.UInt32, _numVertices:cpp.UInt32, _layoutHandle:bgfx.VertexLayoutHandle.Native_VertexLayoutHandle):cpp.Void;

    /**
    Set vertex buffer for draw primitive.
    @param: _stream : cpp.UInt8 - Vertex stream.
    @param: _tvb : cpp.ConstStar<bgfx.TransientVertexBuffer.Native_TransientVertexBuffer> - Transient vertex buffer.
    **/
    @:native("bgfx_encoder_set_vertex_buffer")
    overload extern public static function encoderSetVertexBuffer(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _stream:cpp.UInt8, _tvb:cpp.ConstStar<bgfx.TransientVertexBuffer.Native_TransientVertexBuffer>):cpp.Void;

    /**
    Set vertex buffer for draw primitive.
    @param: _stream : cpp.UInt8 - Vertex stream.
    @param: _tvb : cpp.ConstStar<bgfx.TransientVertexBuffer.Native_TransientVertexBuffer> - Transient vertex buffer.
    @param: _startVertex : cpp.UInt32 - First vertex to render.
    @param: _numVertices : cpp.UInt32 - Number of vertices to render.
    **/
    @:native("bgfx_encoder_set_transient_vertex_buffer")
    overload extern public static function encoderSetTransientVertexBuffer(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _stream:cpp.UInt8, _tvb:cpp.ConstStar<bgfx.TransientVertexBuffer.Native_TransientVertexBuffer>, _startVertex:cpp.UInt32, _numVertices:cpp.UInt32):cpp.Void;

    /**
    Set vertex buffer for draw primitive.
    @param: _stream : cpp.UInt8 - Vertex stream.
    @param: _tvb : cpp.ConstStar<bgfx.TransientVertexBuffer.Native_TransientVertexBuffer> - Transient vertex buffer.
    @param: _startVertex : cpp.UInt32 - First vertex to render.
    @param: _numVertices : cpp.UInt32 - Number of vertices to render.
    @param: _layoutHandle : bgfx.VertexLayoutHandle.Native_VertexLayoutHandle - Vertex layout for aliasing vertex buffer. If invalid
    @param: handle is used, vertex layout used for creation
    @param: of vertex buffer will be used.
    **/
    @:native("bgfx_encoder_set_transient_vertex_buffer_with_layout")
    overload extern public static function encoderSetTransientVertexBufferWithLayout(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _stream:cpp.UInt8, _tvb:cpp.ConstStar<bgfx.TransientVertexBuffer.Native_TransientVertexBuffer>, _startVertex:cpp.UInt32, _numVertices:cpp.UInt32, _layoutHandle:bgfx.VertexLayoutHandle.Native_VertexLayoutHandle):cpp.Void;

    /**
    Set number of vertices for auto generated vertices use in conjunction
    with gl_VertexID.
    @attention Availability depends on: `BGFX_CAPS_VERTEX_ID`.
    @param: _numVertices : cpp.UInt32 - Number of vertices.
    **/
    @:native("bgfx_encoder_set_vertex_count")
    overload extern public static function encoderSetVertexCount(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _numVertices:cpp.UInt32):cpp.Void;

    /**
    Set instance data buffer for draw primitive.
    @param: _idb : cpp.ConstStar<bgfx.InstanceDataBuffer.Native_InstanceDataBuffer> - Transient instance data buffer.
    **/
    @:native("bgfx_encoder_set_instance_data_buffer")
    overload extern public static function encoderSetInstanceDataBuffer(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _idb:cpp.ConstStar<bgfx.InstanceDataBuffer.Native_InstanceDataBuffer>):cpp.Void;

    /**
    Set instance data buffer for draw primitive.
    @param: _idb : cpp.ConstStar<bgfx.InstanceDataBuffer.Native_InstanceDataBuffer> - Transient instance data buffer.
    @param: _start : cpp.UInt32 - First instance data.
    @param: _num : cpp.UInt32 - Number of data instances.
    **/
    @:native("bgfx_encoder_set_instance_data_buffer")
    overload extern public static function encoderSetInstanceDataBuffer(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _idb:cpp.ConstStar<bgfx.InstanceDataBuffer.Native_InstanceDataBuffer>, _start:cpp.UInt32, _num:cpp.UInt32):cpp.Void;

    /**
    Set instance data buffer for draw primitive.
    @param: _handle : bgfx.VertexBufferHandle.Native_VertexBufferHandle - Vertex buffer.
    @param: _startVertex : cpp.UInt32 - First instance data.
    @param: _num : cpp.UInt32 - Number of data instances.
    **/
    @:native("bgfx_encoder_set_instance_data_from_vertex_buffer")
    overload extern public static function encoderSetInstanceDataFromVertexBuffer(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _handle:bgfx.VertexBufferHandle.Native_VertexBufferHandle, _startVertex:cpp.UInt32, _num:cpp.UInt32):cpp.Void;

    /**
    Set instance data buffer for draw primitive.
    @param: _handle : bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle - Dynamic vertex buffer.
    @param: _startVertex : cpp.UInt32 - First instance data.
    @param: _num : cpp.UInt32 - Number of data instances.
    **/
    @:native("bgfx_encoder_set_instance_data_from_dynamic_vertex_buffer")
    overload extern public static function encoderSetInstanceDataFromDynamicVertexBuffer(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _handle:bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle, _startVertex:cpp.UInt32, _num:cpp.UInt32):cpp.Void;

    /**
    Set number of instances for auto generated instances use in conjunction
    with gl_InstanceID.
    @attention Availability depends on: `BGFX_CAPS_VERTEX_ID`.
    **/
    @:native("bgfx_encoder_set_instance_count")
    overload extern public static function encoderSetInstanceCount(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _numInstances:cpp.UInt32):cpp.Void;

    /**
    Set texture stage for draw primitive.
    @param: _stage : cpp.UInt8 - Texture unit.
    @param: _sampler : bgfx.UniformHandle.Native_UniformHandle - Program sampler.
    @param: _handle : bgfx.TextureHandle.Native_TextureHandle - Texture handle.
    @param: _flags : cpp.UInt32 - Texture sampling mode. Default value UINT32_MAX uses
    @param:   texture sampling settings from the texture.
    @param:   - `BGFX_SAMPLER_[U/V/W]_[MIRROR/CLAMP]` - Mirror or clamp to edge wrap
    @param:     mode.
    @param:   - `BGFX_SAMPLER_[MIN/MAG/MIP]_[POINT/ANISOTROPIC]` - Point or anisotropic
    @param:     sampling.
    **/
    @:native("bgfx_encoder_set_texture")
    overload extern public static function encoderSetTexture(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _stage:cpp.UInt8, _sampler:bgfx.UniformHandle.Native_UniformHandle, _handle:bgfx.TextureHandle.Native_TextureHandle, _flags:cpp.UInt32):cpp.Void;

    /**
    Submit an empty primitive for rendering. Uniforms and draw state
    will be applied but no geometry will be submitted. Useful in cases
    when no other draw/compute primitive is submitted to view, but it's
    desired to execute clear view.
    @remark
      These empty draw calls will sort before ordinary draw calls.
    @param: _id : bgfx.ViewId - View id.
    **/
    @:native("bgfx_encoder_touch")
    overload extern public static function encoderTouch(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _id:bgfx.ViewId):cpp.Void;

    /**
    Submit primitive for rendering.
    @param: _id : bgfx.ViewId - View id.
    @param: _program : bgfx.ProgramHandle.Native_ProgramHandle - Program.
    @param: _depth : cpp.UInt32 - Depth for sorting.
    @param: _flags : cpp.UInt8 - Discard or preserve states. See `BGFX_DISCARD_*`.
    **/
    @:native("bgfx_encoder_submit")
    overload extern public static function encoderSubmit(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _id:bgfx.ViewId, _program:bgfx.ProgramHandle.Native_ProgramHandle, _depth:cpp.UInt32, _flags:cpp.UInt8):cpp.Void;

    /**
    Submit primitive with occlusion query for rendering.
    @param: _id : bgfx.ViewId - View id.
    @param: _program : bgfx.ProgramHandle.Native_ProgramHandle - Program.
    @param: _occlusionQuery : bgfx.OcclusionQueryHandle.Native_OcclusionQueryHandle - Occlusion query.
    @param: _depth : cpp.UInt32 - Depth for sorting.
    @param: _flags : cpp.UInt8 - Discard or preserve states. See `BGFX_DISCARD_*`.
    **/
    @:native("bgfx_encoder_submit_occlusion_query")
    overload extern public static function encoderSubmitOcclusionQuery(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _id:bgfx.ViewId, _program:bgfx.ProgramHandle.Native_ProgramHandle, _occlusionQuery:bgfx.OcclusionQueryHandle.Native_OcclusionQueryHandle, _depth:cpp.UInt32, _flags:cpp.UInt8):cpp.Void;

    /**
    Submit primitive for rendering with index and instance data info from
    indirect buffer.
    @attention Availability depends on: `BGFX_CAPS_DRAW_INDIRECT`.
    @param: _id : bgfx.ViewId - View id.
    @param: _program : bgfx.ProgramHandle.Native_ProgramHandle - Program.
    @param: _indirectHandle : bgfx.IndirectBufferHandle.Native_IndirectBufferHandle - Indirect buffer.
    @param: _start : cpp.UInt32 - First element in indirect buffer.
    @param: _num : cpp.UInt32 - Number of draws.
    @param: _depth : cpp.UInt32 - Depth for sorting.
    @param: _flags : cpp.UInt8 - Discard or preserve states. See `BGFX_DISCARD_*`.
    **/
    @:native("bgfx_encoder_submit_indirect")
    overload extern public static function encoderSubmitIndirect(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _id:bgfx.ViewId, _program:bgfx.ProgramHandle.Native_ProgramHandle, _indirectHandle:bgfx.IndirectBufferHandle.Native_IndirectBufferHandle, _start:cpp.UInt32, _num:cpp.UInt32, _depth:cpp.UInt32, _flags:cpp.UInt8):cpp.Void;

    /**
    Submit primitive for rendering with index and instance data info and
    draw count from indirect buffers.
    @attention Availability depends on: `BGFX_CAPS_DRAW_INDIRECT_COUNT`.
    @param: _id : bgfx.ViewId - View id.
    @param: _program : bgfx.ProgramHandle.Native_ProgramHandle - Program.
    @param: _indirectHandle : bgfx.IndirectBufferHandle.Native_IndirectBufferHandle - Indirect buffer.
    @param: _start : cpp.UInt32 - First element in indirect buffer.
    @param: _numHandle : bgfx.IndexBufferHandle.Native_IndexBufferHandle - Buffer for number of draws. Must be
    @param:   created with `BGFX_BUFFER_INDEX32` and `BGFX_BUFFER_DRAW_INDIRECT`.
    @param: _numIndex : cpp.UInt32 - Element in number buffer.
    @param: _numMax : cpp.UInt32 - Max number of draws.
    @param: _depth : cpp.UInt32 - Depth for sorting.
    @param: _flags : cpp.UInt8 - Discard or preserve states. See `BGFX_DISCARD_*`.
    **/
    @:native("bgfx_encoder_submit_indirect_count")
    overload extern public static function encoderSubmitIndirectCount(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _id:bgfx.ViewId, _program:bgfx.ProgramHandle.Native_ProgramHandle, _indirectHandle:bgfx.IndirectBufferHandle.Native_IndirectBufferHandle, _start:cpp.UInt32, _numHandle:bgfx.IndexBufferHandle.Native_IndexBufferHandle, _numIndex:cpp.UInt32, _numMax:cpp.UInt32, _depth:cpp.UInt32, _flags:cpp.UInt8):cpp.Void;

    /**
    Set compute index buffer.
    @param: _stage : cpp.UInt8 - Compute stage.
    @param: _handle : bgfx.IndexBufferHandle.Native_IndexBufferHandle - Index buffer handle.
    @param: _access : bgfx.Access.Native_Access - Buffer access. See `Access::Enum`.
    **/
    @:native("bgfx_encoder_set_compute_index_buffer")
    overload extern public static function encoderSetComputeIndexBuffer(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _stage:cpp.UInt8, _handle:bgfx.IndexBufferHandle.Native_IndexBufferHandle, _access:bgfx.Access.Native_Access):cpp.Void;

    /**
    Set compute vertex buffer.
    @param: _stage : cpp.UInt8 - Compute stage.
    @param: _handle : bgfx.VertexBufferHandle.Native_VertexBufferHandle - Vertex buffer handle.
    @param: _access : bgfx.Access.Native_Access - Buffer access. See `Access::Enum`.
    **/
    @:native("bgfx_encoder_set_compute_vertex_buffer")
    overload extern public static function encoderSetComputeVertexBuffer(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _stage:cpp.UInt8, _handle:bgfx.VertexBufferHandle.Native_VertexBufferHandle, _access:bgfx.Access.Native_Access):cpp.Void;

    /**
    Set compute dynamic index buffer.
    @param: _stage : cpp.UInt8 - Compute stage.
    @param: _handle : bgfx.DynamicIndexBufferHandle.Native_DynamicIndexBufferHandle - Dynamic index buffer handle.
    @param: _access : bgfx.Access.Native_Access - Buffer access. See `Access::Enum`.
    **/
    @:native("bgfx_encoder_set_compute_dynamic_index_buffer")
    overload extern public static function encoderSetComputeDynamicIndexBuffer(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _stage:cpp.UInt8, _handle:bgfx.DynamicIndexBufferHandle.Native_DynamicIndexBufferHandle, _access:bgfx.Access.Native_Access):cpp.Void;

    /**
    Set compute dynamic vertex buffer.
    @param: _stage : cpp.UInt8 - Compute stage.
    @param: _handle : bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle - Dynamic vertex buffer handle.
    @param: _access : bgfx.Access.Native_Access - Buffer access. See `Access::Enum`.
    **/
    @:native("bgfx_encoder_set_compute_dynamic_vertex_buffer")
    overload extern public static function encoderSetComputeDynamicVertexBuffer(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _stage:cpp.UInt8, _handle:bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle, _access:bgfx.Access.Native_Access):cpp.Void;

    /**
    Set compute indirect buffer.
    @param: _stage : cpp.UInt8 - Compute stage.
    @param: _handle : bgfx.IndirectBufferHandle.Native_IndirectBufferHandle - Indirect buffer handle.
    @param: _access : bgfx.Access.Native_Access - Buffer access. See `Access::Enum`.
    **/
    @:native("bgfx_encoder_set_compute_indirect_buffer")
    overload extern public static function encoderSetComputeIndirectBuffer(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _stage:cpp.UInt8, _handle:bgfx.IndirectBufferHandle.Native_IndirectBufferHandle, _access:bgfx.Access.Native_Access):cpp.Void;

    /**
    Set compute image from texture.
    @param: _stage : cpp.UInt8 - Compute stage.
    @param: _handle : bgfx.TextureHandle.Native_TextureHandle - Texture handle.
    @param: _mip : cpp.UInt8 - Mip level.
    @param: _access : bgfx.Access.Native_Access - Image access. See `Access::Enum`.
    @param: _format : bgfx.TextureFormat.Native_TextureFormat - Texture format. See: `TextureFormat::Enum`.
    **/
    @:native("bgfx_encoder_set_image")
    overload extern public static function encoderSetImage(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _stage:cpp.UInt8, _handle:bgfx.TextureHandle.Native_TextureHandle, _mip:cpp.UInt8, _access:bgfx.Access.Native_Access, _format:bgfx.TextureFormat.Native_TextureFormat):cpp.Void;

    /**
    Dispatch compute.
    @param: _id : bgfx.ViewId - View id.
    @param: _program : bgfx.ProgramHandle.Native_ProgramHandle - Compute program.
    @param: _numX : cpp.UInt32 - Number of groups X.
    @param: _numY : cpp.UInt32 - Number of groups Y.
    @param: _numZ : cpp.UInt32 - Number of groups Z.
    @param: _flags : cpp.UInt8 - Discard or preserve states. See `BGFX_DISCARD_*`.
    **/
    @:native("bgfx_encoder_dispatch")
    overload extern public static function encoderDispatch(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _id:bgfx.ViewId, _program:bgfx.ProgramHandle.Native_ProgramHandle, _numX:cpp.UInt32, _numY:cpp.UInt32, _numZ:cpp.UInt32, _flags:cpp.UInt8):cpp.Void;

    /**
    Dispatch compute indirect.
    @param: _id : bgfx.ViewId - View id.
    @param: _program : bgfx.ProgramHandle.Native_ProgramHandle - Compute program.
    @param: _indirectHandle : bgfx.IndirectBufferHandle.Native_IndirectBufferHandle - Indirect buffer.
    @param: _start : cpp.UInt32 - First element in indirect buffer.
    @param: _num : cpp.UInt32 - Number of dispatches.
    @param: _flags : cpp.UInt8 - Discard or preserve states. See `BGFX_DISCARD_*`.
    **/
    @:native("bgfx_encoder_dispatch_indirect")
    overload extern public static function encoderDispatchIndirect(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _id:bgfx.ViewId, _program:bgfx.ProgramHandle.Native_ProgramHandle, _indirectHandle:bgfx.IndirectBufferHandle.Native_IndirectBufferHandle, _start:cpp.UInt32, _num:cpp.UInt32, _flags:cpp.UInt8):cpp.Void;

    /**
    Discard previously set state for draw or compute call.
    @param: _flags : cpp.UInt8 - Discard or preserve states. See `BGFX_DISCARD_*`.
    **/
    @:native("bgfx_encoder_discard")
    overload extern public static function encoderDiscard(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _flags:cpp.UInt8):cpp.Void;

    /**
    Blit 2D texture region between two 2D textures.
    @attention Destination texture must be created with `BGFX_TEXTURE_BLIT_DST` flag.
    @attention Availability depends on: `BGFX_CAPS_TEXTURE_BLIT`.
    @param: _id : bgfx.ViewId - View id.
    @param: _dst : bgfx.TextureHandle.Native_TextureHandle - Destination texture handle.
    @param: _dstX : cpp.UInt16 - Destination texture X position.
    @param: _dstY : cpp.UInt16 - Destination texture Y position.
    @param: _src : bgfx.TextureHandle.Native_TextureHandle - Source texture handle.
    @param: _srcX : cpp.UInt16 - Source texture X position.
    @param: _srcY : cpp.UInt16 - Source texture Y position.
    @param: _width : cpp.UInt16 - Width of region.
    @param: _height : cpp.UInt16 - Height of region.
    **/
    @:native("bgfx_encoder_blit")
    overload extern public static function encoderBlit(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _id:bgfx.ViewId, _dst:bgfx.TextureHandle.Native_TextureHandle, _dstX:cpp.UInt16, _dstY:cpp.UInt16, _src:bgfx.TextureHandle.Native_TextureHandle, _srcX:cpp.UInt16, _srcY:cpp.UInt16, _width:cpp.UInt16, _height:cpp.UInt16):cpp.Void;

    /**
    Blit 2D texture region between two 2D textures.
    @attention Destination texture must be created with `BGFX_TEXTURE_BLIT_DST` flag.
    @attention Availability depends on: `BGFX_CAPS_TEXTURE_BLIT`.
    @param: _id : bgfx.ViewId - View id.
    @param: _dst : bgfx.TextureHandle.Native_TextureHandle - Destination texture handle.
    @param: _dstMip : cpp.UInt8 - Destination texture mip level.
    @param: _dstX : cpp.UInt16 - Destination texture X position.
    @param: _dstY : cpp.UInt16 - Destination texture Y position.
    @param: _dstZ : cpp.UInt16 - If texture is 2D this argument should be 0. If destination texture is cube
    @param: this argument represents destination texture cube face. For 3D texture this argument
    @param: represents destination texture Z position.
    @param: _src : bgfx.TextureHandle.Native_TextureHandle - Source texture handle.
    @param: _srcMip : cpp.UInt8 - Source texture mip level.
    @param: _srcX : cpp.UInt16 - Source texture X position.
    @param: _srcY : cpp.UInt16 - Source texture Y position.
    @param: _srcZ : cpp.UInt16 - If texture is 2D this argument should be 0. If source texture is cube
    @param: this argument represents source texture cube face. For 3D texture this argument
    @param: represents source texture Z position.
    @param: _width : cpp.UInt16 - Width of region.
    @param: _height : cpp.UInt16 - Height of region.
    @param: _depth : cpp.UInt16 - If texture is 3D this argument represents depth of region, otherwise it's
    @param: unused.
    **/
    @:native("bgfx_encoder_blit")
    overload extern public static function encoderBlit(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _id:bgfx.ViewId, _dst:bgfx.TextureHandle.Native_TextureHandle, _dstMip:cpp.UInt8, _dstX:cpp.UInt16, _dstY:cpp.UInt16, _dstZ:cpp.UInt16, _src:bgfx.TextureHandle.Native_TextureHandle, _srcMip:cpp.UInt8, _srcX:cpp.UInt16, _srcY:cpp.UInt16, _srcZ:cpp.UInt16, _width:cpp.UInt16, _height:cpp.UInt16, _depth:cpp.UInt16):cpp.Void;

    /**
    Request screen shot of window back buffer.
    @remarks
      `bgfx::CallbackI::screenShot` must be implemented.
    @attention Frame buffer handle must be created with OS' target native window handle.
    @param: _handle : bgfx.FrameBufferHandle.Native_FrameBufferHandle - Frame buffer handle. If handle is `BGFX_INVALID_HANDLE` request will be
    @param: made for main window back buffer.
    @param: _filePath : cpp.Char - Will be passed to `bgfx::CallbackI::screenShot` callback.
    **/
    @:native("bgfx_request_screen_shot")
    overload extern public static function requestScreenShot(_handle:bgfx.FrameBufferHandle.Native_FrameBufferHandle, _filePath:cpp.Char):cpp.Void;

    /**
    Render frame.
    @attention `bgfx::renderFrame` is blocking call. It waits for
      `bgfx::frame` to be called from API thread to process frame.
      If timeout value is passed call will timeout and return even
      if `bgfx::frame` is not called.
    @warning This call should be only used on platforms that don't
      allow creating separate rendering thread. If it is called before
      to bgfx::init, render thread won't be created by bgfx::init call.
    @param: _msecs : cpp.Int32 - Timeout in milliseconds.
    **/
    @:native("bgfx_render_frame")
    overload extern public static function renderFrame(_msecs:cpp.Int32):bgfx.RenderFrame.Native_RenderFrame;

    /**
    Set platform data.
    @warning Must be called before `bgfx::init`.
    @param: _data : cpp.Reference<bgfx.PlatformData.Native_PlatformData> - Platform data.
    **/
    @:native("bgfx_set_platform_data")
    overload extern public static function setPlatformData(_data:cpp.Reference<bgfx.PlatformData.Native_PlatformData>):cpp.Void;

    /**
    Get internal data for interop.
    @attention It's expected you understand some bgfx internals before you
      use this call.
    @warning Must be called only on render thread.
    **/
    @:native("bgfx_get_internal_data")
    overload extern public static function getInternalData():cpp.ConstStar<bgfx.InternalData.Native_InternalData>;

    /**
    Override internal texture with externally created texture. Previously
    created internal texture will released.
    @attention It's expected you understand some bgfx internals before you
      use this call.
    @warning Must be called only on render thread.
    @param: _handle : bgfx.TextureHandle.Native_TextureHandle - Texture handle.
    @param: _ptr : cpp.UInt64 - Native API pointer to texture.
    **/
    @:native("bgfx_override_internal_texture_ptr")
    overload extern public static function overrideInternalTexturePtr(_handle:bgfx.TextureHandle.Native_TextureHandle, _ptr:cpp.UInt64):cpp.UInt64;

    /**
    Override internal texture by creating new texture. Previously created
    internal texture will released.
    @attention It's expected you understand some bgfx internals before you
      use this call.
    @returns Native API pointer to texture. If result is 0, texture is not created yet from the
      main thread.
    @warning Must be called only on render thread.
    @param: _handle : bgfx.TextureHandle.Native_TextureHandle - Texture handle.
    @param: _width : cpp.UInt16 - Width.
    @param: _height : cpp.UInt16 - Height.
    @param: _numMips : cpp.UInt8 - Number of mip-maps.
    @param: _format : bgfx.TextureFormat.Native_TextureFormat - Texture format. See: `TextureFormat::Enum`.
    @param: _flags : cpp.UInt64 - Texture creation (see `BGFX_TEXTURE_*`.), and sampler (see `BGFX_SAMPLER_*`)
    @param: flags. Default texture sampling mode is linear, and wrap mode is repeat.
    @param: - `BGFX_SAMPLER_[U/V/W]_[MIRROR/CLAMP]` - Mirror or clamp to edge wrap
    @param:   mode.
    @param: - `BGFX_SAMPLER_[MIN/MAG/MIP]_[POINT/ANISOTROPIC]` - Point or anisotropic
    @param:   sampling.
    **/
    @:native("bgfx_override_internal_texture")
    overload extern public static function overrideInternalTexture(_handle:bgfx.TextureHandle.Native_TextureHandle, _width:cpp.UInt16, _height:cpp.UInt16, _numMips:cpp.UInt8, _format:bgfx.TextureFormat.Native_TextureFormat, _flags:cpp.UInt64):cpp.UInt64;

    /**
    Sets a debug marker. This allows you to group graphics calls together for easy browsing in
    graphics debugging tools.
    @param: _name : cpp.Char - Marker name.
    @param: _len : cpp.Int32 - Marker name length (if length is INT32_MAX, it's expected
    @param: that _name is zero terminated string.
    **/
    @:native("bgfx_set_marker")
    overload extern public static function setMarker(_name:cpp.Char, _len:cpp.Int32):cpp.Void;

    /**
    Set render states for draw primitive.
    @remarks
      1. To set up more complex states use:
         `BGFX_STATE_ALPHA_REF(_ref)`,
         `BGFX_STATE_POINT_SIZE(_size)`,
         `BGFX_STATE_BLEND_FUNC(_src, _dst)`,
         `BGFX_STATE_BLEND_FUNC_SEPARATE(_srcRGB, _dstRGB, _srcA, _dstA)`,
         `BGFX_STATE_BLEND_EQUATION(_equation)`,
         `BGFX_STATE_BLEND_EQUATION_SEPARATE(_equationRGB, _equationA)`
      2. `BGFX_STATE_BLEND_EQUATION_ADD` is set when no other blend
         equation is specified.
    @param: _state : cpp.UInt64 - State flags. Default state for primitive type is
    @param:   triangles. See: `BGFX_STATE_DEFAULT`.
    @param:   - `BGFX_STATE_DEPTH_TEST_*` - Depth test function.
    @param:   - `BGFX_STATE_BLEND_*` - See remark 1 about BGFX_STATE_BLEND_FUNC.
    @param:   - `BGFX_STATE_BLEND_EQUATION_*` - See remark 2.
    @param:   - `BGFX_STATE_CULL_*` - Backface culling mode.
    @param:   - `BGFX_STATE_WRITE_*` - Enable R, G, B, A or Z write.
    @param:   - `BGFX_STATE_MSAA` - Enable hardware multisample antialiasing.
    @param:   - `BGFX_STATE_PT_[TRISTRIP/LINES/POINTS]` - Primitive type.
    @param: _rgba : cpp.UInt32 - Sets blend factor used by `BGFX_STATE_BLEND_FACTOR` and
    @param:   `BGFX_STATE_BLEND_INV_FACTOR` blend modes.
    **/
    @:native("bgfx_set_state")
    overload extern public static function setState(_state:cpp.UInt64, _rgba:cpp.UInt32):cpp.Void;

    /**
    Set condition for rendering.
    @param: _handle : bgfx.OcclusionQueryHandle.Native_OcclusionQueryHandle - Occlusion query handle.
    @param: _visible : Bool - Render if occlusion query is visible.
    **/
    @:native("bgfx_set_condition")
    overload extern public static function setCondition(_handle:bgfx.OcclusionQueryHandle.Native_OcclusionQueryHandle, _visible:Bool):cpp.Void;

    /**
    Set stencil test state.
    @param: _fstencil : cpp.UInt32 - Front stencil state.
    @param: _bstencil : cpp.UInt32 - Back stencil state. If back is set to `BGFX_STENCIL_NONE`
    @param: _fstencil is applied to both front and back facing primitives.
    **/
    @:native("bgfx_set_stencil")
    overload extern public static function setStencil(_fstencil:cpp.UInt32, _bstencil:cpp.UInt32):cpp.Void;

    /**
    Set scissor for draw primitive.
    @remark
      To scissor for all primitives in view see `bgfx::setViewScissor`.
    @param: _x : cpp.UInt16 - Position x from the left corner of the window.
    @param: _y : cpp.UInt16 - Position y from the top corner of the window.
    @param: _width : cpp.UInt16 - Width of view scissor region.
    @param: _height : cpp.UInt16 - Height of view scissor region.
    **/
    @:native("bgfx_set_scissor")
    overload extern public static function setScissor(_x:cpp.UInt16, _y:cpp.UInt16, _width:cpp.UInt16, _height:cpp.UInt16):cpp.UInt16;

    /**
    Set scissor from cache for draw primitive.
    @remark
      To scissor for all primitives in view see `bgfx::setViewScissor`.
    @param: _cache : cpp.UInt16 - Index in scissor cache.
    **/
    @:native("bgfx_set_scissor_cached")
    overload extern public static function setScissorCached(_cache:cpp.UInt16):cpp.Void;

    /**
    Set model matrix for draw primitive. If it is not called,
    the model will be rendered with an identity model matrix.
    @param: _mtx : cpp.RawPointer<cpp.Void> - Pointer to first matrix in array.
    @param: _num : cpp.UInt16 - Number of matrices in array.
    **/
    @:native("bgfx_set_transform")
    overload extern public static function setTransform(_mtx:cpp.RawPointer<cpp.Void>, _num:cpp.UInt16):cpp.UInt32;

    /**
     Set model matrix from matrix cache for draw primitive.
    @param: _cache : cpp.UInt32 - Index in matrix cache.
    @param: _num : cpp.UInt16 - Number of matrices from cache.
    **/
    @:native("bgfx_set_transform_cached")
    overload extern public static function setTransformCached(_cache:cpp.UInt32, _num:cpp.UInt16):cpp.Void;

    /**
    Reserve matrices in internal matrix cache.
    @attention Pointer returned can be modified until `bgfx::frame` is called.
    @param: _transform : cpp.Star<bgfx.Transform.Native_Transform> - Pointer to `Transform` structure.
    @param: _num : cpp.UInt16 - Number of matrices.
    **/
    @:native("bgfx_alloc_transform")
    overload extern public static function allocTransform(_transform:cpp.Star<bgfx.Transform.Native_Transform>, _num:cpp.UInt16):cpp.UInt32;

    /**
    Set shader uniform parameter for draw primitive.
    @param: _handle : bgfx.UniformHandle.Native_UniformHandle - Uniform.
    @param: _value : cpp.RawPointer<cpp.Void> - Pointer to uniform data.
    @param: _num : cpp.UInt16 - Number of elements. Passing `UINT16_MAX` will
    @param: use the _num passed on uniform creation.
    **/
    @:native("bgfx_set_uniform")
    overload extern public static function setUniform(_handle:bgfx.UniformHandle.Native_UniformHandle, _value:cpp.RawPointer<cpp.Void>, _num:cpp.UInt16):cpp.Void;

    /**
    Set index buffer for draw primitive.
    @param: _handle : bgfx.IndexBufferHandle.Native_IndexBufferHandle - Index buffer.
    **/
    @:native("bgfx_set_index_buffer")
    overload extern public static function setIndexBuffer(_handle:bgfx.IndexBufferHandle.Native_IndexBufferHandle):cpp.Void;

    /**
    Set index buffer for draw primitive.
    @param: _handle : bgfx.IndexBufferHandle.Native_IndexBufferHandle - Index buffer.
    @param: _firstIndex : cpp.UInt32 - First index to render.
    @param: _numIndices : cpp.UInt32 - Number of indices to render.
    **/
    @:native("bgfx_set_index_buffer")
    overload extern public static function setIndexBuffer(_handle:bgfx.IndexBufferHandle.Native_IndexBufferHandle, _firstIndex:cpp.UInt32, _numIndices:cpp.UInt32):cpp.Void;

    /**
    Set index buffer for draw primitive.
    @param: _handle : bgfx.DynamicIndexBufferHandle.Native_DynamicIndexBufferHandle - Dynamic index buffer.
    **/
    @:native("bgfx_set_index_buffer")
    overload extern public static function setIndexBuffer(_handle:bgfx.DynamicIndexBufferHandle.Native_DynamicIndexBufferHandle):cpp.Void;

    /**
    Set index buffer for draw primitive.
    @param: _handle : bgfx.DynamicIndexBufferHandle.Native_DynamicIndexBufferHandle - Dynamic index buffer.
    @param: _firstIndex : cpp.UInt32 - First index to render.
    @param: _numIndices : cpp.UInt32 - Number of indices to render.
    **/
    @:native("bgfx_set_dynamic_index_buffer")
    overload extern public static function setDynamicIndexBuffer(_handle:bgfx.DynamicIndexBufferHandle.Native_DynamicIndexBufferHandle, _firstIndex:cpp.UInt32, _numIndices:cpp.UInt32):cpp.Void;

    /**
    Set index buffer for draw primitive.
    @param: _tib : cpp.ConstStar<bgfx.TransientIndexBuffer.Native_TransientIndexBuffer> - Transient index buffer.
    **/
    @:native("bgfx_set_index_buffer")
    overload extern public static function setIndexBuffer(_tib:cpp.ConstStar<bgfx.TransientIndexBuffer.Native_TransientIndexBuffer>):cpp.Void;

    /**
    Set index buffer for draw primitive.
    @param: _tib : cpp.ConstStar<bgfx.TransientIndexBuffer.Native_TransientIndexBuffer> - Transient index buffer.
    @param: _firstIndex : cpp.UInt32 - First index to render.
    @param: _numIndices : cpp.UInt32 - Number of indices to render.
    **/
    @:native("bgfx_set_transient_index_buffer")
    overload extern public static function setTransientIndexBuffer(_tib:cpp.ConstStar<bgfx.TransientIndexBuffer.Native_TransientIndexBuffer>, _firstIndex:cpp.UInt32, _numIndices:cpp.UInt32):cpp.Void;

    /**
    Set vertex buffer for draw primitive.
    @param: _stream : cpp.UInt8 - Vertex stream.
    @param: _handle : bgfx.VertexBufferHandle.Native_VertexBufferHandle - Vertex buffer.
    **/
    @:native("bgfx_set_vertex_buffer")
    overload extern public static function setVertexBuffer(_stream:cpp.UInt8, _handle:bgfx.VertexBufferHandle.Native_VertexBufferHandle):cpp.Void;

    /**
    Set vertex buffer for draw primitive.
    @param: _stream : cpp.UInt8 - Vertex stream.
    @param: _handle : bgfx.VertexBufferHandle.Native_VertexBufferHandle - Vertex buffer.
    @param: _startVertex : cpp.UInt32 - First vertex to render.
    @param: _numVertices : cpp.UInt32 - Number of vertices to render.
    **/
    @:native("bgfx_set_vertex_buffer")
    overload extern public static function setVertexBuffer(_stream:cpp.UInt8, _handle:bgfx.VertexBufferHandle.Native_VertexBufferHandle, _startVertex:cpp.UInt32, _numVertices:cpp.UInt32):cpp.Void;

    /**
    Set vertex buffer for draw primitive.
    @param: _stream : cpp.UInt8 - Vertex stream.
    @param: _handle : bgfx.VertexBufferHandle.Native_VertexBufferHandle - Vertex buffer.
    @param: _startVertex : cpp.UInt32 - First vertex to render.
    @param: _numVertices : cpp.UInt32 - Number of vertices to render.
    @param: _layoutHandle : bgfx.VertexLayoutHandle.Native_VertexLayoutHandle - Vertex layout for aliasing vertex buffer. If invalid
    @param: handle is used, vertex layout used for creation
    @param: of vertex buffer will be used.
    **/
    @:native("bgfx_set_vertex_buffer_with_layout")
    overload extern public static function setVertexBufferWithLayout(_stream:cpp.UInt8, _handle:bgfx.VertexBufferHandle.Native_VertexBufferHandle, _startVertex:cpp.UInt32, _numVertices:cpp.UInt32, _layoutHandle:bgfx.VertexLayoutHandle.Native_VertexLayoutHandle):cpp.Void;

    /**
    Set vertex buffer for draw primitive.
    @param: _stream : cpp.UInt8 - Vertex stream.
    @param: _handle : bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle - Dynamic vertex buffer.
    **/
    @:native("bgfx_set_vertex_buffer")
    overload extern public static function setVertexBuffer(_stream:cpp.UInt8, _handle:bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle):cpp.Void;

    /**
    Set vertex buffer for draw primitive.
    @param: _stream : cpp.UInt8 - Vertex stream.
    @param: _handle : bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle - Dynamic vertex buffer.
    @param: _startVertex : cpp.UInt32 - First vertex to render.
    @param: _numVertices : cpp.UInt32 - Number of vertices to render.
    **/
    @:native("bgfx_set_dynamic_vertex_buffer")
    overload extern public static function setDynamicVertexBuffer(_stream:cpp.UInt8, _handle:bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle, _startVertex:cpp.UInt32, _numVertices:cpp.UInt32):cpp.Void;

    /**
    Set vertex buffer for draw primitive.
    @param: _stream : cpp.UInt8 - Vertex stream.
    @param: _handle : bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle - Dynamic vertex buffer.
    @param: _startVertex : cpp.UInt32 - First vertex to render.
    @param: _numVertices : cpp.UInt32 - Number of vertices to render.
    @param: _layoutHandle : bgfx.VertexLayoutHandle.Native_VertexLayoutHandle - Vertex layout for aliasing vertex buffer. If invalid
    @param: handle is used, vertex layout used for creation
    @param: of vertex buffer will be used.
    **/
    @:native("bgfx_set_dynamic_vertex_buffer_with_layout")
    overload extern public static function setDynamicVertexBufferWithLayout(_stream:cpp.UInt8, _handle:bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle, _startVertex:cpp.UInt32, _numVertices:cpp.UInt32, _layoutHandle:bgfx.VertexLayoutHandle.Native_VertexLayoutHandle):cpp.Void;

    /**
    Set vertex buffer for draw primitive.
    @param: _stream : cpp.UInt8 - Vertex stream.
    @param: _tvb : cpp.ConstStar<bgfx.TransientVertexBuffer.Native_TransientVertexBuffer> - Transient vertex buffer.
    **/
    @:native("bgfx_set_vertex_buffer")
    overload extern public static function setVertexBuffer(_stream:cpp.UInt8, _tvb:cpp.ConstStar<bgfx.TransientVertexBuffer.Native_TransientVertexBuffer>):cpp.Void;

    /**
    Set vertex buffer for draw primitive.
    @param: _stream : cpp.UInt8 - Vertex stream.
    @param: _tvb : cpp.ConstStar<bgfx.TransientVertexBuffer.Native_TransientVertexBuffer> - Transient vertex buffer.
    @param: _startVertex : cpp.UInt32 - First vertex to render.
    @param: _numVertices : cpp.UInt32 - Number of vertices to render.
    **/
    @:native("bgfx_set_transient_vertex_buffer")
    overload extern public static function setTransientVertexBuffer(_stream:cpp.UInt8, _tvb:cpp.ConstStar<bgfx.TransientVertexBuffer.Native_TransientVertexBuffer>, _startVertex:cpp.UInt32, _numVertices:cpp.UInt32):cpp.Void;

    /**
    Set vertex buffer for draw primitive.
    @param: _stream : cpp.UInt8 - Vertex stream.
    @param: _tvb : cpp.ConstStar<bgfx.TransientVertexBuffer.Native_TransientVertexBuffer> - Transient vertex buffer.
    @param: _startVertex : cpp.UInt32 - First vertex to render.
    @param: _numVertices : cpp.UInt32 - Number of vertices to render.
    @param: _layoutHandle : bgfx.VertexLayoutHandle.Native_VertexLayoutHandle - Vertex layout for aliasing vertex buffer. If invalid
    @param: handle is used, vertex layout used for creation
    @param: of vertex buffer will be used.
    **/
    @:native("bgfx_set_transient_vertex_buffer_with_layout")
    overload extern public static function setTransientVertexBufferWithLayout(_stream:cpp.UInt8, _tvb:cpp.ConstStar<bgfx.TransientVertexBuffer.Native_TransientVertexBuffer>, _startVertex:cpp.UInt32, _numVertices:cpp.UInt32, _layoutHandle:bgfx.VertexLayoutHandle.Native_VertexLayoutHandle):cpp.Void;

    /**
    Set number of vertices for auto generated vertices use in conjunction
    with gl_VertexID.
    @attention Availability depends on: `BGFX_CAPS_VERTEX_ID`.
    @param: _numVertices : cpp.UInt32 - Number of vertices.
    **/
    @:native("bgfx_set_vertex_count")
    overload extern public static function setVertexCount(_numVertices:cpp.UInt32):cpp.Void;

    /**
    Set instance data buffer for draw primitive.
    @param: _idb : cpp.ConstStar<bgfx.InstanceDataBuffer.Native_InstanceDataBuffer> - Transient instance data buffer.
    **/
    @:native("bgfx_set_instance_data_buffer")
    overload extern public static function setInstanceDataBuffer(_idb:cpp.ConstStar<bgfx.InstanceDataBuffer.Native_InstanceDataBuffer>):cpp.Void;

    /**
    Set instance data buffer for draw primitive.
    @param: _idb : cpp.ConstStar<bgfx.InstanceDataBuffer.Native_InstanceDataBuffer> - Transient instance data buffer.
    @param: _start : cpp.UInt32 - First instance data.
    @param: _num : cpp.UInt32 - Number of data instances.
    **/
    @:native("bgfx_set_instance_data_buffer")
    overload extern public static function setInstanceDataBuffer(_idb:cpp.ConstStar<bgfx.InstanceDataBuffer.Native_InstanceDataBuffer>, _start:cpp.UInt32, _num:cpp.UInt32):cpp.Void;

    /**
    Set instance data buffer for draw primitive.
    @param: _handle : bgfx.VertexBufferHandle.Native_VertexBufferHandle - Vertex buffer.
    @param: _startVertex : cpp.UInt32 - First instance data.
    @param: _num : cpp.UInt32 - Number of data instances.
    **/
    @:native("bgfx_set_instance_data_from_vertex_buffer")
    overload extern public static function setInstanceDataFromVertexBuffer(_handle:bgfx.VertexBufferHandle.Native_VertexBufferHandle, _startVertex:cpp.UInt32, _num:cpp.UInt32):cpp.Void;

    /**
    Set instance data buffer for draw primitive.
    @param: _handle : bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle - Dynamic vertex buffer.
    @param: _startVertex : cpp.UInt32 - First instance data.
    @param: _num : cpp.UInt32 - Number of data instances.
    **/
    @:native("bgfx_set_instance_data_from_dynamic_vertex_buffer")
    overload extern public static function setInstanceDataFromDynamicVertexBuffer(_handle:bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle, _startVertex:cpp.UInt32, _num:cpp.UInt32):cpp.Void;

    /**
    Set number of instances for auto generated instances use in conjunction
    with gl_InstanceID.
    @attention Availability depends on: `BGFX_CAPS_VERTEX_ID`.
    **/
    @:native("bgfx_set_instance_count")
    overload extern public static function setInstanceCount(_numInstances:cpp.UInt32):cpp.Void;

    /**
    Set texture stage for draw primitive.
    @param: _stage : cpp.UInt8 - Texture unit.
    @param: _sampler : bgfx.UniformHandle.Native_UniformHandle - Program sampler.
    @param: _handle : bgfx.TextureHandle.Native_TextureHandle - Texture handle.
    @param: _flags : cpp.UInt32 - Texture sampling mode. Default value UINT32_MAX uses
    @param:   texture sampling settings from the texture.
    @param:   - `BGFX_SAMPLER_[U/V/W]_[MIRROR/CLAMP]` - Mirror or clamp to edge wrap
    @param:     mode.
    @param:   - `BGFX_SAMPLER_[MIN/MAG/MIP]_[POINT/ANISOTROPIC]` - Point or anisotropic
    @param:     sampling.
    **/
    @:native("bgfx_set_texture")
    overload extern public static function setTexture(_stage:cpp.UInt8, _sampler:bgfx.UniformHandle.Native_UniformHandle, _handle:bgfx.TextureHandle.Native_TextureHandle, _flags:cpp.UInt32):cpp.Void;

    /**
    Submit an empty primitive for rendering. Uniforms and draw state
    will be applied but no geometry will be submitted.
    @remark
      These empty draw calls will sort before ordinary draw calls.
    @param: _id : bgfx.ViewId - View id.
    **/
    @:native("bgfx_touch")
    overload extern public static function touch(_id:bgfx.ViewId):cpp.Void;

    /**
    Submit primitive for rendering.
    @param: _id : bgfx.ViewId - View id.
    @param: _program : bgfx.ProgramHandle.Native_ProgramHandle - Program.
    @param: _depth : cpp.UInt32 - Depth for sorting.
    @param: _flags : cpp.UInt8 - Which states to discard for next draw. See `BGFX_DISCARD_*`.
    **/
    @:native("bgfx_submit")
    overload extern public static function submit(_id:bgfx.ViewId, _program:bgfx.ProgramHandle.Native_ProgramHandle, _depth:cpp.UInt32, _flags:cpp.UInt8):cpp.Void;

    /**
    Submit primitive with occlusion query for rendering.
    @param: _id : bgfx.ViewId - View id.
    @param: _program : bgfx.ProgramHandle.Native_ProgramHandle - Program.
    @param: _occlusionQuery : bgfx.OcclusionQueryHandle.Native_OcclusionQueryHandle - Occlusion query.
    @param: _depth : cpp.UInt32 - Depth for sorting.
    @param: _flags : cpp.UInt8 - Which states to discard for next draw. See `BGFX_DISCARD_*`.
    **/
    @:native("bgfx_submit_occlusion_query")
    overload extern public static function submitOcclusionQuery(_id:bgfx.ViewId, _program:bgfx.ProgramHandle.Native_ProgramHandle, _occlusionQuery:bgfx.OcclusionQueryHandle.Native_OcclusionQueryHandle, _depth:cpp.UInt32, _flags:cpp.UInt8):cpp.Void;

    /**
    Submit primitive for rendering with index and instance data info from
    indirect buffer.
    @attention Availability depends on: `BGFX_CAPS_DRAW_INDIRECT`.
    @param: _id : bgfx.ViewId - View id.
    @param: _program : bgfx.ProgramHandle.Native_ProgramHandle - Program.
    @param: _indirectHandle : bgfx.IndirectBufferHandle.Native_IndirectBufferHandle - Indirect buffer.
    @param: _start : cpp.UInt32 - First element in indirect buffer.
    @param: _num : cpp.UInt32 - Number of draws.
    @param: _depth : cpp.UInt32 - Depth for sorting.
    @param: _flags : cpp.UInt8 - Which states to discard for next draw. See `BGFX_DISCARD_*`.
    **/
    @:native("bgfx_submit_indirect")
    overload extern public static function submitIndirect(_id:bgfx.ViewId, _program:bgfx.ProgramHandle.Native_ProgramHandle, _indirectHandle:bgfx.IndirectBufferHandle.Native_IndirectBufferHandle, _start:cpp.UInt32, _num:cpp.UInt32, _depth:cpp.UInt32, _flags:cpp.UInt8):cpp.Void;

    /**
    Submit primitive for rendering with index and instance data info and
    draw count from indirect buffers.
    @attention Availability depends on: `BGFX_CAPS_DRAW_INDIRECT_COUNT`.
    @param: _id : bgfx.ViewId - View id.
    @param: _program : bgfx.ProgramHandle.Native_ProgramHandle - Program.
    @param: _indirectHandle : bgfx.IndirectBufferHandle.Native_IndirectBufferHandle - Indirect buffer.
    @param: _start : cpp.UInt32 - First element in indirect buffer.
    @param: _numHandle : bgfx.IndexBufferHandle.Native_IndexBufferHandle - Buffer for number of draws. Must be
    @param:   created with `BGFX_BUFFER_INDEX32` and `BGFX_BUFFER_DRAW_INDIRECT`.
    @param: _numIndex : cpp.UInt32 - Element in number buffer.
    @param: _numMax : cpp.UInt32 - Max number of draws.
    @param: _depth : cpp.UInt32 - Depth for sorting.
    @param: _flags : cpp.UInt8 - Which states to discard for next draw. See `BGFX_DISCARD_*`.
    **/
    @:native("bgfx_submit_indirect_count")
    overload extern public static function submitIndirectCount(_id:bgfx.ViewId, _program:bgfx.ProgramHandle.Native_ProgramHandle, _indirectHandle:bgfx.IndirectBufferHandle.Native_IndirectBufferHandle, _start:cpp.UInt32, _numHandle:bgfx.IndexBufferHandle.Native_IndexBufferHandle, _numIndex:cpp.UInt32, _numMax:cpp.UInt32, _depth:cpp.UInt32, _flags:cpp.UInt8):cpp.Void;

    /**
    Set compute index buffer.
    @param: _stage : cpp.UInt8 - Compute stage.
    @param: _handle : bgfx.IndexBufferHandle.Native_IndexBufferHandle - Index buffer handle.
    @param: _access : bgfx.Access.Native_Access - Buffer access. See `Access::Enum`.
    **/
    @:native("bgfx_set_compute_index_buffer")
    overload extern public static function setComputeIndexBuffer(_stage:cpp.UInt8, _handle:bgfx.IndexBufferHandle.Native_IndexBufferHandle, _access:bgfx.Access.Native_Access):cpp.Void;

    /**
    Set compute vertex buffer.
    @param: _stage : cpp.UInt8 - Compute stage.
    @param: _handle : bgfx.VertexBufferHandle.Native_VertexBufferHandle - Vertex buffer handle.
    @param: _access : bgfx.Access.Native_Access - Buffer access. See `Access::Enum`.
    **/
    @:native("bgfx_set_compute_vertex_buffer")
    overload extern public static function setComputeVertexBuffer(_stage:cpp.UInt8, _handle:bgfx.VertexBufferHandle.Native_VertexBufferHandle, _access:bgfx.Access.Native_Access):cpp.Void;

    /**
    Set compute dynamic index buffer.
    @param: _stage : cpp.UInt8 - Compute stage.
    @param: _handle : bgfx.DynamicIndexBufferHandle.Native_DynamicIndexBufferHandle - Dynamic index buffer handle.
    @param: _access : bgfx.Access.Native_Access - Buffer access. See `Access::Enum`.
    **/
    @:native("bgfx_set_compute_dynamic_index_buffer")
    overload extern public static function setComputeDynamicIndexBuffer(_stage:cpp.UInt8, _handle:bgfx.DynamicIndexBufferHandle.Native_DynamicIndexBufferHandle, _access:bgfx.Access.Native_Access):cpp.Void;

    /**
    Set compute dynamic vertex buffer.
    @param: _stage : cpp.UInt8 - Compute stage.
    @param: _handle : bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle - Dynamic vertex buffer handle.
    @param: _access : bgfx.Access.Native_Access - Buffer access. See `Access::Enum`.
    **/
    @:native("bgfx_set_compute_dynamic_vertex_buffer")
    overload extern public static function setComputeDynamicVertexBuffer(_stage:cpp.UInt8, _handle:bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle, _access:bgfx.Access.Native_Access):cpp.Void;

    /**
    Set compute indirect buffer.
    @param: _stage : cpp.UInt8 - Compute stage.
    @param: _handle : bgfx.IndirectBufferHandle.Native_IndirectBufferHandle - Indirect buffer handle.
    @param: _access : bgfx.Access.Native_Access - Buffer access. See `Access::Enum`.
    **/
    @:native("bgfx_set_compute_indirect_buffer")
    overload extern public static function setComputeIndirectBuffer(_stage:cpp.UInt8, _handle:bgfx.IndirectBufferHandle.Native_IndirectBufferHandle, _access:bgfx.Access.Native_Access):cpp.Void;

    /**
    Set compute image from texture.
    @param: _stage : cpp.UInt8 - Compute stage.
    @param: _handle : bgfx.TextureHandle.Native_TextureHandle - Texture handle.
    @param: _mip : cpp.UInt8 - Mip level.
    @param: _access : bgfx.Access.Native_Access - Image access. See `Access::Enum`.
    @param: _format : bgfx.TextureFormat.Native_TextureFormat - Texture format. See: `TextureFormat::Enum`.
    **/
    @:native("bgfx_set_image")
    overload extern public static function setImage(_stage:cpp.UInt8, _handle:bgfx.TextureHandle.Native_TextureHandle, _mip:cpp.UInt8, _access:bgfx.Access.Native_Access, _format:bgfx.TextureFormat.Native_TextureFormat):cpp.Void;

    /**
    Dispatch compute.
    @param: _id : bgfx.ViewId - View id.
    @param: _program : bgfx.ProgramHandle.Native_ProgramHandle - Compute program.
    @param: _numX : cpp.UInt32 - Number of groups X.
    @param: _numY : cpp.UInt32 - Number of groups Y.
    @param: _numZ : cpp.UInt32 - Number of groups Z.
    @param: _flags : cpp.UInt8 - Discard or preserve states. See `BGFX_DISCARD_*`.
    **/
    @:native("bgfx_dispatch")
    overload extern public static function dispatch(_id:bgfx.ViewId, _program:bgfx.ProgramHandle.Native_ProgramHandle, _numX:cpp.UInt32, _numY:cpp.UInt32, _numZ:cpp.UInt32, _flags:cpp.UInt8):cpp.Void;

    /**
    Dispatch compute indirect.
    @param: _id : bgfx.ViewId - View id.
    @param: _program : bgfx.ProgramHandle.Native_ProgramHandle - Compute program.
    @param: _indirectHandle : bgfx.IndirectBufferHandle.Native_IndirectBufferHandle - Indirect buffer.
    @param: _start : cpp.UInt32 - First element in indirect buffer.
    @param: _num : cpp.UInt32 - Number of dispatches.
    @param: _flags : cpp.UInt8 - Discard or preserve states. See `BGFX_DISCARD_*`.
    **/
    @:native("bgfx_dispatch_indirect")
    overload extern public static function dispatchIndirect(_id:bgfx.ViewId, _program:bgfx.ProgramHandle.Native_ProgramHandle, _indirectHandle:bgfx.IndirectBufferHandle.Native_IndirectBufferHandle, _start:cpp.UInt32, _num:cpp.UInt32, _flags:cpp.UInt8):cpp.Void;

    /**
    Discard previously set state for draw or compute call.
    @param: _flags : cpp.UInt8 - Draw/compute states to discard.
    **/
    @:native("bgfx_discard")
    overload extern public static function discard(_flags:cpp.UInt8):cpp.Void;

    /**
    Blit 2D texture region between two 2D textures.
    @attention Destination texture must be created with `BGFX_TEXTURE_BLIT_DST` flag.
    @attention Availability depends on: `BGFX_CAPS_TEXTURE_BLIT`.
    @param: _id : bgfx.ViewId - View id.
    @param: _dst : bgfx.TextureHandle.Native_TextureHandle - Destination texture handle.
    @param: _dstX : cpp.UInt16 - Destination texture X position.
    @param: _dstY : cpp.UInt16 - Destination texture Y position.
    @param: _src : bgfx.TextureHandle.Native_TextureHandle - Source texture handle.
    @param: _srcX : cpp.UInt16 - Source texture X position.
    @param: _srcY : cpp.UInt16 - Source texture Y position.
    @param: _width : cpp.UInt16 - Width of region.
    @param: _height : cpp.UInt16 - Height of region.
    **/
    @:native("bgfx_blit")
    overload extern public static function blit(_id:bgfx.ViewId, _dst:bgfx.TextureHandle.Native_TextureHandle, _dstX:cpp.UInt16, _dstY:cpp.UInt16, _src:bgfx.TextureHandle.Native_TextureHandle, _srcX:cpp.UInt16, _srcY:cpp.UInt16, _width:cpp.UInt16, _height:cpp.UInt16):cpp.Void;

    /**
    Blit 2D texture region between two 2D textures.
    @attention Destination texture must be created with `BGFX_TEXTURE_BLIT_DST` flag.
    @attention Availability depends on: `BGFX_CAPS_TEXTURE_BLIT`.
    @param: _id : bgfx.ViewId - View id.
    @param: _dst : bgfx.TextureHandle.Native_TextureHandle - Destination texture handle.
    @param: _dstMip : cpp.UInt8 - Destination texture mip level.
    @param: _dstX : cpp.UInt16 - Destination texture X position.
    @param: _dstY : cpp.UInt16 - Destination texture Y position.
    @param: _dstZ : cpp.UInt16 - If texture is 2D this argument should be 0. If destination texture is cube
    @param: this argument represents destination texture cube face. For 3D texture this argument
    @param: represents destination texture Z position.
    @param: _src : bgfx.TextureHandle.Native_TextureHandle - Source texture handle.
    @param: _srcMip : cpp.UInt8 - Source texture mip level.
    @param: _srcX : cpp.UInt16 - Source texture X position.
    @param: _srcY : cpp.UInt16 - Source texture Y position.
    @param: _srcZ : cpp.UInt16 - If texture is 2D this argument should be 0. If source texture is cube
    @param: this argument represents source texture cube face. For 3D texture this argument
    @param: represents source texture Z position.
    @param: _width : cpp.UInt16 - Width of region.
    @param: _height : cpp.UInt16 - Height of region.
    @param: _depth : cpp.UInt16 - If texture is 3D this argument represents depth of region, otherwise it's
    @param: unused.
    **/
    @:native("bgfx_blit")
    overload extern public static function blit(_id:bgfx.ViewId, _dst:bgfx.TextureHandle.Native_TextureHandle, _dstMip:cpp.UInt8, _dstX:cpp.UInt16, _dstY:cpp.UInt16, _dstZ:cpp.UInt16, _src:bgfx.TextureHandle.Native_TextureHandle, _srcMip:cpp.UInt8, _srcX:cpp.UInt16, _srcY:cpp.UInt16, _srcZ:cpp.UInt16, _width:cpp.UInt16, _height:cpp.UInt16, _depth:cpp.UInt16):cpp.Void;

}
#if (scriptable || cppia)
    class Bgfx {
    }
#else
    typedef Bgfx = Native_Bgfx;
#end



