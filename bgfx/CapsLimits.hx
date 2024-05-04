package bgfx;



@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native('bgfx_caps_limits_t')
extern class Native_CapsLimits {
    public function new();
    var maxDrawCalls:cpp.UInt32; // uint32_t
    var maxBlits:cpp.UInt32; // uint32_t
    var maxTextureSize:cpp.UInt32; // uint32_t
    var maxTextureLayers:cpp.UInt32; // uint32_t
    var maxViews:cpp.UInt32; // uint32_t
    var maxFrameBuffers:cpp.UInt32; // uint32_t
    var maxFBAttachments:cpp.UInt32; // uint32_t
    var maxPrograms:cpp.UInt32; // uint32_t
    var maxShaders:cpp.UInt32; // uint32_t
    var maxTextures:cpp.UInt32; // uint32_t
    var maxTextureSamplers:cpp.UInt32; // uint32_t
    var maxComputeBindings:cpp.UInt32; // uint32_t
    var maxVertexLayouts:cpp.UInt32; // uint32_t
    var maxVertexStreams:cpp.UInt32; // uint32_t
    var maxIndexBuffers:cpp.UInt32; // uint32_t
    var maxVertexBuffers:cpp.UInt32; // uint32_t
    var maxDynamicIndexBuffers:cpp.UInt32; // uint32_t
    var maxDynamicVertexBuffers:cpp.UInt32; // uint32_t
    var maxUniforms:cpp.UInt32; // uint32_t
    var maxOcclusionQueries:cpp.UInt32; // uint32_t
    var maxEncoders:cpp.UInt32; // uint32_t
    var minResourceCbSize:cpp.UInt32; // uint32_t
    var transientVbSize:cpp.UInt32; // uint32_t
    var transientIbSize:cpp.UInt32; // uint32_t
}
#if (scriptable || cppia)
    class CapsLimits {
    }
#else
    typedef CapsLimits = Native_CapsLimits;
#end



