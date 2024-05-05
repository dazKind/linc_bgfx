package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('bgfx_internal_data_t')
extern class Native_InternalData {
    public function new();
    var caps:cpp.ConstStar<bgfx.Caps.Native_Caps>; // const Caps*
    var context:cpp.Star<cpp.Void>; // void*
}
#if (scriptable || cppia)
    class CppiaInternalData {
        public var __ptr:cpp.Pointer<Native_InternalData> = null;
        public var __inst:Native_InternalData = new Native_InternalData();
        public function new() {}
        
        public var caps(get, set):Caps;
        function set_caps(_v:Caps):Caps { return null; }
        function get_caps():Caps { final res = Type.createEmptyInstance(Caps); res.__inst = cpp.Pointer.fromStar(__inst.caps).ref; return res; }
        
        public var context(get, set):cpp.Pointer<cpp.Void>;
        function set_context(_v:cpp.Pointer<cpp.Void>):cpp.Pointer<cpp.Void> return __ptr == null ? cast __inst.context = cast _v : cast __ptr.ref.context = cast _v;
        function get_context():cpp.Pointer<cpp.Void> return __ptr == null ? cast __inst.context : cast __ptr.ref.context;
        
        
    }
    typedef InternalData = CppiaInternalData;
#else
    typedef InternalData = Native_InternalData;
#end



