package bgfx;

@:unreflective
extern enum abstract Native_TopologyConvert(Native_TopologyConvertImpl) {
    /**
        Flip winding order of triangle list.
    **/
    @:native("bgfx_topology_convert_t::BGFX_TOPOLOGY_CONVERT_TRILISTFLIPWINDING")
    var TriListFlipWinding;
    /**
        Flip winding order of triangle strip.
    **/
    @:native("bgfx_topology_convert_t::BGFX_TOPOLOGY_CONVERT_TRISTRIPFLIPWINDING")
    var TriStripFlipWinding;
    /**
        Convert triangle list to line list.
    **/
    @:native("bgfx_topology_convert_t::BGFX_TOPOLOGY_CONVERT_TRILISTTOLINELIST")
    var TriListToLineList;
    /**
        Convert triangle strip to triangle list.
    **/
    @:native("bgfx_topology_convert_t::BGFX_TOPOLOGY_CONVERT_TRISTRIPTOTRILIST")
    var TriStripToTriList;
    /**
        Convert line strip to line list.
    **/
    @:native("bgfx_topology_convert_t::BGFX_TOPOLOGY_CONVERT_LINESTRIPTOLINELIST")
    var LineStripToLineList;
    @:native("bgfx_topology_convert_t::bgfx_topology_convert_t::BGFX_TOPOLOGY_CONVERT_COUNT")
    var Count;
}
@:unreflective
@:native('bgfx_topology_convert_t')
@:lincCppiaDef('TopologyConvert', 'enum')
extern class Native_TopologyConvertImpl { }
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapEnumExtern('Native_TopologyConvert'))
    enum abstract TopologyConvert(Int) from Int to Int {}
#else
    typedef TopologyConvert = Native_TopologyConvert;
#end
