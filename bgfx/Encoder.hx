package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('bgfx_encoder_t')
extern class Native_Encoder {
    public function new();
}
#if (scriptable || cppia)
    class Encoder {
    }
#else
    typedef Encoder = Native_Encoder;
#end



