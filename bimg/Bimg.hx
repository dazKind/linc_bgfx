package bimg;

@:unreflective
extern enum abstract Native_TextureFormat(Native_TextureFormatImpl) {
    /**
        DXT1 R5G6B5A1
    **/
    @:native("bimg::TextureFormat::Enum::BC1")
    var BC1;
    /**
        DXT3 R5G6B5A4
    **/
    @:native("bimg::TextureFormat::Enum::BC2")
    var BC2;
    /**
        DXT5 R5G6B5A8
    **/
    @:native("bimg::TextureFormat::Enum::BC3")
    var BC3;
    /**
        LATC1/ATI1 R8
    **/
    @:native("bimg::TextureFormat::Enum::BC4")
    var BC4;
    /**
        LATC2/ATI2 RG8
    **/
    @:native("bimg::TextureFormat::Enum::BC5")
    var BC5;
    /**
        BC6H RGB16F
    **/
    @:native("bimg::TextureFormat::Enum::BC6H")
    var BC6H;
    /**
        BC7 RGB 4-7 bits per color channel, 0-8 bits alpha
    **/
    @:native("bimg::TextureFormat::Enum::BC7")
    var BC7;
    /**
        ETC1 RGB8
    **/
    @:native("bimg::TextureFormat::Enum::ETC1")
    var ETC1;
    /**
        ETC2 RGB8
    **/
    @:native("bimg::TextureFormat::Enum::ETC2")
    var ETC2;
    /**
        ETC2 RGBA8
    **/
    @:native("bimg::TextureFormat::Enum::ETC2A")
    var ETC2A;
    /**
        ETC2 RGB8A1
    **/
    @:native("bimg::TextureFormat::Enum::ETC2A1")
    var ETC2A1;
    /**
        PVRTC1 RGB 2BPP
    **/
    @:native("bimg::TextureFormat::Enum::PTC12")
    var PTC12;
    /**
        PVRTC1 RGB 4BPP
    **/
    @:native("bimg::TextureFormat::Enum::PTC14")
    var PTC14;
    /**
        PVRTC1 RGBA 2BPP
    **/
    @:native("bimg::TextureFormat::Enum::PTC12A")
    var PTC12A;
    /**
        PVRTC1 RGBA 4BPP
    **/
    @:native("bimg::TextureFormat::Enum::PTC14A")
    var PTC14A;
    /**
        PVRTC2 RGBA 2BPP
    **/
    @:native("bimg::TextureFormat::Enum::PTC22")
    var PTC22;
    /**
        PVRTC2 RGBA 4BPP
    **/
    @:native("bimg::TextureFormat::Enum::PTC24")
    var PTC24;
    /**
        ATC RGB 4BPP
    **/
    @:native("bimg::TextureFormat::Enum::ATC")
    var ATC;
    /**
        ATCE RGBA 8 BPP explicit alpha
    **/
    @:native("bimg::TextureFormat::Enum::ATCE")
    var ATCE;
    /**
        ATCI RGBA 8 BPP interpolated alpha
    **/
    @:native("bimg::TextureFormat::Enum::ATCI")
    var ATCI;
    /**
        ASTC 4x4 8.0 BPP
    **/
    @:native("bimg::TextureFormat::Enum::ASTC4X4")
    var ASTC4x4;
    /**
        ASTC 5x4 6.40 BPP
    **/
    @:native("bimg::TextureFormat::Enum::ASTC5X4")
    var ASTC5x4;
    /**
        ASTC 5x5 5.12 BPP
    **/
    @:native("bimg::TextureFormat::Enum::ASTC5X5")
    var ASTC5x5;
    /**
        ASTC 6x5 4.27 BPP
    **/
    @:native("bimg::TextureFormat::Enum::ASTC6X5")
    var ASTC6x5;
    /**
        ASTC 6x6 3.56 BPP
    **/
    @:native("bimg::TextureFormat::Enum::ASTC6X6")
    var ASTC6x6;
    /**
        ASTC 8x5 3.20 BPP
    **/
    @:native("bimg::TextureFormat::Enum::ASTC8X5")
    var ASTC8x5;
    /**
        ASTC 8x6 2.67 BPP
    **/
    @:native("bimg::TextureFormat::Enum::ASTC8X6")
    var ASTC8x6;
    /**
        ASTC 8x8 2.00 BPP
    **/
    @:native("bimg::TextureFormat::Enum::ASTC8X8")
    var ASTC8x8;
    /**
        ASTC 10x5 2.56 BPP
    **/
    @:native("bimg::TextureFormat::Enum::ASTC10X5")
    var ASTC10x5;
    /**
        ASTC 10x6 2.13 BPP
    **/
    @:native("bimg::TextureFormat::Enum::ASTC10X6")
    var ASTC10x6;
    /**
        ASTC 10x8 1.60 BPP
    **/
    @:native("bimg::TextureFormat::Enum::ASTC10X8")
    var ASTC10x8;
    /**
        ASTC 10x10 1.28 BPP
    **/
    @:native("bimg::TextureFormat::Enum::ASTC10X10")
    var ASTC10x10;
    /**
        ASTC 12x10 1.07 BPP
    **/
    @:native("bimg::TextureFormat::Enum::ASTC12X10")
    var ASTC12x10;
    /**
        ASTC 12x12 0.89 BPP
    **/
    @:native("bimg::TextureFormat::Enum::ASTC12X12")
    var ASTC12x12;
    /**
        Compressed formats above.
    **/
    @:native("bimg::TextureFormat::Enum::Unknown")
    var Unknown;
    @:native("bimg::TextureFormat::Enum::R1")
    var R1;
    @:native("bimg::TextureFormat::Enum::A8")
    var A8;
    @:native("bimg::TextureFormat::Enum::R8")
    var R8;
    @:native("bimg::TextureFormat::Enum::R8I")
    var R8I;
    @:native("bimg::TextureFormat::Enum::R8U")
    var R8U;
    @:native("bimg::TextureFormat::Enum::R8S")
    var R8S;
    @:native("bimg::TextureFormat::Enum::R16")
    var R16;
    @:native("bimg::TextureFormat::Enum::R16I")
    var R16I;
    @:native("bimg::TextureFormat::Enum::R16U")
    var R16U;
    @:native("bimg::TextureFormat::Enum::R16F")
    var R16F;
    @:native("bimg::TextureFormat::Enum::R16S")
    var R16S;
    @:native("bimg::TextureFormat::Enum::R32I")
    var R32I;
    @:native("bimg::TextureFormat::Enum::R32U")
    var R32U;
    @:native("bimg::TextureFormat::Enum::R32F")
    var R32F;
    @:native("bimg::TextureFormat::Enum::RG8")
    var RG8;
    @:native("bimg::TextureFormat::Enum::RG8I")
    var RG8I;
    @:native("bimg::TextureFormat::Enum::RG8U")
    var RG8U;
    @:native("bimg::TextureFormat::Enum::RG8S")
    var RG8S;
    @:native("bimg::TextureFormat::Enum::RG16")
    var RG16;
    @:native("bimg::TextureFormat::Enum::RG16I")
    var RG16I;
    @:native("bimg::TextureFormat::Enum::RG16U")
    var RG16U;
    @:native("bimg::TextureFormat::Enum::RG16F")
    var RG16F;
    @:native("bimg::TextureFormat::Enum::RG16S")
    var RG16S;
    @:native("bimg::TextureFormat::Enum::RG32I")
    var RG32I;
    @:native("bimg::TextureFormat::Enum::RG32U")
    var RG32U;
    @:native("bimg::TextureFormat::Enum::RG32F")
    var RG32F;
    @:native("bimg::TextureFormat::Enum::RGB8")
    var RGB8;
    @:native("bimg::TextureFormat::Enum::RGB8I")
    var RGB8I;
    @:native("bimg::TextureFormat::Enum::RGB8U")
    var RGB8U;
    @:native("bimg::TextureFormat::Enum::RGB8S")
    var RGB8S;
    @:native("bimg::TextureFormat::Enum::RGB9E5F")
    var RGB9E5F;
    @:native("bimg::TextureFormat::Enum::BGRA8")
    var BGRA8;
    @:native("bimg::TextureFormat::Enum::RGBA8")
    var RGBA8;
    @:native("bimg::TextureFormat::Enum::RGBA8I")
    var RGBA8I;
    @:native("bimg::TextureFormat::Enum::RGBA8U")
    var RGBA8U;
    @:native("bimg::TextureFormat::Enum::RGBA8S")
    var RGBA8S;
    @:native("bimg::TextureFormat::Enum::RGBA16")
    var RGBA16;
    @:native("bimg::TextureFormat::Enum::RGBA16I")
    var RGBA16I;
    @:native("bimg::TextureFormat::Enum::RGBA16U")
    var RGBA16U;
    @:native("bimg::TextureFormat::Enum::RGBA16F")
    var RGBA16F;
    @:native("bimg::TextureFormat::Enum::RGBA16S")
    var RGBA16S;
    @:native("bimg::TextureFormat::Enum::RGBA32I")
    var RGBA32I;
    @:native("bimg::TextureFormat::Enum::RGBA32U")
    var RGBA32U;
    @:native("bimg::TextureFormat::Enum::RGBA32F")
    var RGBA32F;
    @:native("bimg::TextureFormat::Enum::B5G6R5")
    var B5G6R5;
    @:native("bimg::TextureFormat::Enum::R5G6B5")
    var R5G6B5;
    @:native("bimg::TextureFormat::Enum::BGRA4")
    var BGRA4;
    @:native("bimg::TextureFormat::Enum::RGBA4")
    var RGBA4;
    @:native("bimg::TextureFormat::Enum::BGR5A1")
    var BGR5A1;
    @:native("bimg::TextureFormat::Enum::RGB5A1")
    var RGB5A1;
    @:native("bimg::TextureFormat::Enum::RGB10A2")
    var RGB10A2;
    @:native("bimg::TextureFormat::Enum::RG11B10F")
    var RG11B10F;
    /**
        Depth formats below.
    **/
    @:native("bimg::TextureFormat::Enum::UnknownDepth")
    var UnknownDepth;
    @:native("bimg::TextureFormat::Enum::D16")
    var D16;
    @:native("bimg::TextureFormat::Enum::D24")
    var D24;
    @:native("bimg::TextureFormat::Enum::D24S8")
    var D24S8;
    @:native("bimg::TextureFormat::Enum::D32")
    var D32;
    @:native("bimg::TextureFormat::Enum::D16F")
    var D16F;
    @:native("bimg::TextureFormat::Enum::D24F")
    var D24F;
    @:native("bimg::TextureFormat::Enum::D32F")
    var D32F;
    @:native("bimg::TextureFormat::Enum::D0S8")
    var D0S8;
    @:native("bimg::TextureFormat::Enum::Count")
    var Count;
}
@:unreflective
@:native('bimg::TextureFormat::Enum')
@:lincCppiaDef('TextureFormat', 'enum')
extern class Native_TextureFormatImpl { }
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapEnumExtern('Native_TextureFormat'))
    enum abstract TextureFormat(Int) from Int to Int {}
