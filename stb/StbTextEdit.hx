package stb;

import nanovg.Nvg;

@:structAccess
@:unreflective
@:semantics(reference)
@:include("linc_bgfx.h")
@:native('::STB_TexteditState')
@:lincCppiaDef('StbTexteditState', 'struct')
extern class Native_TexteditState {
    public function new();
    public var cursor:Int;
    public var select_start:Int;
    public var select_end:Int;
    public var insert_mode:cpp.UInt8;
    public var row_count_per_page:Int;
    // public function hasSelection():Bool return select_start != select_end;
}
typedef Native_TexteditStateRef = cpp.Reference<Native_TexteditState>;

#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapStructExtern('Native_TexteditState'))
    class StbTexteditState {
        // public function hasSelection() return __inst.hasSelection();
    }
#else
    typedef StbTexteditState = Native_TexteditState;
#end

@:structAccess
@:unreflective
@:semantics(reference)
@:include("linc_bgfx.h")
@:native('::StbTexteditRow')
@:lincCppiaDef('HxStbTexteditRow', 'struct')
extern class Native_StbTexteditRow {
    public function new();
    public var x0:cpp.Float32;
    public var x1:cpp.Float32;
    public var baseline_y_delta:cpp.Float32;
    public var ymin:cpp.Float32;
    public var ymax:cpp.Float32;
    public var num_chars:Int;
}
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapStructExtern('Native_StbTexteditRow'))
    class HxStbTexteditRow {}
#else
    typedef HxStbTexteditRow = Native_StbTexteditRow;
#end

@:structAccess
@:unreflective
@:semantics(reference)
@:include("linc_bgfx.h")
@:native('::NvgTextEditString')
extern class Native_NvgStbTextEditContext {
    public function new();
    public var str:String;
    public var nvg:cpp.Star<Native_NvgContext>;
}
typedef Native_NvgStbTextEditContextRef = cpp.Reference<Native_NvgStbTextEditContext>;

#if (scriptable || cppia)
    class NvgStbTextEditContext {
        public var __ptr:cpp.Pointer<Native_NvgStbTextEditContext> = null;
        public var __inst:Native_NvgStbTextEditContext = new Native_NvgStbTextEditContext();
        public function new() {}

        public var str(get, set):String;
        function set_str(_v:String):String {
            if (__ptr == null)
                __inst.str = cast _v;
            else
                __ptr.ref.str = cast _v;
            return _v;
        }
        function get_str():String
            return __ptr == null ? cast(__inst.str, String) : cast(__ptr.ref.str, String);

        public var nvg(get, set):cpp.Pointer<Native_NvgContext>;
        function set_nvg(_v:cpp.Pointer<Native_NvgContext>):cpp.Pointer<Native_NvgContext> {
            if (__ptr == null)
                __inst.nvg = cast _v;
            else
                __ptr.ref.nvg = cast _v;
            return _v;
        }
        function get_nvg():cpp.Pointer<Native_NvgContext> return __ptr == null ? cast __inst.nvg : cast __ptr.ref.nvg;
    }
#else
    typedef NvgStbTextEditContext = Native_NvgStbTextEditContext;
#end

@:include("linc_bgfx.h")
extern class Native_StbTextEdit {
    // void stb_textedit_initialize_state(STB_TexteditState *state, int is_single_line)
    public static inline function initialize_state(_state:Native_TexteditStateRef, _is_single_line:Int):Void
        untyped __cpp__('stb_textedit_initialize_state(&{0},{1})', _state, _is_single_line);

    // void stb_textedit_click(STB_TEXTEDIT_STRING *str, STB_TexteditState *state, float x, float y)
    public static inline function click(_ctx:Native_NvgStbTextEditContextRef, _state:Native_TexteditStateRef, _x:cpp.Float32, _y:cpp.Float32):Void
        untyped __cpp__('stb_textedit_click(&{0},&{1},{2},{3})', _ctx, _state, _x, _y);

    // void stb_textedit_drag(STB_TEXTEDIT_STRING *str, STB_TexteditState *state, float x, float y)
    public static inline function drag(_ctx:Native_NvgStbTextEditContextRef, _state:Native_TexteditStateRef, _x:cpp.Float32, _y:cpp.Float32):Void
        untyped __cpp__('stb_textedit_drag(&{0},&{1},{2},{3})', _ctx, _state, _x, _y);

    // int  stb_textedit_cut(STB_TEXTEDIT_STRING *str, STB_TexteditState *state)
    public static inline function cut(_ctx:Native_NvgStbTextEditContextRef, _state:Native_TexteditStateRef):Int
        return untyped __cpp__('stb_textedit_cut(&{0}, &{1})', _ctx, _state);

    // int  stb_textedit_paste(STB_TEXTEDIT_STRING *str, STB_TexteditState *state, STB_TEXTEDIT_CHARTYPE *text, int len)
    public static inline function paste(_ctx:Native_NvgStbTextEditContextRef, _state:Native_TexteditStateRef, _text:String):Void
        untyped __cpp__('stb_textedit_paste(&{0}, &{1}, (IMSTB_TEXTEDIT_CHARTYPE *)({2}.c_str()), {3})', _ctx, _state, _text, _text.length);

    // void stb_textedit_key(STB_TEXTEDIT_STRING *str, STB_TexteditState *state, STB_TEXEDIT_KEYTYPE key)
    public static inline function key(_ctx:Native_NvgStbTextEditContextRef, _state:Native_TexteditStateRef, _key:Int):Void
        untyped __cpp__('stb_textedit_key(&{0}, &{1}, {2})', _ctx, _state, _key);

    // void stb_textedit_text(STB_TEXTEDIT_STRING *str, STB_TexteditState *state, STB_TEXTEDIT_CHARTYPE *text, int text_len)
    public static inline function text(_ctx:Native_NvgStbTextEditContextRef, _state:Native_TexteditStateRef, _text:String):Void
        untyped __cpp__('stb_textedit_text(&{0}, &{1}, (IMSTB_TEXTEDIT_CHARTYPE *)({2}.c_str()), {3})', _ctx, _state, _text, _text.length);
}

#if (scriptable || cppia)
    class StbTextEdit {
        public static function initialize_state(_state:StbTexteditState, _i:Int):Void
            Native_StbTextEdit.initialize_state(cast _state.__inst, _i);

        public static function click(_ctx:NvgStbTextEditContext, _state:StbTexteditState, _x:Float, _y:Float):Void
            Native_StbTextEdit.click(_ctx.__inst, _state.__inst, _x, _y);

        public static function drag(_ctx:NvgStbTextEditContext, _state:StbTexteditState, _x:Float, _y:Float):Void
            Native_StbTextEdit.drag(_ctx.__inst, _state.__inst, _x, _y);

        public static function cut(_ctx:NvgStbTextEditContext, _state:StbTexteditState):Int
            return Native_StbTextEdit.cut(_ctx.__inst, _state.__inst);

        public static function paste(_ctx:NvgStbTextEditContext, _state:StbTexteditState, _text:String):Void
            Native_StbTextEdit.paste(_ctx.__inst, _state.__inst, _text);

        public static function key(_ctx:NvgStbTextEditContext, _state:StbTexteditState, _key:Int):Void
            Native_StbTextEdit.key(_ctx.__inst, _state.__inst, _key);

        public static function text(_ctx:NvgStbTextEditContext, _state:StbTexteditState, _text:String):Void
            Native_StbTextEdit.text(_ctx.__inst, _state.__inst, _text);
    }
#else
    typedef StbTextEdit = Native_StbTextEdit;
#end