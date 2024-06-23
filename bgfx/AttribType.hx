package bgfx;

@:unreflective
extern enum abstract Native_AttribType(Native_AttribTypeImpl) {
    /**
        Uint8
    **/
    @:native("bgfx_attrib_type_t::BGFX_ATTRIB_TYPE_UINT8")
    var Uint8;
    /**
        Uint10, availability depends on: `BGFX_CAPS_VERTEX_ATTRIB_UINT10`.
    **/
    @:native("bgfx_attrib_type_t::BGFX_ATTRIB_TYPE_UINT10")
    var Uint10;
    /**
        Int16
    **/
    @:native("bgfx_attrib_type_t::BGFX_ATTRIB_TYPE_INT16")
    var Int16;
    /**
        Half, availability depends on: `BGFX_CAPS_VERTEX_ATTRIB_HALF`.
    **/
    @:native("bgfx_attrib_type_t::BGFX_ATTRIB_TYPE_HALF")
    var Half;
    /**
        Float
    **/
    @:native("bgfx_attrib_type_t::BGFX_ATTRIB_TYPE_FLOAT")
    var Float;
    @:native("bgfx_attrib_type_t::BGFX_ATTRIB_TYPE_COUNT")
    var Count;
}
@:unreflective
@:native('bgfx_attrib_type_t')
@:lincCppiaDef('AttribType', 'enum')
extern class Native_AttribTypeImpl { }
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapEnumExtern('Native_AttribType'))
    enum abstract AttribType(Int) from Int to Int {}
#else
    typedef AttribType = Native_AttribType;
#end