#else
    typedef TextureFormat = Native_TextureFormat;
#end

@:unreflective
extern enum abstract Native_Orientation(Native_OrientationImpl) {
    
    @:native("Orientation::Enum::R0") var R0;
    @:native("Orientation::Enum::R90") var R90;
    @:native("Orientation::Enum::R180") var R180;
    @:native("Orientation::Enum::R270") var R270;
    @:native("Orientation::Enum::HFlip") var HFlip;
    @:native("Orientation::Enum::HFlipR90") var HFlipR90;
    @:native("Orientation::Enum::HFlipR270") var HFlipR270;
    @:native("Orientation::Enum::VFlip") var VFlip;
    
}
@:unreflective
@:native('Orientation::Enum')
@:lincCppiaDef('Orientation', 'enum')
extern class Native_OrientationImpl { }
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapEnumExtern('Native_Orientation'))
    enum abstract Orientation(Int) from Int to Int {}
#else
    typedef Orientation = Native_Orientation;
#end

@:include('bgfx/c99/bgfx.h')
@:include('bimg/bimg.h')
@:structAccess
@:unreflective
@:native("::bimg::ImageContainer")
@:lincCppiaDef('ImageContainer', 'struct')
extern class Native_ImageContainer {
    public function new();
    // bx::AllocatorI* m_allocator;
	@:linc_ignore var m_data:cpp.Star<cpp.Void>;
	@:linc_ignore var m_format:Native_TextureFormat;
	var m_orientation:Native_Orientation;
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
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapStructExtern('Native_ImageContainer'))
    class CppiaImageContainer {
    	public var m_data(get, set):cpp.Pointer<cpp.Void>;
        function set_m_data(_v:cpp.Pointer<cpp.Void>):cpp.Pointer<cpp.Void> return null;
        function get_m_data():cpp.Pointer<cpp.Void> {
            if (__ptr == null) return cast cpp.Pointer.fromStar(__inst.m_data);
            else return cast cpp.Pointer.fromStar(__ptr.ref.m_data);
        }

        public var m_format(get, set):TextureFormat;
        function set_m_format(_v:TextureFormat):TextureFormat { 
            if (__ptr != null) __ptr.ref.m_format = (cast _v:Native_TextureFormat); 
            else __inst.m_format = (cast _v:Native_TextureFormat); 
            return _v; 
        }
        function get_m_format():TextureFormat {
            return __ptr != null ? cast(__ptr.ref.m_format, TextureFormat) : cast(__inst.m_format, TextureFormat);
        }
    }
    typedef ImageContainer = CppiaImageContainer;
