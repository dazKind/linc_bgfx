#include <hxcpp.h>

#include "linc_bgfx.h"

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

