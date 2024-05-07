package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('bgfx_memory_t')
extern class Native_Memory {
    public function new();
    var data:cpp.Star<cpp.UInt8>; // uint8_t*
    var size:cpp.UInt32; // uint32_t
}
#if (scriptable || cppia)
    class CppiaMemory {
        public var __ptr:cpp.Pointer<Native_Memory> = null;
        public var __inst:Native_Memory = new Native_Memory();
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
        
        
    }
    typedef Memory = CppiaMemory;
#else
    typedef Memory = Native_Memory;
#end



