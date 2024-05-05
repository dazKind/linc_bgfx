package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('bgfx_transient_index_buffer_t')
extern class Native_TransientIndexBuffer {
    public function new();
    var data:cpp.Star<cpp.UInt8>; // uint8_t*
    var size:cpp.UInt32; // uint32_t
    var startIndex:cpp.UInt32; // uint32_t
    var handle:bgfx.IndexBufferHandle.Native_IndexBufferHandle; // IndexBufferHandle
    var isIndex16:Bool; // bool
}
#if (scriptable || cppia)
    class CppiaTransientIndexBuffer {
        public var __ptr:cpp.Pointer<Native_TransientIndexBuffer> = null;
        public var __inst:Native_TransientIndexBuffer = new Native_TransientIndexBuffer();
        public function new() {}
        
        public var data(get, set):cpp.Pointer<cpp.UInt8>;
        function set_data(_v:cpp.Pointer<cpp.UInt8>):cpp.Pointer<cpp.UInt8> return __ptr == null ? cast __inst.data = cast _v : cast __ptr.ref.data = cast _v;
        function get_data():cpp.Pointer<cpp.UInt8> return __ptr == null ? cast __inst.data : cast __ptr.ref.data;
        
        public var size(get, set):cpp.UInt32;
        function set_size(_v:cpp.UInt32):cpp.UInt32 return __ptr == null ? __inst.size = _v : __ptr.ref.size = _v;
        function get_size():cpp.UInt32 return __ptr == null ? __inst.size : __ptr.ref.size;
        
        public var startIndex(get, set):cpp.UInt32;
        function set_startIndex(_v:cpp.UInt32):cpp.UInt32 return __ptr == null ? __inst.startIndex = _v : __ptr.ref.startIndex = _v;
        function get_startIndex():cpp.UInt32 return __ptr == null ? __inst.startIndex : __ptr.ref.startIndex;
        
        public var handle(get, set):IndexBufferHandle;
        function set_handle(_v:IndexBufferHandle):IndexBufferHandle { __inst.handle = _v.__inst; return _v; }
        function get_handle():IndexBufferHandle { final res = Type.createEmptyInstance(IndexBufferHandle); res.__ptr = cpp.Pointer.addressOf(__inst.handle); return res; }
        
        public var isIndex16(get, set):Bool;
        function set_isIndex16(_v:Bool):Bool return __ptr == null ? __inst.isIndex16 = _v : __ptr.ref.isIndex16 = _v;
        function get_isIndex16():Bool return __ptr == null ? __inst.isIndex16 : __ptr.ref.isIndex16;
        
        
    }
    typedef TransientIndexBuffer = CppiaTransientIndexBuffer;
#else
    typedef TransientIndexBuffer = Native_TransientIndexBuffer;
#end



