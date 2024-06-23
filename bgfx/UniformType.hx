package bgfx;

@:unreflective
extern enum abstract Native_UniformType(Native_UniformTypeImpl) {
    /**
        Sampler.
    **/
    @:native("bgfx_uniform_type_t::BGFX_UNIFORM_TYPE_SAMPLER")
    var Sampler;
    /**
        Reserved, do not use.
    **/
    @:native("bgfx_uniform_type_t::BGFX_UNIFORM_TYPE_END")
    var End;
    /**
        4 floats vector.
    **/
    @:native("bgfx_uniform_type_t::BGFX_UNIFORM_TYPE_VEC4")
    var Vec4;
    /**
        3x3 matrix.
    **/
    @:native("bgfx_uniform_type_t::BGFX_UNIFORM_TYPE_MAT3")
    var Mat3;
    /**
        4x4 matrix.
    **/
    @:native("bgfx_uniform_type_t::BGFX_UNIFORM_TYPE_MAT4")
    var Mat4;
    @:native("bgfx_uniform_type_t::BGFX_UNIFORM_TYPE_COUNT")
    var Count;
}
@:unreflective
@:native('bgfx_uniform_type_t')
@:lincCppiaDef('UniformType', 'enum')
extern class Native_UniformTypeImpl { }
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapEnumExtern('Native_UniformType'))
    enum abstract UniformType(Int) from Int to Int {}
#else
    typedef UniformType = Native_UniformType;
#end
