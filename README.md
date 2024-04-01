# cortex

This is a prototype.
Eventually this will become a focused, highly opinionated, no frills game-engine.
## setup

#### install dependencies
```bash
haxelib git linc_timestamp https://github.com/ceramic-engine/linc_timestamp/tree/master
haxelib git linc_filewatch https://github.com/snowkit/linc_filewatch
# the following have submodules that need to be initalized
haxelib git linc_bgfx https://github.com/dazKind/linc_bgfx
haxelib git linc_sdl https://github.com/ceramic-engine/linc_sdl.git
```

#### build bgfx libs for your platform
bgfx needs to be built on your platform to generate lib files we can link against.
Follow https://bkaradzic.github.io/bgfx/build.html and build all the libraries.
Review & Modify the libpaths as necessary in `linc/linc_bgfx`: 
```xml
<section if="windows">
            <lib name="gdi32.lib"/>
            <lib name="kernel32.lib"/>
            <lib name="psapi.lib"/>
            <section unless="debug">
                <lib if="HXCPP_M64" name="${LINC_BGFX_PATH}/lib/bgfx/.build/win64_vs2022/bin/bgfxRelease.lib"/>
                <lib if="HXCPP_M64" name="${LINC_BGFX_PATH}/lib/bgfx/.build/win64_vs2022/bin/bimgRelease.lib"/>
                <lib if="HXCPP_M64" name="${LINC_BGFX_PATH}/lib/bgfx/.build/win64_vs2022/bin/bxRelease.lib"/>
            </section>
            <section if="debug">
                <lib if="HXCPP_M64" name="${LINC_BGFX_PATH}/lib/bgfx/.build/win64_vs2022/bin/bgfxDebug.lib"/>
                <lib if="HXCPP_M64" name="${LINC_BGFX_PATH}/lib/bgfx/.build/win64_vs2022/bin/bimgDebug.lib"/>
                <lib if="HXCPP_M64" name="${LINC_BGFX_PATH}/lib/bgfx/.build/win64_vs2022/bin/bxDebug.lib"/>
            </section>
        </section>
    </target>
```

#### Review the makefile
```sh
host:
	haxe 0_build.hxml -debug --times # build the cppia host

script:
	haxe 1_script.hxml -debug --times # build the cppia script

native:
	haxe 2_native.hxml -debug --times # build a native all-in-one executable

run:
	bin/Cortex-debug.exe
```

The following will build and run the cppia enable setup. 
```sh
make run
```
Once the app is up you can re-compile the script with changes and the app will reload the script.
