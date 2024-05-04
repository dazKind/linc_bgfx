package bgfx;

@:unreflective
extern enum abstract Native_Topology(Native_TopologyImpl) {
    /**
        Triangle list.
    **/
    @:native("bgfx_topology_t::BGFX_TOPOLOGY_TRILIST")
    var TriList;
    /**
        Triangle strip.
    **/
    @:native("bgfx_topology_t::BGFX_TOPOLOGY_TRISTRIP")
    var TriStrip;
    /**
        Line list.
    **/
    @:native("bgfx_topology_t::BGFX_TOPOLOGY_LINELIST")
    var LineList;
    /**
        Line strip.
    **/
    @:native("bgfx_topology_t::BGFX_TOPOLOGY_LINESTRIP")
    var LineStrip;
    /**
        Point list.
    **/
    @:native("bgfx_topology_t::BGFX_TOPOLOGY_POINTLIST")
    var PointList;
    @:native("bgfx_topology_t::bgfx_topology_t::BGFX_TOPOLOGY_COUNT")
    var Count;
}
@:unreflective
@:native('bgfx_topology_t')
@:lincCppiaDef('Topology', 'enum')
extern class Native_TopologyImpl { }
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapEnumExtern('Native_Topology'))
    enum abstract Topology(Int) from Int to Int {}
#else
    typedef Topology = Native_Topology;
#end
