package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('bgfx_uniform_info_t')
extern class Native_UniformInfo {
    public function new();
    private var name:cpp.RawPointer<cpp.Char>; // char[256]
    
    inline public function getName():String return cpp.NativeString.fromPointer(cast name);

    var type:bgfx.UniformType.Native_UniformType; // UniformType::Enum
    var num:cpp.UInt16; // uint16_t
}
#if (scriptable || cppia)
    class CppiaUniformInfo {
        public var __ptr:cpp.Pointer<Native_UniformInfo> = null;
        public var __inst:Native_UniformInfo = new Native_UniformInfo();
        public function new() {}
        
        // public var name(get, set):String;
        // function set_name(_v:String):String return null;
        // function get_name():String {
        //     if (__ptr == null) return __inst.getName();
        //     else return __ptr.ref.getName();
        // }
        public function getName():String return __ptr == null ? __inst.getName() : __ptr.ref.getName();
        
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



