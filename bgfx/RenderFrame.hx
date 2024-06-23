package bgfx;

@:unreflective
extern enum abstract Native_RenderFrame(Native_RenderFrameImpl) {
    /**
        Renderer context is not created yet.
    **/
    @:native("bgfx_render_frame_t::BGFX_RENDER_FRAME_NOCONTEXT")
    var NoContext;
    /**
        Renderer context is created and rendering.
    **/
    @:native("bgfx_render_frame_t::BGFX_RENDER_FRAME_RENDER")
    var Render;
    /**
        Renderer context wait for main thread signal timed out without rendering.
    **/
    @:native("bgfx_render_frame_t::BGFX_RENDER_FRAME_TIMEOUT")
    var Timeout;
    /**
        Renderer context is getting destroyed.
    **/
    @:native("bgfx_render_frame_t::BGFX_RENDER_FRAME_EXITING")
    var Exiting;
    @:native("bgfx_render_frame_t::BGFX_RENDER_FRAME_COUNT")
    var Count;
}
@:unreflective
@:native('bgfx_render_frame_t')
@:lincCppiaDef('RenderFrame', 'enum')
extern class Native_RenderFrameImpl { }
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapEnumExtern('Native_RenderFrame'))
    enum abstract RenderFrame(Int) from Int to Int {}
#else
    typedef RenderFrame = Native_RenderFrame;
#end
