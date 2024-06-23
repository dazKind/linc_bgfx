package bgfx;

@:unreflective
extern enum abstract Native_ViewMode(Native_ViewModeImpl) {
    /**
        Default sort order.
    **/
    @:native("bgfx_view_mode_t::BGFX_VIEW_MODE_DEFAULT")
    var Default;
    /**
        Sort in the same order in which submit calls were called.
    **/
    @:native("bgfx_view_mode_t::BGFX_VIEW_MODE_SEQUENTIAL")
    var Sequential;
    /**
        Sort draw call depth in ascending order.
    **/
    @:native("bgfx_view_mode_t::BGFX_VIEW_MODE_DEPTHASCENDING")
    var DepthAscending;
    /**
        Sort draw call depth in descending order.
    **/
    @:native("bgfx_view_mode_t::BGFX_VIEW_MODE_DEPTHDESCENDING")
    var DepthDescending;
    @:native("bgfx_view_mode_t::BGFX_VIEW_MODE_COUNT")
    var Count;
}
@:unreflective
@:native('bgfx_view_mode_t')
@:lincCppiaDef('ViewMode', 'enum')
extern class Native_ViewModeImpl { }
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapEnumExtern('Native_ViewMode'))
    enum abstract ViewMode(Int) from Int to Int {}
#else
    typedef ViewMode = Native_ViewMode;
#end
