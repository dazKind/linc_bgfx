package bgfx;

@:unreflective
extern enum abstract Native_Fatal(Native_FatalImpl) {
    @:native("bgfx_fatal_t::BGFX_FATAL_DEBUGCHECK")
    var DebugCheck;
    @:native("bgfx_fatal_t::BGFX_FATAL_INVALIDSHADER")
    var InvalidShader;
    @:native("bgfx_fatal_t::BGFX_FATAL_UNABLETOINITIALIZE")
    var UnableToInitialize;
    @:native("bgfx_fatal_t::BGFX_FATAL_UNABLETOCREATETEXTURE")
    var UnableToCreateTexture;
    @:native("bgfx_fatal_t::BGFX_FATAL_DEVICELOST")
    var DeviceLost;
    @:native("bgfx_fatal_t::BGFX_FATAL_COUNT")
    var Count;
}
@:unreflective
@:native('bgfx_fatal_t')
@:lincCppiaDef('Fatal', 'enum')
extern class Native_FatalImpl { }
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapEnumExtern('Native_Fatal'))
    enum abstract Fatal(Int) from Int to Int {}
#else
    typedef Fatal = Native_Fatal;
#end
