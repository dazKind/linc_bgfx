package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('bgfx_instance_data_buffer_t')
extern class Native_InstanceDataBuffer {
    public function new();
    var data:cpp.Star<cpp.UInt8>; // uint8_t*
    var size:cpp.UInt32; // uint32_t
    var offset:cpp.UInt32; // uint32_t
    var num:cpp.UInt32; // uint32_t
    var stride:cpp.UInt16; // uint16_t
    var handle:bgfx.VertexBufferHandle.Native_VertexBufferHandle; // VertexBufferHandle
}
#if (scriptable || cppia)
    class CppiaInstanceDataBuffer {
        public var __ptr:cpp.Pointer<Native_InstanceDataBuffer> = null;
        public var __inst:Native_InstanceDataBuffer = new Native_InstanceDataBuffer();
        public function new() {}
        
        public var data(get, set):cpp.Pointer<cpp.UInt8>;
        function set_data(_v:cpp.Pointer<cpp.UInt8>):cpp.Pointer<cpp.UInt8> {
            if (__ptr == null)
                __inst.data = cast _v;
            else
                __ptr.ref.data = cast _v;
            return _v;
        }
        function get_data():cpp.Pointer<cpp.UInt8> {
            if (__ptr == null) return cpp.Pointer.fromStar(__inst.data);
            else return cpp.Pointer.fromStar(__ptr.ref.data);
        }
        
        public var size(get, set):cpp.UInt32;
        function set_size(_v:cpp.UInt32):cpp.UInt32 return __ptr == null ? __inst.size = _v : __ptr.ref.size = _v;
        function get_size():cpp.UInt32 return __ptr == null ? __inst.size : __ptr.ref.size;
        
        public var offset(get, set):cpp.UInt32;
        function set_offset(_v:cpp.UInt32):cpp.UInt32 return __ptr == null ? __inst.offset = _v : __ptr.ref.offset = _v;
        function get_offset():cpp.UInt32 return __ptr == null ? __inst.offset : __ptr.ref.offset;
        
        public var num(get, set):cpp.UInt32;
        function set_num(_v:cpp.UInt32):cpp.UInt32 return __ptr == null ? __inst.num = _v : __ptr.ref.num = _v;
        function get_num():cpp.UInt32 return __ptr == null ? __inst.num : __ptr.ref.num;
        
        public var stride(get, set):cpp.UInt16;
        function set_stride(_v:cpp.UInt16):cpp.UInt16 return __ptr == null ? __inst.stride = _v : __ptr.ref.stride = _v;
        function get_stride():cpp.UInt16 return __ptr == null ? __inst.stride : __ptr.ref.stride;
        
        public var handle(get, set):VertexBufferHandle;
        function set_handle(_v:VertexBufferHandle):VertexBufferHandle { __inst.handle = _v.__inst; return _v; }
        function get_handle():VertexBufferHandle { final res = Type.createEmptyInstance(VertexBufferHandle); res.__ptr = cpp.Pointer.addressOf(__inst.handle); return res; }
        
        
    }
    typedef InstanceDataBuffer = CppiaInstanceDataBuffer;
#else
    typedef InstanceDataBuffer = Native_InstanceDataBuffer;
#end



