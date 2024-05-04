package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('bgfx_vertex_layout_t')
extern class Native_VertexLayout {
    public function new();
    var hash:cpp.UInt32; // uint32_t
    var stride:cpp.UInt16; // uint16_t
    var offset:cpp.RawPointer<cpp.UInt16>; // uint16_t[18]
    var attributes:cpp.RawPointer<cpp.UInt16>; // uint16_t[18]
}
#if (scriptable || cppia)
    class VertexLayout {
    }
#else
    typedef VertexLayout = Native_VertexLayout;
#end



