import bgfx.Bgfx;

import sdl.SDL;
import sdl.Window;
import sdl.Renderer;
import sdl.SysWM;

@:headerCode("#include <SDL_syswm.h>")
@:buildXml("<set name='ABI' value='-MTd' if='debug windows'/>")
class Test {
    static var state : { window:Window, renderer:Renderer };

    public static function main() {

        var windowSize = {w:320, h:320};

        SDL.init(SDL_INIT_VIDEO | SDL_INIT_EVENTS);

        // eval the available renderers
        for (i in 0...SDL.getNumRenderDrivers()) {
            var info = SDL.getRenderDriverInfo(i);
            trace(haxe.Json.stringify(info, null, "  "));
        }

        // create a window and renderer
        state = SDL.createWindowAndRenderer(320, 320, SDL_WINDOW_RESIZABLE);
        var window = state.window;
        SDL.setWindowTitle(window, "linc_bgfx test app");

        // get the window handle for bgfx
        Bgfx.renderFrame(-1);
        var init = new Init();
        untyped __cpp__('
            SDL_SysWMinfo wmInfo;
            SDL_VERSION(&wmInfo.version);
            SDL_GetWindowWMInfo(window, &wmInfo);
            {0} = wmInfo.info.win.window;
        ', init.platformData.nwh);

        // set resolution and shit
        init.type = RendererType.OpenGL;
        init.resolution.width = windowSize.w;
        init.resolution.height = windowSize.h;
        init.resolution.reset = ResetFlags.Vsync;

        // start bgfx
        if (!Bgfx.init(init)){
            SDL.quit();
            return;
        }

        // Set view 0 to the same dimensions as the window and to clear the color buffer.
        var kClearView:ViewId = 0;
        Bgfx.setViewClear(kClearView, ClearFlags.Color | ClearFlags.Depth, 0x303030ff, 1, 0);
        Bgfx.setViewRectRatio(kClearView, 0, 0, BackbufferRatio.Equal);

        // toggle debug text & stats
        var showDebugToggle = false;
        Bgfx.setDebug(DebugFlags.Text);

        // start the mainloop
        var loop = true;
        while(loop) {
            while(SDL.hasAnEvent()) {
                var e = SDL.pollEvent();
                switch (e.type) {

                    case SDL_KEYDOWN: {
                        showDebugToggle = !showDebugToggle;
                        Bgfx.setDebug(showDebugToggle ? DebugFlags.Stats : DebugFlags.Text);
                    }
                    
                    case SDL_WINDOWEVENT: {
                        switch(e.window.event) {
                            case SDL_WINDOWEVENT_RESIZED, SDL_WINDOWEVENT_SIZE_CHANGED: {
                                var oldW = windowSize.w;
                                var oldH = windowSize.h;
                                SDL.getWindowSize(window, windowSize);
                                if (windowSize.w != oldW || windowSize.h != oldH) {
                                    Bgfx.reset(windowSize.w, windowSize.h, ResetFlags.Vsync, TextureFormat.BGRA8);
                                    Bgfx.setViewRectRatio(kClearView, 0, 0, BackbufferRatio.Equal);
                                }
                            }
                            default:
                        }
                    }
                    case SDL_QUIT: loop = false;
                    default:
                }
            }

            Bgfx.touch(kClearView);
            Bgfx.dbgTextClear(0, true);

            var stats = Bgfx.getStats();
            untyped __cpp__('bgfx_dbg_text_printf(0, 2, 0x0f, "Backbuffer %dW x %dH in pixels, debug text %dW x %dH in characters.", {0}->width, {0}->height, {0}->textWidth, {0}->textHeight)', stats);
            
            Bgfx.frame(false);
        }

        // shutdown
        Bgfx.shutdown();
        SDL.quit();
    }
}