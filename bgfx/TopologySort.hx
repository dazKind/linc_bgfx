package bgfx;

@:unreflective
extern enum abstract Native_TopologySort(Native_TopologySortImpl) {
    @:native("bgfx_topology_sort_t::BGFX_TOPOLOGY_SORT_DIRECTIONFRONTTOBACKMIN")
    var DirectionFrontToBackMin;
    @:native("bgfx_topology_sort_t::BGFX_TOPOLOGY_SORT_DIRECTIONFRONTTOBACKAVG")
    var DirectionFrontToBackAvg;
    @:native("bgfx_topology_sort_t::BGFX_TOPOLOGY_SORT_DIRECTIONFRONTTOBACKMAX")
    var DirectionFrontToBackMax;
    @:native("bgfx_topology_sort_t::BGFX_TOPOLOGY_SORT_DIRECTIONBACKTOFRONTMIN")
    var DirectionBackToFrontMin;
    @:native("bgfx_topology_sort_t::BGFX_TOPOLOGY_SORT_DIRECTIONBACKTOFRONTAVG")
    var DirectionBackToFrontAvg;
    @:native("bgfx_topology_sort_t::BGFX_TOPOLOGY_SORT_DIRECTIONBACKTOFRONTMAX")
    var DirectionBackToFrontMax;
    @:native("bgfx_topology_sort_t::BGFX_TOPOLOGY_SORT_DISTANCEFRONTTOBACKMIN")
    var DistanceFrontToBackMin;
    @:native("bgfx_topology_sort_t::BGFX_TOPOLOGY_SORT_DISTANCEFRONTTOBACKAVG")
    var DistanceFrontToBackAvg;
    @:native("bgfx_topology_sort_t::BGFX_TOPOLOGY_SORT_DISTANCEFRONTTOBACKMAX")
    var DistanceFrontToBackMax;
    @:native("bgfx_topology_sort_t::BGFX_TOPOLOGY_SORT_DISTANCEBACKTOFRONTMIN")
    var DistanceBackToFrontMin;
    @:native("bgfx_topology_sort_t::BGFX_TOPOLOGY_SORT_DISTANCEBACKTOFRONTAVG")
    var DistanceBackToFrontAvg;
    @:native("bgfx_topology_sort_t::BGFX_TOPOLOGY_SORT_DISTANCEBACKTOFRONTMAX")
    var DistanceBackToFrontMax;
    @:native("bgfx_topology_sort_t::bgfx_topology_sort_t::BGFX_TOPOLOGY_SORT_COUNT")
    var Count;
}
@:unreflective
@:native('bgfx_topology_sort_t')
@:lincCppiaDef('TopologySort', 'enum')
extern class Native_TopologySortImpl { }
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapEnumExtern('Native_TopologySort'))
    enum abstract TopologySort(Int) from Int to Int {}
#else
    typedef TopologySort = Native_TopologySort;
#end
