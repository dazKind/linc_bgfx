#ifndef _LINC_BGFX_H_
#define _LINC_BGFX_H_

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

#include "bgfx/c99/bgfx.h"
#include "bx/bx.h"
#include "bx/allocator.h"
#include "bimg/bimg.h"
#include <ctype.h>

struct NVGcontext;

struct bgfx_encoder_s {};

namespace linc_bgfx {
    extern bx::DefaultAllocator defaultAllocator;
    extern bgfx_callback_interface_t* getBgfxCallback();
    bimg::ImageContainer* bimgImageParse(const void* _data, uint32_t _size, uint32_t _format);
}

typedef struct {
    String str;
    NVGcontext *nvg;
} NvgTextEditString;


#define IMSTB_TEXTEDIT_IMPLEMENTATION
#define IMSTB_TEXTEDIT_STRING NvgTextEditString
#define IMSTB_TEXTEDIT_GETPREVCHARINDEX(obj, idx) (idx - 1)
#define IMSTB_TEXTEDIT_GETNEXTCHARINDEX(obj, idx) (idx + 1)
#define IMSTB_TEXTEDIT_CHARTYPE char
#define IMSTB_TEXTEDIT_POSITIONTYPE int
#define STB_TEXTEDIT_STRINGLEN(obj) (_hx_utf8_length(obj->str))
#define STB_TEXTEDIT_GETCHAR(obj, i) (_hx_utf8_char_code_at(obj->str, i))
#define STB_TEXTEDIT_NEWLINE '\n'
#define IM_ASSERT BX_ASSERT

#define STB_TEXTEDIT_K_SHIFT ( 1 << 30 )
#define STB_TEXTEDIT_K_LEFT 263
#define STB_TEXTEDIT_K_RIGHT 262
#define STB_TEXTEDIT_K_UP 265
#define STB_TEXTEDIT_K_DOWN 264
#define STB_TEXTEDIT_K_PGUP 266
#define STB_TEXTEDIT_K_PGDOWN 267
#define STB_TEXTEDIT_K_LINESTART 268
#define STB_TEXTEDIT_K_LINEEND 269
#define STB_TEXTEDIT_K_TEXTSTART ( 268 | ( 1 << 29 ) )
#define STB_TEXTEDIT_K_TEXTEND ( 269 | ( 1 << 29 ) )
#define STB_TEXTEDIT_K_DELETE 261
#define STB_TEXTEDIT_K_BACKSPACE 259
#define STB_TEXTEDIT_K_UNDO ( 90 | ( 1 << 29 ) )
#define STB_TEXTEDIT_K_REDO ( 89 | ( 1 << 29 ) )
#define STB_TEXTEDIT_K_INSERT 260
#define STB_TEXTEDIT_IS_SPACE(ch) isspace(ch)
#define STB_TEXTEDIT_K_WORDLEFT ( 263 | ( 1 << 29 ) )
#define STB_TEXTEDIT_K_WORDRIGHT ( 262 | ( 1 << 29 ) )

namespace linc_nanovg {
    Array<Dynamic> nvgTextBreakLinesHelper(NVGcontext* ctx, String string, float breakRowWidth);
    Array<Array<float>> nvgTextGlyphPositionsHelper(NVGcontext* ctx, float _x, float _y, String _string, int _maxPositions);
	float nvgTextBoundsHelper(NVGcontext* _ctx, float _x, float _y, String _string, String _end, float* _outArray);
    void nvgTextBoxBoundsHelper(NVGcontext* _ctx, float _x, float _y, float _breakRowWidth, String _string, String _end, float* _outArray);

    int32_t nvgCreateImageMem(NVGcontext* _ctx, uint32_t _imageFlags, void* _data, uint32_t _size);

    int stbGetWidth(IMSTB_TEXTEDIT_STRING* str, int n, int i);
    void stbLayoutRow(void* vrow, IMSTB_TEXTEDIT_STRING* str, int n);
    void stbDeletechars(IMSTB_TEXTEDIT_STRING* str, int i, int n);
    int stbInsertchars(IMSTB_TEXTEDIT_STRING* str, int i, char const* ch, int n);
}

#define STB_TEXTEDIT_GETWIDTH(obj,n,i) linc_nanovg::stbGetWidth(obj,n,i)
#define STB_TEXTEDIT_LAYOUTROW(r,obj,n) linc_nanovg::stbLayoutRow(r, obj, n)
#define STB_TEXTEDIT_DELETECHARS(obj,i,n) linc_nanovg::stbDeletechars(obj,i,n)
#define STB_TEXTEDIT_INSERTCHARS(obj,i,c,n) linc_nanovg::stbInsertchars(obj,i,c,n)

#include "stb/stb_textedit.h"

#endif