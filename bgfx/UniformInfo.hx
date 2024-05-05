package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('bgfx_uniform_info_t')
extern class Native_UniformInfo {
    public function new();
    var name:cpp.RawPointer<cpp.Char>; // char[256]
    var type:bgfx.UniformType.Native_UniformType; // UniformType::Enum
    var num:cpp.UInt16; // uint16_t
}
#if (scriptable || cppia)
    class CppiaUniformInfo {
        public var __ptr:cpp.Pointer<Native_UniformInfo> = null;
        public var __inst:Native_UniformInfo = new Native_UniformInfo();
        public function new() {}
        
        public var name(get, set):cpp.Pointer<cpp.Char>;
        function set_name(_v:cpp.Pointer<cpp.Char>):cpp.Pointer<cpp.Char> return null;
        function get_name():cpp.Pointer<cpp.Char> return __ptr == null ? cast __inst.name : cast __ptr.ref.name;
        
        public var type(get, set):UniformType;
        function set_type(_v:UniformType):UniformType { __inst.type = (cast _v:bgfx.UniformType.Native_UniformType); return _v; }
        function get_type():UniformType return cast(__inst.type, UniformType);
        
        public var num(get, set):cpp.UInt16;
        function set_num(_v:cpp.UInt16):cpp.UInt16 return __ptr == null ? __inst.num = _v : __ptr.ref.num = _v;
        function get_num():cpp.UInt16 return __ptr == null ? __inst.num : __ptr.ref.num;
        
        
    }
    typedef UniformInfo = CppiaUniformInfo;
#else
    typedef UniformInfo = Native_UniformInfo;
#end



