package bgfx;

@:unreflective
extern enum abstract Native_RendererType(Native_RendererTypeImpl) {
    /**
        No rendering.
    **/
    @:native("bgfx_renderer_type_t::BGFX_RENDERER_TYPE_NOOP")
    var Noop;
    /**
        AGC
    **/
    @:native("bgfx_renderer_type_t::BGFX_RENDERER_TYPE_AGC")
    var Agc;
    /**
        Direct3D 11.0
    **/
    @:native("bgfx_renderer_type_t::BGFX_RENDERER_TYPE_DIRECT3D11")
    var Direct3D11;
    /**
        Direct3D 12.0
    **/
    @:native("bgfx_renderer_type_t::BGFX_RENDERER_TYPE_DIRECT3D12")
    var Direct3D12;
    /**
        GNM
    **/
    @:native("bgfx_renderer_type_t::BGFX_RENDERER_TYPE_GNM")
    var Gnm;
    /**
        Metal
    **/
    @:native("bgfx_renderer_type_t::BGFX_RENDERER_TYPE_METAL")
    var Metal;
    /**
        NVN
    **/
    @:native("bgfx_renderer_type_t::BGFX_RENDERER_TYPE_NVN")
    var Nvn;
    /**
        OpenGL ES 2.0+
    **/
    @:native("bgfx_renderer_type_t::BGFX_RENDERER_TYPE_OPENGLES")
    var OpenGLES;
    /**
        OpenGL 2.1+
    **/
    @:native("bgfx_renderer_type_t::BGFX_RENDERER_TYPE_OPENGL")
    var OpenGL;
    /**
        Vulkan
    **/
    @:native("bgfx_renderer_type_t::BGFX_RENDERER_TYPE_VULKAN")
    var Vulkan;
    @:native("bgfx_renderer_type_t::bgfx_renderer_type_t::BGFX_RENDERER_TYPE_COUNT")
    var Count;
}
@:unreflective
@:native('bgfx_renderer_type_t')
@:lincCppiaDef('RendererType', 'enum')
extern class Native_RendererTypeImpl { }
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapEnumExtern('Native_RendererType'))
    enum abstract RendererType(Int) from Int to Int {}
#else
    typedef RendererType = Native_RendererType;
#end
