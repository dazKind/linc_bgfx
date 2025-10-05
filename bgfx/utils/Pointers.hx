package bgfx.utils;

import bgfx.Attachment;
import cpp.Function;
import cpp.Star;
import cpp.Stdlib;

class Pointers {
    #if !(cppia || scriptable) inline #end
    public static function bytesToConstVoidPtr(_b:haxe.io.Bytes):cpp.ConstPointer<cpp.Void> {
        return cast cpp.ConstPointer.fromRaw(cpp.NativeArray.getBase(_b.getData()).getBase());
    }

    #if !(cppia || scriptable) inline #end
    public static function bytesToConstCharPtr(_b:haxe.io.Bytes):cpp.ConstPointer<cpp.UInt8> {
        var tmp:cpp.RawPointer<cpp.UInt8> = cast cpp.NativeArray.getBase(_b.getData()).getBase();
        return cpp.ConstPointer.fromRaw(tmp);
    }

    // #if (!cppia || !scriptable) inline #end
    // public static function fromRaw<T>(_p:cpp.RawPointer<T>):cpp.Pointer<T> {
    //     return cpp.Pointer.fromRaw(_p);
    // }

    // #if (!cppia || !scriptable) inline #end
    // public static function fromStar<T>(_p:Star<T>):cpp.Pointer<T> {
    //     return cpp.Pointer.fromStar(_p);
    // }

    #if !(cppia || scriptable) inline #end
    public static function float32ArrayToVoidPtr(_ar:Array<cpp.Float32>):cpp.Star<cpp.Void>
        return cast cpp.NativeArray.getBase(_ar).getBase();

    #if !(cppia || scriptable) inline #end
    public static function float32ArrayToConstVoidPtr(_ar:Array<cpp.Float32>):cpp.ConstStar<cpp.Void>
        return cast cpp.NativeArray.getBase(_ar).getBase();

    #if !(cppia || scriptable) inline #end
    public static function float32ArrayToVoidPointer(_ar:Array<cpp.Float32>):cpp.Pointer<cpp.Void>
        return cast cpp.Pointer.fromStar(cpp.NativeArray.getBase(_ar).getBase());

    #if !(cppia || scriptable) inline #end
    public static function attachmentArrayToPointer(_ar:AttachmentArray):cpp.Pointer<Native_Attachment> {
        #if !(cppia || scriptable)    
            var ptr:cpp.Pointer<cpp.Void> = Stdlib.malloc(_ar.length*Stdlib.sizeof(Native_Attachment));
            
            cpp.vm.Gc.setFinalizer(ptr, cpp.Function.fromStaticFunction(del));

            var aptr:cpp.RawPointer<Native_Attachment> = cast ptr;
            for (i in 0..._ar.length)
                aptr[i] = _ar[i];

            return cast aptr;
        #else
            var ptr:cpp.Pointer<cpp.Void> = Stdlib.malloc(_ar.length*Stdlib.sizeof(Native_Attachment));
            
            #if scriptable
                cpp.vm.Gc.setFinalizer(ptr, Function.fromStaticFunction(del));
            #end

            var aptr:cpp.RawPointer<Native_Attachment> = cast ptr;
            for (i in 0..._ar.length)
                aptr[i] = _ar[i].__inst;

            return cast aptr;        
        #end
    }

    static function del(_ptr:cpp.Pointer<cpp.Void>) {
        _ptr.destroy();
    }
}