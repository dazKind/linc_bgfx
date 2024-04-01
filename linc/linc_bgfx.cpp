#include <hxcpp.h>

#include "linc_bgfx.h"
#include "nanovg.h"

namespace linc_bgfx {

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
}

namespace linc_nanovg {

    Array<Dynamic> nvgTextBreakLinesHelper(NVGcontext* ctx, String string, float breakRowWidth){
        Array<Dynamic> outArray = Array_obj<Dynamic>::__new(0, 1);
        NVGtextRow rows[3];
        const char* text = string.c_str();
        const char* start = text;
        const char* end = text + strlen(text);
        int nrows;
        int i;
        while ((nrows = nvgTextBreakLines(ctx, start, end, breakRowWidth, rows, 3))) {
            for (i = 0; i < nrows; i++) {
                NVGtextRow row = rows[i];
                hx::Anon result = hx::Anon_obj::Create();
                result->Add(HX_CSTRING("start"), row.start);
                result->Add(HX_CSTRING("end"), row.end);
                result->Add(HX_CSTRING("next"), row.next);
                result->Add(HX_CSTRING("width"), row.width);
                result->Add(HX_CSTRING("minx"), row.minx);
                result->Add(HX_CSTRING("maxx"), row.maxx);
                outArray->push(result);

            }
            // Keep going...
            start = rows[nrows-1].next;
        }
        return outArray;
    }

    float nvgTextBoundsHelper(NVGcontext* _ctx, float _x, float _y, String _string, String _end, float* _outArray) {
        return nvgTextBounds(_ctx, _x, _y, _string, _end, _outArray);
    }

    void nvgTextBoxBoundsHelper(NVGcontext* _ctx, float _x, float _y, float _breakRowWidth, String _string, String _end, float* _outArray) {
        nvgTextBoxBounds(_ctx, _x, _y, _breakRowWidth, _string.c_str(), _end.c_str(), _outArray);
    }
    
}

