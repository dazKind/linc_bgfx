package bgfx;

@:unreflective
extern enum abstract Native_OcclusionQueryResult(Native_OcclusionQueryResultImpl) {
    /**
        Query failed test.
    **/
    @:native("bgfx_occlusion_query_result_t::BGFX_OCCLUSION_QUERY_RESULT_INVISIBLE")
    var Invisible;
    /**
        Query passed test.
    **/
    @:native("bgfx_occlusion_query_result_t::BGFX_OCCLUSION_QUERY_RESULT_VISIBLE")
    var Visible;
    /**
        Query result is not available yet.
    **/
    @:native("bgfx_occlusion_query_result_t::BGFX_OCCLUSION_QUERY_RESULT_NORESULT")
    var NoResult;
    @:native("bgfx_occlusion_query_result_t::BGFX_OCCLUSION_QUERY_RESULT_COUNT")
    var Count;
}
@:unreflective
@:native('bgfx_occlusion_query_result_t')
@:lincCppiaDef('OcclusionQueryResult', 'enum')
extern class Native_OcclusionQueryResultImpl { }
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapEnumExtern('Native_OcclusionQueryResult'))
    enum abstract OcclusionQueryResult(Int) from Int to Int {}
#else
    typedef OcclusionQueryResult = Native_OcclusionQueryResult;
#end
