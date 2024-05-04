package bimg;

@:structAccess
@:unreflective
@:include('bgfx/c99/bgfx.h')
@:native("bgfx_caps_t")
extern class Native_ImageContainer {
    public function new();
    // bx::AllocatorI* m_allocator;
	var m_data:cpp.Star<cpp.Void>;

	// TextureFormat::Enum m_format;
	// Orientation::Enum m_orientation;

	var m_size:cpp.UInt32;
	var m_offset:cpp.UInt32;
	var m_width:cpp.UInt32;
	var m_height:cpp.UInt32;
	var m_depth:cpp.UInt32;
	var m_numLayers:cpp.UInt16;
	var m_numMips:cpp.UInt8;
	var m_hasAlpha:Bool;
	var m_cubeMap:Bool;
	var m_ktx:Bool;
	var m_ktxLE:Bool;
	var m_pvr3:Bool;
	var m_srgb:Bool;
}
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapStructExtern('Native_Caps'))
//     class Caps {}
// #else
    typedef ImageContainer = Native_ImageContainer;
// #end

@:include('bimg/bimg.h')
extern class Bimg {
    inline public static function imageParse(_imgCon:cpp.Star<ImageContainer>, _src:cpp.Star<cpp.Void>, _size:cpp.Int32):Bool {
        return untyped __cpp__('bimg::imageParse({0}, {1}, {2}, nullptr)', _imgCon, _src, _size);
    }

	@:native("bimg::imageFree")
	extern public static function imageFree(_imgCon:cpp.Star<ImageContainer>):Void;

	@:native("bimg::imageCheckerboard")
	extern public static function imageFree(_dst:cpp.Star<cpp.Void>, _w:cpp.Int32, _h:cpp.Int32, _step:cpp.Int32. _c0:cpp.Int32, _c1:cpp.Int32):Void;
}