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
    class CppiaCapsLimits {
        public var __ptr:cpp.Pointer<Native_CapsLimits> = null;
        public var __inst:Native_CapsLimits = new Native_CapsLimits();
        public function new() {}
        
        public var maxDrawCalls(get, set):cpp.UInt32;
        function set_maxDrawCalls(_v:cpp.UInt32):cpp.UInt32 return __ptr == null ? __inst.maxDrawCalls = _v : __ptr.ref.maxDrawCalls = _v;
        function get_maxDrawCalls():cpp.UInt32 return __ptr == null ? __inst.maxDrawCalls : __ptr.ref.maxDrawCalls;
        
        public var maxBlits(get, set):cpp.UInt32;
        function set_maxBlits(_v:cpp.UInt32):cpp.UInt32 return __ptr == null ? __inst.maxBlits = _v : __ptr.ref.maxBlits = _v;
        function get_maxBlits():cpp.UInt32 return __ptr == null ? __inst.maxBlits : __ptr.ref.maxBlits;
        
        public var maxTextureSize(get, set):cpp.UInt32;
        function set_maxTextureSize(_v:cpp.UInt32):cpp.UInt32 return __ptr == null ? __inst.maxTextureSize = _v : __ptr.ref.maxTextureSize = _v;
        function get_maxTextureSize():cpp.UInt32 return __ptr == null ? __inst.maxTextureSize : __ptr.ref.maxTextureSize;
        
        public var maxTextureLayers(get, set):cpp.UInt32;
        function set_maxTextureLayers(_v:cpp.UInt32):cpp.UInt32 return __ptr == null ? __inst.maxTextureLayers = _v : __ptr.ref.maxTextureLayers = _v;
        function get_maxTextureLayers():cpp.UInt32 return __ptr == null ? __inst.maxTextureLayers : __ptr.ref.maxTextureLayers;
        
        public var maxViews(get, set):cpp.UInt32;
        function set_maxViews(_v:cpp.UInt32):cpp.UInt32 return __ptr == null ? __inst.maxViews = _v : __ptr.ref.maxViews = _v;
        function get_maxViews():cpp.UInt32 return __ptr == null ? __inst.maxViews : __ptr.ref.maxViews;
        
        public var maxFrameBuffers(get, set):cpp.UInt32;
        function set_maxFrameBuffers(_v:cpp.UInt32):cpp.UInt32 return __ptr == null ? __inst.maxFrameBuffers = _v : __ptr.ref.maxFrameBuffers = _v;
        function get_maxFrameBuffers():cpp.UInt32 return __ptr == null ? __inst.maxFrameBuffers : __ptr.ref.maxFrameBuffers;
        
        public var maxFBAttachments(get, set):cpp.UInt32;
        function set_maxFBAttachments(_v:cpp.UInt32):cpp.UInt32 return __ptr == null ? __inst.maxFBAttachments = _v : __ptr.ref.maxFBAttachments = _v;
        function get_maxFBAttachments():cpp.UInt32 return __ptr == null ? __inst.maxFBAttachments : __ptr.ref.maxFBAttachments;
        
        public var maxPrograms(get, set):cpp.UInt32;
        function set_maxPrograms(_v:cpp.UInt32):cpp.UInt32 return __ptr == null ? __inst.maxPrograms = _v : __ptr.ref.maxPrograms = _v;
        function get_maxPrograms():cpp.UInt32 return __ptr == null ? __inst.maxPrograms : __ptr.ref.maxPrograms;
        
        public var maxShaders(get, set):cpp.UInt32;
        function set_maxShaders(_v:cpp.UInt32):cpp.UInt32 return __ptr == null ? __inst.maxShaders = _v : __ptr.ref.maxShaders = _v;
        function get_maxShaders():cpp.UInt32 return __ptr == null ? __inst.maxShaders : __ptr.ref.maxShaders;
        
        public var maxTextures(get, set):cpp.UInt32;
        function set_maxTextures(_v:cpp.UInt32):cpp.UInt32 return __ptr == null ? __inst.maxTextures = _v : __ptr.ref.maxTextures = _v;
        function get_maxTextures():cpp.UInt32 return __ptr == null ? __inst.maxTextures : __ptr.ref.maxTextures;
        
        public var maxTextureSamplers(get, set):cpp.UInt32;
        function set_maxTextureSamplers(_v:cpp.UInt32):cpp.UInt32 return __ptr == null ? __inst.maxTextureSamplers = _v : __ptr.ref.maxTextureSamplers = _v;
        function get_maxTextureSamplers():cpp.UInt32 return __ptr == null ? __inst.maxTextureSamplers : __ptr.ref.maxTextureSamplers;
        
        public var maxComputeBindings(get, set):cpp.UInt32;
        function set_maxComputeBindings(_v:cpp.UInt32):cpp.UInt32 return __ptr == null ? __inst.maxComputeBindings = _v : __ptr.ref.maxComputeBindings = _v;
        function get_maxComputeBindings():cpp.UInt32 return __ptr == null ? __inst.maxComputeBindings : __ptr.ref.maxComputeBindings;
        
        public var maxVertexLayouts(get, set):cpp.UInt32;
        function set_maxVertexLayouts(_v:cpp.UInt32):cpp.UInt32 return __ptr == null ? __inst.maxVertexLayouts = _v : __ptr.ref.maxVertexLayouts = _v;
        function get_maxVertexLayouts():cpp.UInt32 return __ptr == null ? __inst.maxVertexLayouts : __ptr.ref.maxVertexLayouts;
        
        public var maxVertexStreams(get, set):cpp.UInt32;
        function set_maxVertexStreams(_v:cpp.UInt32):cpp.UInt32 return __ptr == null ? __inst.maxVertexStreams = _v : __ptr.ref.maxVertexStreams = _v;
        function get_maxVertexStreams():cpp.UInt32 return __ptr == null ? __inst.maxVertexStreams : __ptr.ref.maxVertexStreams;
        
        public var maxIndexBuffers(get, set):cpp.UInt32;
        function set_maxIndexBuffers(_v:cpp.UInt32):cpp.UInt32 return __ptr == null ? __inst.maxIndexBuffers = _v : __ptr.ref.maxIndexBuffers = _v;
        function get_maxIndexBuffers():cpp.UInt32 return __ptr == null ? __inst.maxIndexBuffers : __ptr.ref.maxIndexBuffers;
        
        public var maxVertexBuffers(get, set):cpp.UInt32;
        function set_maxVertexBuffers(_v:cpp.UInt32):cpp.UInt32 return __ptr == null ? __inst.maxVertexBuffers = _v : __ptr.ref.maxVertexBuffers = _v;
        function get_maxVertexBuffers():cpp.UInt32 return __ptr == null ? __inst.maxVertexBuffers : __ptr.ref.maxVertexBuffers;
        
        public var maxDynamicIndexBuffers(get, set):cpp.UInt32;
        function set_maxDynamicIndexBuffers(_v:cpp.UInt32):cpp.UInt32 return __ptr == null ? __inst.maxDynamicIndexBuffers = _v : __ptr.ref.maxDynamicIndexBuffers = _v;
        function get_maxDynamicIndexBuffers():cpp.UInt32 return __ptr == null ? __inst.maxDynamicIndexBuffers : __ptr.ref.maxDynamicIndexBuffers;
        
        public var maxDynamicVertexBuffers(get, set):cpp.UInt32;
        function set_maxDynamicVertexBuffers(_v:cpp.UInt32):cpp.UInt32 return __ptr == null ? __inst.maxDynamicVertexBuffers = _v : __ptr.ref.maxDynamicVertexBuffers = _v;
        function get_maxDynamicVertexBuffers():cpp.UInt32 return __ptr == null ? __inst.maxDynamicVertexBuffers : __ptr.ref.maxDynamicVertexBuffers;
        
        public var maxUniforms(get, set):cpp.UInt32;
        function set_maxUniforms(_v:cpp.UInt32):cpp.UInt32 return __ptr == null ? __inst.maxUniforms = _v : __ptr.ref.maxUniforms = _v;
        function get_maxUniforms():cpp.UInt32 return __ptr == null ? __inst.maxUniforms : __ptr.ref.maxUniforms;
        
        public var maxOcclusionQueries(get, set):cpp.UInt32;
        function set_maxOcclusionQueries(_v:cpp.UInt32):cpp.UInt32 return __ptr == null ? __inst.maxOcclusionQueries = _v : __ptr.ref.maxOcclusionQueries = _v;
        function get_maxOcclusionQueries():cpp.UInt32 return __ptr == null ? __inst.maxOcclusionQueries : __ptr.ref.maxOcclusionQueries;
        
        public var maxEncoders(get, set):cpp.UInt32;
        function set_maxEncoders(_v:cpp.UInt32):cpp.UInt32 return __ptr == null ? __inst.maxEncoders = _v : __ptr.ref.maxEncoders = _v;
        function get_maxEncoders():cpp.UInt32 return __ptr == null ? __inst.maxEncoders : __ptr.ref.maxEncoders;
        
        public var minResourceCbSize(get, set):cpp.UInt32;
        function set_minResourceCbSize(_v:cpp.UInt32):cpp.UInt32 return __ptr == null ? __inst.minResourceCbSize = _v : __ptr.ref.minResourceCbSize = _v;
        function get_minResourceCbSize():cpp.UInt32 return __ptr == null ? __inst.minResourceCbSize : __ptr.ref.minResourceCbSize;
        
        public var transientVbSize(get, set):cpp.UInt32;
        function set_transientVbSize(_v:cpp.UInt32):cpp.UInt32 return __ptr == null ? __inst.transientVbSize = _v : __ptr.ref.transientVbSize = _v;
        function get_transientVbSize():cpp.UInt32 return __ptr == null ? __inst.transientVbSize : __ptr.ref.transientVbSize;
        
        public var transientIbSize(get, set):cpp.UInt32;
        function set_transientIbSize(_v:cpp.UInt32):cpp.UInt32 return __ptr == null ? __inst.transientIbSize = _v : __ptr.ref.transientIbSize = _v;
        function get_transientIbSize():cpp.UInt32 return __ptr == null ? __inst.transientIbSize : __ptr.ref.transientIbSize;
        
        
    }
    typedef CapsLimits = CppiaCapsLimits;
#else
    typedef CapsLimits = Native_CapsLimits;
#end



