package bgfx;

@:unreflective
extern enum abstract Native_Attrib(Native_AttribImpl) {
    /**
        a_position
    **/
    @:native("bgfx_attrib_t::BGFX_ATTRIB_POSITION")
    var Position;
    /**
        a_normal
    **/
    @:native("bgfx_attrib_t::BGFX_ATTRIB_NORMAL")
    var Normal;
    /**
        a_tangent
    **/
    @:native("bgfx_attrib_t::BGFX_ATTRIB_TANGENT")
    var Tangent;
    /**
        a_bitangent
    **/
    @:native("bgfx_attrib_t::BGFX_ATTRIB_BITANGENT")
    var Bitangent;
    /**
        a_color0
    **/
    @:native("bgfx_attrib_t::BGFX_ATTRIB_COLOR0")
    var Color0;
    /**
        a_color1
    **/
    @:native("bgfx_attrib_t::BGFX_ATTRIB_COLOR1")
    var Color1;
    /**
        a_color2
    **/
    @:native("bgfx_attrib_t::BGFX_ATTRIB_COLOR2")
    var Color2;
    /**
        a_color3
    **/
    @:native("bgfx_attrib_t::BGFX_ATTRIB_COLOR3")
    var Color3;
    /**
        a_indices
    **/
    @:native("bgfx_attrib_t::BGFX_ATTRIB_INDICES")
    var Indices;
    /**
        a_weight
    **/
    @:native("bgfx_attrib_t::BGFX_ATTRIB_WEIGHT")
    var Weight;
    /**
        a_texcoord0
    **/
    @:native("bgfx_attrib_t::BGFX_ATTRIB_TEXCOORD0")
    var TexCoord0;
    /**
        a_texcoord1
    **/
    @:native("bgfx_attrib_t::BGFX_ATTRIB_TEXCOORD1")
    var TexCoord1;
    /**
        a_texcoord2
    **/
    @:native("bgfx_attrib_t::BGFX_ATTRIB_TEXCOORD2")
    var TexCoord2;
    /**
        a_texcoord3
    **/
    @:native("bgfx_attrib_t::BGFX_ATTRIB_TEXCOORD3")
    var TexCoord3;
    /**
        a_texcoord4
    **/
    @:native("bgfx_attrib_t::BGFX_ATTRIB_TEXCOORD4")
    var TexCoord4;
    /**
        a_texcoord5
    **/
    @:native("bgfx_attrib_t::BGFX_ATTRIB_TEXCOORD5")
    var TexCoord5;
    /**
        a_texcoord6
    **/
    @:native("bgfx_attrib_t::BGFX_ATTRIB_TEXCOORD6")
    var TexCoord6;
    /**
        a_texcoord7
    **/
    @:native("bgfx_attrib_t::BGFX_ATTRIB_TEXCOORD7")
    var TexCoord7;
    @:native("bgfx_attrib_t::bgfx_attrib_t::BGFX_ATTRIB_COUNT")
    var Count;
}
@:unreflective
@:native('bgfx_attrib_t')
@:lincCppiaDef('Attrib', 'enum')
extern class Native_AttribImpl { }
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapEnumExtern('Native_Attrib'))
    enum abstract Attrib(Int) from Int to Int {}
#else
    typedef Attrib = Native_Attrib;
#end
