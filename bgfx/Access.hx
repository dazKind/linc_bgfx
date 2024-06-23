package bgfx;

@:unreflective
extern enum abstract Native_Access(Native_AccessImpl) {
    /**
        Read.
    **/
    @:native("bgfx_access_t::BGFX_ACCESS_READ")
    var Read;
    /**
        Write.
    **/
    @:native("bgfx_access_t::BGFX_ACCESS_WRITE")
    var Write;
    /**
        Read and write.
    **/
    @:native("bgfx_access_t::BGFX_ACCESS_READWRITE")
    var ReadWrite;
    @:native("bgfx_access_t::BGFX_ACCESS_COUNT")
    var Count;
}
@:unreflective
@:native('bgfx_access_t')
@:lincCppiaDef('Access', 'enum')
extern class Native_AccessImpl { }
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapEnumExtern('Native_Access'))
    enum abstract Access(Int) from Int to Int {}
#else
    typedef Access = Native_Access;
#end
