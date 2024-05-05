package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('bgfx_transform_t')
extern class Native_Transform {
    public function new();
    var data:cpp.Star<cpp.Float32>; // float*
    var num:cpp.UInt16; // uint16_t
}
#if (scriptable || cppia)
    class CppiaTransform {
        public var __ptr:cpp.Pointer<Native_Transform> = null;
        public var __inst:Native_Transform = new Native_Transform();
        public function new() {}
        
        public var data(get, set):cpp.Pointer<cpp.Float32>;
        function set_data(_v:cpp.Pointer<cpp.Float32>):cpp.Pointer<cpp.Float32> return __ptr == null ? cast __inst.data = cast _v : cast __ptr.ref.data = cast _v;
        function get_data():cpp.Pointer<cpp.Float32> return __ptr == null ? cast __inst.data : cast __ptr.ref.data;
        
        public var num(get, set):cpp.UInt16;
        function set_num(_v:cpp.UInt16):cpp.UInt16 return __ptr == null ? __inst.num = _v : __ptr.ref.num = _v;
        function get_num():cpp.UInt16 return __ptr == null ? __inst.num : __ptr.ref.num;
        
        
    }
    typedef Transform = CppiaTransform;
#else
    typedef Transform = Native_Transform;
#end



