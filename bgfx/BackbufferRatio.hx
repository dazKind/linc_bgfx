package bgfx;

@:unreflective
extern enum abstract Native_BackbufferRatio(Native_BackbufferRatioImpl) {
    /**
        Equal to backbuffer.
    **/
    @:native("bgfx_backbuffer_ratio_t::BGFX_BACKBUFFER_RATIO_EQUAL")
    var Equal;
    /**
        One half size of backbuffer.
    **/
    @:native("bgfx_backbuffer_ratio_t::BGFX_BACKBUFFER_RATIO_HALF")
    var Half;
    /**
        One quarter size of backbuffer.
    **/
    @:native("bgfx_backbuffer_ratio_t::BGFX_BACKBUFFER_RATIO_QUARTER")
    var Quarter;
    /**
        One eighth size of backbuffer.
    **/
    @:native("bgfx_backbuffer_ratio_t::BGFX_BACKBUFFER_RATIO_EIGHTH")
    var Eighth;
    /**
        One sixteenth size of backbuffer.
    **/
    @:native("bgfx_backbuffer_ratio_t::BGFX_BACKBUFFER_RATIO_SIXTEENTH")
    var Sixteenth;
    /**
        Double size of backbuffer.
    **/
    @:native("bgfx_backbuffer_ratio_t::BGFX_BACKBUFFER_RATIO_DOUBLE")
    var Double;
    @:native("bgfx_backbuffer_ratio_t::bgfx_backbuffer_ratio_t::BGFX_BACKBUFFER_RATIO_COUNT")
    var Count;
}
@:unreflective
@:native('bgfx_backbuffer_ratio_t')
@:lincCppiaDef('BackbufferRatio', 'enum')
extern class Native_BackbufferRatioImpl { }
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapEnumExtern('Native_BackbufferRatio'))
    enum abstract BackbufferRatio(Int) from Int to Int {}
#else
    typedef BackbufferRatio = Native_BackbufferRatio;
#end
