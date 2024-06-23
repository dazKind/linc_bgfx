package nanovg;

import bgfx.*;

#if cpp
import cpp.ConstStar;
import cpp.Pointer;
import cpp.UInt8;
#end

class NvgMode {
    inline public static var ANTIALIAS:Int = 1;
    inline public static var STENCIL_STROKES:Int = 2;
}

class NvgWinding {
    inline public static var CCW:Int = 1;
    inline public static var CW:Int = 2;
}

class NvgSolidity {
    inline public static var SOLID:Int = 1;
    inline public static var HOLE:Int = 2;
}

class NvgLineCap  {
    inline public static var BUTT:Int   = 0;
    inline public static var ROUND:Int  = 1;
    inline public static var SQUARE:Int = 2;
    inline public static var BEVEL:Int  = 3;
    inline public static var MITER:Int  = 4;
}

class NvgPatternRepeat   {
    inline public static var NOREPEAT:Int = 0;
    inline public static var REPEATX:Int  = 0x01;
    inline public static var REPEATY:Int  = 0x02;
}

class NvgAlign {
    inline public static var ALIGN_LEFT:Int      = 1<<0;
    inline public static var ALIGN_CENTER:Int    = 1<<1;
    inline public static var ALIGN_RIGHT:Int     = 1<<2;
    inline public static var ALIGN_TOP:Int       = 1<<3;
    inline public static var ALIGN_MIDDLE:Int    = 1<<4;
    inline public static var ALIGN_BOTTOM:Int    = 1<<5;
    inline public static var ALIGN_BASELINE:Int  = 1<<6;
}

class NvgImageFlags {
    inline public static var IMAGE_GENERATE_MIPMAPS:Int = 1<<0;
    inline public static var IMAGE_REPEATX:Int          = 1<<1;
    inline public static var IMAGE_REPEATY:Int          = 1<<2;
    inline public static var IMAGE_FLIPY:Int            = 1<<3;
    inline public static var IMAGE_PREMULTIPLIED:Int    = 1<<4;
    inline public static var NVG_IMAGE_NEAREST:Int      = 1<<5;
    inline public static var IMAGE_NODELETE:Int         = 1<<16;
}


@:include("nanovg.h")
@:unreflective
@:native("NVGcontext")
@:lincCppiaDef('NvgContext', 'struct')
extern class Native_NvgContext {
    public function new();
}
#if (scriptable || cppia)
    typedef NvgContextPtr = cpp.Pointer<Native_NvgContext>;
    @:build(linc.LincCppia.wrapStructExtern('Native_NvgContext'))
    class NvgContext {}
#else
    typedef NvgContextPtr = cpp.Star<Native_NvgContext>;
    typedef NvgContext = Native_NvgContext;
#end

@:include("nanovg.h")
@:structAccess
@:unreflective
@:native("NVGcolor")
@:lincCppiaDef('NvgColor', 'struct')
extern class Native_NvgColor {
    public function new();
    public var r:cpp.Float32;
    public var g:cpp.Float32;
    public var b:cpp.Float32;
    public var a:cpp.Float32;
}
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapStructExtern('Native_NvgColor'))
    class NvgColor {}
#else
    typedef NvgColor = Native_NvgColor;
#end

@:include("nanovg.h")
@:structAccess
@:unreflective
@:native("NVGpaint")
@:lincCppiaDef('NvgPaint', 'struct')
extern class Native_NvgPaint {
    public function new();
    // @:native("cpp.Float32[]")
    public var xform:Dynamic; // cpp.Float32[6]
    // @:native("cpp.Float32[]")
    public var extent:Dynamic; // cpp.Float32[3]
    public var radius:cpp.Float32;
    public var feather:cpp.Float32;
    public var innerColor:Native_NvgColor;
    public var outerColor:Native_NvgColor;
    public var image:Int;
}
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapStructExtern('Native_NvgPaint'))
    class NvgPaint {}
#else
    typedef NvgPaint = Native_NvgPaint;
#end


