package bgfx;



@:structAccess
@:unreflective
@:include('linc_bgfx.h')
@:include('bgfx/c99/bgfx.h')
@:native('bgfx_encoder_t')
extern class Native_Encoder {
    public function new();
}
#if (scriptable || cppia)
    class CppiaEncoder {
        public var __ptr:cpp.Pointer<Native_Encoder> = null;
        public var __inst:Native_Encoder = new Native_Encoder();
        public function new() {}
    }
    typedef Encoder = CppiaEncoder;
#else
    typedef Encoder = Native_Encoder;
#end



