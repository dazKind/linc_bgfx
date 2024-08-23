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
    class CppiaVertexLayout {
        public var __ptr:cpp.Pointer<Native_VertexLayout> = null;
        public var __inst:Native_VertexLayout = new Native_VertexLayout();
        public function new() {}
        
        public var hash(get, set):cpp.UInt32;
        function set_hash(_v:cpp.UInt32):cpp.UInt32 return __ptr == null ? __inst.hash = _v : __ptr.ref.hash = _v;
        function get_hash():cpp.UInt32 return __ptr == null ? __inst.hash : __ptr.ref.hash;
        
        public var stride(get, set):cpp.UInt16;
        function set_stride(_v:cpp.UInt16):cpp.UInt16 return __ptr == null ? __inst.stride = _v : __ptr.ref.stride = _v;
        function get_stride():cpp.UInt16 return __ptr == null ? __inst.stride : __ptr.ref.stride;
        
        public var offset(get, set):cpp.Pointer<cpp.UInt16>;
        function set_offset(_v:cpp.Pointer<cpp.UInt16>):cpp.Pointer<cpp.UInt16> return null;
        function get_offset():cpp.Pointer<cpp.UInt16> {
            if (__ptr == null) return cpp.Pointer.fromRaw(__inst.offset);
            else return cpp.Pointer.fromRaw(__ptr.ref.offset);
        }
        
        public var attributes(get, set):cpp.Pointer<cpp.UInt16>;
        function set_attributes(_v:cpp.Pointer<cpp.UInt16>):cpp.Pointer<cpp.UInt16> return null;
        function get_attributes():cpp.Pointer<cpp.UInt16> {
            if (__ptr == null) return cpp.Pointer.fromRaw(__inst.attributes);
            else return cpp.Pointer.fromRaw(__ptr.ref.attributes);
        }
        
        
    }
    typedef VertexLayout = CppiaVertexLayout;
    typedef VertexLayoutStruct = VertexLayout;
#else
    typedef VertexLayout = Native_VertexLayout;
    typedef VertexLayoutStruct = cpp.Struct<Native_VertexLayout>;
#end



