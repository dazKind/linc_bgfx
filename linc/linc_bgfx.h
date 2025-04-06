#ifndef _LINC_BGFX_H_
#define _LINC_BGFX_H_

#include <hxcpp.h>

#include "bgfx/c99/bgfx.h"
#include "bx/bx.h"
#include "bx/allocator.h"
#include "bimg/bimg.h"

struct NVGcontext;

struct bgfx_encoder_s {};

namespace linc_bgfx {
    extern bx::DefaultAllocator defaultAllocator;
    extern bgfx_callback_interface_t* getBgfxCallback();
    bimg::ImageContainer* bimgImageParse(const void* _data, uint32_t _size, uint32_t _format);
}

namespace linc_nanovg {
    Array<Dynamic> nvgTextBreakLinesHelper(NVGcontext* ctx, String string, float breakRowWidth);
    Array<Array<float>> nvgTextGlyphPositionsHelper(NVGcontext* ctx, float _x, float _y, String _string, int _maxPositions);
	float nvgTextBoundsHelper(NVGcontext* _ctx, float _x, float _y, String _string, String _end, float* _outArray);
    void nvgTextBoxBoundsHelper(NVGcontext* _ctx, float _x, float _y, float _breakRowWidth, String _string, String _end, float* _outArray);

    int32_t nvgCreateImageMem(NVGcontext* _ctx, uint32_t _imageFlags, void* _data, uint32_t _size);
}

#endif