@:include("nanovg.h")
@:structAccess
@:unreflective
@:native("NVGglyphPosition")
@:lincCppiaDef('NvgGlyphPosition', 'struct')
extern class Native_NvgGlyphPosition {
    public function new();
    public var str:cpp.ConstCharStar;
    public var x:cpp.Float32;
    public var minx:cpp.Float32;
    public var maxx:cpp.Float32;
}
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapStructExtern('Native_NvgGlyphPosition'))
    class NvgGlyphPosition {}
#else
    typedef NvgGlyphPosition = Native_NvgGlyphPosition;
#end

@:include("nanovg.h")
@:structAccess
@:unreflective
@:native("NVGtextRow")
@:lincCppiaDef('NvgTextRow', 'struct')
extern class Native_NvgTextRow {
    public function new();
    public var start:cpp.ConstCharStar;
    public var end:cpp.ConstCharStar;
    public var next:cpp.ConstCharStar;
    public var width:cpp.Float32;
    public var minx:cpp.Float32;
    public var maxx:cpp.Float32;
}
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapStructExtern('Native_NvgTextRow'))
    class NvgTextRow {}
#else
    typedef NvgTextRow = Native_NvgTextRow;
#end

@:include("nanovg.h")
@:include("nanovg_bgfx.h")
@:include("linc_bgfx.h")
extern class Native_Nvg {

    @:native("nvgCreate")
    extern public static function create(_edgeaa:Int, _viewId:ViewId):cpp.Star<Native_NvgContext>;

    @:native("nvgDelete")
    extern public static function delete(_ctx:cpp.Star<Native_NvgContext>):Void;

    @:native("nvgSetViewId")
    public static function setViewId(_ctx:cpp.Star<Native_NvgContext>, _viewId:ViewId):Void;

    @:native("nvgGetViewId")
    public static function getViewId(_ctx:cpp.Star<Native_NvgContext>):ViewId;

    @:native("nvgBeginFrame")
    public static function beginFrame(_ctx:cpp.Star<Native_NvgContext>, _windowWidth:Int, _windowHeight:Int, _devicePixelRatio:cpp.Float32):Void;

    @:native("nvgCancelFrame")
    public static function cancelFrame(_ctx:cpp.Star<Native_NvgContext>):Void;

    @:native("nvgEndFrame")
    public static function endFrame(_ctx:cpp.Star<Native_NvgContext>):Void;

    @:native("nvgRGB")
    public static function rgb(_r:UInt8, _g:UInt8, _b:UInt8):Native_NvgColor;

    @:native("nvgRGBf")
    public static function rgbf(_r:cpp.Float32, _g:cpp.Float32, _b:cpp.Float32):Native_NvgColor;

    @:native("nvgRGBA")
    public static function rgba(_r:UInt8, _g:UInt8, _b:UInt8, _a:UInt8):Native_NvgColor;

    @:native("nvgRGBAf")
    public static function rgbaf(_r:cpp.Float32, _g:cpp.Float32, _b:cpp.Float32, _a:cpp.Float32):Native_NvgColor;

    @:native("nvgLerpRGBA")
    public static function lerpRgba(_c0:Native_NvgColor, _c1:Native_NvgColor, _u:cpp.Float32):Native_NvgColor;

    @:native("nvgTransRGBA")
    public static function transRgba(_c0:Native_NvgColor, _a:UInt8):Native_NvgColor;

    @:native("nvgTransRGBAf")
    public static function transRgbaf(_c0:Native_NvgColor, _a:cpp.Float32):Native_NvgColor;

    @:native("nvgHSL")
    public static function hsl(_h:cpp.Float32, _s:cpp.Float32, _l:cpp.Float32):Native_NvgColor;

    @:native("nvgHSLA")
    public static function hsla(_h:cpp.Float32, _s:cpp.Float32, _l:cpp.Float32, _a:UInt8):Native_NvgColor;

    @:native("nvgSave")
    public static function save(_ctx:cpp.Star<Native_NvgContext>):Void;

    @:native("nvgRestore")
    public static function restore(_ctx:cpp.Star<Native_NvgContext>):Void;

    @:native("nvgReset")
    public static function reset(_ctx:cpp.Star<Native_NvgContext>):Void;

    @:native("nvgStrokeColor")
    public static function strokeColor(_ctx:cpp.Star<Native_NvgContext>, _color:Native_NvgColor):Void;

    @:native("nvgStrokePaint")
    public static function strokePaint(_ctx:cpp.Star<Native_NvgContext>, _paint:Native_NvgPaint):Void;

    @:native("nvgFillColor")
    public static function fillColor(_ctx:cpp.Star<Native_NvgContext>, _color:Native_NvgColor):Void;

    @:native("nvgFillPaint")
    public static function fillPaint(_ctx:cpp.Star<Native_NvgContext>, _paint:Native_NvgPaint):Void;

    @:native("nvgMiterLimit")
    public static function miterLimit(_ctx:cpp.Star<Native_NvgContext>, _limit:cpp.Float32):Void;

    @:native("nvgStrokeWidth")
    public static function strokeWidth(_ctx:cpp.Star<Native_NvgContext>, _size:cpp.Float32):Void;

    @:native("nvgLineCap")
    public static function lineCap(_ctx:cpp.Star<Native_NvgContext>, _cap:Int):Void;

    @:native("nvgLineJoin")
    public static function lineJoin(_ctx:cpp.Star<Native_NvgContext>, _join:Int):Void;

    @:native("nvgGlobalAlpha")
    public static function globalAlpha(_ctx:cpp.Star<Native_NvgContext>, _alpha:cpp.Float32):Void;

    @:native("nvgResetTransform")
    public static function resetTransform(_ctx:cpp.Star<Native_NvgContext>):Void;

    @:native("nvgTransform")
    public static function transform(_ctx:cpp.Star<Native_NvgContext>, _a:cpp.Float32, _b:cpp.Float32, _c:cpp.Float32, _d:cpp.Float32, _e:cpp.Float32, _f:cpp.Float32):Void;

    @:native("nvgTranslate")
    public static function translate(_ctx:cpp.Star<Native_NvgContext>, _x:cpp.Float32, _y:cpp.Float32):Void;

    @:native("nvgRotate")
    public static function rotate(_ctx:cpp.Star<Native_NvgContext>, _angle:cpp.Float32):Void;

    @:native("nvgSkewX")
    public static function skewX(_ctx:cpp.Star<Native_NvgContext>, _angle:cpp.Float32):Void;

    @:native("nvgSkewY")
    public static function skewY(_ctx:cpp.Star<Native_NvgContext>, _angle:cpp.Float32):Void;

    @:native("nvgScale")
    public static function scale(_ctx:cpp.Star<Native_NvgContext>, _x:cpp.Float32, _y:cpp.Float32):Void;

    @:native("nvgCurrentTransform")
    public static function currentTransform(_ctx:cpp.Star<Native_NvgContext>, _xForm:cpp.Star<cpp.Float32>):Void;

    @:native("nvgTransformIdentity")
    public static function transformIdentity(_dst:cpp.Star<cpp.Float32>):Void;

    @:native("nvgTransformTranslate")
    public static function transformTranslate(_dst:cpp.Star<cpp.Float32>, _tx:cpp.Float32, _ty:cpp.Float32):Void;

    @:native("nvgTransformScale")
    public static function transformScale(_dst:cpp.Star<cpp.Float32>, _sx:cpp.Float32, _sy:cpp.Float32):Void;

    @:native("nvgTransformRotate")
    public static function transformRotate(_dst:cpp.Star<cpp.Float32>, _angle:cpp.Float32):Void;

    @:native("nvgTransformSkewX")
    public static function transformSkewX(_dst:cpp.Star<cpp.Float32>, _angle:cpp.Float32):Void;

    @:native("nvgTransformSkewY")
    public static function transformSkewY(_dst:cpp.Star<cpp.Float32>, _angle:cpp.Float32):Void;

    @:native("nvgTransformMultiply")
    public static function transformMultiply(_dst:cpp.Star<cpp.Float32>, _src:cpp.ConstStar<cpp.Float32>):Void;

    @:native("nvgTransformPremultiply")
    public static function transformPremultiply(_dst:cpp.Star<cpp.Float32>, _src:cpp.ConstStar<cpp.Float32>):Void;

    @:native("nvgTransformInverse")
    public static function transformInverse(_dst:cpp.Star<cpp.Float32>, _src:cpp.ConstStar<cpp.Float32>):Void;

    @:native("nvgTransformPoint")
    public static function transformPoint(_dstx:cpp.Star<cpp.Float32>, _dsty:cpp.Star<cpp.Float32>, _xform:cpp.ConstStar<cpp.Float32>, _srcx:cpp.Float32, _srcy:cpp.Float32):Void;


    @:native("nvgDegToRad")
    public static function degToRad(_deg:cpp.Float32):cpp.Float32;

    @:native("nvgRadToDeg")
    public static function radToDeg(_rad:cpp.Float32):cpp.Float32;

    @:native("linc_nanovg::nvgCreateImageMem")
    private static function _createImageMem(_ctx:cpp.Star<Native_NvgContext>, _imageFlags:cpp.Int32, _data:cpp.RawPointer<cpp.UInt8>, _ndata:cpp.Int32):Int;
    inline public static function createImageMem(_ctx:cpp.Star<Native_NvgContext>, _imageFlags:cpp.Int32, _data:haxe.io.BytesData, _dataLength:cpp.Int32):Int {
        var ab = cpp.NativeArray.getBase(_data);
        var ptr:cpp.RawPointer<cpp.UInt8> = untyped __cpp__('(unsigned char*){0}->getBase()', ab); // hxcpp tries to resolve through reflection?!? WHY? omg, just force it!
        return _createImageMem(_ctx, _imageFlags, cast ptr, _dataLength);
    }

    @:native("nvgCreateImageRGBA")
    private static function _createImageRGBA(_ctx:cpp.Star<Native_NvgContext>, _w:Int, _h:Int, _imageFlags:cpp.Int32, _data:cpp.RawPointer<cpp.UInt8>):Int;
    inline public static function createImageRGBA(_ctx:cpp.Star<Native_NvgContext>, _w:Int, _h:Int, _imageFlags:cpp.Int32, _data:haxe.io.BytesData):Int {
        var ab = cpp.NativeArray.getBase(_data);
        var ptr:cpp.RawPointer<cpp.UInt8> = untyped __cpp__('(unsigned char*){0}->getBase()', ab); // hxcpp tries to resolve through reflection?!? WHY? omg, just force it!
        return _createImageRGBA(_ctx, _w, _h, _imageFlags, cast ptr);
    }
    inline public static function createImageRGBAFromPtr(_ctx:cpp.Star<Native_NvgContext>, _w:Int, _h:Int, _imageFlags:cpp.Int32, _data:cpp.Star<cpp.Void>):Int {
        return _createImageRGBA(_ctx, _w, _h, _imageFlags, cast _data);
    }

    @:native("nvgUpdateImage")
    private static function _updateImage(_ctx:cpp.Star<Native_NvgContext>, _image:Int, _data:cpp.RawPointer<cpp.UInt8>):Void;
    inline public static function updateImage(_ctx:cpp.Star<Native_NvgContext>, _image:Int, _data:haxe.io.BytesData):Void {
        var ab = cpp.NativeArray.getBase(_data);
        var ptr:cpp.RawPointer<cpp.UInt8> = untyped __cpp__('(unsigned char*){0}->getBase()', ab); // hxcpp tries to resolve through reflection?!? WHY? omg, just force it!
        _updateImage(_ctx, _image, cast ptr);
    }

    @:native("nvgImageSize")
    inline public static function imageSize(_ctx:cpp.Star<Native_NvgContext>, _image:Int):Array<Int> {
        var dims:Array<cpp.Int32> = cpp.NativeArray.create(2);
        untyped __cpp__("nvgImageSize({0}, {1}, {2}, {3})", _ctx, _image, cpp.NativeArray.address(dims, 0), cpp.NativeArray.address(dims, 1));
        return cast dims;
    }

    @:native("nvgDeleteImage")
    public static function deleteImage(_ctx:cpp.Star<Native_NvgContext>, _image:Int):Void;


    @:native("nvgLinearGradient")
    public static function linearGradient(_ctx:cpp.Star<Native_NvgContext>, _sx:cpp.Float32, _sy:cpp.Float32, _ex:cpp.Float32, _ey:cpp.Float32, _icol:Native_NvgColor, _ocol:Native_NvgColor):Native_NvgPaint;

    @:native("nvgBoxGradient")
    public static function boxGradient(_ctx:cpp.Star<Native_NvgContext>, _x:cpp.Float32, _y:cpp.Float32, _w:cpp.Float32, _h:cpp.Float32, _r:cpp.Float32, _f:cpp.Float32, _icol:Native_NvgColor, _ocol:Native_NvgColor):Native_NvgPaint;

    @:native("nvgRadialGradient")
    public static function radialGradient(_ctx:cpp.Star<Native_NvgContext>, _cx:cpp.Float32, _cy:cpp.Float32, _inr:cpp.Float32, _outr:cpp.Float32, _icol:Native_NvgColor, _ocol:Native_NvgColor):Native_NvgPaint;

    @:native("nvgImagePattern")
    public static function imagePattern(_ctx:cpp.Star<Native_NvgContext>, _ox:cpp.Float32, _oy:cpp.Float32, _ex:cpp.Float32, _ey:cpp.Float32, _angle:cpp.Float32, _image:Int, _alpha:cpp.Float32):Native_NvgPaint;


    @:native("nvgScissor")
    public static function scissor(_ctx:cpp.Star<Native_NvgContext>, _x:cpp.Float32, _y:cpp.Float32, _w:cpp.Float32, _h:cpp.Float32):Void;

    @:native("nvgIntersectScissor")
    public static function intersectScissor(_ctx:cpp.Star<Native_NvgContext>, _x:cpp.Float32, _y:cpp.Float32, _w:cpp.Float32, _h:cpp.Float32):Void;

    @:native("nvgResetScissor")
    public static function resetScissor(_ctx:cpp.Star<Native_NvgContext>):Void;


    @:native("nvgBeginPath")
    public static function beginPath(_ctx:cpp.Star<Native_NvgContext>):Void;

    @:native("nvgMoveTo")
    public static function moveTo(_ctx:cpp.Star<Native_NvgContext>, _x:cpp.Float32, _y:cpp.Float32):Void;

    @:native("nvgLineTo")
    public static function lineTo(_ctx:cpp.Star<Native_NvgContext>, _x:cpp.Float32, _y:cpp.Float32):Void;

    @:native("nvgBezierTo")
    public static function bezierTo(_ctx:cpp.Star<Native_NvgContext>, _c1x:cpp.Float32, _c1y:cpp.Float32, _c2x:cpp.Float32, _c2y:cpp.Float32, _x:cpp.Float32, _y:cpp.Float32):Void;

    @:native("nvgQuadTo")//(NVGcontext* ctx, float cx, float cy, float x, float y);
    public static function quadTo(_ctx:cpp.Star<Native_NvgContext>, _cx:cpp.Float32, _cy:cpp.Float32, _x:cpp.Float32, _y:cpp.Float32):Void;

    @:native("nvgArcTo")
    public static function arcTo(_ctx:cpp.Star<Native_NvgContext>, _x1:cpp.Float32, _y1:cpp.Float32, _x2:cpp.Float32, _y2:cpp.Float32, _radius:cpp.Float32):Void;

    @:native("nvgClosePath")
    public static function closePath(_ctx:cpp.Star<Native_NvgContext>):Void;

    @:native("nvgPathWinding")
    public static function pathWinding(_ctx:cpp.Star<Native_NvgContext>, _dir:Int):Void;

    @:native("nvgArc")
    public static function arc(_ctx:cpp.Star<Native_NvgContext>, _cx:cpp.Float32, _cy:cpp.Float32, _r:cpp.Float32, _a0:cpp.Float32, _a1:cpp.Float32, _dir:Int):Void;

    @:native("nvgRect")
    public static function rect(_ctx:cpp.Star<Native_NvgContext>, _x:cpp.Float32, _y:cpp.Float32, _w:cpp.Float32, _h:cpp.Float32):Void;

    @:native("nvgRoundedRect")
    public static function roundedRect(_ctx:cpp.Star<Native_NvgContext>, _x:cpp.Float32, _y:cpp.Float32, _w:cpp.Float32, _h:cpp.Float32, _r:cpp.Float32):Void;

    @:native("nvgEllipse")
    public static function ellipse(_ctx:cpp.Star<Native_NvgContext>, _cx:cpp.Float32, _cy:cpp.Float32, _rx:cpp.Float32, _ry:cpp.Float32):Void;

    @:native("nvgCircle")
    public static function circle(_ctx:cpp.Star<Native_NvgContext>, _cx:cpp.Float32, _cy:cpp.Float32, _r:cpp.Float32):Void;

    @:native("nvgFill")
    public static function fill(_ctx:cpp.Star<Native_NvgContext>):Void;

    @:native("nvgStroke")
    public static function stroke(_ctx:cpp.Star<Native_NvgContext>):Void;


    @:native("nvgCreateFont")
    public static function createFont(_ctx:cpp.Star<Native_NvgContext>, _name:String, _filename:String):Int;

    @:native("nvgCreateFontMem")
    private static function _createFontMem(_ctx:cpp.Star<Native_NvgContext>, _name:String, _data:cpp.RawPointer<cpp.UInt8>, _ndata:Int, _freeData:Int):Int;
    inline public static function createFontMem(_ctx:cpp.Star<Native_NvgContext>, _name:String, _data:haxe.io.BytesData):Int {
        var ab = cpp.NativeArray.getBase(_data);
        var ptr:cpp.RawPointer<cpp.UInt8> = untyped __cpp__('(unsigned char*){0}->getBase()', ab); // hxcpp tries to resolve through reflection?!? WHY? omg, just force it!
        return _createFontMem(_ctx, _name, cast ptr, _data.length, 0);
    }

    @:native("nvgFreeFont")
    public static function freeFont(_ctx:cpp.Star<Native_NvgContext>, _font:Int):Bool;

    @:native("nvgFindFont")
    public static function findFont(_ctx:cpp.Star<Native_NvgContext>, _name:String):Int;

    @:native("nvgFontSize")
    public static function fontSize(_ctx:cpp.Star<Native_NvgContext>, _size:cpp.Float32):Void;

    @:native("nvgFontBlur")
    public static function fontBlur(_ctx:cpp.Star<Native_NvgContext>, _blur:cpp.Float32):Void;

    @:native("nvgTextLetterSpacing")
    public static function textLetterSpacing(_ctx:cpp.Star<Native_NvgContext>, _spacing:cpp.Float32):Void;

    @:native("nvgTextLineHeight")
    public static function textLineHeight(_ctx:cpp.Star<Native_NvgContext>, _lineHeight:cpp.Float32):Void;

    @:native("nvgTextAlign")
    public static function textAlign(_ctx:cpp.Star<Native_NvgContext>, _align:Int):Void;

    @:native("nvgFontFaceId")
    public static function fontFaceId(_ctx:cpp.Star<Native_NvgContext>, _font:Int):Void;

    @:native("nvgFontFace")
    public static function fontFace(_ctx:cpp.Star<Native_NvgContext>, _font:String):Void;

    // Draws text string at specified location. If end is specified only the sub-string up to the end is drawn.
    @:native("nvgText")
    public static function text(_ctx:cpp.Star<Native_NvgContext>, _x:cpp.Float32, _y:cpp.Float32, _string:String, _end:String=null):cpp.Float32;

    // Draws multi-line text string at specified location wrapped at the specified width. If end is specified only the sub-string up to the end is drawn.
    // White space is stripped at the beginning of the rows, the text is split at word boundaries or when new-line characters are encountered.
    // Words longer than the max width are slit at nearest character (i.e. no hyphenation).
    @:native("nvgTextBox")
    public static function textBox(_ctx:cpp.Star<Native_NvgContext>, _x:cpp.Float32, _y:cpp.Float32, _breakRowWidth:cpp.Float32, _string:String, _end:String):Void;

    // Measures the specified text string. Parameter bounds should be a pointer to float[4],
    // if the bounding box of the text should be returned. The bounds value are [xmin,ymin, xmax,ymax]
    // Returns the horizontal advance of the measured text (i.e. where the next character should drawn).
    // Measured values are returned in local coordinate space.
    public static inline function textBounds(_ctx:cpp.Star<Native_NvgContext>, _x:Float, _y:Float, _string:String, _end:String, _out:Array<cpp.Float32>):Float{
        var out:cpp.Star<cpp.Float32> = _out != null ? cast cpp.NativeArray.getBase(_out).getBase() : null;
        return untyped __cpp__('linc_nanovg::nvgTextBoundsHelper({0},{1},{2},{3},{4},{5})', _ctx, _x, _y, _string, _end, out);
    }

    // Measures the specified multi-text string. Parameter bounds should be a pointer to float[4],
    // if the bounding box of the text should be returned. The bounds value are [xmin,ymin, xmax,ymax]
    // Measured values are returned in local coordinate space.
    public static inline function textBoxBounds(_ctx:cpp.Star<Native_NvgContext>, _x:Float, _y:Float, _breakRowWidth:Float, _string:String, _end:String, _out:Array<cpp.Float32>):Void{
        var out:cpp.Star<cpp.Float32> = _out != null ? cast cpp.NativeArray.getBase(_out).getBase() : null;
        untyped __cpp__('linc_nanovg::nvgTextBoxBoundsHelper({0},{1},{2},{3},{4},{5},{6})', _ctx, _x, _y, _breakRowWidth, _string, _end, out);
    }

    // Calculates the glyph x positions of the specified text. If end is specified only the sub-string will be used.
    // Measured values are returned in local coordinate space.
    // @:native("nvgTextGlyphPositions")
    // public static function textGlyphPositions(_ctx:cpp.Star<Native_NvgContext>, _x:cpp.Float32, _y:cpp.Float32, _string:String, _end:String, _positions:cpp.Star<Native_NvgGlyphPosition>, _maxPositions:Int):Int;
    public static inline function textGlyphPositions(_ctx:cpp.Star<Native_NvgContext>, _x:cpp.Float32, _y:cpp.Float32, _string:String, _maxPositions:Int):Array<Array<Float>> {
        return untyped __cpp__('linc_nanovg::nvgTextGlyphPositionsHelper({0}, {1}, {2}, {3}, {4})', _ctx, _x, _y, _string, _maxPositions);
    }

    // Returns the vertical metrics based on the current text style.
    // Measured values are returned in local coordinate space.
    @:native("nvgTextMetrics")
    public static function textMetrics(_ctx:cpp.Star<Native_NvgContext>, _ascender:cpp.Star<cpp.Float32>, _descender:cpp.Star<cpp.Float32>, _lineh:cpp.Star<cpp.Float32>):Void;

    // Breaks the specified text into lines. If end is specified only the sub-string will be used.
    // White space is stripped at the beginning of the rows, the text is split at word boundaries or when new-line characters are encountered.
    // Words longer than the max width are slit at nearest character (i.e. no hyphenation).
    public static inline function textBreakLines(_ctx:cpp.Star<Native_NvgContext>, _string:String, _breakRowWidth:Float):Array<
    {
        // start:String,
        // end:String,
        // next:String,
        line:String,
        width:Float,
        minx:Float,
        maxx:Float
    }>{
        return untyped __cpp__('linc_nanovg::nvgTextBreakLinesHelper({0},{1},{2})', _ctx, _string, _breakRowWidth);
    }
}

#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapMainExtern('Native_Nvg'))
    class Nvg {}
#else
    typedef Nvg = Native_Nvg;
#end