#else
    /*
        mib: using pointers here caused such a brainfuck! 
        But given that we only use this in a limited scope below when we load & release 
        the image, we keep it since it's a valid solution albeit completely different types...
    */
    typedef ImageContainer = cpp.Star<Native_ImageContainer>;
#end

@:include("linc_bgfx.h")
extern class Native_Bimg {

	@:native("linc_bgfx::bimgImageParse")
    private static function _imageParse(_src:cpp.ConstStar<cpp.Void>, _size:cpp.Int32, _format:cpp.UInt32):cpp.Star<Native_ImageContainer>;
    inline public static function imageParse(_src:haxe.io.BytesData, _size:cpp.Int32, _format:TextureFormat):cpp.Pointer<Native_ImageContainer> {
    	var ab = cpp.NativeArray.getBase(_src);
        var ptr:cpp.RawPointer<cpp.Void> = untyped __cpp__('(unsigned char*){0}->getBase()', ab); // hxcpp tries to resolve through reflection?!? WHY? omg, just force it!
        return cpp.Pointer.fromStar(_imageParse(cast ptr, _size, (cast _format:cpp.UInt32)));
    }

	@:native("bimg::imageFree")
	extern public static function imageFree(_imgCon:cpp.Pointer<Native_ImageContainer>):Void;

	@:native("bimg::imageCheckerboard")
	extern public static function imageCheckerboard(_dst:cpp.Star<cpp.Void>, _w:cpp.Int32, _h:cpp.Int32, _step:cpp.Int32, _c0:cpp.Int32, _c1:cpp.Int32):Void;
}

#if (scriptable || cppia)
    // @:build(linc.LincCppia.wrapMainExtern('Native_Bimg'))
    class CppiaBimg {
    	public static function imageParse(_src:haxe.io.BytesData, _size:cpp.Int32, _format:TextureFormat):ImageContainer {
    		final res = Type.createEmptyInstance(ImageContainer);
    		res.__ptr = Native_Bimg.imageParse(_src, _size, _format);
    		return res;
        }

        public static function imageFree(_imgCon:ImageContainer):Void
        	Native_Bimg.imageFree(_imgCon.__ptr);

        public static function imageCheckerboard(_dst:cpp.Pointer<cpp.Void>, _w:cpp.Int32, _h:cpp.Int32, _step:cpp.Int32, _c0:cpp.Int32, _c1:cpp.Int32):Void
        	Native_Bimg.imageCheckerboard(cast _dst, _w, _h, _step, _c0, _c1);
    }
    typedef Bimg = CppiaBimg;
#else
    typedef Bimg = Native_Bimg;
#end