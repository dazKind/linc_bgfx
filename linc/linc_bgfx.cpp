#include <hxcpp.h>

#include "linc_bgfx.h"
#include "bimg/decode.h"
#include "nanovg.h"

namespace linc_bgfx {
    bx::DefaultAllocator defaultAllocator;

    void bgfx_fatal(bgfx_callback_interface_t* _this, const char* _filePath, uint16_t _line, bgfx_fatal_t _code, const char* _str) {
        bx::debugPrintf("Fatal error: 0x%08x: %s", _code, _str);
    }
    void bgfx_trace_vargs(bgfx_callback_interface_t* _this, const char* _filePath, uint16_t _line, const char* _format, va_list _argList) {
        bx::debugPrintf("%s (%d): ", _filePath, _line);
        bx::debugPrintfVargs(_format, _argList);
    }
    void bgfx_profiler_begin(bgfx_callback_interface_t* _this, const char* _name, uint32_t _abgr, const char* _filePath, uint16_t _line) {

    }
    void bgfx_profiler_begin_literal(bgfx_callback_interface_t* _this, const char* _name, uint32_t _abgr, const char* _filePath, uint16_t _line) {

    }
    void bgfx_profiler_end(bgfx_callback_interface_t* _this) {

    }
    uint32_t bgfx_cache_read_size(bgfx_callback_interface_t* _this, uint64_t _id) {
        return 0;
    }
    bool bgfx_cache_read(bgfx_callback_interface_t* _this, uint64_t _id, void* _data, uint32_t _size) {
        return false;
    }
    void bgfx_cache_write(bgfx_callback_interface_t* _this, uint64_t _id, const void* _data, uint32_t _size) {

    }
    void bgfx_screen_shot(bgfx_callback_interface_t* _this, const char* _filePath, uint32_t _width, uint32_t _height, uint32_t _pitch, const void* _data, uint32_t _size, bool _yflip) {

    }
    void bgfx_capture_begin(bgfx_callback_interface_t* _this, uint32_t _width, uint32_t _height, uint32_t _pitch, bgfx_texture_format_t _format, bool _yflip) {

    }
    void bgfx_capture_end(bgfx_callback_interface_t* _this) {

    }
    void bgfx_capture_frame(bgfx_callback_interface_t* _this, const void* _data, uint32_t _size) {

    }

    bgfx_callback_vtbl_s foo = {
        &bgfx_fatal,
        &bgfx_trace_vargs,
        &bgfx_profiler_begin,
        &bgfx_profiler_begin_literal,
        &bgfx_profiler_end,
        &bgfx_cache_read_size,
        &bgfx_cache_read,
        &bgfx_cache_write,
        &bgfx_screen_shot,
        &bgfx_capture_begin,
        &bgfx_capture_end,
        &bgfx_capture_frame,
    };

    bgfx_callback_interface_t s_callback = {&foo};

    bgfx_callback_interface_t * getBgfxCallback() {
        return &s_callback;
    }

    bimg::ImageContainer* bimgImageParse(const void* _data, uint32_t _size, uint32_t _format) {
        return bimg::imageParse(&defaultAllocator, (const void*)_data, _size, (bimg::TextureFormat::Enum)_format);
    }
}

namespace linc_nanovg {

    Array<Dynamic> nvgTextBreakLinesHelper(NVGcontext* ctx, String string, float breakRowWidth){
        Array<Dynamic> outArray = Array_obj<Dynamic>::__new(0, 1);
        NVGtextRow rows[3];
        const char* text = string.c_str();
        const char* start = text;
        const char* end = start + strlen(text);
        int nrows;
        int i;
        while ((nrows = nvgTextBreakLines(ctx, start, end, breakRowWidth, rows, 3))) {
            for (i = 0; i < nrows; i++) {
                NVGtextRow row = rows[i];
                hx::Anon result = hx::Anon_obj::Create();

                int length = 1;
                const char* cur = row.start;
                while(cur != row.end) { length++; cur++; }
                const char* foo = (const char*)malloc(length); 
                memcpy((void*)foo, (void*)row.start, length);
                memset((void*)(foo+length-1), '\0', 1);
                result->Add(HX_CSTRING("line"), ::String(foo));
                free((void*)foo);
                // result->Add(HX_CSTRING("end"), row.end);
                // result->Add(HX_CSTRING("next"), row.next);
                result->Add(HX_CSTRING("width"), row.width);
                result->Add(HX_CSTRING("minx"), row.minx);
                result->Add(HX_CSTRING("maxx"), row.maxx);
                outArray->push(result);

            }
            // Keep going...
            start = rows[nrows-1].next;
        }
        // if (nrows == 0)
        //     outArray->push(string);
        return outArray;
    }

    Array<Array<Float>> nvgTextGlyphPositionsHelper(NVGcontext* ctx, float _x, float _y, String _string, int _maxPositions) {
        Array<Array<Float>> outArray = Array_obj<Array<Float>>::__new(0, 1);
        NVGglyphPosition *positions = (NVGglyphPosition*)calloc(_maxPositions, sizeof(NVGglyphPosition));
        size_t length = _hx_utf8_length(_string);
        const char* start = _string.c_str();
        const char* end = start + length;
        int res = nvgTextGlyphPositions(ctx, _x, _y, start, end, positions, _maxPositions);
        for (int i = 0; i < length; i++) {
            NVGglyphPosition p = positions[i];
            Array<Float> out = Array_obj<Float>::__new(0, 1);
            out->push(p.x);
            out->push(p.minx);
            out->push(p.maxx);
            outArray->push(out);
        }
        free(positions);
        return outArray;
    }

    float nvgTextBoundsHelper(NVGcontext* _ctx, float _x, float _y, String _string, String _end, float* _outArray) {
        return nvgTextBounds(_ctx, _x, _y, _string, _end, _outArray);
    }

    void nvgTextBoxBoundsHelper(NVGcontext* _ctx, float _x, float _y, float _breakRowWidth, String _string, String _end, float* _outArray) {
        nvgTextBoxBounds(_ctx, _x, _y, _breakRowWidth, _string.c_str(), _end.c_str(), _outArray);
    }

    int32_t nvgCreateImageMem(NVGcontext* _ctx, uint32_t _imageFlags, void* _data, uint32_t _size) {
        bimg::ImageContainer* imageContainer = bimg::imageParse(&linc_bgfx::defaultAllocator, (const void*)_data, _size, bimg::TextureFormat::RGBA8);

        int32_t texId = nvgCreateImageRGBA(_ctx, imageContainer->m_width, imageContainer->m_height, _imageFlags, (const uint8_t*)imageContainer->m_data);

        bimg::imageFree(imageContainer);

        return texId;
    }
}

