#ifndef _LINC_BGFX_H_
#define _LINC_BGFX_H_

#include <hxcpp.h>

#include "bgfx/c99/bgfx.h"
#include "bx/bx.h"

namespace linc_bgfx {
	extern bgfx_callback_interface_t* getBgfxCallback();
}

#endif