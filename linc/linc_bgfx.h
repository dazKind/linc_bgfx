#ifndef _LINC_BGFX_H_
#define _LINC_BGFX_H_

#include <hxcpp.h>

#include "bgfx/c99/bgfx.h"
#include "bx/bx.h"

struct NVGcontext;

namespace linc_bgfx {
	extern bgfx_callback_interface_t* getBgfxCallback();	
}

namespace linc_nanovg {
    Array<Dynamic> nvgTextBreakLinesHelper(NVGcontext* ctx, String string, float breakRowWidth);    
	float nvgTextBoundsHelper(NVGcontext* _ctx, float _x, float _y, String _string, String _end, float* _outArray);
    void nvgTextBoxBoundsHelper(NVGcontext* _ctx, float _x, float _y, float _breakRowWidth, String _string, String _end, float* _outArray);
}

#endif