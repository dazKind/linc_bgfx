import bgfx.*;

import sdl.*;
import sdl.SDL;
import sdl.Window;
import sdl.Renderer;
import sdl.SysWM;

@:headerCode("
    #undef None
    #include <linc_sdl_aux.h>
")
class Test {
    static var sdlWindow:sdl.Window = null;

    public static function main() {

        var windowSize = {w:320, h:320};

        SDL.init(SDL_INIT_VIDEO | SDL_INIT_EVENTS);

        // eval the available renderers
        for (i in 0...SDL.getNumRenderDrivers()) {
            var info = SDL.getRenderDriverInfo(i);
            trace(haxe.Json.stringify(info, null, "  "));
        }

        // create a window and renderer
        var state = SDL.createWindowAndRenderer(320, 320, SDL_WINDOW_RESIZABLE);
        sdlWindow = state.window;
        SDL.setWindowTitle(sdlWindow, "linc_bgfx test app");

        // get the window handle for bgfx
        var init = new Init();
        
        // setup bgfx
        var init = new Init();
        Bgfx.initCtor(init);
        init.type = RendererType.OpenGL;
        init.resolution.width = windowSize.w;
        init.resolution.height = windowSize.h;
        init.resolution.reset = ResetFlags.Vsync;
        init.platformData.ndt = cast getNativeDisplayHandle();
        init.platformData.nwh = cast getNativeWindowHandle();

        init.callback = Bgfx.getCallback();

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
        Bgfx.setDebug(DebugFlags.Stats);

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
                                SDL.getWindowSize(sdlWindow, windowSize);
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
            
            // render your stuff here....
            
            Bgfx.frame(false);
        }

        // shutdown
        Bgfx.shutdown();
        SDL.quit();
    }

    static function getNativeWindowHandle():cpp.Pointer<Void> {
        // https://github.com/bkaradzic/bgfx/blob/5818e34e2198157c6704994ec847b2c6f615fdd7/examples/common/entry/entry_sdl.cpp#L51
        var res:cpp.Pointer<Void> = null;
        var info:SysWMinfo = null;
        // TODO: fix this shit with proper conditionals
        // #if windows

        untyped __cpp__('
            SDL_SysWMinfo wmi;
            SDL_VERSION(&wmi.version);
            SDL_GetWindowWMInfo({0}, &wmi);
        ', sdlWindow);

        #if emscripten
            untyped __cpp__('{0} = (void*)"#canvas";', res);
        #else
            untyped __cpp__('
                #if defined(HX_WINDOWS)
                    {0} = wmi.info.win.window;
                #elif defined(HX_LINUX)
                    if (wmi.subsystem == SDL_SYSWM_WAYLAND)
                        {0} = (void*)(uintptr_t)wmi.info.wl.surface;
                    else
                        {0} = (void*)(uintptr_t)wmi.info.x11.window;
                #elif defined(HX_ANDROID)
                    {0} = wmi.info.android.window;
                #endif
            ', res);
        #end

        // #end
        return res;
    }

    static function getNativeDisplayHandle():cpp.Pointer<Void> {
        var res:cpp.Pointer<Void> = null;
        var info:SysWMinfo = null;
        // TODO: fix this shit with proper conditionals
        untyped __cpp__('
            SDL_SysWMinfo wmi;
            SDL_VERSION(&wmi.version);
            SDL_GetWindowWMInfo({0}, &wmi);
        ', sdlWindow);

        #if emscripten
            untyped __cpp__('{0} = (void*)"#canvas";', res);
        #else
            untyped __cpp__('
                #if defined(HX_LINUX)
                    if (wmi.subsystem == SDL_SYSWM_WAYLAND)
                        {0} = wmi.info.wl.display;
                    else
                        {0} = wmi.info.x11.display;
                #endif
            ', res);
        #end
        return res;
    }
}