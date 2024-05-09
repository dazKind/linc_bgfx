package bgfx;

import bgfx.*;

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
    extern public static function attachmentInit(_this:cpp.Star<bgfx.Attachment.Native_Attachment>, _handle:bgfx.TextureHandle.Native_TextureHandle, _access:bgfx.Access.Native_Access, _layer:cpp.UInt16, _numLayers:cpp.UInt16, _mip:cpp.UInt16, _resolve:cpp.UInt8):cpp.Void;

    /**
    Start VertexLayout.
    @param: _rendererType : bgfx.RendererType.Native_RendererType - Renderer backend type. See: `bgfx::RendererType`
    **/
    @:native("bgfx_vertex_layout_begin")
    extern public static function vertexLayoutBegin(_this:cpp.Star<bgfx.VertexLayout.Native_VertexLayout>, _rendererType:bgfx.RendererType.Native_RendererType):cpp.Star<bgfx.VertexLayout.Native_VertexLayout>;

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
    extern public static function vertexLayoutAdd(_this:cpp.Star<bgfx.VertexLayout.Native_VertexLayout>, _attrib:bgfx.Attrib.Native_Attrib, _num:cpp.UInt8, _type:bgfx.AttribType.Native_AttribType, _normalized:Bool, _asInt:Bool):cpp.Star<bgfx.VertexLayout.Native_VertexLayout>;

    /**
    Decode attribute.
    @param: _attrib : bgfx.Attrib.Native_Attrib - Attribute semantics. See: `bgfx::Attrib`
    @param: _num : cpp.Star<cpp.UInt8> - Number of elements.
    @param: _type : cpp.Star<bgfx.AttribType.Native_AttribType> - Element type.
    @param: _normalized : cpp.Star<Bool> - Attribute is normalized.
    @param: _asInt : cpp.Star<Bool> - Attribute is packed as int.
    **/
    @:native("bgfx_vertex_layout_decode")
    extern public static function vertexLayoutDecode(_this:cpp.Star<bgfx.VertexLayout.Native_VertexLayout>, _attrib:bgfx.Attrib.Native_Attrib, _num:cpp.Star<cpp.UInt8>, _type:cpp.Star<bgfx.AttribType.Native_AttribType>, _normalized:cpp.Star<Bool>, _asInt:cpp.Star<Bool>):cpp.Void;

    /**
    Returns `true` if VertexLayout contains attribute.
    @param: _attrib : bgfx.Attrib.Native_Attrib - Attribute semantics. See: `bgfx::Attrib`
    **/
    @:native("bgfx_vertex_layout_has")
    extern public static function vertexLayoutHas(_this:cpp.Star<bgfx.VertexLayout.Native_VertexLayout>, _attrib:bgfx.Attrib.Native_Attrib):Bool;

    /**
    Skip `_num` bytes in vertex stream.
    @param: _num : cpp.UInt8 - Number of bytes to skip.
    **/
    @:native("bgfx_vertex_layout_skip")
    extern public static function vertexLayoutSkip(_this:cpp.Star<bgfx.VertexLayout.Native_VertexLayout>, _num:cpp.UInt8):cpp.Star<bgfx.VertexLayout.Native_VertexLayout>;

    /**
    End VertexLayout.
    **/
    @:native("bgfx_vertex_layout_end")
    extern public static function vertexLayoutEnd(_this:cpp.Star<bgfx.VertexLayout.Native_VertexLayout>):cpp.Void;

    /**
    Converts vertex stream data from one vertex stream format to another.
    @param: _dstLayout : cpp.ConstStar<bgfx.VertexLayout.Native_VertexLayout> - Destination vertex stream layout.
    @param: _dstData : cpp.Star<cpp.Void> - Destination vertex stream.
    @param: _srcLayout : cpp.ConstStar<bgfx.VertexLayout.Native_VertexLayout> - Source vertex stream layout.
    @param: _srcData : cpp.ConstStar<cpp.Void> - Source vertex stream data.
    @param: _num : cpp.UInt32 - Number of vertices to convert from source to destination.
    **/
    @:native("bgfx_vertex_convert")
    extern public static function vertexConvert(_dstLayout:cpp.ConstStar<bgfx.VertexLayout.Native_VertexLayout>, _dstData:cpp.Star<cpp.Void>, _srcLayout:cpp.ConstStar<bgfx.VertexLayout.Native_VertexLayout>, _srcData:cpp.ConstStar<cpp.Void>, _num:cpp.UInt32):cpp.Void;

    /**
    Weld vertices.
    @param: _output : cpp.Star<cpp.Void> - Welded vertices remapping table. The size of buffer
    @param: must be the same as number of vertices.
    @param: _layout : cpp.ConstStar<bgfx.VertexLayout.Native_VertexLayout> - Vertex stream layout.
    @param: _data : cpp.ConstStar<cpp.Void> - Vertex stream.
    @param: _num : cpp.UInt32 - Number of vertices in vertex stream.
    @param: _index32 : Bool - Set to `true` if input indices are 32-bit.
    @param: _epsilon : cpp.Float32 - Error tolerance for vertex position comparison.
    **/
    @:native("bgfx_weld_vertices")
    extern public static function weldVertices(_output:cpp.Star<cpp.Void>, _layout:cpp.ConstStar<bgfx.VertexLayout.Native_VertexLayout>, _data:cpp.ConstStar<cpp.Void>, _num:cpp.UInt32, _index32:Bool, _epsilon:cpp.Float32):cpp.UInt32;

    /**
    Convert index buffer for use with different primitive topologies.
    @param: _conversion : bgfx.TopologyConvert.Native_TopologyConvert - Conversion type, see `TopologyConvert::Enum`.
    @param: _dst : cpp.Star<cpp.Void> - Destination index buffer. If this argument is NULL
    @param: function will return number of indices after conversion.
    @param: _dstSize : cpp.UInt32 - Destination index buffer in bytes. It must be
    @param: large enough to contain output indices. If destination size is
    @param: insufficient index buffer will be truncated.
    @param: _indices : cpp.ConstStar<cpp.Void> - Source indices.
    @param: _numIndices : cpp.UInt32 - Number of input indices.
    @param: _index32 : Bool - Set to `true` if input indices are 32-bit.
    **/
    @:native("bgfx_topology_convert")
    extern public static function topologyConvert(_conversion:bgfx.TopologyConvert.Native_TopologyConvert, _dst:cpp.Star<cpp.Void>, _dstSize:cpp.UInt32, _indices:cpp.ConstStar<cpp.Void>, _numIndices:cpp.UInt32, _index32:Bool):cpp.UInt32;

    /**
    Returns supported backend API renderers.
    @param: _max : cpp.UInt8 - Maximum number of elements in _enum array.
    @param: _enum : cpp.Star<bgfx.RendererType.Native_RendererType> - Array where supported renderers will be written.
    **/
    @:native("bgfx_get_supported_renderers")
    extern public static function getSupportedRenderers(_max:cpp.UInt8, _enum:cpp.Star<bgfx.RendererType.Native_RendererType>):cpp.UInt8;

    /**
    Returns name of renderer.
    @param: _type : bgfx.RendererType.Native_RendererType - Renderer backend type. See: `bgfx::RendererType`
    **/
    @:native("bgfx_get_renderer_name")
    extern public static function getRendererName(_type:bgfx.RendererType.Native_RendererType):cpp.ConstStar<cpp.Char>;

    /**
    Fill bgfx::Init struct with default values, before using it to initialize the library.
    @param: _init : cpp.Star<bgfx.Init.Native_Init> - Pointer to structure to be initialized. See: `bgfx::Init` for more info.
    **/
    @:native("bgfx_init_ctor")
    extern public static function initCtor(_init:cpp.Star<bgfx.Init.Native_Init>):cpp.Void;

    /**
    Initialize the bgfx library.
    @param: _init : cpp.ConstStar<bgfx.Init.Native_Init> - Initialization parameters. See: `bgfx::Init` for more info.
    **/
    @:native("bgfx_init")
    extern public static function init(_init:cpp.ConstStar<bgfx.Init.Native_Init>):Bool;

    /**
    Shutdown bgfx library.
    **/
    @:native("bgfx_shutdown")
    extern public static function shutdown():cpp.Void;

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
    extern public static function reset(_width:cpp.UInt32, _height:cpp.UInt32, _flags:cpp.UInt32, _format:bgfx.TextureFormat.Native_TextureFormat):cpp.Void;

    /**
    Advance to next frame. When using multithreaded renderer, this call
    just swaps internal buffers, kicks render thread, and returns. In
    singlethreaded renderer this call does frame rendering.
    @param: _capture : Bool - Capture frame with graphics debugger.
    **/
    @:native("bgfx_frame")
    extern public static function frame(_capture:Bool):cpp.UInt32;

    /**
    Returns current renderer backend API type.
    @remarks
      Library must be initialized.
    **/
    @:native("bgfx_get_renderer_type")
    extern public static function getRendererType():bgfx.RendererType.Native_RendererType;

    /**
    Returns renderer capabilities.
    @remarks
      Library must be initialized.
    **/
    @:native("bgfx_get_caps")
    extern public static function getCaps():cpp.ConstStar<bgfx.Caps.Native_Caps>;

    /**
    Returns performance counters.
    @attention Pointer returned is valid until `bgfx::frame` is called.
    **/
    @:native("bgfx_get_stats")
    extern public static function getStats():cpp.ConstStar<bgfx.Stats.Native_Stats>;

    /**
    Allocate buffer to pass to bgfx calls. Data will be freed inside bgfx.
    @param: _size : cpp.UInt32 - Size to allocate.
    **/
    @:native("bgfx_alloc")
    extern public static function alloc(_size:cpp.UInt32):cpp.ConstStar<bgfx.Memory.Native_Memory>;

    /**
    Allocate buffer and copy data into it. Data will be freed inside bgfx.
    @param: _data : cpp.ConstStar<cpp.Void> - Pointer to data to be copied.
    @param: _size : cpp.UInt32 - Size of data to be copied.
    **/
    @:native("bgfx_copy")
    extern public static function copy(_data:cpp.ConstStar<cpp.Void>, _size:cpp.UInt32):cpp.ConstStar<bgfx.Memory.Native_Memory>;

    /**
    Make reference to data to pass to bgfx. Unlike `bgfx::alloc`, this call
    doesn't allocate memory for data. It just copies the _data pointer. You
    can pass `ReleaseFn` function pointer to release this memory after it's
    consumed, otherwise you must make sure _data is available for at least 2
    `bgfx::frame` calls. `ReleaseFn` function must be able to be called
    from any thread.
    @attention Data passed must be available for at least 2 `bgfx::frame` calls.
    @param: _data : cpp.ConstStar<cpp.Void> - Pointer to data.
    @param: _size : cpp.UInt32 - Size of data.
    **/
    @:native("bgfx_make_ref")
    extern public static function makeRef(_data:cpp.ConstStar<cpp.Void>, _size:cpp.UInt32):cpp.ConstStar<bgfx.Memory.Native_Memory>;

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
    extern public static function setDebug(_debug:cpp.UInt32):cpp.Void;

    /**
    Draw image into internal debug text buffer.
    @param: _x : cpp.UInt16 - Position x from the left corner of the window.
    @param: _y : cpp.UInt16 - Position y from the top corner of the window.
    @param: _width : cpp.UInt16 - Image width.
    @param: _height : cpp.UInt16 - Image height.
    @param: _data : cpp.ConstStar<cpp.Void> - Raw image data (character/attribute raw encoding).
    @param: _pitch : cpp.UInt16 - Image pitch in bytes.
    **/
    @:native("bgfx_dbg_text_image")
    extern public static function dbgTextImage(_x:cpp.UInt16, _y:cpp.UInt16, _width:cpp.UInt16, _height:cpp.UInt16, _data:cpp.ConstStar<cpp.Void>, _pitch:cpp.UInt16):cpp.Void;

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
    extern public static function createIndexBuffer(_mem:cpp.ConstStar<bgfx.Memory.Native_Memory>, _flags:cpp.UInt16):bgfx.IndexBufferHandle.Native_IndexBufferHandle;

    /**
    Set static index buffer debug name.
    @param: _handle : bgfx.IndexBufferHandle.Native_IndexBufferHandle - Static index buffer handle.
    @param: _name : cpp.ConstStar<cpp.Char> - Static index buffer name.
    @param: _len : cpp.Int32 - Static index buffer name length (if length is INT32_MAX, it's expected
    @param: that _name is zero terminated string.
    **/
    @:native("bgfx_set_index_buffer_name")
    extern public static function setIndexBufferName(_handle:bgfx.IndexBufferHandle.Native_IndexBufferHandle, _name:String, _len:cpp.Int32):cpp.Void;

    /**
    Destroy static index buffer.
    @param: _handle : bgfx.IndexBufferHandle.Native_IndexBufferHandle - Static index buffer handle.
    **/
    @:native("bgfx_destroy_index_buffer")
    extern public static function destroyIndexBuffer(_handle:bgfx.IndexBufferHandle.Native_IndexBufferHandle):cpp.Void;

    /**
    Create vertex layout.
    @param: _layout : cpp.ConstStar<bgfx.VertexLayout.Native_VertexLayout> - Vertex layout.
    **/
    @:native("bgfx_create_vertex_layout")
    extern public static function createVertexLayout(_layout:cpp.ConstStar<bgfx.VertexLayout.Native_VertexLayout>):bgfx.VertexLayoutHandle.Native_VertexLayoutHandle;

    /**
    Destroy vertex layout.
    @param: _layoutHandle : bgfx.VertexLayoutHandle.Native_VertexLayoutHandle - Vertex layout handle.
    **/
    @:native("bgfx_destroy_vertex_layout")
    extern public static function destroyVertexLayout(_layoutHandle:bgfx.VertexLayoutHandle.Native_VertexLayoutHandle):cpp.Void;

    /**
    Create static vertex buffer.
    @param: _mem : cpp.ConstStar<bgfx.Memory.Native_Memory> - Vertex buffer data.
    @param: _layout : cpp.ConstStar<bgfx.VertexLayout.Native_VertexLayout> - Vertex layout.
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
    extern public static function createVertexBuffer(_mem:cpp.ConstStar<bgfx.Memory.Native_Memory>, _layout:cpp.ConstStar<bgfx.VertexLayout.Native_VertexLayout>, _flags:cpp.UInt16):bgfx.VertexBufferHandle.Native_VertexBufferHandle;

    /**
    Set static vertex buffer debug name.
    @param: _handle : bgfx.VertexBufferHandle.Native_VertexBufferHandle - Static vertex buffer handle.
    @param: _name : cpp.ConstStar<cpp.Char> - Static vertex buffer name.
    @param: _len : cpp.Int32 - Static vertex buffer name length (if length is INT32_MAX, it's expected
    @param: that _name is zero terminated string.
    **/
    @:native("bgfx_set_vertex_buffer_name")
    extern public static function setVertexBufferName(_handle:bgfx.VertexBufferHandle.Native_VertexBufferHandle, _name:String, _len:cpp.Int32):cpp.Void;

    /**
    Destroy static vertex buffer.
    @param: _handle : bgfx.VertexBufferHandle.Native_VertexBufferHandle - Static vertex buffer handle.
    **/
    @:native("bgfx_destroy_vertex_buffer")
    extern public static function destroyVertexBuffer(_handle:bgfx.VertexBufferHandle.Native_VertexBufferHandle):cpp.Void;

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
    extern public static function createDynamicIndexBuffer(_num:cpp.UInt32, _flags:cpp.UInt16):bgfx.DynamicIndexBufferHandle.Native_DynamicIndexBufferHandle;

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
    extern public static function createDynamicIndexBufferMem(_mem:cpp.ConstStar<bgfx.Memory.Native_Memory>, _flags:cpp.UInt16):bgfx.DynamicIndexBufferHandle.Native_DynamicIndexBufferHandle;

    /**
    Update dynamic index buffer.
    @param: _handle : bgfx.DynamicIndexBufferHandle.Native_DynamicIndexBufferHandle - Dynamic index buffer handle.
    @param: _startIndex : cpp.UInt32 - Start index.
    @param: _mem : cpp.ConstStar<bgfx.Memory.Native_Memory> - Index buffer data.
    **/
    @:native("bgfx_update_dynamic_index_buffer")
    extern public static function updateDynamicIndexBuffer(_handle:bgfx.DynamicIndexBufferHandle.Native_DynamicIndexBufferHandle, _startIndex:cpp.UInt32, _mem:cpp.ConstStar<bgfx.Memory.Native_Memory>):cpp.Void;

    /**
    Destroy dynamic index buffer.
    @param: _handle : bgfx.DynamicIndexBufferHandle.Native_DynamicIndexBufferHandle - Dynamic index buffer handle.
    **/
    @:native("bgfx_destroy_dynamic_index_buffer")
    extern public static function destroyDynamicIndexBuffer(_handle:bgfx.DynamicIndexBufferHandle.Native_DynamicIndexBufferHandle):cpp.Void;

    /**
    Create empty dynamic vertex buffer.
    @param: _num : cpp.UInt32 - Number of vertices.
    @param: _layout : cpp.ConstStar<bgfx.VertexLayout.Native_VertexLayout> - Vertex layout.
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
    extern public static function createDynamicVertexBuffer(_num:cpp.UInt32, _layout:cpp.ConstStar<bgfx.VertexLayout.Native_VertexLayout>, _flags:cpp.UInt16):bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle;

    /**
    Create dynamic vertex buffer and initialize it.
    @param: _mem : cpp.ConstStar<bgfx.Memory.Native_Memory> - Vertex buffer data.
    @param: _layout : cpp.ConstStar<bgfx.VertexLayout.Native_VertexLayout> - Vertex layout.
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
    extern public static function createDynamicVertexBufferMem(_mem:cpp.ConstStar<bgfx.Memory.Native_Memory>, _layout:cpp.ConstStar<bgfx.VertexLayout.Native_VertexLayout>, _flags:cpp.UInt16):bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle;

    /**
    Update dynamic vertex buffer.
    @param: _handle : bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle - Dynamic vertex buffer handle.
    @param: _startVertex : cpp.UInt32 - Start vertex.
    @param: _mem : cpp.ConstStar<bgfx.Memory.Native_Memory> - Vertex buffer data.
    **/
    @:native("bgfx_update_dynamic_vertex_buffer")
    extern public static function updateDynamicVertexBuffer(_handle:bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle, _startVertex:cpp.UInt32, _mem:cpp.ConstStar<bgfx.Memory.Native_Memory>):cpp.Void;

    /**
    Destroy dynamic vertex buffer.
    @param: _handle : bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle - Dynamic vertex buffer handle.
    **/
    @:native("bgfx_destroy_dynamic_vertex_buffer")
    extern public static function destroyDynamicVertexBuffer(_handle:bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle):cpp.Void;

    /**
    Returns number of requested or maximum available indices.
    @param: _num : cpp.UInt32 - Number of required indices.
    @param: _index32 : Bool - Set to `true` if input indices will be 32-bit.
    **/
    @:native("bgfx_get_avail_transient_index_buffer")
    extern public static function getAvailTransientIndexBuffer(_num:cpp.UInt32, _index32:Bool):cpp.UInt32;

    /**
    Returns number of requested or maximum available vertices.
    @param: _num : cpp.UInt32 - Number of required vertices.
    @param: _layout : cpp.ConstStar<bgfx.VertexLayout.Native_VertexLayout> - Vertex layout.
    **/
    @:native("bgfx_get_avail_transient_vertex_buffer")
    extern public static function getAvailTransientVertexBuffer(_num:cpp.UInt32, _layout:cpp.ConstStar<bgfx.VertexLayout.Native_VertexLayout>):cpp.UInt32;

    /**
    Returns number of requested or maximum available instance buffer slots.
    @param: _num : cpp.UInt32 - Number of required instances.
    @param: _stride : cpp.UInt16 - Stride per instance.
    **/
    @:native("bgfx_get_avail_instance_data_buffer")
    extern public static function getAvailInstanceDataBuffer(_num:cpp.UInt32, _stride:cpp.UInt16):cpp.UInt32;

    /**
    Allocate transient index buffer.
    @param: _tib : cpp.Star<bgfx.TransientIndexBuffer.Native_TransientIndexBuffer> - TransientIndexBuffer structure will be filled, and will be valid
    @param: for the duration of frame, and can be reused for multiple draw
    @param: calls.
    @param: _num : cpp.UInt32 - Number of indices to allocate.
    @param: _index32 : Bool - Set to `true` if input indices will be 32-bit.
    **/
    @:native("bgfx_alloc_transient_index_buffer")
    extern public static function allocTransientIndexBuffer(_tib:cpp.Star<bgfx.TransientIndexBuffer.Native_TransientIndexBuffer>, _num:cpp.UInt32, _index32:Bool):cpp.Void;

    /**
    Allocate transient vertex buffer.
    @param: _tvb : cpp.Star<bgfx.TransientVertexBuffer.Native_TransientVertexBuffer> - TransientVertexBuffer structure will be filled, and will be valid
    @param: for the duration of frame, and can be reused for multiple draw
    @param: calls.
    @param: _num : cpp.UInt32 - Number of vertices to allocate.
    @param: _layout : cpp.ConstStar<bgfx.VertexLayout.Native_VertexLayout> - Vertex layout.
    **/
    @:native("bgfx_alloc_transient_vertex_buffer")
    extern public static function allocTransientVertexBuffer(_tvb:cpp.Star<bgfx.TransientVertexBuffer.Native_TransientVertexBuffer>, _num:cpp.UInt32, _layout:cpp.ConstStar<bgfx.VertexLayout.Native_VertexLayout>):cpp.Void;

    /**
    Check for required space and allocate transient vertex and index
    buffers. If both space requirements are satisfied function returns
    true.
    @param: _tvb : cpp.Star<bgfx.TransientVertexBuffer.Native_TransientVertexBuffer> - TransientVertexBuffer structure will be filled, and will be valid
    @param: for the duration of frame, and can be reused for multiple draw
    @param: calls.
    @param: _layout : cpp.ConstStar<bgfx.VertexLayout.Native_VertexLayout> - Vertex layout.
    @param: _numVertices : cpp.UInt32 - Number of vertices to allocate.
    @param: _tib : cpp.Star<bgfx.TransientIndexBuffer.Native_TransientIndexBuffer> - TransientIndexBuffer structure will be filled, and will be valid
    @param: for the duration of frame, and can be reused for multiple draw
    @param: calls.
    @param: _numIndices : cpp.UInt32 - Number of indices to allocate.
    @param: _index32 : Bool - Set to `true` if input indices will be 32-bit.
    **/
    @:native("bgfx_alloc_transient_buffers")
    extern public static function allocTransientBuffers(_tvb:cpp.Star<bgfx.TransientVertexBuffer.Native_TransientVertexBuffer>, _layout:cpp.ConstStar<bgfx.VertexLayout.Native_VertexLayout>, _numVertices:cpp.UInt32, _tib:cpp.Star<bgfx.TransientIndexBuffer.Native_TransientIndexBuffer>, _numIndices:cpp.UInt32, _index32:Bool):Bool;

    /**
    Allocate instance data buffer.
    @param: _idb : cpp.Star<bgfx.InstanceDataBuffer.Native_InstanceDataBuffer> - InstanceDataBuffer structure will be filled, and will be valid
    @param: for duration of frame, and can be reused for multiple draw
    @param: calls.
    @param: _num : cpp.UInt32 - Number of instances.
    @param: _stride : cpp.UInt16 - Instance stride. Must be multiple of 16.
    **/
    @:native("bgfx_alloc_instance_data_buffer")
    extern public static function allocInstanceDataBuffer(_idb:cpp.Star<bgfx.InstanceDataBuffer.Native_InstanceDataBuffer>, _num:cpp.UInt32, _stride:cpp.UInt16):cpp.Void;

    /**
    Create draw indirect buffer.
    @param: _num : cpp.UInt32 - Number of indirect calls.
    **/
    @:native("bgfx_create_indirect_buffer")
    extern public static function createIndirectBuffer(_num:cpp.UInt32):bgfx.IndirectBufferHandle.Native_IndirectBufferHandle;

    /**
    Destroy draw indirect buffer.
    @param: _handle : bgfx.IndirectBufferHandle.Native_IndirectBufferHandle - Indirect buffer handle.
    **/
    @:native("bgfx_destroy_indirect_buffer")
    extern public static function destroyIndirectBuffer(_handle:bgfx.IndirectBufferHandle.Native_IndirectBufferHandle):cpp.Void;

    /**
    Create shader from memory buffer.
    @remarks
      Shader binary is obtained by compiling shader offline with shaderc command line tool.
    @param: _mem : cpp.ConstStar<bgfx.Memory.Native_Memory> - Shader binary.
    **/
    @:native("bgfx_create_shader")
    extern public static function createShader(_mem:cpp.ConstStar<bgfx.Memory.Native_Memory>):bgfx.ShaderHandle.Native_ShaderHandle;

    /**
    Returns the number of uniforms and uniform handles used inside a shader.
    @remarks
      Only non-predefined uniforms are returned.
    @param: _handle : bgfx.ShaderHandle.Native_ShaderHandle - Shader handle.
    @param: _uniforms : cpp.Star<bgfx.UniformHandle.Native_UniformHandle> - UniformHandle array where data will be stored.
    @param: _max : cpp.UInt16 - Maximum capacity of array.
    **/
    @:native("bgfx_get_shader_uniforms")
    extern public static function getShaderUniforms(_handle:bgfx.ShaderHandle.Native_ShaderHandle, _uniforms:cpp.Star<bgfx.UniformHandle.Native_UniformHandle>, _max:cpp.UInt16):cpp.UInt16;

    /**
    Set shader debug name.
    @param: _handle : bgfx.ShaderHandle.Native_ShaderHandle - Shader handle.
    @param: _name : cpp.ConstStar<cpp.Char> - Shader name.
    @param: _len : cpp.Int32 - Shader name length (if length is INT32_MAX, it's expected
    @param: that _name is zero terminated string).
    **/
    @:native("bgfx_set_shader_name")
    extern public static function setShaderName(_handle:bgfx.ShaderHandle.Native_ShaderHandle, _name:String, _len:cpp.Int32):cpp.Void;

    /**
    Destroy shader.
    @remark Once a shader program is created with _handle,
      it is safe to destroy that shader.
    @param: _handle : bgfx.ShaderHandle.Native_ShaderHandle - Shader handle.
    **/
    @:native("bgfx_destroy_shader")
    extern public static function destroyShader(_handle:bgfx.ShaderHandle.Native_ShaderHandle):cpp.Void;

    /**
    Create program with vertex and fragment shaders.
    @param: _vsh : bgfx.ShaderHandle.Native_ShaderHandle - Vertex shader.
    @param: _fsh : bgfx.ShaderHandle.Native_ShaderHandle - Fragment shader.
    @param: _destroyShaders : Bool - If true, shaders will be destroyed when program is destroyed.
    **/
    @:native("bgfx_create_program")
    extern public static function createProgram(_vsh:bgfx.ShaderHandle.Native_ShaderHandle, _fsh:bgfx.ShaderHandle.Native_ShaderHandle, _destroyShaders:Bool):bgfx.ProgramHandle.Native_ProgramHandle;

    /**
    Create program with compute shader.
    @param: _csh : bgfx.ShaderHandle.Native_ShaderHandle - Compute shader.
    @param: _destroyShaders : Bool - If true, shaders will be destroyed when program is destroyed.
    **/
    @:native("bgfx_create_compute_program")
    extern public static function createComputeProgram(_csh:bgfx.ShaderHandle.Native_ShaderHandle, _destroyShaders:Bool):bgfx.ProgramHandle.Native_ProgramHandle;

    /**
    Destroy program.
    @param: _handle : bgfx.ProgramHandle.Native_ProgramHandle - Program handle.
    **/
    @:native("bgfx_destroy_program")
    extern public static function destroyProgram(_handle:bgfx.ProgramHandle.Native_ProgramHandle):cpp.Void;

    /**
    Validate texture parameters.
    @param: _depth : cpp.UInt16 - Depth dimension of volume texture.
    @param: _cubeMap : Bool - Indicates that texture contains cubemap.
    @param: _numLayers : cpp.UInt16 - Number of layers in texture array.
    @param: _format : bgfx.TextureFormat.Native_TextureFormat - Texture format. See: `TextureFormat::Enum`.
    @param: _flags : cpp.UInt64 - Texture flags. See `BGFX_TEXTURE_*`.
    **/
    @:native("bgfx_is_texture_valid")
    extern public static function isTextureValid(_depth:cpp.UInt16, _cubeMap:Bool, _numLayers:cpp.UInt16, _format:bgfx.TextureFormat.Native_TextureFormat, _flags:cpp.UInt64):Bool;

    /**
    Validate frame buffer parameters.
    @param: _num : cpp.UInt8 - Number of attachments.
    @param: _attachment : cpp.ConstStar<bgfx.Attachment.Native_Attachment> - Attachment texture info. See: `bgfx::Attachment`.
    **/
    @:native("bgfx_is_frame_buffer_valid")
    extern public static function isFrameBufferValid(_num:cpp.UInt8, _attachment:cpp.ConstStar<bgfx.Attachment.Native_Attachment>):Bool;

    /**
    Calculate amount of memory required for texture.
    @param: _info : cpp.Star<bgfx.TextureInfo.Native_TextureInfo> - Resulting texture info structure. See: `TextureInfo`.
    @param: _width : cpp.UInt16 - Width.
    @param: _height : cpp.UInt16 - Height.
    @param: _depth : cpp.UInt16 - Depth dimension of volume texture.
    @param: _cubeMap : Bool - Indicates that texture contains cubemap.
    @param: _hasMips : Bool - Indicates that texture contains full mip-map chain.
    @param: _numLayers : cpp.UInt16 - Number of layers in texture array.
    @param: _format : bgfx.TextureFormat.Native_TextureFormat - Texture format. See: `TextureFormat::Enum`.
    **/
    @:native("bgfx_calc_texture_size")
    extern public static function calcTextureSize(_info:cpp.Star<bgfx.TextureInfo.Native_TextureInfo>, _width:cpp.UInt16, _height:cpp.UInt16, _depth:cpp.UInt16, _cubeMap:Bool, _hasMips:Bool, _numLayers:cpp.UInt16, _format:bgfx.TextureFormat.Native_TextureFormat):cpp.Void;

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
    extern public static function createTexture(_mem:cpp.ConstStar<bgfx.Memory.Native_Memory>, _flags:cpp.UInt64, _skip:cpp.UInt8, _info:cpp.Star<bgfx.TextureInfo.Native_TextureInfo>):bgfx.TextureHandle.Native_TextureHandle;

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
    extern public static function createTexture2d(_width:cpp.UInt16, _height:cpp.UInt16, _hasMips:Bool, _numLayers:cpp.UInt16, _format:bgfx.TextureFormat.Native_TextureFormat, _flags:cpp.UInt64, _mem:cpp.ConstStar<bgfx.Memory.Native_Memory>):bgfx.TextureHandle.Native_TextureHandle;

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
    extern public static function createTexture2dScaled(_ratio:bgfx.BackbufferRatio.Native_BackbufferRatio, _hasMips:Bool, _numLayers:cpp.UInt16, _format:bgfx.TextureFormat.Native_TextureFormat, _flags:cpp.UInt64):bgfx.TextureHandle.Native_TextureHandle;

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
    extern public static function createTexture3d(_width:cpp.UInt16, _height:cpp.UInt16, _depth:cpp.UInt16, _hasMips:Bool, _format:bgfx.TextureFormat.Native_TextureFormat, _flags:cpp.UInt64, _mem:cpp.ConstStar<bgfx.Memory.Native_Memory>):bgfx.TextureHandle.Native_TextureHandle;

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
    extern public static function createTextureCube(_size:cpp.UInt16, _hasMips:Bool, _numLayers:cpp.UInt16, _format:bgfx.TextureFormat.Native_TextureFormat, _flags:cpp.UInt64, _mem:cpp.ConstStar<bgfx.Memory.Native_Memory>):bgfx.TextureHandle.Native_TextureHandle;

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
    extern public static function updateTexture2d(_handle:bgfx.TextureHandle.Native_TextureHandle, _layer:cpp.UInt16, _mip:cpp.UInt8, _x:cpp.UInt16, _y:cpp.UInt16, _width:cpp.UInt16, _height:cpp.UInt16, _mem:cpp.ConstStar<bgfx.Memory.Native_Memory>, _pitch:cpp.UInt16):cpp.Void;

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
    extern public static function updateTexture3d(_handle:bgfx.TextureHandle.Native_TextureHandle, _mip:cpp.UInt8, _x:cpp.UInt16, _y:cpp.UInt16, _z:cpp.UInt16, _width:cpp.UInt16, _height:cpp.UInt16, _depth:cpp.UInt16, _mem:cpp.ConstStar<bgfx.Memory.Native_Memory>):cpp.Void;

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
    extern public static function updateTextureCube(_handle:bgfx.TextureHandle.Native_TextureHandle, _layer:cpp.UInt16, _side:cpp.UInt8, _mip:cpp.UInt8, _x:cpp.UInt16, _y:cpp.UInt16, _width:cpp.UInt16, _height:cpp.UInt16, _mem:cpp.ConstStar<bgfx.Memory.Native_Memory>, _pitch:cpp.UInt16):cpp.Void;

    /**
    Read back texture content.
    @attention Texture must be created with `BGFX_TEXTURE_READ_BACK` flag.
    @attention Availability depends on: `BGFX_CAPS_TEXTURE_READ_BACK`.
    @param: _handle : bgfx.TextureHandle.Native_TextureHandle - Texture handle.
    @param: _data : cpp.Star<cpp.Void> - Destination buffer.
    @param: _mip : cpp.UInt8 - Mip level.
    **/
    @:native("bgfx_read_texture")
    extern public static function readTexture(_handle:bgfx.TextureHandle.Native_TextureHandle, _data:cpp.Star<cpp.Void>, _mip:cpp.UInt8):cpp.UInt32;

    /**
    Set texture debug name.
    @param: _handle : bgfx.TextureHandle.Native_TextureHandle - Texture handle.
    @param: _name : cpp.ConstStar<cpp.Char> - Texture name.
    @param: _len : cpp.Int32 - Texture name length (if length is INT32_MAX, it's expected
    @param: that _name is zero terminated string.
    **/
    @:native("bgfx_set_texture_name")
    extern public static function setTextureName(_handle:bgfx.TextureHandle.Native_TextureHandle, _name:String, _len:cpp.Int32):cpp.Void;

    /**
    Returns texture direct access pointer.
    @attention Availability depends on: `BGFX_CAPS_TEXTURE_DIRECT_ACCESS`. This feature
      is available on GPUs that have unified memory architecture (UMA) support.
    @param: _handle : bgfx.TextureHandle.Native_TextureHandle - Texture handle.
    **/
    @:native("bgfx_get_direct_access_ptr")
    extern public static function getDirectAccessPtr(_handle:bgfx.TextureHandle.Native_TextureHandle):cpp.Star<cpp.Void>;

    /**
    Destroy texture.
    @param: _handle : bgfx.TextureHandle.Native_TextureHandle - Texture handle.
    **/
    @:native("bgfx_destroy_texture")
    extern public static function destroyTexture(_handle:bgfx.TextureHandle.Native_TextureHandle):cpp.Void;

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
    extern public static function createFrameBuffer(_width:cpp.UInt16, _height:cpp.UInt16, _format:bgfx.TextureFormat.Native_TextureFormat, _textureFlags:cpp.UInt64):bgfx.FrameBufferHandle.Native_FrameBufferHandle;

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
    extern public static function createFrameBufferScaled(_ratio:bgfx.BackbufferRatio.Native_BackbufferRatio, _format:bgfx.TextureFormat.Native_TextureFormat, _textureFlags:cpp.UInt64):bgfx.FrameBufferHandle.Native_FrameBufferHandle;

    /**
    Create MRT frame buffer from texture handles (simple).
    @param: _num : cpp.UInt8 - Number of texture handles.
    @param: _handles : cpp.ConstStar<bgfx.TextureHandle.Native_TextureHandle> - Texture attachments.
    @param: _destroyTexture : Bool - If true, textures will be destroyed when
    @param: frame buffer is destroyed.
    **/
    @:native("bgfx_create_frame_buffer_from_handles")
    extern public static function createFrameBufferFromHandles(_num:cpp.UInt8, _handles:cpp.ConstStar<bgfx.TextureHandle.Native_TextureHandle>, _destroyTexture:Bool):bgfx.FrameBufferHandle.Native_FrameBufferHandle;

    /**
    Create MRT frame buffer from texture handles with specific layer and
    mip level.
    @param: _num : cpp.UInt8 - Number of attachments.
    @param: _attachment : cpp.ConstStar<bgfx.Attachment.Native_Attachment> - Attachment texture info. See: `bgfx::Attachment`.
    @param: _destroyTexture : Bool - If true, textures will be destroyed when
    @param: frame buffer is destroyed.
    **/
    @:native("bgfx_create_frame_buffer_from_attachment")
    extern public static function createFrameBufferFromAttachment(_num:cpp.UInt8, _attachment:cpp.ConstStar<bgfx.Attachment.Native_Attachment>, _destroyTexture:Bool):bgfx.FrameBufferHandle.Native_FrameBufferHandle;

    /**
    Create frame buffer for multiple window rendering.
    @remarks
      Frame buffer cannot be used for sampling.
    @attention Availability depends on: `BGFX_CAPS_SWAP_CHAIN`.
    @param: _nwh : cpp.Star<cpp.Void> - OS' target native window handle.
    @param: _width : cpp.UInt16 - Window back buffer width.
    @param: _height : cpp.UInt16 - Window back buffer height.
    @param: _format : bgfx.TextureFormat.Native_TextureFormat - Window back buffer color format.
    @param: _depthFormat : bgfx.TextureFormat.Native_TextureFormat - Window back buffer depth format.
    **/
    @:native("bgfx_create_frame_buffer_from_nwh")
    extern public static function createFrameBufferFromNwh(_nwh:cpp.Star<cpp.Void>, _width:cpp.UInt16, _height:cpp.UInt16, _format:bgfx.TextureFormat.Native_TextureFormat, _depthFormat:bgfx.TextureFormat.Native_TextureFormat):bgfx.FrameBufferHandle.Native_FrameBufferHandle;

    /**
    Set frame buffer debug name.
    @param: _handle : bgfx.FrameBufferHandle.Native_FrameBufferHandle - Frame buffer handle.
    @param: _name : cpp.ConstStar<cpp.Char> - Frame buffer name.
    @param: _len : cpp.Int32 - Frame buffer name length (if length is INT32_MAX, it's expected
    @param: that _name is zero terminated string.
    **/
    @:native("bgfx_set_frame_buffer_name")
    extern public static function setFrameBufferName(_handle:bgfx.FrameBufferHandle.Native_FrameBufferHandle, _name:String, _len:cpp.Int32):cpp.Void;

    /**
    Obtain texture handle of frame buffer attachment.
    @param: _handle : bgfx.FrameBufferHandle.Native_FrameBufferHandle - Frame buffer handle.
    **/
    @:native("bgfx_get_texture")
    extern public static function getTexture(_handle:bgfx.FrameBufferHandle.Native_FrameBufferHandle, _attachment:cpp.UInt8):bgfx.TextureHandle.Native_TextureHandle;

    /**
    Destroy frame buffer.
    @param: _handle : bgfx.FrameBufferHandle.Native_FrameBufferHandle - Frame buffer handle.
    **/
    @:native("bgfx_destroy_frame_buffer")
    extern public static function destroyFrameBuffer(_handle:bgfx.FrameBufferHandle.Native_FrameBufferHandle):cpp.Void;

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
    @param: _name : cpp.ConstStar<cpp.Char> - Uniform name in shader.
    @param: _type : bgfx.UniformType.Native_UniformType - Type of uniform (See: `bgfx::UniformType`).
    @param: _num : cpp.UInt16 - Number of elements in array.
    **/
    @:native("bgfx_create_uniform")
    extern public static function createUniform(_name:String, _type:bgfx.UniformType.Native_UniformType, _num:cpp.UInt16):bgfx.UniformHandle.Native_UniformHandle;

    /**
    Retrieve uniform info.
    @param: _handle : bgfx.UniformHandle.Native_UniformHandle - Handle to uniform object.
    @param: _info : cpp.Star<bgfx.UniformInfo.Native_UniformInfo> - Uniform info.
    **/
    @:native("bgfx_get_uniform_info")
    extern public static function getUniformInfo(_handle:bgfx.UniformHandle.Native_UniformHandle, _info:cpp.Star<bgfx.UniformInfo.Native_UniformInfo>):cpp.Void;

    /**
    Destroy shader uniform parameter.
    @param: _handle : bgfx.UniformHandle.Native_UniformHandle - Handle to uniform object.
    **/
    @:native("bgfx_destroy_uniform")
    extern public static function destroyUniform(_handle:bgfx.UniformHandle.Native_UniformHandle):cpp.Void;

    /**
    Create occlusion query.
    **/
    @:native("bgfx_create_occlusion_query")
    extern public static function createOcclusionQuery():bgfx.OcclusionQueryHandle.Native_OcclusionQueryHandle;

    /**
    Retrieve occlusion query result from previous frame.
    @param: _handle : bgfx.OcclusionQueryHandle.Native_OcclusionQueryHandle - Handle to occlusion query object.
    @param: _result : cpp.Star<cpp.Int32> - Number of pixels that passed test. This argument
    @param: can be `NULL` if result of occlusion query is not needed.
    **/
    @:native("bgfx_get_result")
    extern public static function getResult(_handle:bgfx.OcclusionQueryHandle.Native_OcclusionQueryHandle, _result:cpp.Star<cpp.Int32>):bgfx.OcclusionQueryResult.Native_OcclusionQueryResult;

    /**
    Destroy occlusion query.
    @param: _handle : bgfx.OcclusionQueryHandle.Native_OcclusionQueryHandle - Handle to occlusion query object.
    **/
    @:native("bgfx_destroy_occlusion_query")
    extern public static function destroyOcclusionQuery(_handle:bgfx.OcclusionQueryHandle.Native_OcclusionQueryHandle):cpp.Void;

    /**
    Set palette color value.
    @param: _index : cpp.UInt8 - Index into palette.
    @param: _rgba : cpp.UInt32 - Packed 32-bit RGBA value.
    **/
    @:native("bgfx_set_palette_color_rgba8")
    extern public static function setPaletteColorRgba8(_index:cpp.UInt8, _rgba:cpp.UInt32):cpp.Void;

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
    @param: _name : cpp.ConstStar<cpp.Char> - View name.
    @param: _len : cpp.Int32 - View name length (if length is INT32_MAX, it's expected
    @param: that _name is zero terminated string.
    **/
    @:native("bgfx_set_view_name")
    extern public static function setViewName(_id:bgfx.ViewId, _name:String, _len:cpp.Int32):cpp.Void;

    /**
    Set view rectangle. Draw primitive outside view will be clipped.
    @param: _id : bgfx.ViewId - View id.
    @param: _x : cpp.UInt16 - Position x from the left corner of the window.
    @param: _y : cpp.UInt16 - Position y from the top corner of the window.
    @param: _width : cpp.UInt16 - Width of view port region.
    @param: _height : cpp.UInt16 - Height of view port region.
    **/
    @:native("bgfx_set_view_rect")
    extern public static function setViewRect(_id:bgfx.ViewId, _x:cpp.UInt16, _y:cpp.UInt16, _width:cpp.UInt16, _height:cpp.UInt16):cpp.Void;

    /**
    Set view rectangle. Draw primitive outside view will be clipped.
    @param: _id : bgfx.ViewId - View id.
    @param: _x : cpp.UInt16 - Position x from the left corner of the window.
    @param: _y : cpp.UInt16 - Position y from the top corner of the window.
    @param: _ratio : bgfx.BackbufferRatio.Native_BackbufferRatio - Width and height will be set in respect to back-buffer size.
    @param: See: `BackbufferRatio::Enum`.
    **/
    @:native("bgfx_set_view_rect_ratio")
    extern public static function setViewRectRatio(_id:bgfx.ViewId, _x:cpp.UInt16, _y:cpp.UInt16, _ratio:bgfx.BackbufferRatio.Native_BackbufferRatio):cpp.Void;

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
    extern public static function setViewScissor(_id:bgfx.ViewId, _x:cpp.UInt16, _y:cpp.UInt16, _width:cpp.UInt16, _height:cpp.UInt16):cpp.Void;

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
    extern public static function setViewClear(_id:bgfx.ViewId, _flags:cpp.UInt16, _rgba:cpp.UInt32, _depth:cpp.Float32, _stencil:cpp.UInt8):cpp.Void;

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
    extern public static function setViewClearMrt(_id:bgfx.ViewId, _flags:cpp.UInt16, _depth:cpp.Float32, _stencil:cpp.UInt8, _c0:cpp.UInt8, _c1:cpp.UInt8, _c2:cpp.UInt8, _c3:cpp.UInt8, _c4:cpp.UInt8, _c5:cpp.UInt8, _c6:cpp.UInt8, _c7:cpp.UInt8):cpp.Void;

    /**
    Set view sorting mode.
    @remarks
      View mode must be set prior calling `bgfx::submit` for the view.
    @param: _id : bgfx.ViewId - View id.
    @param: _mode : bgfx.ViewMode.Native_ViewMode - View sort mode. See `ViewMode::Enum`.
    **/
    @:native("bgfx_set_view_mode")
    extern public static function setViewMode(_id:bgfx.ViewId, _mode:bgfx.ViewMode.Native_ViewMode):cpp.Void;

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
    extern public static function setViewFrameBuffer(_id:bgfx.ViewId, _handle:bgfx.FrameBufferHandle.Native_FrameBufferHandle):cpp.Void;

    /**
    Set view's view matrix and projection matrix,
    all draw primitives in this view will use these two matrices.
    @param: _id : bgfx.ViewId - View id.
    @param: _view : cpp.ConstStar<cpp.Void> - View matrix.
    @param: _proj : cpp.ConstStar<cpp.Void> - Projection matrix.
    **/
    @:native("bgfx_set_view_transform")
    extern public static function setViewTransform(_id:bgfx.ViewId, _view:cpp.ConstStar<cpp.Void>, _proj:cpp.ConstStar<cpp.Void>):cpp.Void;

    /**
    Reset all view settings to default.
    **/
    @:native("bgfx_reset_view")
    extern public static function resetView(_id:bgfx.ViewId):cpp.Void;

    /**
    Begin submitting draw calls from thread.
    @param: _forThread : Bool - Explicitly request an encoder for a worker thread.
    **/
    @:native("bgfx_encoder_begin")
    extern public static function encoderBegin(_forThread:Bool):cpp.Star<bgfx.Encoder.Native_Encoder>;

    /**
    End submitting draw calls from thread.
    @param: _encoder : cpp.Star<bgfx.Encoder.Native_Encoder> - Encoder.
    **/
    @:native("bgfx_encoder_end")
    extern public static function encoderEnd(_encoder:cpp.Star<bgfx.Encoder.Native_Encoder>):cpp.Void;

    /**
    Sets a debug marker. This allows you to group graphics calls together for easy browsing in
    graphics debugging tools.
    @param: _name : cpp.ConstStar<cpp.Char> - Marker name.
    @param: _len : cpp.Int32 - Marker name length (if length is INT32_MAX, it's expected
    @param: that _name is zero terminated string.
    **/
    @:native("bgfx_encoder_set_marker")
    extern public static function encoderSetMarker(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _name:String, _len:cpp.Int32):cpp.Void;

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
    extern public static function encoderSetState(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _state:cpp.UInt64, _rgba:cpp.UInt32):cpp.Void;

    /**
    Set condition for rendering.
    @param: _handle : bgfx.OcclusionQueryHandle.Native_OcclusionQueryHandle - Occlusion query handle.
    @param: _visible : Bool - Render if occlusion query is visible.
    **/
    @:native("bgfx_encoder_set_condition")
    extern public static function encoderSetCondition(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _handle:bgfx.OcclusionQueryHandle.Native_OcclusionQueryHandle, _visible:Bool):cpp.Void;

    /**
    Set stencil test state.
    @param: _fstencil : cpp.UInt32 - Front stencil state.
    @param: _bstencil : cpp.UInt32 - Back stencil state. If back is set to `BGFX_STENCIL_NONE`
    @param: _fstencil is applied to both front and back facing primitives.
    **/
    @:native("bgfx_encoder_set_stencil")
    extern public static function encoderSetStencil(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _fstencil:cpp.UInt32, _bstencil:cpp.UInt32):cpp.Void;

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
    extern public static function encoderSetScissor(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _x:cpp.UInt16, _y:cpp.UInt16, _width:cpp.UInt16, _height:cpp.UInt16):cpp.UInt16;

    /**
    Set scissor from cache for draw primitive.
    @remark
      To scissor for all primitives in view see `bgfx::setViewScissor`.
    @param: _cache : cpp.UInt16 - Index in scissor cache.
    **/
    @:native("bgfx_encoder_set_scissor_cached")
    extern public static function encoderSetScissorCached(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _cache:cpp.UInt16):cpp.Void;

    /**
    Set model matrix for draw primitive. If it is not called,
    the model will be rendered with an identity model matrix.
    @param: _mtx : cpp.ConstStar<cpp.Void> - Pointer to first matrix in array.
    @param: _num : cpp.UInt16 - Number of matrices in array.
    **/
    @:native("bgfx_encoder_set_transform")
    extern public static function encoderSetTransform(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _mtx:cpp.ConstStar<cpp.Void>, _num:cpp.UInt16):cpp.UInt32;

    /**
     Set model matrix from matrix cache for draw primitive.
    @param: _cache : cpp.UInt32 - Index in matrix cache.
    @param: _num : cpp.UInt16 - Number of matrices from cache.
    **/
    @:native("bgfx_encoder_set_transform_cached")
    extern public static function encoderSetTransformCached(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _cache:cpp.UInt32, _num:cpp.UInt16):cpp.Void;

    /**
    Reserve matrices in internal matrix cache.
    @attention Pointer returned can be modified until `bgfx::frame` is called.
    @param: _transform : cpp.Star<bgfx.Transform.Native_Transform> - Pointer to `Transform` structure.
    @param: _num : cpp.UInt16 - Number of matrices.
    **/
    @:native("bgfx_encoder_alloc_transform")
    extern public static function encoderAllocTransform(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _transform:cpp.Star<bgfx.Transform.Native_Transform>, _num:cpp.UInt16):cpp.UInt32;

    /**
    Set shader uniform parameter for draw primitive.
    @param: _handle : bgfx.UniformHandle.Native_UniformHandle - Uniform.
    @param: _value : cpp.ConstStar<cpp.Void> - Pointer to uniform data.
    @param: _num : cpp.UInt16 - Number of elements. Passing `UINT16_MAX` will
    @param: use the _num passed on uniform creation.
    **/
    @:native("bgfx_encoder_set_uniform")
    extern public static function encoderSetUniform(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _handle:bgfx.UniformHandle.Native_UniformHandle, _value:cpp.ConstStar<cpp.Void>, _num:cpp.UInt16):cpp.Void;

    /**
    Set index buffer for draw primitive.
    @param: _handle : bgfx.IndexBufferHandle.Native_IndexBufferHandle - Index buffer.
    @param: _firstIndex : cpp.UInt32 - First index to render.
    @param: _numIndices : cpp.UInt32 - Number of indices to render.
    **/
    @:native("bgfx_encoder_set_index_buffer")
    extern public static function encoderSetIndexBuffer(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _handle:bgfx.IndexBufferHandle.Native_IndexBufferHandle, _firstIndex:cpp.UInt32, _numIndices:cpp.UInt32):cpp.Void;

    /**
    Set index buffer for draw primitive.
    @param: _handle : bgfx.DynamicIndexBufferHandle.Native_DynamicIndexBufferHandle - Dynamic index buffer.
    @param: _firstIndex : cpp.UInt32 - First index to render.
    @param: _numIndices : cpp.UInt32 - Number of indices to render.
    **/
    @:native("bgfx_encoder_set_dynamic_index_buffer")
    extern public static function encoderSetDynamicIndexBuffer(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _handle:bgfx.DynamicIndexBufferHandle.Native_DynamicIndexBufferHandle, _firstIndex:cpp.UInt32, _numIndices:cpp.UInt32):cpp.Void;

    /**
    Set index buffer for draw primitive.
    @param: _tib : cpp.ConstStar<bgfx.TransientIndexBuffer.Native_TransientIndexBuffer> - Transient index buffer.
    @param: _firstIndex : cpp.UInt32 - First index to render.
    @param: _numIndices : cpp.UInt32 - Number of indices to render.
    **/
    @:native("bgfx_encoder_set_transient_index_buffer")
    extern public static function encoderSetTransientIndexBuffer(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _tib:cpp.ConstStar<bgfx.TransientIndexBuffer.Native_TransientIndexBuffer>, _firstIndex:cpp.UInt32, _numIndices:cpp.UInt32):cpp.Void;

    /**
    Set vertex buffer for draw primitive.
    @param: _stream : cpp.UInt8 - Vertex stream.
    @param: _handle : bgfx.VertexBufferHandle.Native_VertexBufferHandle - Vertex buffer.
    @param: _startVertex : cpp.UInt32 - First vertex to render.
    @param: _numVertices : cpp.UInt32 - Number of vertices to render.
    **/
    @:native("bgfx_encoder_set_vertex_buffer")
    extern public static function encoderSetVertexBuffer(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _stream:cpp.UInt8, _handle:bgfx.VertexBufferHandle.Native_VertexBufferHandle, _startVertex:cpp.UInt32, _numVertices:cpp.UInt32):cpp.Void;

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
    extern public static function encoderSetVertexBufferWithLayout(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _stream:cpp.UInt8, _handle:bgfx.VertexBufferHandle.Native_VertexBufferHandle, _startVertex:cpp.UInt32, _numVertices:cpp.UInt32, _layoutHandle:bgfx.VertexLayoutHandle.Native_VertexLayoutHandle):cpp.Void;

    /**
    Set vertex buffer for draw primitive.
    @param: _stream : cpp.UInt8 - Vertex stream.
    @param: _handle : bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle - Dynamic vertex buffer.
    @param: _startVertex : cpp.UInt32 - First vertex to render.
    @param: _numVertices : cpp.UInt32 - Number of vertices to render.
    **/
    @:native("bgfx_encoder_set_dynamic_vertex_buffer")
    extern public static function encoderSetDynamicVertexBuffer(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _stream:cpp.UInt8, _handle:bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle, _startVertex:cpp.UInt32, _numVertices:cpp.UInt32):cpp.Void;

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
    extern public static function encoderSetDynamicVertexBufferWithLayout(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _stream:cpp.UInt8, _handle:bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle, _startVertex:cpp.UInt32, _numVertices:cpp.UInt32, _layoutHandle:bgfx.VertexLayoutHandle.Native_VertexLayoutHandle):cpp.Void;

    /**
    Set vertex buffer for draw primitive.
    @param: _stream : cpp.UInt8 - Vertex stream.
    @param: _tvb : cpp.ConstStar<bgfx.TransientVertexBuffer.Native_TransientVertexBuffer> - Transient vertex buffer.
    @param: _startVertex : cpp.UInt32 - First vertex to render.
    @param: _numVertices : cpp.UInt32 - Number of vertices to render.
    **/
    @:native("bgfx_encoder_set_transient_vertex_buffer")
    extern public static function encoderSetTransientVertexBuffer(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _stream:cpp.UInt8, _tvb:cpp.ConstStar<bgfx.TransientVertexBuffer.Native_TransientVertexBuffer>, _startVertex:cpp.UInt32, _numVertices:cpp.UInt32):cpp.Void;

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
    extern public static function encoderSetTransientVertexBufferWithLayout(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _stream:cpp.UInt8, _tvb:cpp.ConstStar<bgfx.TransientVertexBuffer.Native_TransientVertexBuffer>, _startVertex:cpp.UInt32, _numVertices:cpp.UInt32, _layoutHandle:bgfx.VertexLayoutHandle.Native_VertexLayoutHandle):cpp.Void;

    /**
    Set number of vertices for auto generated vertices use in conjunction
    with gl_VertexID.
    @attention Availability depends on: `BGFX_CAPS_VERTEX_ID`.
    @param: _numVertices : cpp.UInt32 - Number of vertices.
    **/
    @:native("bgfx_encoder_set_vertex_count")
    extern public static function encoderSetVertexCount(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _numVertices:cpp.UInt32):cpp.Void;

    /**
    Set instance data buffer for draw primitive.
    @param: _idb : cpp.ConstStar<bgfx.InstanceDataBuffer.Native_InstanceDataBuffer> - Transient instance data buffer.
    @param: _start : cpp.UInt32 - First instance data.
    @param: _num : cpp.UInt32 - Number of data instances.
    **/
    @:native("bgfx_encoder_set_instance_data_buffer")
    extern public static function encoderSetInstanceDataBuffer(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _idb:cpp.ConstStar<bgfx.InstanceDataBuffer.Native_InstanceDataBuffer>, _start:cpp.UInt32, _num:cpp.UInt32):cpp.Void;

    /**
    Set instance data buffer for draw primitive.
    @param: _handle : bgfx.VertexBufferHandle.Native_VertexBufferHandle - Vertex buffer.
    @param: _startVertex : cpp.UInt32 - First instance data.
    @param: _num : cpp.UInt32 - Number of data instances.
    **/
    @:native("bgfx_encoder_set_instance_data_from_vertex_buffer")
    extern public static function encoderSetInstanceDataFromVertexBuffer(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _handle:bgfx.VertexBufferHandle.Native_VertexBufferHandle, _startVertex:cpp.UInt32, _num:cpp.UInt32):cpp.Void;

    /**
    Set instance data buffer for draw primitive.
    @param: _handle : bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle - Dynamic vertex buffer.
    @param: _startVertex : cpp.UInt32 - First instance data.
    @param: _num : cpp.UInt32 - Number of data instances.
    **/
    @:native("bgfx_encoder_set_instance_data_from_dynamic_vertex_buffer")
    extern public static function encoderSetInstanceDataFromDynamicVertexBuffer(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _handle:bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle, _startVertex:cpp.UInt32, _num:cpp.UInt32):cpp.Void;

    /**
    Set number of instances for auto generated instances use in conjunction
    with gl_InstanceID.
    @attention Availability depends on: `BGFX_CAPS_VERTEX_ID`.
    **/
    @:native("bgfx_encoder_set_instance_count")
    extern public static function encoderSetInstanceCount(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _numInstances:cpp.UInt32):cpp.Void;

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
    extern public static function encoderSetTexture(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _stage:cpp.UInt8, _sampler:bgfx.UniformHandle.Native_UniformHandle, _handle:bgfx.TextureHandle.Native_TextureHandle, _flags:cpp.UInt32):cpp.Void;

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
    extern public static function encoderTouch(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _id:bgfx.ViewId):cpp.Void;

    /**
    Submit primitive for rendering.
    @param: _id : bgfx.ViewId - View id.
    @param: _program : bgfx.ProgramHandle.Native_ProgramHandle - Program.
    @param: _depth : cpp.UInt32 - Depth for sorting.
    @param: _flags : cpp.UInt8 - Discard or preserve states. See `BGFX_DISCARD_*`.
    **/
    @:native("bgfx_encoder_submit")
    extern public static function encoderSubmit(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _id:bgfx.ViewId, _program:bgfx.ProgramHandle.Native_ProgramHandle, _depth:cpp.UInt32, _flags:cpp.UInt8):cpp.Void;

    /**
    Submit primitive with occlusion query for rendering.
    @param: _id : bgfx.ViewId - View id.
    @param: _program : bgfx.ProgramHandle.Native_ProgramHandle - Program.
    @param: _occlusionQuery : bgfx.OcclusionQueryHandle.Native_OcclusionQueryHandle - Occlusion query.
    @param: _depth : cpp.UInt32 - Depth for sorting.
    @param: _flags : cpp.UInt8 - Discard or preserve states. See `BGFX_DISCARD_*`.
    **/
    @:native("bgfx_encoder_submit_occlusion_query")
    extern public static function encoderSubmitOcclusionQuery(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _id:bgfx.ViewId, _program:bgfx.ProgramHandle.Native_ProgramHandle, _occlusionQuery:bgfx.OcclusionQueryHandle.Native_OcclusionQueryHandle, _depth:cpp.UInt32, _flags:cpp.UInt8):cpp.Void;

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
    extern public static function encoderSubmitIndirect(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _id:bgfx.ViewId, _program:bgfx.ProgramHandle.Native_ProgramHandle, _indirectHandle:bgfx.IndirectBufferHandle.Native_IndirectBufferHandle, _start:cpp.UInt32, _num:cpp.UInt32, _depth:cpp.UInt32, _flags:cpp.UInt8):cpp.Void;

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
    extern public static function encoderSubmitIndirectCount(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _id:bgfx.ViewId, _program:bgfx.ProgramHandle.Native_ProgramHandle, _indirectHandle:bgfx.IndirectBufferHandle.Native_IndirectBufferHandle, _start:cpp.UInt32, _numHandle:bgfx.IndexBufferHandle.Native_IndexBufferHandle, _numIndex:cpp.UInt32, _numMax:cpp.UInt32, _depth:cpp.UInt32, _flags:cpp.UInt8):cpp.Void;

    /**
    Set compute index buffer.
    @param: _stage : cpp.UInt8 - Compute stage.
    @param: _handle : bgfx.IndexBufferHandle.Native_IndexBufferHandle - Index buffer handle.
    @param: _access : bgfx.Access.Native_Access - Buffer access. See `Access::Enum`.
    **/
    @:native("bgfx_encoder_set_compute_index_buffer")
    extern public static function encoderSetComputeIndexBuffer(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _stage:cpp.UInt8, _handle:bgfx.IndexBufferHandle.Native_IndexBufferHandle, _access:bgfx.Access.Native_Access):cpp.Void;

    /**
    Set compute vertex buffer.
    @param: _stage : cpp.UInt8 - Compute stage.
    @param: _handle : bgfx.VertexBufferHandle.Native_VertexBufferHandle - Vertex buffer handle.
    @param: _access : bgfx.Access.Native_Access - Buffer access. See `Access::Enum`.
    **/
    @:native("bgfx_encoder_set_compute_vertex_buffer")
    extern public static function encoderSetComputeVertexBuffer(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _stage:cpp.UInt8, _handle:bgfx.VertexBufferHandle.Native_VertexBufferHandle, _access:bgfx.Access.Native_Access):cpp.Void;

    /**
    Set compute dynamic index buffer.
    @param: _stage : cpp.UInt8 - Compute stage.
    @param: _handle : bgfx.DynamicIndexBufferHandle.Native_DynamicIndexBufferHandle - Dynamic index buffer handle.
    @param: _access : bgfx.Access.Native_Access - Buffer access. See `Access::Enum`.
    **/
    @:native("bgfx_encoder_set_compute_dynamic_index_buffer")
    extern public static function encoderSetComputeDynamicIndexBuffer(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _stage:cpp.UInt8, _handle:bgfx.DynamicIndexBufferHandle.Native_DynamicIndexBufferHandle, _access:bgfx.Access.Native_Access):cpp.Void;

    /**
    Set compute dynamic vertex buffer.
    @param: _stage : cpp.UInt8 - Compute stage.
    @param: _handle : bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle - Dynamic vertex buffer handle.
    @param: _access : bgfx.Access.Native_Access - Buffer access. See `Access::Enum`.
    **/
    @:native("bgfx_encoder_set_compute_dynamic_vertex_buffer")
    extern public static function encoderSetComputeDynamicVertexBuffer(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _stage:cpp.UInt8, _handle:bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle, _access:bgfx.Access.Native_Access):cpp.Void;

    /**
    Set compute indirect buffer.
    @param: _stage : cpp.UInt8 - Compute stage.
    @param: _handle : bgfx.IndirectBufferHandle.Native_IndirectBufferHandle - Indirect buffer handle.
    @param: _access : bgfx.Access.Native_Access - Buffer access. See `Access::Enum`.
    **/
    @:native("bgfx_encoder_set_compute_indirect_buffer")
    extern public static function encoderSetComputeIndirectBuffer(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _stage:cpp.UInt8, _handle:bgfx.IndirectBufferHandle.Native_IndirectBufferHandle, _access:bgfx.Access.Native_Access):cpp.Void;

    /**
    Set compute image from texture.
    @param: _stage : cpp.UInt8 - Compute stage.
    @param: _handle : bgfx.TextureHandle.Native_TextureHandle - Texture handle.
    @param: _mip : cpp.UInt8 - Mip level.
    @param: _access : bgfx.Access.Native_Access - Image access. See `Access::Enum`.
    @param: _format : bgfx.TextureFormat.Native_TextureFormat - Texture format. See: `TextureFormat::Enum`.
    **/
    @:native("bgfx_encoder_set_image")
    extern public static function encoderSetImage(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _stage:cpp.UInt8, _handle:bgfx.TextureHandle.Native_TextureHandle, _mip:cpp.UInt8, _access:bgfx.Access.Native_Access, _format:bgfx.TextureFormat.Native_TextureFormat):cpp.Void;

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
    extern public static function encoderDispatch(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _id:bgfx.ViewId, _program:bgfx.ProgramHandle.Native_ProgramHandle, _numX:cpp.UInt32, _numY:cpp.UInt32, _numZ:cpp.UInt32, _flags:cpp.UInt8):cpp.Void;

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
    extern public static function encoderDispatchIndirect(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _id:bgfx.ViewId, _program:bgfx.ProgramHandle.Native_ProgramHandle, _indirectHandle:bgfx.IndirectBufferHandle.Native_IndirectBufferHandle, _start:cpp.UInt32, _num:cpp.UInt32, _flags:cpp.UInt8):cpp.Void;

    /**
    Discard previously set state for draw or compute call.
    @param: _flags : cpp.UInt8 - Discard or preserve states. See `BGFX_DISCARD_*`.
    **/
    @:native("bgfx_encoder_discard")
    extern public static function encoderDiscard(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _flags:cpp.UInt8):cpp.Void;

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
    extern public static function encoderBlit(_this:cpp.Star<bgfx.Encoder.Native_Encoder>, _id:bgfx.ViewId, _dst:bgfx.TextureHandle.Native_TextureHandle, _dstMip:cpp.UInt8, _dstX:cpp.UInt16, _dstY:cpp.UInt16, _dstZ:cpp.UInt16, _src:bgfx.TextureHandle.Native_TextureHandle, _srcMip:cpp.UInt8, _srcX:cpp.UInt16, _srcY:cpp.UInt16, _srcZ:cpp.UInt16, _width:cpp.UInt16, _height:cpp.UInt16, _depth:cpp.UInt16):cpp.Void;

    /**
    Request screen shot of window back buffer.
    @remarks
      `bgfx::CallbackI::screenShot` must be implemented.
    @attention Frame buffer handle must be created with OS' target native window handle.
    @param: _handle : bgfx.FrameBufferHandle.Native_FrameBufferHandle - Frame buffer handle. If handle is `BGFX_INVALID_HANDLE` request will be
    @param: made for main window back buffer.
    @param: _filePath : cpp.ConstStar<cpp.Char> - Will be passed to `bgfx::CallbackI::screenShot` callback.
    **/
    @:native("bgfx_request_screen_shot")
    extern public static function requestScreenShot(_handle:bgfx.FrameBufferHandle.Native_FrameBufferHandle, _filePath:String):cpp.Void;

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
    extern public static function renderFrame(_msecs:cpp.Int32):bgfx.RenderFrame.Native_RenderFrame;

    /**
    Set platform data.
    @warning Must be called before `bgfx::init`.
    @param: _data : cpp.ConstStar<bgfx.PlatformData.Native_PlatformData> - Platform data.
    **/
    @:native("bgfx_set_platform_data")
    extern public static function setPlatformData(_data:cpp.ConstStar<bgfx.PlatformData.Native_PlatformData>):cpp.Void;

    /**
    Get internal data for interop.
    @attention It's expected you understand some bgfx internals before you
      use this call.
    @warning Must be called only on render thread.
    **/
    @:native("bgfx_get_internal_data")
    extern public static function getInternalData():cpp.ConstStar<bgfx.InternalData.Native_InternalData>;

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
    extern public static function overrideInternalTexturePtr(_handle:bgfx.TextureHandle.Native_TextureHandle, _ptr:cpp.UInt64):cpp.UInt64;

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
    extern public static function overrideInternalTexture(_handle:bgfx.TextureHandle.Native_TextureHandle, _width:cpp.UInt16, _height:cpp.UInt16, _numMips:cpp.UInt8, _format:bgfx.TextureFormat.Native_TextureFormat, _flags:cpp.UInt64):cpp.UInt64;

    /**
    Sets a debug marker. This allows you to group graphics calls together for easy browsing in
    graphics debugging tools.
    @param: _name : cpp.ConstStar<cpp.Char> - Marker name.
    @param: _len : cpp.Int32 - Marker name length (if length is INT32_MAX, it's expected
    @param: that _name is zero terminated string.
    **/
    @:native("bgfx_set_marker")
    extern public static function setMarker(_name:String, _len:cpp.Int32):cpp.Void;

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
    extern public static function setState(_state:cpp.UInt64, _rgba:cpp.UInt32):cpp.Void;

    /**
    Set condition for rendering.
    @param: _handle : bgfx.OcclusionQueryHandle.Native_OcclusionQueryHandle - Occlusion query handle.
    @param: _visible : Bool - Render if occlusion query is visible.
    **/
    @:native("bgfx_set_condition")
    extern public static function setCondition(_handle:bgfx.OcclusionQueryHandle.Native_OcclusionQueryHandle, _visible:Bool):cpp.Void;

    /**
    Set stencil test state.
    @param: _fstencil : cpp.UInt32 - Front stencil state.
    @param: _bstencil : cpp.UInt32 - Back stencil state. If back is set to `BGFX_STENCIL_NONE`
    @param: _fstencil is applied to both front and back facing primitives.
    **/
    @:native("bgfx_set_stencil")
    extern public static function setStencil(_fstencil:cpp.UInt32, _bstencil:cpp.UInt32):cpp.Void;

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
    extern public static function setScissor(_x:cpp.UInt16, _y:cpp.UInt16, _width:cpp.UInt16, _height:cpp.UInt16):cpp.UInt16;

    /**
    Set scissor from cache for draw primitive.
    @remark
      To scissor for all primitives in view see `bgfx::setViewScissor`.
    @param: _cache : cpp.UInt16 - Index in scissor cache.
    **/
    @:native("bgfx_set_scissor_cached")
    extern public static function setScissorCached(_cache:cpp.UInt16):cpp.Void;

    /**
    Set model matrix for draw primitive. If it is not called,
    the model will be rendered with an identity model matrix.
    @param: _mtx : cpp.ConstStar<cpp.Void> - Pointer to first matrix in array.
    @param: _num : cpp.UInt16 - Number of matrices in array.
    **/
    @:native("bgfx_set_transform")
    extern public static function setTransform(_mtx:cpp.ConstStar<cpp.Void>, _num:cpp.UInt16):cpp.UInt32;

    /**
     Set model matrix from matrix cache for draw primitive.
    @param: _cache : cpp.UInt32 - Index in matrix cache.
    @param: _num : cpp.UInt16 - Number of matrices from cache.
    **/
    @:native("bgfx_set_transform_cached")
    extern public static function setTransformCached(_cache:cpp.UInt32, _num:cpp.UInt16):cpp.Void;

    /**
    Reserve matrices in internal matrix cache.
    @attention Pointer returned can be modified until `bgfx::frame` is called.
    @param: _transform : cpp.Star<bgfx.Transform.Native_Transform> - Pointer to `Transform` structure.
    @param: _num : cpp.UInt16 - Number of matrices.
    **/
    @:native("bgfx_alloc_transform")
    extern public static function allocTransform(_transform:cpp.Star<bgfx.Transform.Native_Transform>, _num:cpp.UInt16):cpp.UInt32;

    /**
    Set shader uniform parameter for draw primitive.
    @param: _handle : bgfx.UniformHandle.Native_UniformHandle - Uniform.
    @param: _value : cpp.ConstStar<cpp.Void> - Pointer to uniform data.
    @param: _num : cpp.UInt16 - Number of elements. Passing `UINT16_MAX` will
    @param: use the _num passed on uniform creation.
    **/
    @:native("bgfx_set_uniform")
    extern public static function setUniform(_handle:bgfx.UniformHandle.Native_UniformHandle, _value:cpp.ConstStar<cpp.Void>, _num:cpp.UInt16):cpp.Void;

    /**
    Set index buffer for draw primitive.
    @param: _handle : bgfx.IndexBufferHandle.Native_IndexBufferHandle - Index buffer.
    @param: _firstIndex : cpp.UInt32 - First index to render.
    @param: _numIndices : cpp.UInt32 - Number of indices to render.
    **/
    @:native("bgfx_set_index_buffer")
    extern public static function setIndexBuffer(_handle:bgfx.IndexBufferHandle.Native_IndexBufferHandle, _firstIndex:cpp.UInt32, _numIndices:cpp.UInt32):cpp.Void;

    /**
    Set index buffer for draw primitive.
    @param: _handle : bgfx.DynamicIndexBufferHandle.Native_DynamicIndexBufferHandle - Dynamic index buffer.
    @param: _firstIndex : cpp.UInt32 - First index to render.
    @param: _numIndices : cpp.UInt32 - Number of indices to render.
    **/
    @:native("bgfx_set_dynamic_index_buffer")
    extern public static function setDynamicIndexBuffer(_handle:bgfx.DynamicIndexBufferHandle.Native_DynamicIndexBufferHandle, _firstIndex:cpp.UInt32, _numIndices:cpp.UInt32):cpp.Void;

    /**
    Set index buffer for draw primitive.
    @param: _tib : cpp.ConstStar<bgfx.TransientIndexBuffer.Native_TransientIndexBuffer> - Transient index buffer.
    @param: _firstIndex : cpp.UInt32 - First index to render.
    @param: _numIndices : cpp.UInt32 - Number of indices to render.
    **/
    @:native("bgfx_set_transient_index_buffer")
    extern public static function setTransientIndexBuffer(_tib:cpp.ConstStar<bgfx.TransientIndexBuffer.Native_TransientIndexBuffer>, _firstIndex:cpp.UInt32, _numIndices:cpp.UInt32):cpp.Void;

    /**
    Set vertex buffer for draw primitive.
    @param: _stream : cpp.UInt8 - Vertex stream.
    @param: _handle : bgfx.VertexBufferHandle.Native_VertexBufferHandle - Vertex buffer.
    @param: _startVertex : cpp.UInt32 - First vertex to render.
    @param: _numVertices : cpp.UInt32 - Number of vertices to render.
    **/
    @:native("bgfx_set_vertex_buffer")
    extern public static function setVertexBuffer(_stream:cpp.UInt8, _handle:bgfx.VertexBufferHandle.Native_VertexBufferHandle, _startVertex:cpp.UInt32, _numVertices:cpp.UInt32):cpp.Void;

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
    extern public static function setVertexBufferWithLayout(_stream:cpp.UInt8, _handle:bgfx.VertexBufferHandle.Native_VertexBufferHandle, _startVertex:cpp.UInt32, _numVertices:cpp.UInt32, _layoutHandle:bgfx.VertexLayoutHandle.Native_VertexLayoutHandle):cpp.Void;

    /**
    Set vertex buffer for draw primitive.
    @param: _stream : cpp.UInt8 - Vertex stream.
    @param: _handle : bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle - Dynamic vertex buffer.
    @param: _startVertex : cpp.UInt32 - First vertex to render.
    @param: _numVertices : cpp.UInt32 - Number of vertices to render.
    **/
    @:native("bgfx_set_dynamic_vertex_buffer")
    extern public static function setDynamicVertexBuffer(_stream:cpp.UInt8, _handle:bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle, _startVertex:cpp.UInt32, _numVertices:cpp.UInt32):cpp.Void;

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
    extern public static function setDynamicVertexBufferWithLayout(_stream:cpp.UInt8, _handle:bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle, _startVertex:cpp.UInt32, _numVertices:cpp.UInt32, _layoutHandle:bgfx.VertexLayoutHandle.Native_VertexLayoutHandle):cpp.Void;

    /**
    Set vertex buffer for draw primitive.
    @param: _stream : cpp.UInt8 - Vertex stream.
    @param: _tvb : cpp.ConstStar<bgfx.TransientVertexBuffer.Native_TransientVertexBuffer> - Transient vertex buffer.
    @param: _startVertex : cpp.UInt32 - First vertex to render.
    @param: _numVertices : cpp.UInt32 - Number of vertices to render.
    **/
    @:native("bgfx_set_transient_vertex_buffer")
    extern public static function setTransientVertexBuffer(_stream:cpp.UInt8, _tvb:cpp.ConstStar<bgfx.TransientVertexBuffer.Native_TransientVertexBuffer>, _startVertex:cpp.UInt32, _numVertices:cpp.UInt32):cpp.Void;

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
    extern public static function setTransientVertexBufferWithLayout(_stream:cpp.UInt8, _tvb:cpp.ConstStar<bgfx.TransientVertexBuffer.Native_TransientVertexBuffer>, _startVertex:cpp.UInt32, _numVertices:cpp.UInt32, _layoutHandle:bgfx.VertexLayoutHandle.Native_VertexLayoutHandle):cpp.Void;

    /**
    Set number of vertices for auto generated vertices use in conjunction
    with gl_VertexID.
    @attention Availability depends on: `BGFX_CAPS_VERTEX_ID`.
    @param: _numVertices : cpp.UInt32 - Number of vertices.
    **/
    @:native("bgfx_set_vertex_count")
    extern public static function setVertexCount(_numVertices:cpp.UInt32):cpp.Void;

    /**
    Set instance data buffer for draw primitive.
    @param: _idb : cpp.ConstStar<bgfx.InstanceDataBuffer.Native_InstanceDataBuffer> - Transient instance data buffer.
    @param: _start : cpp.UInt32 - First instance data.
    @param: _num : cpp.UInt32 - Number of data instances.
    **/
    @:native("bgfx_set_instance_data_buffer")
    extern public static function setInstanceDataBuffer(_idb:cpp.ConstStar<bgfx.InstanceDataBuffer.Native_InstanceDataBuffer>, _start:cpp.UInt32, _num:cpp.UInt32):cpp.Void;

    /**
    Set instance data buffer for draw primitive.
    @param: _handle : bgfx.VertexBufferHandle.Native_VertexBufferHandle - Vertex buffer.
    @param: _startVertex : cpp.UInt32 - First instance data.
    @param: _num : cpp.UInt32 - Number of data instances.
    **/
    @:native("bgfx_set_instance_data_from_vertex_buffer")
    extern public static function setInstanceDataFromVertexBuffer(_handle:bgfx.VertexBufferHandle.Native_VertexBufferHandle, _startVertex:cpp.UInt32, _num:cpp.UInt32):cpp.Void;

    /**
    Set instance data buffer for draw primitive.
    @param: _handle : bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle - Dynamic vertex buffer.
    @param: _startVertex : cpp.UInt32 - First instance data.
    @param: _num : cpp.UInt32 - Number of data instances.
    **/
    @:native("bgfx_set_instance_data_from_dynamic_vertex_buffer")
    extern public static function setInstanceDataFromDynamicVertexBuffer(_handle:bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle, _startVertex:cpp.UInt32, _num:cpp.UInt32):cpp.Void;

    /**
    Set number of instances for auto generated instances use in conjunction
    with gl_InstanceID.
    @attention Availability depends on: `BGFX_CAPS_VERTEX_ID`.
    **/
    @:native("bgfx_set_instance_count")
    extern public static function setInstanceCount(_numInstances:cpp.UInt32):cpp.Void;

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
    extern public static function setTexture(_stage:cpp.UInt8, _sampler:bgfx.UniformHandle.Native_UniformHandle, _handle:bgfx.TextureHandle.Native_TextureHandle, _flags:cpp.UInt32):cpp.Void;

    /**
    Submit an empty primitive for rendering. Uniforms and draw state
    will be applied but no geometry will be submitted.
    @remark
      These empty draw calls will sort before ordinary draw calls.
    @param: _id : bgfx.ViewId - View id.
    **/
    @:native("bgfx_touch")
    extern public static function touch(_id:bgfx.ViewId):cpp.Void;

    /**
    Submit primitive for rendering.
    @param: _id : bgfx.ViewId - View id.
    @param: _program : bgfx.ProgramHandle.Native_ProgramHandle - Program.
    @param: _depth : cpp.UInt32 - Depth for sorting.
    @param: _flags : cpp.UInt8 - Which states to discard for next draw. See `BGFX_DISCARD_*`.
    **/
    @:native("bgfx_submit")
    extern public static function submit(_id:bgfx.ViewId, _program:bgfx.ProgramHandle.Native_ProgramHandle, _depth:cpp.UInt32, _flags:cpp.UInt8):cpp.Void;

    /**
    Submit primitive with occlusion query for rendering.
    @param: _id : bgfx.ViewId - View id.
    @param: _program : bgfx.ProgramHandle.Native_ProgramHandle - Program.
    @param: _occlusionQuery : bgfx.OcclusionQueryHandle.Native_OcclusionQueryHandle - Occlusion query.
    @param: _depth : cpp.UInt32 - Depth for sorting.
    @param: _flags : cpp.UInt8 - Which states to discard for next draw. See `BGFX_DISCARD_*`.
    **/
    @:native("bgfx_submit_occlusion_query")
    extern public static function submitOcclusionQuery(_id:bgfx.ViewId, _program:bgfx.ProgramHandle.Native_ProgramHandle, _occlusionQuery:bgfx.OcclusionQueryHandle.Native_OcclusionQueryHandle, _depth:cpp.UInt32, _flags:cpp.UInt8):cpp.Void;

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
    extern public static function submitIndirect(_id:bgfx.ViewId, _program:bgfx.ProgramHandle.Native_ProgramHandle, _indirectHandle:bgfx.IndirectBufferHandle.Native_IndirectBufferHandle, _start:cpp.UInt32, _num:cpp.UInt32, _depth:cpp.UInt32, _flags:cpp.UInt8):cpp.Void;

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
    extern public static function submitIndirectCount(_id:bgfx.ViewId, _program:bgfx.ProgramHandle.Native_ProgramHandle, _indirectHandle:bgfx.IndirectBufferHandle.Native_IndirectBufferHandle, _start:cpp.UInt32, _numHandle:bgfx.IndexBufferHandle.Native_IndexBufferHandle, _numIndex:cpp.UInt32, _numMax:cpp.UInt32, _depth:cpp.UInt32, _flags:cpp.UInt8):cpp.Void;

    /**
    Set compute index buffer.
    @param: _stage : cpp.UInt8 - Compute stage.
    @param: _handle : bgfx.IndexBufferHandle.Native_IndexBufferHandle - Index buffer handle.
    @param: _access : bgfx.Access.Native_Access - Buffer access. See `Access::Enum`.
    **/
    @:native("bgfx_set_compute_index_buffer")
    extern public static function setComputeIndexBuffer(_stage:cpp.UInt8, _handle:bgfx.IndexBufferHandle.Native_IndexBufferHandle, _access:bgfx.Access.Native_Access):cpp.Void;

    /**
    Set compute vertex buffer.
    @param: _stage : cpp.UInt8 - Compute stage.
    @param: _handle : bgfx.VertexBufferHandle.Native_VertexBufferHandle - Vertex buffer handle.
    @param: _access : bgfx.Access.Native_Access - Buffer access. See `Access::Enum`.
    **/
    @:native("bgfx_set_compute_vertex_buffer")
    extern public static function setComputeVertexBuffer(_stage:cpp.UInt8, _handle:bgfx.VertexBufferHandle.Native_VertexBufferHandle, _access:bgfx.Access.Native_Access):cpp.Void;

    /**
    Set compute dynamic index buffer.
    @param: _stage : cpp.UInt8 - Compute stage.
    @param: _handle : bgfx.DynamicIndexBufferHandle.Native_DynamicIndexBufferHandle - Dynamic index buffer handle.
    @param: _access : bgfx.Access.Native_Access - Buffer access. See `Access::Enum`.
    **/
    @:native("bgfx_set_compute_dynamic_index_buffer")
    extern public static function setComputeDynamicIndexBuffer(_stage:cpp.UInt8, _handle:bgfx.DynamicIndexBufferHandle.Native_DynamicIndexBufferHandle, _access:bgfx.Access.Native_Access):cpp.Void;

    /**
    Set compute dynamic vertex buffer.
    @param: _stage : cpp.UInt8 - Compute stage.
    @param: _handle : bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle - Dynamic vertex buffer handle.
    @param: _access : bgfx.Access.Native_Access - Buffer access. See `Access::Enum`.
    **/
    @:native("bgfx_set_compute_dynamic_vertex_buffer")
    extern public static function setComputeDynamicVertexBuffer(_stage:cpp.UInt8, _handle:bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle, _access:bgfx.Access.Native_Access):cpp.Void;

    /**
    Set compute indirect buffer.
    @param: _stage : cpp.UInt8 - Compute stage.
    @param: _handle : bgfx.IndirectBufferHandle.Native_IndirectBufferHandle - Indirect buffer handle.
    @param: _access : bgfx.Access.Native_Access - Buffer access. See `Access::Enum`.
    **/
    @:native("bgfx_set_compute_indirect_buffer")
    extern public static function setComputeIndirectBuffer(_stage:cpp.UInt8, _handle:bgfx.IndirectBufferHandle.Native_IndirectBufferHandle, _access:bgfx.Access.Native_Access):cpp.Void;

    /**
    Set compute image from texture.
    @param: _stage : cpp.UInt8 - Compute stage.
    @param: _handle : bgfx.TextureHandle.Native_TextureHandle - Texture handle.
    @param: _mip : cpp.UInt8 - Mip level.
    @param: _access : bgfx.Access.Native_Access - Image access. See `Access::Enum`.
    @param: _format : bgfx.TextureFormat.Native_TextureFormat - Texture format. See: `TextureFormat::Enum`.
    **/
    @:native("bgfx_set_image")
    extern public static function setImage(_stage:cpp.UInt8, _handle:bgfx.TextureHandle.Native_TextureHandle, _mip:cpp.UInt8, _access:bgfx.Access.Native_Access, _format:bgfx.TextureFormat.Native_TextureFormat):cpp.Void;

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
    extern public static function dispatch(_id:bgfx.ViewId, _program:bgfx.ProgramHandle.Native_ProgramHandle, _numX:cpp.UInt32, _numY:cpp.UInt32, _numZ:cpp.UInt32, _flags:cpp.UInt8):cpp.Void;

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
    extern public static function dispatchIndirect(_id:bgfx.ViewId, _program:bgfx.ProgramHandle.Native_ProgramHandle, _indirectHandle:bgfx.IndirectBufferHandle.Native_IndirectBufferHandle, _start:cpp.UInt32, _num:cpp.UInt32, _flags:cpp.UInt8):cpp.Void;

    /**
    Discard previously set state for draw or compute call.
    @param: _flags : cpp.UInt8 - Draw/compute states to discard.
    **/
    @:native("bgfx_discard")
    extern public static function discard(_flags:cpp.UInt8):cpp.Void;

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
    extern public static function blit(_id:bgfx.ViewId, _dst:bgfx.TextureHandle.Native_TextureHandle, _dstMip:cpp.UInt8, _dstX:cpp.UInt16, _dstY:cpp.UInt16, _dstZ:cpp.UInt16, _src:bgfx.TextureHandle.Native_TextureHandle, _srcMip:cpp.UInt8, _srcX:cpp.UInt16, _srcY:cpp.UInt16, _srcZ:cpp.UInt16, _width:cpp.UInt16, _height:cpp.UInt16, _depth:cpp.UInt16):cpp.Void;

}
#if (scriptable || cppia)
    class CppiaBgfx {

        public static function getCallback():cpp.Pointer<cpp.Void> { return cpp.Pointer.fromStar(Native_Bgfx.getCallback()); }

        /**
        Init attachment.
        @param: _handle : bgfx.TextureHandle.Native_TextureHandle - Render target texture handle.
        @param: _access : bgfx.Access.Native_Access - Access. See `Access::Enum`.
        @param: _layer : cpp.UInt16 - Cubemap side or depth layer/slice to use.
        @param: _numLayers : cpp.UInt16 - Number of texture layer/slice(s) in array to use.
        @param: _mip : cpp.UInt16 - Mip level.
        @param: _resolve : cpp.UInt8 - Resolve flags. See: `BGFX_RESOLVE_*`
        **/
        public static function attachmentInit(_this:Attachment, _handle:TextureHandle, _access:Access, _layer:cpp.UInt16, _numLayers:cpp.UInt16, _mip:cpp.UInt16, _resolve:cpp.UInt8):Void {
             Native_Bgfx.attachmentInit(_this.__ptr != null ? cast _this.__ptr : _this.__inst, _handle.__inst, cast _access, _layer, _numLayers, _mip, _resolve);
        }
        
        
        /**
        Start VertexLayout.
        @param: _rendererType : bgfx.RendererType.Native_RendererType - Renderer backend type. See: `bgfx::RendererType`
        **/
        public static function vertexLayoutBegin(_this:VertexLayout, _rendererType:RendererType):VertexLayout {
            final res = Type.createEmptyInstance(VertexLayout);
            res.__ptr = cast Native_Bgfx.vertexLayoutBegin(_this.__ptr != null ? cast _this.__ptr : _this.__inst, cast _rendererType);
            return res;
        }
        
        
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
        public static function vertexLayoutAdd(_this:VertexLayout, _attrib:Attrib, _num:cpp.UInt8, _type:AttribType, _normalized:Bool, _asInt:Bool):VertexLayout {
            final res = Type.createEmptyInstance(VertexLayout);
            res.__ptr = cast Native_Bgfx.vertexLayoutAdd(_this.__ptr != null ? cast _this.__ptr : _this.__inst, cast _attrib, _num, cast _type, _normalized, _asInt);
            return res;
        }
        
        
        /**
        Decode attribute.
        @param: _attrib : bgfx.Attrib.Native_Attrib - Attribute semantics. See: `bgfx::Attrib`
        @param: _num : cpp.Star<cpp.UInt8> - Number of elements.
        @param: _type : cpp.Star<bgfx.AttribType.Native_AttribType> - Element type.
        @param: _normalized : cpp.Star<Bool> - Attribute is normalized.
        @param: _asInt : cpp.Star<Bool> - Attribute is packed as int.
        **/
        public static function vertexLayoutDecode(_this:VertexLayout, _attrib:Attrib, _num:cpp.Pointer<cpp.UInt8>, _type:AttribType, _normalized:cpp.Pointer<Bool>, _asInt:cpp.Pointer<Bool>):Void {
             Native_Bgfx.vertexLayoutDecode(_this.__ptr != null ? cast _this.__ptr : _this.__inst, cast _attrib, cast _num, cast cpp.RawPointer.addressOf(_type), cast _normalized, cast _asInt);
        }
        
        
        /**
        Returns `true` if VertexLayout contains attribute.
        @param: _attrib : bgfx.Attrib.Native_Attrib - Attribute semantics. See: `bgfx::Attrib`
        **/
        public static function vertexLayoutHas(_this:VertexLayout, _attrib:Attrib):Bool {
            return Native_Bgfx.vertexLayoutHas(_this.__ptr != null ? cast _this.__ptr : _this.__inst, cast _attrib);
        }
        
        
        /**
        Skip `_num` bytes in vertex stream.
        @param: _num : cpp.UInt8 - Number of bytes to skip.
        **/
        public static function vertexLayoutSkip(_this:VertexLayout, _num:cpp.UInt8):VertexLayout {
            final res = Type.createEmptyInstance(VertexLayout);
            res.__ptr = cast Native_Bgfx.vertexLayoutSkip(_this.__ptr != null ? cast _this.__ptr : _this.__inst, _num);
            return res;
        }
        
        
        /**
        End VertexLayout.
        **/
        public static function vertexLayoutEnd(_this:VertexLayout):Void {
             Native_Bgfx.vertexLayoutEnd(_this.__ptr != null ? cast _this.__ptr : _this.__inst);
        }
        
        
        /**
        Converts vertex stream data from one vertex stream format to another.
        @param: _dstLayout : cpp.ConstStar<bgfx.VertexLayout.Native_VertexLayout> - Destination vertex stream layout.
        @param: _dstData : cpp.Star<cpp.Void> - Destination vertex stream.
        @param: _srcLayout : cpp.ConstStar<bgfx.VertexLayout.Native_VertexLayout> - Source vertex stream layout.
        @param: _srcData : cpp.ConstStar<cpp.Void> - Source vertex stream data.
        @param: _num : cpp.UInt32 - Number of vertices to convert from source to destination.
        **/
        public static function vertexConvert(_dstLayout:VertexLayout, _dstData:cpp.Pointer<cpp.Void>, _srcLayout:VertexLayout, _srcData:cpp.ConstPointer<cpp.Void>, _num:cpp.UInt32):Void {
             Native_Bgfx.vertexConvert(_dstLayout.__ptr != null ? cast _dstLayout.__ptr : _dstLayout.__inst, cast _dstData, _srcLayout.__ptr != null ? cast _srcLayout.__ptr : _srcLayout.__inst, cast _srcData, _num);
        }
        
        
        /**
        Weld vertices.
        @param: _output : cpp.Star<cpp.Void> - Welded vertices remapping table. The size of buffer
        @param: must be the same as number of vertices.
        @param: _layout : cpp.ConstStar<bgfx.VertexLayout.Native_VertexLayout> - Vertex stream layout.
        @param: _data : cpp.ConstStar<cpp.Void> - Vertex stream.
        @param: _num : cpp.UInt32 - Number of vertices in vertex stream.
        @param: _index32 : Bool - Set to `true` if input indices are 32-bit.
        @param: _epsilon : cpp.Float32 - Error tolerance for vertex position comparison.
        **/
        public static function weldVertices(_output:cpp.Pointer<cpp.Void>, _layout:VertexLayout, _data:cpp.ConstPointer<cpp.Void>, _num:cpp.UInt32, _index32:Bool, _epsilon:cpp.Float32):cpp.UInt32 {
            return Native_Bgfx.weldVertices(cast _output, _layout.__ptr != null ? cast _layout.__ptr : _layout.__inst, cast _data, _num, _index32, _epsilon);
        }
        
        
        /**
        Convert index buffer for use with different primitive topologies.
        @param: _conversion : bgfx.TopologyConvert.Native_TopologyConvert - Conversion type, see `TopologyConvert::Enum`.
        @param: _dst : cpp.Star<cpp.Void> - Destination index buffer. If this argument is NULL
        @param: function will return number of indices after conversion.
        @param: _dstSize : cpp.UInt32 - Destination index buffer in bytes. It must be
        @param: large enough to contain output indices. If destination size is
        @param: insufficient index buffer will be truncated.
        @param: _indices : cpp.ConstStar<cpp.Void> - Source indices.
        @param: _numIndices : cpp.UInt32 - Number of input indices.
        @param: _index32 : Bool - Set to `true` if input indices are 32-bit.
        **/
        public static function topologyConvert(_conversion:TopologyConvert, _dst:cpp.Pointer<cpp.Void>, _dstSize:cpp.UInt32, _indices:cpp.ConstPointer<cpp.Void>, _numIndices:cpp.UInt32, _index32:Bool):cpp.UInt32 {
            return Native_Bgfx.topologyConvert(cast _conversion, cast _dst, _dstSize, cast _indices, _numIndices, _index32);
        }
        
        
        /**
        Returns supported backend API renderers.
        @param: _max : cpp.UInt8 - Maximum number of elements in _enum array.
        @param: _enum : cpp.Star<bgfx.RendererType.Native_RendererType> - Array where supported renderers will be written.
        **/
        public static function getSupportedRenderers(_max:cpp.UInt8, _enum:RendererType):cpp.UInt8 {
            return Native_Bgfx.getSupportedRenderers(_max, cast cpp.RawPointer.addressOf(_enum));
        }
        
        
        /**
        Returns name of renderer.
        @param: _type : bgfx.RendererType.Native_RendererType - Renderer backend type. See: `bgfx::RendererType`
        **/
        public static function getRendererName(_type:RendererType):cpp.ConstStar<cpp.Char> {
            return Native_Bgfx.getRendererName(cast _type);
        }
        
        
        /**
        Fill bgfx::Init struct with default values, before using it to initialize the library.
        @param: _init : cpp.Star<bgfx.Init.Native_Init> - Pointer to structure to be initialized. See: `bgfx::Init` for more info.
        **/
        public static function initCtor(_init:Init):Void {
             Native_Bgfx.initCtor(_init.__ptr != null ? cast _init.__ptr : _init.__inst);
        }
        
        
        /**
        Initialize the bgfx library.
        @param: _init : cpp.ConstStar<bgfx.Init.Native_Init> - Initialization parameters. See: `bgfx::Init` for more info.
        **/
        public static function init(_init:Init):Bool {
            return Native_Bgfx.init(_init.__ptr != null ? cast _init.__ptr : _init.__inst);
        }
        
        
        /**
        Shutdown bgfx library.
        **/
        public static function shutdown():Void {
             Native_Bgfx.shutdown();
        }
        
        
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
        public static function reset(_width:cpp.UInt32, _height:cpp.UInt32, _flags:cpp.UInt32, _format:TextureFormat):Void {
             Native_Bgfx.reset(_width, _height, _flags, cast _format);
        }
        
        
        /**
        Advance to next frame. When using multithreaded renderer, this call
        just swaps internal buffers, kicks render thread, and returns. In
        singlethreaded renderer this call does frame rendering.
        @param: _capture : Bool - Capture frame with graphics debugger.
        **/
        public static function frame(_capture:Bool):cpp.UInt32 {
            return Native_Bgfx.frame(_capture);
        }
        
        
        /**
        Returns current renderer backend API type.
        @remarks
          Library must be initialized.
        **/
        public static function getRendererType():RendererType {
            return cast Native_Bgfx.getRendererType();
        }
        
        
        /**
        Returns renderer capabilities.
        @remarks
          Library must be initialized.
        **/
        public static function getCaps():Caps {
            final res = Type.createEmptyInstance(Caps);
            res.__ptr = cast Native_Bgfx.getCaps();
            return res;
        }
        
        
        /**
        Returns performance counters.
        @attention Pointer returned is valid until `bgfx::frame` is called.
        **/
        public static function getStats():Stats {
            final res = Type.createEmptyInstance(Stats);
            res.__ptr = cast Native_Bgfx.getStats();
            return res;
        }
        
        
        /**
        Allocate buffer to pass to bgfx calls. Data will be freed inside bgfx.
        @param: _size : cpp.UInt32 - Size to allocate.
        **/
        public static function alloc(_size:cpp.UInt32):Memory {
            final res = Type.createEmptyInstance(Memory);
            res.__ptr = cast Native_Bgfx.alloc(_size);
            return res;
        }
        
        
        /**
        Allocate buffer and copy data into it. Data will be freed inside bgfx.
        @param: _data : cpp.ConstStar<cpp.Void> - Pointer to data to be copied.
        @param: _size : cpp.UInt32 - Size of data to be copied.
        **/
        public static function copy(_data:cpp.ConstPointer<cpp.Void>, _size:cpp.UInt32):Memory {
            final res = Type.createEmptyInstance(Memory);
            res.__ptr = cast Native_Bgfx.copy(cast _data, _size);
            return res;
        }
        
        
        /**
        Make reference to data to pass to bgfx. Unlike `bgfx::alloc`, this call
        doesn't allocate memory for data. It just copies the _data pointer. You
        can pass `ReleaseFn` function pointer to release this memory after it's
        consumed, otherwise you must make sure _data is available for at least 2
        `bgfx::frame` calls. `ReleaseFn` function must be able to be called
        from any thread.
        @attention Data passed must be available for at least 2 `bgfx::frame` calls.
        @param: _data : cpp.ConstStar<cpp.Void> - Pointer to data.
        @param: _size : cpp.UInt32 - Size of data.
        **/
        public static function makeRef(_data:cpp.ConstPointer<cpp.Void>, _size:cpp.UInt32):Memory {
            final res = Type.createEmptyInstance(Memory);
            res.__ptr = cast Native_Bgfx.makeRef(cast _data, _size);
            return res;
        }
        
        
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
        public static function setDebug(_debug:cpp.UInt32):Void {
             Native_Bgfx.setDebug(_debug);
        }
        
        
        /**
        Draw image into internal debug text buffer.
        @param: _x : cpp.UInt16 - Position x from the left corner of the window.
        @param: _y : cpp.UInt16 - Position y from the top corner of the window.
        @param: _width : cpp.UInt16 - Image width.
        @param: _height : cpp.UInt16 - Image height.
        @param: _data : cpp.ConstStar<cpp.Void> - Raw image data (character/attribute raw encoding).
        @param: _pitch : cpp.UInt16 - Image pitch in bytes.
        **/
        public static function dbgTextImage(_x:cpp.UInt16, _y:cpp.UInt16, _width:cpp.UInt16, _height:cpp.UInt16, _data:cpp.ConstPointer<cpp.Void>, _pitch:cpp.UInt16):Void {
             Native_Bgfx.dbgTextImage(_x, _y, _width, _height, cast _data, _pitch);
        }
        
        
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
        public static function createIndexBuffer(_mem:Memory, _flags:cpp.UInt16):IndexBufferHandle {
            final res = Type.createEmptyInstance(IndexBufferHandle);
            res.__inst = Native_Bgfx.createIndexBuffer(_mem.__ptr != null ? cast _mem.__ptr : _mem.__inst, _flags);
            return res;
        }
        
        
        /**
        Set static index buffer debug name.
        @param: _handle : bgfx.IndexBufferHandle.Native_IndexBufferHandle - Static index buffer handle.
        @param: _name : cpp.ConstStar<cpp.Char> - Static index buffer name.
        @param: _len : cpp.Int32 - Static index buffer name length (if length is INT32_MAX, it's expected
        @param: that _name is zero terminated string.
        **/
        public static function setIndexBufferName(_handle:IndexBufferHandle, _name:String, _len:cpp.Int32):Void {
             Native_Bgfx.setIndexBufferName(_handle.__inst, _name, _len);
        }
        
        
        /**
        Destroy static index buffer.
        @param: _handle : bgfx.IndexBufferHandle.Native_IndexBufferHandle - Static index buffer handle.
        **/
        public static function destroyIndexBuffer(_handle:IndexBufferHandle):Void {
             Native_Bgfx.destroyIndexBuffer(_handle.__inst);
        }
        
        
        /**
        Create vertex layout.
        @param: _layout : cpp.ConstStar<bgfx.VertexLayout.Native_VertexLayout> - Vertex layout.
        **/
        public static function createVertexLayout(_layout:VertexLayout):VertexLayoutHandle {
            final res = Type.createEmptyInstance(VertexLayoutHandle);
            res.__inst = Native_Bgfx.createVertexLayout(_layout.__ptr != null ? cast _layout.__ptr : _layout.__inst);
            return res;
        }
        
        
        /**
        Destroy vertex layout.
        @param: _layoutHandle : bgfx.VertexLayoutHandle.Native_VertexLayoutHandle - Vertex layout handle.
        **/
        public static function destroyVertexLayout(_layoutHandle:VertexLayoutHandle):Void {
             Native_Bgfx.destroyVertexLayout(_layoutHandle.__inst);
        }
        
        
        /**
        Create static vertex buffer.
        @param: _mem : cpp.ConstStar<bgfx.Memory.Native_Memory> - Vertex buffer data.
        @param: _layout : cpp.ConstStar<bgfx.VertexLayout.Native_VertexLayout> - Vertex layout.
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
        public static function createVertexBuffer(_mem:Memory, _layout:VertexLayout, _flags:cpp.UInt16):VertexBufferHandle {
            final res = Type.createEmptyInstance(VertexBufferHandle);
            res.__inst = Native_Bgfx.createVertexBuffer(_mem.__ptr != null ? cast _mem.__ptr : _mem.__inst, _layout.__ptr != null ? cast _layout.__ptr : _layout.__inst, _flags);
            return res;
        }
        
        
        /**
        Set static vertex buffer debug name.
        @param: _handle : bgfx.VertexBufferHandle.Native_VertexBufferHandle - Static vertex buffer handle.
        @param: _name : cpp.ConstStar<cpp.Char> - Static vertex buffer name.
        @param: _len : cpp.Int32 - Static vertex buffer name length (if length is INT32_MAX, it's expected
        @param: that _name is zero terminated string.
        **/
        public static function setVertexBufferName(_handle:VertexBufferHandle, _name:String, _len:cpp.Int32):Void {
             Native_Bgfx.setVertexBufferName(_handle.__inst, _name, _len);
        }
        
        
        /**
        Destroy static vertex buffer.
        @param: _handle : bgfx.VertexBufferHandle.Native_VertexBufferHandle - Static vertex buffer handle.
        **/
        public static function destroyVertexBuffer(_handle:VertexBufferHandle):Void {
             Native_Bgfx.destroyVertexBuffer(_handle.__inst);
        }
        
        
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
        public static function createDynamicIndexBuffer(_num:cpp.UInt32, _flags:cpp.UInt16):DynamicIndexBufferHandle {
            final res = Type.createEmptyInstance(DynamicIndexBufferHandle);
            res.__inst = Native_Bgfx.createDynamicIndexBuffer(_num, _flags);
            return res;
        }
        
        
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
        public static function createDynamicIndexBufferMem(_mem:Memory, _flags:cpp.UInt16):DynamicIndexBufferHandle {
            final res = Type.createEmptyInstance(DynamicIndexBufferHandle);
            res.__inst = Native_Bgfx.createDynamicIndexBufferMem(_mem.__ptr != null ? cast _mem.__ptr : _mem.__inst, _flags);
            return res;
        }
        
        
        /**
        Update dynamic index buffer.
        @param: _handle : bgfx.DynamicIndexBufferHandle.Native_DynamicIndexBufferHandle - Dynamic index buffer handle.
        @param: _startIndex : cpp.UInt32 - Start index.
        @param: _mem : cpp.ConstStar<bgfx.Memory.Native_Memory> - Index buffer data.
        **/
        public static function updateDynamicIndexBuffer(_handle:DynamicIndexBufferHandle, _startIndex:cpp.UInt32, _mem:Memory):Void {
             Native_Bgfx.updateDynamicIndexBuffer(_handle.__inst, _startIndex, _mem.__ptr != null ? cast _mem.__ptr : _mem.__inst);
        }
        
        
        /**
        Destroy dynamic index buffer.
        @param: _handle : bgfx.DynamicIndexBufferHandle.Native_DynamicIndexBufferHandle - Dynamic index buffer handle.
        **/
        public static function destroyDynamicIndexBuffer(_handle:DynamicIndexBufferHandle):Void {
             Native_Bgfx.destroyDynamicIndexBuffer(_handle.__inst);
        }
        
        
        /**
        Create empty dynamic vertex buffer.
        @param: _num : cpp.UInt32 - Number of vertices.
        @param: _layout : cpp.ConstStar<bgfx.VertexLayout.Native_VertexLayout> - Vertex layout.
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
        public static function createDynamicVertexBuffer(_num:cpp.UInt32, _layout:VertexLayout, _flags:cpp.UInt16):DynamicVertexBufferHandle {
            final res = Type.createEmptyInstance(DynamicVertexBufferHandle);
            res.__inst = Native_Bgfx.createDynamicVertexBuffer(_num, _layout.__ptr != null ? cast _layout.__ptr : _layout.__inst, _flags);
            return res;
        }
        
        
        /**
        Create dynamic vertex buffer and initialize it.
        @param: _mem : cpp.ConstStar<bgfx.Memory.Native_Memory> - Vertex buffer data.
        @param: _layout : cpp.ConstStar<bgfx.VertexLayout.Native_VertexLayout> - Vertex layout.
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
        public static function createDynamicVertexBufferMem(_mem:Memory, _layout:VertexLayout, _flags:cpp.UInt16):DynamicVertexBufferHandle {
            final res = Type.createEmptyInstance(DynamicVertexBufferHandle);
            res.__inst = Native_Bgfx.createDynamicVertexBufferMem(_mem.__ptr != null ? cast _mem.__ptr : _mem.__inst, _layout.__ptr != null ? cast _layout.__ptr : _layout.__inst, _flags);
            return res;
        }
        
        
        /**
        Update dynamic vertex buffer.
        @param: _handle : bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle - Dynamic vertex buffer handle.
        @param: _startVertex : cpp.UInt32 - Start vertex.
        @param: _mem : cpp.ConstStar<bgfx.Memory.Native_Memory> - Vertex buffer data.
        **/
        public static function updateDynamicVertexBuffer(_handle:DynamicVertexBufferHandle, _startVertex:cpp.UInt32, _mem:Memory):Void {
             Native_Bgfx.updateDynamicVertexBuffer(_handle.__inst, _startVertex, _mem.__ptr != null ? cast _mem.__ptr : _mem.__inst);
        }
        
        
        /**
        Destroy dynamic vertex buffer.
        @param: _handle : bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle - Dynamic vertex buffer handle.
        **/
        public static function destroyDynamicVertexBuffer(_handle:DynamicVertexBufferHandle):Void {
             Native_Bgfx.destroyDynamicVertexBuffer(_handle.__inst);
        }
        
        
        /**
        Returns number of requested or maximum available indices.
        @param: _num : cpp.UInt32 - Number of required indices.
        @param: _index32 : Bool - Set to `true` if input indices will be 32-bit.
        **/
        public static function getAvailTransientIndexBuffer(_num:cpp.UInt32, _index32:Bool):cpp.UInt32 {
            return Native_Bgfx.getAvailTransientIndexBuffer(_num, _index32);
        }
        
        
        /**
        Returns number of requested or maximum available vertices.
        @param: _num : cpp.UInt32 - Number of required vertices.
        @param: _layout : cpp.ConstStar<bgfx.VertexLayout.Native_VertexLayout> - Vertex layout.
        **/
        public static function getAvailTransientVertexBuffer(_num:cpp.UInt32, _layout:VertexLayout):cpp.UInt32 {
            return Native_Bgfx.getAvailTransientVertexBuffer(_num, _layout.__ptr != null ? cast _layout.__ptr : _layout.__inst);
        }
        
        
        /**
        Returns number of requested or maximum available instance buffer slots.
        @param: _num : cpp.UInt32 - Number of required instances.
        @param: _stride : cpp.UInt16 - Stride per instance.
        **/
        public static function getAvailInstanceDataBuffer(_num:cpp.UInt32, _stride:cpp.UInt16):cpp.UInt32 {
            return Native_Bgfx.getAvailInstanceDataBuffer(_num, _stride);
        }
        
        
        /**
        Allocate transient index buffer.
        @param: _tib : cpp.Star<bgfx.TransientIndexBuffer.Native_TransientIndexBuffer> - TransientIndexBuffer structure will be filled, and will be valid
        @param: for the duration of frame, and can be reused for multiple draw
        @param: calls.
        @param: _num : cpp.UInt32 - Number of indices to allocate.
        @param: _index32 : Bool - Set to `true` if input indices will be 32-bit.
        **/
        public static function allocTransientIndexBuffer(_tib:TransientIndexBuffer, _num:cpp.UInt32, _index32:Bool):Void {
             Native_Bgfx.allocTransientIndexBuffer(_tib.__ptr != null ? cast _tib.__ptr : _tib.__inst, _num, _index32);
        }
        
        
        /**
        Allocate transient vertex buffer.
        @param: _tvb : cpp.Star<bgfx.TransientVertexBuffer.Native_TransientVertexBuffer> - TransientVertexBuffer structure will be filled, and will be valid
        @param: for the duration of frame, and can be reused for multiple draw
        @param: calls.
        @param: _num : cpp.UInt32 - Number of vertices to allocate.
        @param: _layout : cpp.ConstStar<bgfx.VertexLayout.Native_VertexLayout> - Vertex layout.
        **/
        public static function allocTransientVertexBuffer(_tvb:TransientVertexBuffer, _num:cpp.UInt32, _layout:VertexLayout):Void {
             Native_Bgfx.allocTransientVertexBuffer(_tvb.__ptr != null ? cast _tvb.__ptr : _tvb.__inst, _num, _layout.__ptr != null ? cast _layout.__ptr : _layout.__inst);
        }
        
        
        /**
        Check for required space and allocate transient vertex and index
        buffers. If both space requirements are satisfied function returns
        true.
        @param: _tvb : cpp.Star<bgfx.TransientVertexBuffer.Native_TransientVertexBuffer> - TransientVertexBuffer structure will be filled, and will be valid
        @param: for the duration of frame, and can be reused for multiple draw
        @param: calls.
        @param: _layout : cpp.ConstStar<bgfx.VertexLayout.Native_VertexLayout> - Vertex layout.
        @param: _numVertices : cpp.UInt32 - Number of vertices to allocate.
        @param: _tib : cpp.Star<bgfx.TransientIndexBuffer.Native_TransientIndexBuffer> - TransientIndexBuffer structure will be filled, and will be valid
        @param: for the duration of frame, and can be reused for multiple draw
        @param: calls.
        @param: _numIndices : cpp.UInt32 - Number of indices to allocate.
        @param: _index32 : Bool - Set to `true` if input indices will be 32-bit.
        **/
        public static function allocTransientBuffers(_tvb:TransientVertexBuffer, _layout:VertexLayout, _numVertices:cpp.UInt32, _tib:TransientIndexBuffer, _numIndices:cpp.UInt32, _index32:Bool):Bool {
            return Native_Bgfx.allocTransientBuffers(_tvb.__ptr != null ? cast _tvb.__ptr : _tvb.__inst, _layout.__ptr != null ? cast _layout.__ptr : _layout.__inst, _numVertices, _tib.__ptr != null ? cast _tib.__ptr : _tib.__inst, _numIndices, _index32);
        }
        
        
        /**
        Allocate instance data buffer.
        @param: _idb : cpp.Star<bgfx.InstanceDataBuffer.Native_InstanceDataBuffer> - InstanceDataBuffer structure will be filled, and will be valid
        @param: for duration of frame, and can be reused for multiple draw
        @param: calls.
        @param: _num : cpp.UInt32 - Number of instances.
        @param: _stride : cpp.UInt16 - Instance stride. Must be multiple of 16.
        **/
        public static function allocInstanceDataBuffer(_idb:InstanceDataBuffer, _num:cpp.UInt32, _stride:cpp.UInt16):Void {
             Native_Bgfx.allocInstanceDataBuffer(_idb.__ptr != null ? cast _idb.__ptr : _idb.__inst, _num, _stride);
        }
        
        
        /**
        Create draw indirect buffer.
        @param: _num : cpp.UInt32 - Number of indirect calls.
        **/
        public static function createIndirectBuffer(_num:cpp.UInt32):IndirectBufferHandle {
            final res = Type.createEmptyInstance(IndirectBufferHandle);
            res.__inst = Native_Bgfx.createIndirectBuffer(_num);
            return res;
        }
        
        
        /**
        Destroy draw indirect buffer.
        @param: _handle : bgfx.IndirectBufferHandle.Native_IndirectBufferHandle - Indirect buffer handle.
        **/
        public static function destroyIndirectBuffer(_handle:IndirectBufferHandle):Void {
             Native_Bgfx.destroyIndirectBuffer(_handle.__inst);
        }
        
        
        /**
        Create shader from memory buffer.
        @remarks
          Shader binary is obtained by compiling shader offline with shaderc command line tool.
        @param: _mem : cpp.ConstStar<bgfx.Memory.Native_Memory> - Shader binary.
        **/
        public static function createShader(_mem:Memory):ShaderHandle {
            final res = Type.createEmptyInstance(ShaderHandle);
            res.__inst = Native_Bgfx.createShader(_mem.__ptr != null ? cast _mem.__ptr : _mem.__inst);
            return res;
        }
        
        
        /**
        Returns the number of uniforms and uniform handles used inside a shader.
        @remarks
          Only non-predefined uniforms are returned.
        @param: _handle : bgfx.ShaderHandle.Native_ShaderHandle - Shader handle.
        @param: _uniforms : cpp.Star<bgfx.UniformHandle.Native_UniformHandle> - UniformHandle array where data will be stored.
        @param: _max : cpp.UInt16 - Maximum capacity of array.
        **/
        public static function getShaderUniforms(_handle:ShaderHandle, _uniforms:UniformHandle, _max:cpp.UInt16):cpp.UInt16 {
            return Native_Bgfx.getShaderUniforms(_handle.__inst, _uniforms.__ptr != null ? cast _uniforms.__ptr : _uniforms.__inst, _max);
        }
        
        
        /**
        Set shader debug name.
        @param: _handle : bgfx.ShaderHandle.Native_ShaderHandle - Shader handle.
        @param: _name : cpp.ConstStar<cpp.Char> - Shader name.
        @param: _len : cpp.Int32 - Shader name length (if length is INT32_MAX, it's expected
        @param: that _name is zero terminated string).
        **/
        public static function setShaderName(_handle:ShaderHandle, _name:String, _len:cpp.Int32):Void {
             Native_Bgfx.setShaderName(_handle.__inst, _name, _len);
        }
        
        
        /**
        Destroy shader.
        @remark Once a shader program is created with _handle,
          it is safe to destroy that shader.
        @param: _handle : bgfx.ShaderHandle.Native_ShaderHandle - Shader handle.
        **/
        public static function destroyShader(_handle:ShaderHandle):Void {
             Native_Bgfx.destroyShader(_handle.__inst);
        }
        
        
        /**
        Create program with vertex and fragment shaders.
        @param: _vsh : bgfx.ShaderHandle.Native_ShaderHandle - Vertex shader.
        @param: _fsh : bgfx.ShaderHandle.Native_ShaderHandle - Fragment shader.
        @param: _destroyShaders : Bool - If true, shaders will be destroyed when program is destroyed.
        **/
        public static function createProgram(_vsh:ShaderHandle, _fsh:ShaderHandle, _destroyShaders:Bool):ProgramHandle {
            final res = Type.createEmptyInstance(ProgramHandle);
            res.__inst = Native_Bgfx.createProgram(_vsh.__inst, _fsh.__inst, _destroyShaders);
            return res;
        }
        
        
        /**
        Create program with compute shader.
        @param: _csh : bgfx.ShaderHandle.Native_ShaderHandle - Compute shader.
        @param: _destroyShaders : Bool - If true, shaders will be destroyed when program is destroyed.
        **/
        public static function createComputeProgram(_csh:ShaderHandle, _destroyShaders:Bool):ProgramHandle {
            final res = Type.createEmptyInstance(ProgramHandle);
            res.__inst = Native_Bgfx.createComputeProgram(_csh.__inst, _destroyShaders);
            return res;
        }
        
        
        /**
        Destroy program.
        @param: _handle : bgfx.ProgramHandle.Native_ProgramHandle - Program handle.
        **/
        public static function destroyProgram(_handle:ProgramHandle):Void {
             Native_Bgfx.destroyProgram(_handle.__inst);
        }
        
        
        /**
        Validate texture parameters.
        @param: _depth : cpp.UInt16 - Depth dimension of volume texture.
        @param: _cubeMap : Bool - Indicates that texture contains cubemap.
        @param: _numLayers : cpp.UInt16 - Number of layers in texture array.
        @param: _format : bgfx.TextureFormat.Native_TextureFormat - Texture format. See: `TextureFormat::Enum`.
        @param: _flags : cpp.UInt64 - Texture flags. See `BGFX_TEXTURE_*`.
        **/
        public static function isTextureValid(_depth:cpp.UInt16, _cubeMap:Bool, _numLayers:cpp.UInt16, _format:TextureFormat, _flags:cpp.UInt64):Bool {
            return Native_Bgfx.isTextureValid(_depth, _cubeMap, _numLayers, cast _format, _flags);
        }
        
        
        /**
        Validate frame buffer parameters.
        @param: _num : cpp.UInt8 - Number of attachments.
        @param: _attachment : cpp.ConstStar<bgfx.Attachment.Native_Attachment> - Attachment texture info. See: `bgfx::Attachment`.
        **/
        public static function isFrameBufferValid(_num:cpp.UInt8, _attachment:Attachment):Bool {
            return Native_Bgfx.isFrameBufferValid(_num, _attachment.__ptr != null ? cast _attachment.__ptr : _attachment.__inst);
        }
        
        
        /**
        Calculate amount of memory required for texture.
        @param: _info : cpp.Star<bgfx.TextureInfo.Native_TextureInfo> - Resulting texture info structure. See: `TextureInfo`.
        @param: _width : cpp.UInt16 - Width.
        @param: _height : cpp.UInt16 - Height.
        @param: _depth : cpp.UInt16 - Depth dimension of volume texture.
        @param: _cubeMap : Bool - Indicates that texture contains cubemap.
        @param: _hasMips : Bool - Indicates that texture contains full mip-map chain.
        @param: _numLayers : cpp.UInt16 - Number of layers in texture array.
        @param: _format : bgfx.TextureFormat.Native_TextureFormat - Texture format. See: `TextureFormat::Enum`.
        **/
        public static function calcTextureSize(_info:TextureInfo, _width:cpp.UInt16, _height:cpp.UInt16, _depth:cpp.UInt16, _cubeMap:Bool, _hasMips:Bool, _numLayers:cpp.UInt16, _format:TextureFormat):Void {
             Native_Bgfx.calcTextureSize(_info.__ptr != null ? cast _info.__ptr : _info.__inst, _width, _height, _depth, _cubeMap, _hasMips, _numLayers, cast _format);
        }
        
        
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
        public static function createTexture(_mem:Memory, _flags:cpp.UInt64, _skip:cpp.UInt8, _info:TextureInfo):TextureHandle {
            final res = Type.createEmptyInstance(TextureHandle);
            res.__inst = Native_Bgfx.createTexture(_mem.__ptr != null ? cast _mem.__ptr : _mem.__inst, _flags, _skip, _info.__ptr != null ? cast _info.__ptr : _info.__inst);
            return res;
        }
        
        
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
        public static function createTexture2d(_width:cpp.UInt16, _height:cpp.UInt16, _hasMips:Bool, _numLayers:cpp.UInt16, _format:TextureFormat, _flags:cpp.UInt64, _mem:Memory):TextureHandle {
            final res = Type.createEmptyInstance(TextureHandle);
            res.__inst = Native_Bgfx.createTexture2d(_width, _height, _hasMips, _numLayers, cast _format, _flags, _mem.__ptr != null ? cast _mem.__ptr : _mem.__inst);
            return res;
        }
        
        
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
        public static function createTexture2dScaled(_ratio:BackbufferRatio, _hasMips:Bool, _numLayers:cpp.UInt16, _format:TextureFormat, _flags:cpp.UInt64):TextureHandle {
            final res = Type.createEmptyInstance(TextureHandle);
            res.__inst = Native_Bgfx.createTexture2dScaled(cast _ratio, _hasMips, _numLayers, cast _format, _flags);
            return res;
        }
        
        
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
        public static function createTexture3d(_width:cpp.UInt16, _height:cpp.UInt16, _depth:cpp.UInt16, _hasMips:Bool, _format:TextureFormat, _flags:cpp.UInt64, _mem:Memory):TextureHandle {
            final res = Type.createEmptyInstance(TextureHandle);
            res.__inst = Native_Bgfx.createTexture3d(_width, _height, _depth, _hasMips, cast _format, _flags, _mem.__ptr != null ? cast _mem.__ptr : _mem.__inst);
            return res;
        }
        
        
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
        public static function createTextureCube(_size:cpp.UInt16, _hasMips:Bool, _numLayers:cpp.UInt16, _format:TextureFormat, _flags:cpp.UInt64, _mem:Memory):TextureHandle {
            final res = Type.createEmptyInstance(TextureHandle);
            res.__inst = Native_Bgfx.createTextureCube(_size, _hasMips, _numLayers, cast _format, _flags, _mem.__ptr != null ? cast _mem.__ptr : _mem.__inst);
            return res;
        }
        
        
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
        public static function updateTexture2d(_handle:TextureHandle, _layer:cpp.UInt16, _mip:cpp.UInt8, _x:cpp.UInt16, _y:cpp.UInt16, _width:cpp.UInt16, _height:cpp.UInt16, _mem:Memory, _pitch:cpp.UInt16):Void {
             Native_Bgfx.updateTexture2d(_handle.__inst, _layer, _mip, _x, _y, _width, _height, _mem.__ptr != null ? cast _mem.__ptr : _mem.__inst, _pitch);
        }
        
        
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
        public static function updateTexture3d(_handle:TextureHandle, _mip:cpp.UInt8, _x:cpp.UInt16, _y:cpp.UInt16, _z:cpp.UInt16, _width:cpp.UInt16, _height:cpp.UInt16, _depth:cpp.UInt16, _mem:Memory):Void {
             Native_Bgfx.updateTexture3d(_handle.__inst, _mip, _x, _y, _z, _width, _height, _depth, _mem.__ptr != null ? cast _mem.__ptr : _mem.__inst);
        }
        
        
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
        public static function updateTextureCube(_handle:TextureHandle, _layer:cpp.UInt16, _side:cpp.UInt8, _mip:cpp.UInt8, _x:cpp.UInt16, _y:cpp.UInt16, _width:cpp.UInt16, _height:cpp.UInt16, _mem:Memory, _pitch:cpp.UInt16):Void {
             Native_Bgfx.updateTextureCube(_handle.__inst, _layer, _side, _mip, _x, _y, _width, _height, _mem.__ptr != null ? cast _mem.__ptr : _mem.__inst, _pitch);
        }
        
        
        /**
        Read back texture content.
        @attention Texture must be created with `BGFX_TEXTURE_READ_BACK` flag.
        @attention Availability depends on: `BGFX_CAPS_TEXTURE_READ_BACK`.
        @param: _handle : bgfx.TextureHandle.Native_TextureHandle - Texture handle.
        @param: _data : cpp.Star<cpp.Void> - Destination buffer.
        @param: _mip : cpp.UInt8 - Mip level.
        **/
        public static function readTexture(_handle:TextureHandle, _data:cpp.Pointer<cpp.Void>, _mip:cpp.UInt8):cpp.UInt32 {
            return Native_Bgfx.readTexture(_handle.__inst, cast _data, _mip);
        }
        
        
        /**
        Set texture debug name.
        @param: _handle : bgfx.TextureHandle.Native_TextureHandle - Texture handle.
        @param: _name : cpp.ConstStar<cpp.Char> - Texture name.
        @param: _len : cpp.Int32 - Texture name length (if length is INT32_MAX, it's expected
        @param: that _name is zero terminated string.
        **/
        public static function setTextureName(_handle:TextureHandle, _name:String, _len:cpp.Int32):Void {
             Native_Bgfx.setTextureName(_handle.__inst, _name, _len);
        }
        
        
        /**
        Returns texture direct access pointer.
        @attention Availability depends on: `BGFX_CAPS_TEXTURE_DIRECT_ACCESS`. This feature
          is available on GPUs that have unified memory architecture (UMA) support.
        @param: _handle : bgfx.TextureHandle.Native_TextureHandle - Texture handle.
        **/
        public static function getDirectAccessPtr(_handle:TextureHandle):cpp.Star<cpp.Void> {
            return Native_Bgfx.getDirectAccessPtr(_handle.__inst);
        }
        
        
        /**
        Destroy texture.
        @param: _handle : bgfx.TextureHandle.Native_TextureHandle - Texture handle.
        **/
        public static function destroyTexture(_handle:TextureHandle):Void {
             Native_Bgfx.destroyTexture(_handle.__inst);
        }
        
        
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
        public static function createFrameBuffer(_width:cpp.UInt16, _height:cpp.UInt16, _format:TextureFormat, _textureFlags:cpp.UInt64):FrameBufferHandle {
            final res = Type.createEmptyInstance(FrameBufferHandle);
            res.__inst = Native_Bgfx.createFrameBuffer(_width, _height, cast _format, _textureFlags);
            return res;
        }
        
        
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
        public static function createFrameBufferScaled(_ratio:BackbufferRatio, _format:TextureFormat, _textureFlags:cpp.UInt64):FrameBufferHandle {
            final res = Type.createEmptyInstance(FrameBufferHandle);
            res.__inst = Native_Bgfx.createFrameBufferScaled(cast _ratio, cast _format, _textureFlags);
            return res;
        }
        
        
        /**
        Create MRT frame buffer from texture handles (simple).
        @param: _num : cpp.UInt8 - Number of texture handles.
        @param: _handles : cpp.ConstStar<bgfx.TextureHandle.Native_TextureHandle> - Texture attachments.
        @param: _destroyTexture : Bool - If true, textures will be destroyed when
        @param: frame buffer is destroyed.
        **/
        public static function createFrameBufferFromHandles(_num:cpp.UInt8, _handles:TextureHandle, _destroyTexture:Bool):FrameBufferHandle {
            final res = Type.createEmptyInstance(FrameBufferHandle);
            res.__inst = Native_Bgfx.createFrameBufferFromHandles(_num, _handles.__ptr != null ? cast _handles.__ptr : _handles.__inst, _destroyTexture);
            return res;
        }
        
        
        /**
        Create MRT frame buffer from texture handles with specific layer and
        mip level.
        @param: _num : cpp.UInt8 - Number of attachments.
        @param: _attachment : cpp.ConstStar<bgfx.Attachment.Native_Attachment> - Attachment texture info. See: `bgfx::Attachment`.
        @param: _destroyTexture : Bool - If true, textures will be destroyed when
        @param: frame buffer is destroyed.
        **/
        public static function createFrameBufferFromAttachment(_num:cpp.UInt8, _attachment:Attachment, _destroyTexture:Bool):FrameBufferHandle {
            final res = Type.createEmptyInstance(FrameBufferHandle);
            res.__inst = Native_Bgfx.createFrameBufferFromAttachment(_num, _attachment.__ptr != null ? cast _attachment.__ptr : _attachment.__inst, _destroyTexture);
            return res;
        }
        
        
        /**
        Create frame buffer for multiple window rendering.
        @remarks
          Frame buffer cannot be used for sampling.
        @attention Availability depends on: `BGFX_CAPS_SWAP_CHAIN`.
        @param: _nwh : cpp.Star<cpp.Void> - OS' target native window handle.
        @param: _width : cpp.UInt16 - Window back buffer width.
        @param: _height : cpp.UInt16 - Window back buffer height.
        @param: _format : bgfx.TextureFormat.Native_TextureFormat - Window back buffer color format.
        @param: _depthFormat : bgfx.TextureFormat.Native_TextureFormat - Window back buffer depth format.
        **/
        public static function createFrameBufferFromNwh(_nwh:cpp.Pointer<cpp.Void>, _width:cpp.UInt16, _height:cpp.UInt16, _format:TextureFormat, _depthFormat:TextureFormat):FrameBufferHandle {
            final res = Type.createEmptyInstance(FrameBufferHandle);
            res.__inst = Native_Bgfx.createFrameBufferFromNwh(cast _nwh, _width, _height, cast _format, cast _depthFormat);
            return res;
        }
        
        
        /**
        Set frame buffer debug name.
        @param: _handle : bgfx.FrameBufferHandle.Native_FrameBufferHandle - Frame buffer handle.
        @param: _name : cpp.ConstStar<cpp.Char> - Frame buffer name.
        @param: _len : cpp.Int32 - Frame buffer name length (if length is INT32_MAX, it's expected
        @param: that _name is zero terminated string.
        **/
        public static function setFrameBufferName(_handle:FrameBufferHandle, _name:String, _len:cpp.Int32):Void {
             Native_Bgfx.setFrameBufferName(_handle.__inst, _name, _len);
        }
        
        
        /**
        Obtain texture handle of frame buffer attachment.
        @param: _handle : bgfx.FrameBufferHandle.Native_FrameBufferHandle - Frame buffer handle.
        **/
        public static function getTexture(_handle:FrameBufferHandle, _attachment:cpp.UInt8):TextureHandle {
            final res = Type.createEmptyInstance(TextureHandle);
            res.__inst = Native_Bgfx.getTexture(_handle.__inst, _attachment);
            return res;
        }
        
        
        /**
        Destroy frame buffer.
        @param: _handle : bgfx.FrameBufferHandle.Native_FrameBufferHandle - Frame buffer handle.
        **/
        public static function destroyFrameBuffer(_handle:FrameBufferHandle):Void {
             Native_Bgfx.destroyFrameBuffer(_handle.__inst);
        }
        
        
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
        @param: _name : cpp.ConstStar<cpp.Char> - Uniform name in shader.
        @param: _type : bgfx.UniformType.Native_UniformType - Type of uniform (See: `bgfx::UniformType`).
        @param: _num : cpp.UInt16 - Number of elements in array.
        **/
        public static function createUniform(_name:String, _type:UniformType, _num:cpp.UInt16):UniformHandle {
            final res = Type.createEmptyInstance(UniformHandle);
            res.__inst = Native_Bgfx.createUniform(_name, cast _type, _num);
            return res;
        }
        
        
        /**
        Retrieve uniform info.
        @param: _handle : bgfx.UniformHandle.Native_UniformHandle - Handle to uniform object.
        @param: _info : cpp.Star<bgfx.UniformInfo.Native_UniformInfo> - Uniform info.
        **/
        public static function getUniformInfo(_handle:UniformHandle, _info:UniformInfo):Void {
             Native_Bgfx.getUniformInfo(_handle.__inst, _info.__ptr != null ? cast _info.__ptr : _info.__inst);
        }
        
        
        /**
        Destroy shader uniform parameter.
        @param: _handle : bgfx.UniformHandle.Native_UniformHandle - Handle to uniform object.
        **/
        public static function destroyUniform(_handle:UniformHandle):Void {
             Native_Bgfx.destroyUniform(_handle.__inst);
        }
        
        
        /**
        Create occlusion query.
        **/
        public static function createOcclusionQuery():OcclusionQueryHandle {
            final res = Type.createEmptyInstance(OcclusionQueryHandle);
            res.__inst = Native_Bgfx.createOcclusionQuery();
            return res;
        }
        
        
        /**
        Retrieve occlusion query result from previous frame.
        @param: _handle : bgfx.OcclusionQueryHandle.Native_OcclusionQueryHandle - Handle to occlusion query object.
        @param: _result : cpp.Star<cpp.Int32> - Number of pixels that passed test. This argument
        @param: can be `NULL` if result of occlusion query is not needed.
        **/
        public static function getResult(_handle:OcclusionQueryHandle, _result:cpp.Pointer<cpp.Int32>):OcclusionQueryResult {
            return cast Native_Bgfx.getResult(_handle.__inst, cast _result);
        }
        
        
        /**
        Destroy occlusion query.
        @param: _handle : bgfx.OcclusionQueryHandle.Native_OcclusionQueryHandle - Handle to occlusion query object.
        **/
        public static function destroyOcclusionQuery(_handle:OcclusionQueryHandle):Void {
             Native_Bgfx.destroyOcclusionQuery(_handle.__inst);
        }
        
        
        /**
        Set palette color value.
        @param: _index : cpp.UInt8 - Index into palette.
        @param: _rgba : cpp.UInt32 - Packed 32-bit RGBA value.
        **/
        public static function setPaletteColorRgba8(_index:cpp.UInt8, _rgba:cpp.UInt32):Void {
             Native_Bgfx.setPaletteColorRgba8(_index, _rgba);
        }
        
        
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
        @param: _name : cpp.ConstStar<cpp.Char> - View name.
        @param: _len : cpp.Int32 - View name length (if length is INT32_MAX, it's expected
        @param: that _name is zero terminated string.
        **/
        public static function setViewName(_id:bgfx.ViewId, _name:String, _len:cpp.Int32):Void {
             Native_Bgfx.setViewName(_id, _name, _len);
        }
        
        
        /**
        Set view rectangle. Draw primitive outside view will be clipped.
        @param: _id : bgfx.ViewId - View id.
        @param: _x : cpp.UInt16 - Position x from the left corner of the window.
        @param: _y : cpp.UInt16 - Position y from the top corner of the window.
        @param: _width : cpp.UInt16 - Width of view port region.
        @param: _height : cpp.UInt16 - Height of view port region.
        **/
        public static function setViewRect(_id:bgfx.ViewId, _x:cpp.UInt16, _y:cpp.UInt16, _width:cpp.UInt16, _height:cpp.UInt16):Void {
             Native_Bgfx.setViewRect(_id, _x, _y, _width, _height);
        }
        
        
        /**
        Set view rectangle. Draw primitive outside view will be clipped.
        @param: _id : bgfx.ViewId - View id.
        @param: _x : cpp.UInt16 - Position x from the left corner of the window.
        @param: _y : cpp.UInt16 - Position y from the top corner of the window.
        @param: _ratio : bgfx.BackbufferRatio.Native_BackbufferRatio - Width and height will be set in respect to back-buffer size.
        @param: See: `BackbufferRatio::Enum`.
        **/
        public static function setViewRectRatio(_id:bgfx.ViewId, _x:cpp.UInt16, _y:cpp.UInt16, _ratio:BackbufferRatio):Void {
             Native_Bgfx.setViewRectRatio(_id, _x, _y, cast _ratio);
        }
        
        
        /**
        Set view scissor. Draw primitive outside view will be clipped. When
        _x, _y, _width and _height are set to 0, scissor will be disabled.
        @param: _id : bgfx.ViewId - View id.
        @param: _x : cpp.UInt16 - Position x from the left corner of the window.
        @param: _y : cpp.UInt16 - Position y from the top corner of the window.
        @param: _width : cpp.UInt16 - Width of view scissor region.
        @param: _height : cpp.UInt16 - Height of view scissor region.
        **/
        public static function setViewScissor(_id:bgfx.ViewId, _x:cpp.UInt16, _y:cpp.UInt16, _width:cpp.UInt16, _height:cpp.UInt16):Void {
             Native_Bgfx.setViewScissor(_id, _x, _y, _width, _height);
        }
        
        
        /**
        Set view clear flags.
        @param: _id : bgfx.ViewId - View id.
        @param: _flags : cpp.UInt16 - Clear flags. Use `BGFX_CLEAR_NONE` to remove any clear
        @param: operation. See: `BGFX_CLEAR_*`.
        @param: _rgba : cpp.UInt32 - Color clear value.
        @param: _depth : cpp.Float32 - Depth clear value.
        @param: _stencil : cpp.UInt8 - Stencil clear value.
        **/
        public static function setViewClear(_id:bgfx.ViewId, _flags:cpp.UInt16, _rgba:cpp.UInt32, _depth:cpp.Float32, _stencil:cpp.UInt8):Void {
             Native_Bgfx.setViewClear(_id, _flags, _rgba, _depth, _stencil);
        }
        
        
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
        public static function setViewClearMrt(_id:bgfx.ViewId, _flags:cpp.UInt16, _depth:cpp.Float32, _stencil:cpp.UInt8, _c0:cpp.UInt8, _c1:cpp.UInt8, _c2:cpp.UInt8, _c3:cpp.UInt8, _c4:cpp.UInt8, _c5:cpp.UInt8, _c6:cpp.UInt8, _c7:cpp.UInt8):Void {
             Native_Bgfx.setViewClearMrt(_id, _flags, _depth, _stencil, _c0, _c1, _c2, _c3, _c4, _c5, _c6, _c7);
        }
        
        
        /**
        Set view sorting mode.
        @remarks
          View mode must be set prior calling `bgfx::submit` for the view.
        @param: _id : bgfx.ViewId - View id.
        @param: _mode : bgfx.ViewMode.Native_ViewMode - View sort mode. See `ViewMode::Enum`.
        **/
        public static function setViewMode(_id:bgfx.ViewId, _mode:ViewMode):Void {
             Native_Bgfx.setViewMode(_id, cast _mode);
        }
        
        
        /**
        Set view frame buffer.
        @remarks
          Not persistent after `bgfx::reset` call.
        @param: _id : bgfx.ViewId - View id.
        @param: _handle : bgfx.FrameBufferHandle.Native_FrameBufferHandle - Frame buffer handle. Passing `BGFX_INVALID_HANDLE` as
        @param: frame buffer handle will draw primitives from this view into
        @param: default back buffer.
        **/
        public static function setViewFrameBuffer(_id:bgfx.ViewId, _handle:FrameBufferHandle):Void {
             Native_Bgfx.setViewFrameBuffer(_id, _handle.__inst);
        }
        
        
        /**
        Set view's view matrix and projection matrix,
        all draw primitives in this view will use these two matrices.
        @param: _id : bgfx.ViewId - View id.
        @param: _view : cpp.ConstStar<cpp.Void> - View matrix.
        @param: _proj : cpp.ConstStar<cpp.Void> - Projection matrix.
        **/
        public static function setViewTransform(_id:bgfx.ViewId, _view:cpp.ConstPointer<cpp.Void>, _proj:cpp.ConstPointer<cpp.Void>):Void {
             Native_Bgfx.setViewTransform(_id, cast _view, cast _proj);
        }
        
        
        /**
        Reset all view settings to default.
        **/
        public static function resetView(_id:bgfx.ViewId):Void {
             Native_Bgfx.resetView(_id);
        }
        
        
        /**
        Begin submitting draw calls from thread.
        @param: _forThread : Bool - Explicitly request an encoder for a worker thread.
        **/
        public static function encoderBegin(_forThread:Bool):Encoder {
            final res = Type.createEmptyInstance(Encoder);
            res.__ptr = cast Native_Bgfx.encoderBegin(_forThread);
            return res;
        }
        
        
        /**
        End submitting draw calls from thread.
        @param: _encoder : cpp.Star<bgfx.Encoder.Native_Encoder> - Encoder.
        **/
        public static function encoderEnd(_encoder:Encoder):Void {
             Native_Bgfx.encoderEnd(_encoder.__ptr != null ? cast _encoder.__ptr : _encoder.__inst);
        }
        
        
        /**
        Sets a debug marker. This allows you to group graphics calls together for easy browsing in
        graphics debugging tools.
        @param: _name : cpp.ConstStar<cpp.Char> - Marker name.
        @param: _len : cpp.Int32 - Marker name length (if length is INT32_MAX, it's expected
        @param: that _name is zero terminated string.
        **/
        public static function encoderSetMarker(_this:Encoder, _name:String, _len:cpp.Int32):Void {
             Native_Bgfx.encoderSetMarker(_this.__ptr != null ? cast _this.__ptr : _this.__inst, _name, _len);
        }
        
        
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
        public static function encoderSetState(_this:Encoder, _state:cpp.UInt64, _rgba:cpp.UInt32):Void {
             Native_Bgfx.encoderSetState(_this.__ptr != null ? cast _this.__ptr : _this.__inst, _state, _rgba);
        }
        
        
        /**
        Set condition for rendering.
        @param: _handle : bgfx.OcclusionQueryHandle.Native_OcclusionQueryHandle - Occlusion query handle.
        @param: _visible : Bool - Render if occlusion query is visible.
        **/
        public static function encoderSetCondition(_this:Encoder, _handle:OcclusionQueryHandle, _visible:Bool):Void {
             Native_Bgfx.encoderSetCondition(_this.__ptr != null ? cast _this.__ptr : _this.__inst, _handle.__inst, _visible);
        }
        
        
        /**
        Set stencil test state.
        @param: _fstencil : cpp.UInt32 - Front stencil state.
        @param: _bstencil : cpp.UInt32 - Back stencil state. If back is set to `BGFX_STENCIL_NONE`
        @param: _fstencil is applied to both front and back facing primitives.
        **/
        public static function encoderSetStencil(_this:Encoder, _fstencil:cpp.UInt32, _bstencil:cpp.UInt32):Void {
             Native_Bgfx.encoderSetStencil(_this.__ptr != null ? cast _this.__ptr : _this.__inst, _fstencil, _bstencil);
        }
        
        
        /**
        Set scissor for draw primitive.
        @remark
          To scissor for all primitives in view see `bgfx::setViewScissor`.
        @param: _x : cpp.UInt16 - Position x from the left corner of the window.
        @param: _y : cpp.UInt16 - Position y from the top corner of the window.
        @param: _width : cpp.UInt16 - Width of view scissor region.
        @param: _height : cpp.UInt16 - Height of view scissor region.
        **/
        public static function encoderSetScissor(_this:Encoder, _x:cpp.UInt16, _y:cpp.UInt16, _width:cpp.UInt16, _height:cpp.UInt16):cpp.UInt16 {
            return Native_Bgfx.encoderSetScissor(_this.__ptr != null ? cast _this.__ptr : _this.__inst, _x, _y, _width, _height);
        }
        
        
        /**
        Set scissor from cache for draw primitive.
        @remark
          To scissor for all primitives in view see `bgfx::setViewScissor`.
        @param: _cache : cpp.UInt16 - Index in scissor cache.
        **/
        public static function encoderSetScissorCached(_this:Encoder, _cache:cpp.UInt16):Void {
             Native_Bgfx.encoderSetScissorCached(_this.__ptr != null ? cast _this.__ptr : _this.__inst, _cache);
        }
        
        
        /**
        Set model matrix for draw primitive. If it is not called,
        the model will be rendered with an identity model matrix.
        @param: _mtx : cpp.ConstStar<cpp.Void> - Pointer to first matrix in array.
        @param: _num : cpp.UInt16 - Number of matrices in array.
        **/
        public static function encoderSetTransform(_this:Encoder, _mtx:cpp.ConstPointer<cpp.Void>, _num:cpp.UInt16):cpp.UInt32 {
            return Native_Bgfx.encoderSetTransform(_this.__ptr != null ? cast _this.__ptr : _this.__inst, cast _mtx, _num);
        }
        
        
        /**
         Set model matrix from matrix cache for draw primitive.
        @param: _cache : cpp.UInt32 - Index in matrix cache.
        @param: _num : cpp.UInt16 - Number of matrices from cache.
        **/
        public static function encoderSetTransformCached(_this:Encoder, _cache:cpp.UInt32, _num:cpp.UInt16):Void {
             Native_Bgfx.encoderSetTransformCached(_this.__ptr != null ? cast _this.__ptr : _this.__inst, _cache, _num);
        }
        
        
        /**
        Reserve matrices in internal matrix cache.
        @attention Pointer returned can be modified until `bgfx::frame` is called.
        @param: _transform : cpp.Star<bgfx.Transform.Native_Transform> - Pointer to `Transform` structure.
        @param: _num : cpp.UInt16 - Number of matrices.
        **/
        public static function encoderAllocTransform(_this:Encoder, _transform:Transform, _num:cpp.UInt16):cpp.UInt32 {
            return Native_Bgfx.encoderAllocTransform(_this.__ptr != null ? cast _this.__ptr : _this.__inst, _transform.__ptr != null ? cast _transform.__ptr : _transform.__inst, _num);
        }
        
        
        /**
        Set shader uniform parameter for draw primitive.
        @param: _handle : bgfx.UniformHandle.Native_UniformHandle - Uniform.
        @param: _value : cpp.ConstStar<cpp.Void> - Pointer to uniform data.
        @param: _num : cpp.UInt16 - Number of elements. Passing `UINT16_MAX` will
        @param: use the _num passed on uniform creation.
        **/
        public static function encoderSetUniform(_this:Encoder, _handle:UniformHandle, _value:cpp.ConstPointer<cpp.Void>, _num:cpp.UInt16):Void {
             Native_Bgfx.encoderSetUniform(_this.__ptr != null ? cast _this.__ptr : _this.__inst, _handle.__inst, cast _value, _num);
        }
        
        
        /**
        Set index buffer for draw primitive.
        @param: _handle : bgfx.IndexBufferHandle.Native_IndexBufferHandle - Index buffer.
        @param: _firstIndex : cpp.UInt32 - First index to render.
        @param: _numIndices : cpp.UInt32 - Number of indices to render.
        **/
        public static function encoderSetIndexBuffer(_this:Encoder, _handle:IndexBufferHandle, _firstIndex:cpp.UInt32, _numIndices:cpp.UInt32):Void {
             Native_Bgfx.encoderSetIndexBuffer(_this.__ptr != null ? cast _this.__ptr : _this.__inst, _handle.__inst, _firstIndex, _numIndices);
        }
        
        
        /**
        Set index buffer for draw primitive.
        @param: _handle : bgfx.DynamicIndexBufferHandle.Native_DynamicIndexBufferHandle - Dynamic index buffer.
        @param: _firstIndex : cpp.UInt32 - First index to render.
        @param: _numIndices : cpp.UInt32 - Number of indices to render.
        **/
        public static function encoderSetDynamicIndexBuffer(_this:Encoder, _handle:DynamicIndexBufferHandle, _firstIndex:cpp.UInt32, _numIndices:cpp.UInt32):Void {
             Native_Bgfx.encoderSetDynamicIndexBuffer(_this.__ptr != null ? cast _this.__ptr : _this.__inst, _handle.__inst, _firstIndex, _numIndices);
        }
        
        
        /**
        Set index buffer for draw primitive.
        @param: _tib : cpp.ConstStar<bgfx.TransientIndexBuffer.Native_TransientIndexBuffer> - Transient index buffer.
        @param: _firstIndex : cpp.UInt32 - First index to render.
        @param: _numIndices : cpp.UInt32 - Number of indices to render.
        **/
        public static function encoderSetTransientIndexBuffer(_this:Encoder, _tib:TransientIndexBuffer, _firstIndex:cpp.UInt32, _numIndices:cpp.UInt32):Void {
             Native_Bgfx.encoderSetTransientIndexBuffer(_this.__ptr != null ? cast _this.__ptr : _this.__inst, _tib.__ptr != null ? cast _tib.__ptr : _tib.__inst, _firstIndex, _numIndices);
        }
        
        
        /**
        Set vertex buffer for draw primitive.
        @param: _stream : cpp.UInt8 - Vertex stream.
        @param: _handle : bgfx.VertexBufferHandle.Native_VertexBufferHandle - Vertex buffer.
        @param: _startVertex : cpp.UInt32 - First vertex to render.
        @param: _numVertices : cpp.UInt32 - Number of vertices to render.
        **/
        public static function encoderSetVertexBuffer(_this:Encoder, _stream:cpp.UInt8, _handle:VertexBufferHandle, _startVertex:cpp.UInt32, _numVertices:cpp.UInt32):Void {
             Native_Bgfx.encoderSetVertexBuffer(_this.__ptr != null ? cast _this.__ptr : _this.__inst, _stream, _handle.__inst, _startVertex, _numVertices);
        }
        
        
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
        public static function encoderSetVertexBufferWithLayout(_this:Encoder, _stream:cpp.UInt8, _handle:VertexBufferHandle, _startVertex:cpp.UInt32, _numVertices:cpp.UInt32, _layoutHandle:VertexLayoutHandle):Void {
             Native_Bgfx.encoderSetVertexBufferWithLayout(_this.__ptr != null ? cast _this.__ptr : _this.__inst, _stream, _handle.__inst, _startVertex, _numVertices, _layoutHandle.__inst);
        }
        
        
        /**
        Set vertex buffer for draw primitive.
        @param: _stream : cpp.UInt8 - Vertex stream.
        @param: _handle : bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle - Dynamic vertex buffer.
        @param: _startVertex : cpp.UInt32 - First vertex to render.
        @param: _numVertices : cpp.UInt32 - Number of vertices to render.
        **/
        public static function encoderSetDynamicVertexBuffer(_this:Encoder, _stream:cpp.UInt8, _handle:DynamicVertexBufferHandle, _startVertex:cpp.UInt32, _numVertices:cpp.UInt32):Void {
             Native_Bgfx.encoderSetDynamicVertexBuffer(_this.__ptr != null ? cast _this.__ptr : _this.__inst, _stream, _handle.__inst, _startVertex, _numVertices);
        }
        
        
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
        public static function encoderSetDynamicVertexBufferWithLayout(_this:Encoder, _stream:cpp.UInt8, _handle:DynamicVertexBufferHandle, _startVertex:cpp.UInt32, _numVertices:cpp.UInt32, _layoutHandle:VertexLayoutHandle):Void {
             Native_Bgfx.encoderSetDynamicVertexBufferWithLayout(_this.__ptr != null ? cast _this.__ptr : _this.__inst, _stream, _handle.__inst, _startVertex, _numVertices, _layoutHandle.__inst);
        }
        
        
        /**
        Set vertex buffer for draw primitive.
        @param: _stream : cpp.UInt8 - Vertex stream.
        @param: _tvb : cpp.ConstStar<bgfx.TransientVertexBuffer.Native_TransientVertexBuffer> - Transient vertex buffer.
        @param: _startVertex : cpp.UInt32 - First vertex to render.
        @param: _numVertices : cpp.UInt32 - Number of vertices to render.
        **/
        public static function encoderSetTransientVertexBuffer(_this:Encoder, _stream:cpp.UInt8, _tvb:TransientVertexBuffer, _startVertex:cpp.UInt32, _numVertices:cpp.UInt32):Void {
             Native_Bgfx.encoderSetTransientVertexBuffer(_this.__ptr != null ? cast _this.__ptr : _this.__inst, _stream, _tvb.__ptr != null ? cast _tvb.__ptr : _tvb.__inst, _startVertex, _numVertices);
        }
        
        
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
        public static function encoderSetTransientVertexBufferWithLayout(_this:Encoder, _stream:cpp.UInt8, _tvb:TransientVertexBuffer, _startVertex:cpp.UInt32, _numVertices:cpp.UInt32, _layoutHandle:VertexLayoutHandle):Void {
             Native_Bgfx.encoderSetTransientVertexBufferWithLayout(_this.__ptr != null ? cast _this.__ptr : _this.__inst, _stream, _tvb.__ptr != null ? cast _tvb.__ptr : _tvb.__inst, _startVertex, _numVertices, _layoutHandle.__inst);
        }
        
        
        /**
        Set number of vertices for auto generated vertices use in conjunction
        with gl_VertexID.
        @attention Availability depends on: `BGFX_CAPS_VERTEX_ID`.
        @param: _numVertices : cpp.UInt32 - Number of vertices.
        **/
        public static function encoderSetVertexCount(_this:Encoder, _numVertices:cpp.UInt32):Void {
             Native_Bgfx.encoderSetVertexCount(_this.__ptr != null ? cast _this.__ptr : _this.__inst, _numVertices);
        }
        
        
        /**
        Set instance data buffer for draw primitive.
        @param: _idb : cpp.ConstStar<bgfx.InstanceDataBuffer.Native_InstanceDataBuffer> - Transient instance data buffer.
        @param: _start : cpp.UInt32 - First instance data.
        @param: _num : cpp.UInt32 - Number of data instances.
        **/
        public static function encoderSetInstanceDataBuffer(_this:Encoder, _idb:InstanceDataBuffer, _start:cpp.UInt32, _num:cpp.UInt32):Void {
             Native_Bgfx.encoderSetInstanceDataBuffer(_this.__ptr != null ? cast _this.__ptr : _this.__inst, _idb.__ptr != null ? cast _idb.__ptr : _idb.__inst, _start, _num);
        }
        
        
        /**
        Set instance data buffer for draw primitive.
        @param: _handle : bgfx.VertexBufferHandle.Native_VertexBufferHandle - Vertex buffer.
        @param: _startVertex : cpp.UInt32 - First instance data.
        @param: _num : cpp.UInt32 - Number of data instances.
        **/
        public static function encoderSetInstanceDataFromVertexBuffer(_this:Encoder, _handle:VertexBufferHandle, _startVertex:cpp.UInt32, _num:cpp.UInt32):Void {
             Native_Bgfx.encoderSetInstanceDataFromVertexBuffer(_this.__ptr != null ? cast _this.__ptr : _this.__inst, _handle.__inst, _startVertex, _num);
        }
        
        
        /**
        Set instance data buffer for draw primitive.
        @param: _handle : bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle - Dynamic vertex buffer.
        @param: _startVertex : cpp.UInt32 - First instance data.
        @param: _num : cpp.UInt32 - Number of data instances.
        **/
        public static function encoderSetInstanceDataFromDynamicVertexBuffer(_this:Encoder, _handle:DynamicVertexBufferHandle, _startVertex:cpp.UInt32, _num:cpp.UInt32):Void {
             Native_Bgfx.encoderSetInstanceDataFromDynamicVertexBuffer(_this.__ptr != null ? cast _this.__ptr : _this.__inst, _handle.__inst, _startVertex, _num);
        }
        
        
        /**
        Set number of instances for auto generated instances use in conjunction
        with gl_InstanceID.
        @attention Availability depends on: `BGFX_CAPS_VERTEX_ID`.
        **/
        public static function encoderSetInstanceCount(_this:Encoder, _numInstances:cpp.UInt32):Void {
             Native_Bgfx.encoderSetInstanceCount(_this.__ptr != null ? cast _this.__ptr : _this.__inst, _numInstances);
        }
        
        
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
        public static function encoderSetTexture(_this:Encoder, _stage:cpp.UInt8, _sampler:UniformHandle, _handle:TextureHandle, _flags:cpp.UInt32):Void {
             Native_Bgfx.encoderSetTexture(_this.__ptr != null ? cast _this.__ptr : _this.__inst, _stage, _sampler.__inst, _handle.__inst, _flags);
        }
        
        
        /**
        Submit an empty primitive for rendering. Uniforms and draw state
        will be applied but no geometry will be submitted. Useful in cases
        when no other draw/compute primitive is submitted to view, but it's
        desired to execute clear view.
        @remark
          These empty draw calls will sort before ordinary draw calls.
        @param: _id : bgfx.ViewId - View id.
        **/
        public static function encoderTouch(_this:Encoder, _id:bgfx.ViewId):Void {
             Native_Bgfx.encoderTouch(_this.__ptr != null ? cast _this.__ptr : _this.__inst, _id);
        }
        
        
        /**
        Submit primitive for rendering.
        @param: _id : bgfx.ViewId - View id.
        @param: _program : bgfx.ProgramHandle.Native_ProgramHandle - Program.
        @param: _depth : cpp.UInt32 - Depth for sorting.
        @param: _flags : cpp.UInt8 - Discard or preserve states. See `BGFX_DISCARD_*`.
        **/
        public static function encoderSubmit(_this:Encoder, _id:bgfx.ViewId, _program:ProgramHandle, _depth:cpp.UInt32, _flags:cpp.UInt8):Void {
             Native_Bgfx.encoderSubmit(_this.__ptr != null ? cast _this.__ptr : _this.__inst, _id, _program.__inst, _depth, _flags);
        }
        
        
        /**
        Submit primitive with occlusion query for rendering.
        @param: _id : bgfx.ViewId - View id.
        @param: _program : bgfx.ProgramHandle.Native_ProgramHandle - Program.
        @param: _occlusionQuery : bgfx.OcclusionQueryHandle.Native_OcclusionQueryHandle - Occlusion query.
        @param: _depth : cpp.UInt32 - Depth for sorting.
        @param: _flags : cpp.UInt8 - Discard or preserve states. See `BGFX_DISCARD_*`.
        **/
        public static function encoderSubmitOcclusionQuery(_this:Encoder, _id:bgfx.ViewId, _program:ProgramHandle, _occlusionQuery:OcclusionQueryHandle, _depth:cpp.UInt32, _flags:cpp.UInt8):Void {
             Native_Bgfx.encoderSubmitOcclusionQuery(_this.__ptr != null ? cast _this.__ptr : _this.__inst, _id, _program.__inst, _occlusionQuery.__inst, _depth, _flags);
        }
        
        
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
        public static function encoderSubmitIndirect(_this:Encoder, _id:bgfx.ViewId, _program:ProgramHandle, _indirectHandle:IndirectBufferHandle, _start:cpp.UInt32, _num:cpp.UInt32, _depth:cpp.UInt32, _flags:cpp.UInt8):Void {
             Native_Bgfx.encoderSubmitIndirect(_this.__ptr != null ? cast _this.__ptr : _this.__inst, _id, _program.__inst, _indirectHandle.__inst, _start, _num, _depth, _flags);
        }
        
        
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
        public static function encoderSubmitIndirectCount(_this:Encoder, _id:bgfx.ViewId, _program:ProgramHandle, _indirectHandle:IndirectBufferHandle, _start:cpp.UInt32, _numHandle:IndexBufferHandle, _numIndex:cpp.UInt32, _numMax:cpp.UInt32, _depth:cpp.UInt32, _flags:cpp.UInt8):Void {
             Native_Bgfx.encoderSubmitIndirectCount(_this.__ptr != null ? cast _this.__ptr : _this.__inst, _id, _program.__inst, _indirectHandle.__inst, _start, _numHandle.__inst, _numIndex, _numMax, _depth, _flags);
        }
        
        
        /**
        Set compute index buffer.
        @param: _stage : cpp.UInt8 - Compute stage.
        @param: _handle : bgfx.IndexBufferHandle.Native_IndexBufferHandle - Index buffer handle.
        @param: _access : bgfx.Access.Native_Access - Buffer access. See `Access::Enum`.
        **/
        public static function encoderSetComputeIndexBuffer(_this:Encoder, _stage:cpp.UInt8, _handle:IndexBufferHandle, _access:Access):Void {
             Native_Bgfx.encoderSetComputeIndexBuffer(_this.__ptr != null ? cast _this.__ptr : _this.__inst, _stage, _handle.__inst, cast _access);
        }
        
        
        /**
        Set compute vertex buffer.
        @param: _stage : cpp.UInt8 - Compute stage.
        @param: _handle : bgfx.VertexBufferHandle.Native_VertexBufferHandle - Vertex buffer handle.
        @param: _access : bgfx.Access.Native_Access - Buffer access. See `Access::Enum`.
        **/
        public static function encoderSetComputeVertexBuffer(_this:Encoder, _stage:cpp.UInt8, _handle:VertexBufferHandle, _access:Access):Void {
             Native_Bgfx.encoderSetComputeVertexBuffer(_this.__ptr != null ? cast _this.__ptr : _this.__inst, _stage, _handle.__inst, cast _access);
        }
        
        
        /**
        Set compute dynamic index buffer.
        @param: _stage : cpp.UInt8 - Compute stage.
        @param: _handle : bgfx.DynamicIndexBufferHandle.Native_DynamicIndexBufferHandle - Dynamic index buffer handle.
        @param: _access : bgfx.Access.Native_Access - Buffer access. See `Access::Enum`.
        **/
        public static function encoderSetComputeDynamicIndexBuffer(_this:Encoder, _stage:cpp.UInt8, _handle:DynamicIndexBufferHandle, _access:Access):Void {
             Native_Bgfx.encoderSetComputeDynamicIndexBuffer(_this.__ptr != null ? cast _this.__ptr : _this.__inst, _stage, _handle.__inst, cast _access);
        }
        
        
        /**
        Set compute dynamic vertex buffer.
        @param: _stage : cpp.UInt8 - Compute stage.
        @param: _handle : bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle - Dynamic vertex buffer handle.
        @param: _access : bgfx.Access.Native_Access - Buffer access. See `Access::Enum`.
        **/
        public static function encoderSetComputeDynamicVertexBuffer(_this:Encoder, _stage:cpp.UInt8, _handle:DynamicVertexBufferHandle, _access:Access):Void {
             Native_Bgfx.encoderSetComputeDynamicVertexBuffer(_this.__ptr != null ? cast _this.__ptr : _this.__inst, _stage, _handle.__inst, cast _access);
        }
        
        
        /**
        Set compute indirect buffer.
        @param: _stage : cpp.UInt8 - Compute stage.
        @param: _handle : bgfx.IndirectBufferHandle.Native_IndirectBufferHandle - Indirect buffer handle.
        @param: _access : bgfx.Access.Native_Access - Buffer access. See `Access::Enum`.
        **/
        public static function encoderSetComputeIndirectBuffer(_this:Encoder, _stage:cpp.UInt8, _handle:IndirectBufferHandle, _access:Access):Void {
             Native_Bgfx.encoderSetComputeIndirectBuffer(_this.__ptr != null ? cast _this.__ptr : _this.__inst, _stage, _handle.__inst, cast _access);
        }
        
        
        /**
        Set compute image from texture.
        @param: _stage : cpp.UInt8 - Compute stage.
        @param: _handle : bgfx.TextureHandle.Native_TextureHandle - Texture handle.
        @param: _mip : cpp.UInt8 - Mip level.
        @param: _access : bgfx.Access.Native_Access - Image access. See `Access::Enum`.
        @param: _format : bgfx.TextureFormat.Native_TextureFormat - Texture format. See: `TextureFormat::Enum`.
        **/
        public static function encoderSetImage(_this:Encoder, _stage:cpp.UInt8, _handle:TextureHandle, _mip:cpp.UInt8, _access:Access, _format:TextureFormat):Void {
             Native_Bgfx.encoderSetImage(_this.__ptr != null ? cast _this.__ptr : _this.__inst, _stage, _handle.__inst, _mip, cast _access, cast _format);
        }
        
        
        /**
        Dispatch compute.
        @param: _id : bgfx.ViewId - View id.
        @param: _program : bgfx.ProgramHandle.Native_ProgramHandle - Compute program.
        @param: _numX : cpp.UInt32 - Number of groups X.
        @param: _numY : cpp.UInt32 - Number of groups Y.
        @param: _numZ : cpp.UInt32 - Number of groups Z.
        @param: _flags : cpp.UInt8 - Discard or preserve states. See `BGFX_DISCARD_*`.
        **/
        public static function encoderDispatch(_this:Encoder, _id:bgfx.ViewId, _program:ProgramHandle, _numX:cpp.UInt32, _numY:cpp.UInt32, _numZ:cpp.UInt32, _flags:cpp.UInt8):Void {
             Native_Bgfx.encoderDispatch(_this.__ptr != null ? cast _this.__ptr : _this.__inst, _id, _program.__inst, _numX, _numY, _numZ, _flags);
        }
        
        
        /**
        Dispatch compute indirect.
        @param: _id : bgfx.ViewId - View id.
        @param: _program : bgfx.ProgramHandle.Native_ProgramHandle - Compute program.
        @param: _indirectHandle : bgfx.IndirectBufferHandle.Native_IndirectBufferHandle - Indirect buffer.
        @param: _start : cpp.UInt32 - First element in indirect buffer.
        @param: _num : cpp.UInt32 - Number of dispatches.
        @param: _flags : cpp.UInt8 - Discard or preserve states. See `BGFX_DISCARD_*`.
        **/
        public static function encoderDispatchIndirect(_this:Encoder, _id:bgfx.ViewId, _program:ProgramHandle, _indirectHandle:IndirectBufferHandle, _start:cpp.UInt32, _num:cpp.UInt32, _flags:cpp.UInt8):Void {
             Native_Bgfx.encoderDispatchIndirect(_this.__ptr != null ? cast _this.__ptr : _this.__inst, _id, _program.__inst, _indirectHandle.__inst, _start, _num, _flags);
        }
        
        
        /**
        Discard previously set state for draw or compute call.
        @param: _flags : cpp.UInt8 - Discard or preserve states. See `BGFX_DISCARD_*`.
        **/
        public static function encoderDiscard(_this:Encoder, _flags:cpp.UInt8):Void {
             Native_Bgfx.encoderDiscard(_this.__ptr != null ? cast _this.__ptr : _this.__inst, _flags);
        }
        
        
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
        public static function encoderBlit(_this:Encoder, _id:bgfx.ViewId, _dst:TextureHandle, _dstMip:cpp.UInt8, _dstX:cpp.UInt16, _dstY:cpp.UInt16, _dstZ:cpp.UInt16, _src:TextureHandle, _srcMip:cpp.UInt8, _srcX:cpp.UInt16, _srcY:cpp.UInt16, _srcZ:cpp.UInt16, _width:cpp.UInt16, _height:cpp.UInt16, _depth:cpp.UInt16):Void {
             Native_Bgfx.encoderBlit(_this.__ptr != null ? cast _this.__ptr : _this.__inst, _id, _dst.__inst, _dstMip, _dstX, _dstY, _dstZ, _src.__inst, _srcMip, _srcX, _srcY, _srcZ, _width, _height, _depth);
        }
        
        
        /**
        Request screen shot of window back buffer.
        @remarks
          `bgfx::CallbackI::screenShot` must be implemented.
        @attention Frame buffer handle must be created with OS' target native window handle.
        @param: _handle : bgfx.FrameBufferHandle.Native_FrameBufferHandle - Frame buffer handle. If handle is `BGFX_INVALID_HANDLE` request will be
        @param: made for main window back buffer.
        @param: _filePath : cpp.ConstStar<cpp.Char> - Will be passed to `bgfx::CallbackI::screenShot` callback.
        **/
        public static function requestScreenShot(_handle:FrameBufferHandle, _filePath:String):Void {
             Native_Bgfx.requestScreenShot(_handle.__inst, _filePath);
        }
        
        
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
        public static function renderFrame(_msecs:cpp.Int32):RenderFrame {
            return cast Native_Bgfx.renderFrame(_msecs);
        }
        
        
        /**
        Set platform data.
        @warning Must be called before `bgfx::init`.
        @param: _data : cpp.ConstStar<bgfx.PlatformData.Native_PlatformData> - Platform data.
        **/
        public static function setPlatformData(_data:PlatformData):Void {
             Native_Bgfx.setPlatformData(_data.__ptr != null ? cast _data.__ptr : _data.__inst);
        }
        
        
        /**
        Get internal data for interop.
        @attention It's expected you understand some bgfx internals before you
          use this call.
        @warning Must be called only on render thread.
        **/
        public static function getInternalData():InternalData {
            final res = Type.createEmptyInstance(InternalData);
            res.__ptr = cast Native_Bgfx.getInternalData();
            return res;
        }
        
        
        /**
        Override internal texture with externally created texture. Previously
        created internal texture will released.
        @attention It's expected you understand some bgfx internals before you
          use this call.
        @warning Must be called only on render thread.
        @param: _handle : bgfx.TextureHandle.Native_TextureHandle - Texture handle.
        @param: _ptr : cpp.UInt64 - Native API pointer to texture.
        **/
        public static function overrideInternalTexturePtr(_handle:TextureHandle, _ptr:cpp.UInt64):cpp.UInt64 {
            return Native_Bgfx.overrideInternalTexturePtr(_handle.__inst, _ptr);
        }
        
        
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
        public static function overrideInternalTexture(_handle:TextureHandle, _width:cpp.UInt16, _height:cpp.UInt16, _numMips:cpp.UInt8, _format:TextureFormat, _flags:cpp.UInt64):cpp.UInt64 {
            return Native_Bgfx.overrideInternalTexture(_handle.__inst, _width, _height, _numMips, cast _format, _flags);
        }
        
        
        /**
        Sets a debug marker. This allows you to group graphics calls together for easy browsing in
        graphics debugging tools.
        @param: _name : cpp.ConstStar<cpp.Char> - Marker name.
        @param: _len : cpp.Int32 - Marker name length (if length is INT32_MAX, it's expected
        @param: that _name is zero terminated string.
        **/
        public static function setMarker(_name:String, _len:cpp.Int32):Void {
             Native_Bgfx.setMarker(_name, _len);
        }
        
        
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
        public static function setState(_state:cpp.UInt64, _rgba:cpp.UInt32):Void {
             Native_Bgfx.setState(_state, _rgba);
        }
        
        
        /**
        Set condition for rendering.
        @param: _handle : bgfx.OcclusionQueryHandle.Native_OcclusionQueryHandle - Occlusion query handle.
        @param: _visible : Bool - Render if occlusion query is visible.
        **/
        public static function setCondition(_handle:OcclusionQueryHandle, _visible:Bool):Void {
             Native_Bgfx.setCondition(_handle.__inst, _visible);
        }
        
        
        /**
        Set stencil test state.
        @param: _fstencil : cpp.UInt32 - Front stencil state.
        @param: _bstencil : cpp.UInt32 - Back stencil state. If back is set to `BGFX_STENCIL_NONE`
        @param: _fstencil is applied to both front and back facing primitives.
        **/
        public static function setStencil(_fstencil:cpp.UInt32, _bstencil:cpp.UInt32):Void {
             Native_Bgfx.setStencil(_fstencil, _bstencil);
        }
        
        
        /**
        Set scissor for draw primitive.
        @remark
          To scissor for all primitives in view see `bgfx::setViewScissor`.
        @param: _x : cpp.UInt16 - Position x from the left corner of the window.
        @param: _y : cpp.UInt16 - Position y from the top corner of the window.
        @param: _width : cpp.UInt16 - Width of view scissor region.
        @param: _height : cpp.UInt16 - Height of view scissor region.
        **/
        public static function setScissor(_x:cpp.UInt16, _y:cpp.UInt16, _width:cpp.UInt16, _height:cpp.UInt16):cpp.UInt16 {
            return Native_Bgfx.setScissor(_x, _y, _width, _height);
        }
        
        
        /**
        Set scissor from cache for draw primitive.
        @remark
          To scissor for all primitives in view see `bgfx::setViewScissor`.
        @param: _cache : cpp.UInt16 - Index in scissor cache.
        **/
        public static function setScissorCached(_cache:cpp.UInt16):Void {
             Native_Bgfx.setScissorCached(_cache);
        }
        
        
        /**
        Set model matrix for draw primitive. If it is not called,
        the model will be rendered with an identity model matrix.
        @param: _mtx : cpp.ConstStar<cpp.Void> - Pointer to first matrix in array.
        @param: _num : cpp.UInt16 - Number of matrices in array.
        **/
        public static function setTransform(_mtx:cpp.ConstPointer<cpp.Void>, _num:cpp.UInt16):cpp.UInt32 {
            return Native_Bgfx.setTransform(cast _mtx, _num);
        }
        
        
        /**
         Set model matrix from matrix cache for draw primitive.
        @param: _cache : cpp.UInt32 - Index in matrix cache.
        @param: _num : cpp.UInt16 - Number of matrices from cache.
        **/
        public static function setTransformCached(_cache:cpp.UInt32, _num:cpp.UInt16):Void {
             Native_Bgfx.setTransformCached(_cache, _num);
        }
        
        
        /**
        Reserve matrices in internal matrix cache.
        @attention Pointer returned can be modified until `bgfx::frame` is called.
        @param: _transform : cpp.Star<bgfx.Transform.Native_Transform> - Pointer to `Transform` structure.
        @param: _num : cpp.UInt16 - Number of matrices.
        **/
        public static function allocTransform(_transform:Transform, _num:cpp.UInt16):cpp.UInt32 {
            return Native_Bgfx.allocTransform(_transform.__ptr != null ? cast _transform.__ptr : _transform.__inst, _num);
        }
        
        
        /**
        Set shader uniform parameter for draw primitive.
        @param: _handle : bgfx.UniformHandle.Native_UniformHandle - Uniform.
        @param: _value : cpp.ConstStar<cpp.Void> - Pointer to uniform data.
        @param: _num : cpp.UInt16 - Number of elements. Passing `UINT16_MAX` will
        @param: use the _num passed on uniform creation.
        **/
        public static function setUniform(_handle:UniformHandle, _value:cpp.ConstPointer<cpp.Void>, _num:cpp.UInt16):Void {
             Native_Bgfx.setUniform(_handle.__inst, cast _value, _num);
        }
        
        
        /**
        Set index buffer for draw primitive.
        @param: _handle : bgfx.IndexBufferHandle.Native_IndexBufferHandle - Index buffer.
        @param: _firstIndex : cpp.UInt32 - First index to render.
        @param: _numIndices : cpp.UInt32 - Number of indices to render.
        **/
        public static function setIndexBuffer(_handle:IndexBufferHandle, _firstIndex:cpp.UInt32, _numIndices:cpp.UInt32):Void {
             Native_Bgfx.setIndexBuffer(_handle.__inst, _firstIndex, _numIndices);
        }
        
        
        /**
        Set index buffer for draw primitive.
        @param: _handle : bgfx.DynamicIndexBufferHandle.Native_DynamicIndexBufferHandle - Dynamic index buffer.
        @param: _firstIndex : cpp.UInt32 - First index to render.
        @param: _numIndices : cpp.UInt32 - Number of indices to render.
        **/
        public static function setDynamicIndexBuffer(_handle:DynamicIndexBufferHandle, _firstIndex:cpp.UInt32, _numIndices:cpp.UInt32):Void {
             Native_Bgfx.setDynamicIndexBuffer(_handle.__inst, _firstIndex, _numIndices);
        }
        
        
        /**
        Set index buffer for draw primitive.
        @param: _tib : cpp.ConstStar<bgfx.TransientIndexBuffer.Native_TransientIndexBuffer> - Transient index buffer.
        @param: _firstIndex : cpp.UInt32 - First index to render.
        @param: _numIndices : cpp.UInt32 - Number of indices to render.
        **/
        public static function setTransientIndexBuffer(_tib:TransientIndexBuffer, _firstIndex:cpp.UInt32, _numIndices:cpp.UInt32):Void {
             Native_Bgfx.setTransientIndexBuffer(_tib.__ptr != null ? cast _tib.__ptr : _tib.__inst, _firstIndex, _numIndices);
        }
        
        
        /**
        Set vertex buffer for draw primitive.
        @param: _stream : cpp.UInt8 - Vertex stream.
        @param: _handle : bgfx.VertexBufferHandle.Native_VertexBufferHandle - Vertex buffer.
        @param: _startVertex : cpp.UInt32 - First vertex to render.
        @param: _numVertices : cpp.UInt32 - Number of vertices to render.
        **/
        public static function setVertexBuffer(_stream:cpp.UInt8, _handle:VertexBufferHandle, _startVertex:cpp.UInt32, _numVertices:cpp.UInt32):Void {
             Native_Bgfx.setVertexBuffer(_stream, _handle.__inst, _startVertex, _numVertices);
        }
        
        
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
        public static function setVertexBufferWithLayout(_stream:cpp.UInt8, _handle:VertexBufferHandle, _startVertex:cpp.UInt32, _numVertices:cpp.UInt32, _layoutHandle:VertexLayoutHandle):Void {
             Native_Bgfx.setVertexBufferWithLayout(_stream, _handle.__inst, _startVertex, _numVertices, _layoutHandle.__inst);
        }
        
        
        /**
        Set vertex buffer for draw primitive.
        @param: _stream : cpp.UInt8 - Vertex stream.
        @param: _handle : bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle - Dynamic vertex buffer.
        @param: _startVertex : cpp.UInt32 - First vertex to render.
        @param: _numVertices : cpp.UInt32 - Number of vertices to render.
        **/
        public static function setDynamicVertexBuffer(_stream:cpp.UInt8, _handle:DynamicVertexBufferHandle, _startVertex:cpp.UInt32, _numVertices:cpp.UInt32):Void {
             Native_Bgfx.setDynamicVertexBuffer(_stream, _handle.__inst, _startVertex, _numVertices);
        }
        
        
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
        public static function setDynamicVertexBufferWithLayout(_stream:cpp.UInt8, _handle:DynamicVertexBufferHandle, _startVertex:cpp.UInt32, _numVertices:cpp.UInt32, _layoutHandle:VertexLayoutHandle):Void {
             Native_Bgfx.setDynamicVertexBufferWithLayout(_stream, _handle.__inst, _startVertex, _numVertices, _layoutHandle.__inst);
        }
        
        
        /**
        Set vertex buffer for draw primitive.
        @param: _stream : cpp.UInt8 - Vertex stream.
        @param: _tvb : cpp.ConstStar<bgfx.TransientVertexBuffer.Native_TransientVertexBuffer> - Transient vertex buffer.
        @param: _startVertex : cpp.UInt32 - First vertex to render.
        @param: _numVertices : cpp.UInt32 - Number of vertices to render.
        **/
        public static function setTransientVertexBuffer(_stream:cpp.UInt8, _tvb:TransientVertexBuffer, _startVertex:cpp.UInt32, _numVertices:cpp.UInt32):Void {
             Native_Bgfx.setTransientVertexBuffer(_stream, _tvb.__ptr != null ? cast _tvb.__ptr : _tvb.__inst, _startVertex, _numVertices);
        }
        
        
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
        public static function setTransientVertexBufferWithLayout(_stream:cpp.UInt8, _tvb:TransientVertexBuffer, _startVertex:cpp.UInt32, _numVertices:cpp.UInt32, _layoutHandle:VertexLayoutHandle):Void {
             Native_Bgfx.setTransientVertexBufferWithLayout(_stream, _tvb.__ptr != null ? cast _tvb.__ptr : _tvb.__inst, _startVertex, _numVertices, _layoutHandle.__inst);
        }
        
        
        /**
        Set number of vertices for auto generated vertices use in conjunction
        with gl_VertexID.
        @attention Availability depends on: `BGFX_CAPS_VERTEX_ID`.
        @param: _numVertices : cpp.UInt32 - Number of vertices.
        **/
        public static function setVertexCount(_numVertices:cpp.UInt32):Void {
             Native_Bgfx.setVertexCount(_numVertices);
        }
        
        
        /**
        Set instance data buffer for draw primitive.
        @param: _idb : cpp.ConstStar<bgfx.InstanceDataBuffer.Native_InstanceDataBuffer> - Transient instance data buffer.
        @param: _start : cpp.UInt32 - First instance data.
        @param: _num : cpp.UInt32 - Number of data instances.
        **/
        public static function setInstanceDataBuffer(_idb:InstanceDataBuffer, _start:cpp.UInt32, _num:cpp.UInt32):Void {
             Native_Bgfx.setInstanceDataBuffer(_idb.__ptr != null ? cast _idb.__ptr : _idb.__inst, _start, _num);
        }
        
        
        /**
        Set instance data buffer for draw primitive.
        @param: _handle : bgfx.VertexBufferHandle.Native_VertexBufferHandle - Vertex buffer.
        @param: _startVertex : cpp.UInt32 - First instance data.
        @param: _num : cpp.UInt32 - Number of data instances.
        **/
        public static function setInstanceDataFromVertexBuffer(_handle:VertexBufferHandle, _startVertex:cpp.UInt32, _num:cpp.UInt32):Void {
             Native_Bgfx.setInstanceDataFromVertexBuffer(_handle.__inst, _startVertex, _num);
        }
        
        
        /**
        Set instance data buffer for draw primitive.
        @param: _handle : bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle - Dynamic vertex buffer.
        @param: _startVertex : cpp.UInt32 - First instance data.
        @param: _num : cpp.UInt32 - Number of data instances.
        **/
        public static function setInstanceDataFromDynamicVertexBuffer(_handle:DynamicVertexBufferHandle, _startVertex:cpp.UInt32, _num:cpp.UInt32):Void {
             Native_Bgfx.setInstanceDataFromDynamicVertexBuffer(_handle.__inst, _startVertex, _num);
        }
        
        
        /**
        Set number of instances for auto generated instances use in conjunction
        with gl_InstanceID.
        @attention Availability depends on: `BGFX_CAPS_VERTEX_ID`.
        **/
        public static function setInstanceCount(_numInstances:cpp.UInt32):Void {
             Native_Bgfx.setInstanceCount(_numInstances);
        }
        
        
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
        public static function setTexture(_stage:cpp.UInt8, _sampler:UniformHandle, _handle:TextureHandle, _flags:cpp.UInt32):Void {
             Native_Bgfx.setTexture(_stage, _sampler.__inst, _handle.__inst, _flags);
        }
        
        
        /**
        Submit an empty primitive for rendering. Uniforms and draw state
        will be applied but no geometry will be submitted.
        @remark
          These empty draw calls will sort before ordinary draw calls.
        @param: _id : bgfx.ViewId - View id.
        **/
        public static function touch(_id:bgfx.ViewId):Void {
             Native_Bgfx.touch(_id);
        }
        
        
        /**
        Submit primitive for rendering.
        @param: _id : bgfx.ViewId - View id.
        @param: _program : bgfx.ProgramHandle.Native_ProgramHandle - Program.
        @param: _depth : cpp.UInt32 - Depth for sorting.
        @param: _flags : cpp.UInt8 - Which states to discard for next draw. See `BGFX_DISCARD_*`.
        **/
        public static function submit(_id:bgfx.ViewId, _program:ProgramHandle, _depth:cpp.UInt32, _flags:cpp.UInt8):Void {
             Native_Bgfx.submit(_id, _program.__inst, _depth, _flags);
        }
        
        
        /**
        Submit primitive with occlusion query for rendering.
        @param: _id : bgfx.ViewId - View id.
        @param: _program : bgfx.ProgramHandle.Native_ProgramHandle - Program.
        @param: _occlusionQuery : bgfx.OcclusionQueryHandle.Native_OcclusionQueryHandle - Occlusion query.
        @param: _depth : cpp.UInt32 - Depth for sorting.
        @param: _flags : cpp.UInt8 - Which states to discard for next draw. See `BGFX_DISCARD_*`.
        **/
        public static function submitOcclusionQuery(_id:bgfx.ViewId, _program:ProgramHandle, _occlusionQuery:OcclusionQueryHandle, _depth:cpp.UInt32, _flags:cpp.UInt8):Void {
             Native_Bgfx.submitOcclusionQuery(_id, _program.__inst, _occlusionQuery.__inst, _depth, _flags);
        }
        
        
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
        public static function submitIndirect(_id:bgfx.ViewId, _program:ProgramHandle, _indirectHandle:IndirectBufferHandle, _start:cpp.UInt32, _num:cpp.UInt32, _depth:cpp.UInt32, _flags:cpp.UInt8):Void {
             Native_Bgfx.submitIndirect(_id, _program.__inst, _indirectHandle.__inst, _start, _num, _depth, _flags);
        }
        
        
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
        public static function submitIndirectCount(_id:bgfx.ViewId, _program:ProgramHandle, _indirectHandle:IndirectBufferHandle, _start:cpp.UInt32, _numHandle:IndexBufferHandle, _numIndex:cpp.UInt32, _numMax:cpp.UInt32, _depth:cpp.UInt32, _flags:cpp.UInt8):Void {
             Native_Bgfx.submitIndirectCount(_id, _program.__inst, _indirectHandle.__inst, _start, _numHandle.__inst, _numIndex, _numMax, _depth, _flags);
        }
        
        
        /**
        Set compute index buffer.
        @param: _stage : cpp.UInt8 - Compute stage.
        @param: _handle : bgfx.IndexBufferHandle.Native_IndexBufferHandle - Index buffer handle.
        @param: _access : bgfx.Access.Native_Access - Buffer access. See `Access::Enum`.
        **/
        public static function setComputeIndexBuffer(_stage:cpp.UInt8, _handle:IndexBufferHandle, _access:Access):Void {
             Native_Bgfx.setComputeIndexBuffer(_stage, _handle.__inst, cast _access);
        }
        
        
        /**
        Set compute vertex buffer.
        @param: _stage : cpp.UInt8 - Compute stage.
        @param: _handle : bgfx.VertexBufferHandle.Native_VertexBufferHandle - Vertex buffer handle.
        @param: _access : bgfx.Access.Native_Access - Buffer access. See `Access::Enum`.
        **/
        public static function setComputeVertexBuffer(_stage:cpp.UInt8, _handle:VertexBufferHandle, _access:Access):Void {
             Native_Bgfx.setComputeVertexBuffer(_stage, _handle.__inst, cast _access);
        }
        
        
        /**
        Set compute dynamic index buffer.
        @param: _stage : cpp.UInt8 - Compute stage.
        @param: _handle : bgfx.DynamicIndexBufferHandle.Native_DynamicIndexBufferHandle - Dynamic index buffer handle.
        @param: _access : bgfx.Access.Native_Access - Buffer access. See `Access::Enum`.
        **/
        public static function setComputeDynamicIndexBuffer(_stage:cpp.UInt8, _handle:DynamicIndexBufferHandle, _access:Access):Void {
             Native_Bgfx.setComputeDynamicIndexBuffer(_stage, _handle.__inst, cast _access);
        }
        
        
        /**
        Set compute dynamic vertex buffer.
        @param: _stage : cpp.UInt8 - Compute stage.
        @param: _handle : bgfx.DynamicVertexBufferHandle.Native_DynamicVertexBufferHandle - Dynamic vertex buffer handle.
        @param: _access : bgfx.Access.Native_Access - Buffer access. See `Access::Enum`.
        **/
        public static function setComputeDynamicVertexBuffer(_stage:cpp.UInt8, _handle:DynamicVertexBufferHandle, _access:Access):Void {
             Native_Bgfx.setComputeDynamicVertexBuffer(_stage, _handle.__inst, cast _access);
        }
        
        
        /**
        Set compute indirect buffer.
        @param: _stage : cpp.UInt8 - Compute stage.
        @param: _handle : bgfx.IndirectBufferHandle.Native_IndirectBufferHandle - Indirect buffer handle.
        @param: _access : bgfx.Access.Native_Access - Buffer access. See `Access::Enum`.
        **/
        public static function setComputeIndirectBuffer(_stage:cpp.UInt8, _handle:IndirectBufferHandle, _access:Access):Void {
             Native_Bgfx.setComputeIndirectBuffer(_stage, _handle.__inst, cast _access);
        }
        
        
        /**
        Set compute image from texture.
        @param: _stage : cpp.UInt8 - Compute stage.
        @param: _handle : bgfx.TextureHandle.Native_TextureHandle - Texture handle.
        @param: _mip : cpp.UInt8 - Mip level.
        @param: _access : bgfx.Access.Native_Access - Image access. See `Access::Enum`.
        @param: _format : bgfx.TextureFormat.Native_TextureFormat - Texture format. See: `TextureFormat::Enum`.
        **/
        public static function setImage(_stage:cpp.UInt8, _handle:TextureHandle, _mip:cpp.UInt8, _access:Access, _format:TextureFormat):Void {
             Native_Bgfx.setImage(_stage, _handle.__inst, _mip, cast _access, cast _format);
        }
        
        
        /**
        Dispatch compute.
        @param: _id : bgfx.ViewId - View id.
        @param: _program : bgfx.ProgramHandle.Native_ProgramHandle - Compute program.
        @param: _numX : cpp.UInt32 - Number of groups X.
        @param: _numY : cpp.UInt32 - Number of groups Y.
        @param: _numZ : cpp.UInt32 - Number of groups Z.
        @param: _flags : cpp.UInt8 - Discard or preserve states. See `BGFX_DISCARD_*`.
        **/
        public static function dispatch(_id:bgfx.ViewId, _program:ProgramHandle, _numX:cpp.UInt32, _numY:cpp.UInt32, _numZ:cpp.UInt32, _flags:cpp.UInt8):Void {
             Native_Bgfx.dispatch(_id, _program.__inst, _numX, _numY, _numZ, _flags);
        }
        
        
        /**
        Dispatch compute indirect.
        @param: _id : bgfx.ViewId - View id.
        @param: _program : bgfx.ProgramHandle.Native_ProgramHandle - Compute program.
        @param: _indirectHandle : bgfx.IndirectBufferHandle.Native_IndirectBufferHandle - Indirect buffer.
        @param: _start : cpp.UInt32 - First element in indirect buffer.
        @param: _num : cpp.UInt32 - Number of dispatches.
        @param: _flags : cpp.UInt8 - Discard or preserve states. See `BGFX_DISCARD_*`.
        **/
        public static function dispatchIndirect(_id:bgfx.ViewId, _program:ProgramHandle, _indirectHandle:IndirectBufferHandle, _start:cpp.UInt32, _num:cpp.UInt32, _flags:cpp.UInt8):Void {
             Native_Bgfx.dispatchIndirect(_id, _program.__inst, _indirectHandle.__inst, _start, _num, _flags);
        }
        
        
        /**
        Discard previously set state for draw or compute call.
        @param: _flags : cpp.UInt8 - Draw/compute states to discard.
        **/
        public static function discard(_flags:cpp.UInt8):Void {
             Native_Bgfx.discard(_flags);
        }
        
        
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
        public static function blit(_id:bgfx.ViewId, _dst:TextureHandle, _dstMip:cpp.UInt8, _dstX:cpp.UInt16, _dstY:cpp.UInt16, _dstZ:cpp.UInt16, _src:TextureHandle, _srcMip:cpp.UInt8, _srcX:cpp.UInt16, _srcY:cpp.UInt16, _srcZ:cpp.UInt16, _width:cpp.UInt16, _height:cpp.UInt16, _depth:cpp.UInt16):Void {
             Native_Bgfx.blit(_id, _dst.__inst, _dstMip, _dstX, _dstY, _dstZ, _src.__inst, _srcMip, _srcX, _srcY, _srcZ, _width, _height, _depth);
        }
        
        
    }
    typedef Bgfx = CppiaBgfx;
#else
    typedef Bgfx = Native_Bgfx;
#end



