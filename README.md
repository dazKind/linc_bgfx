[![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2FdazKind%2Flinc_bgfx&count_bg=%2379C83D&title_bg=%23555555&icon=&icon_color=%23E7E7E7&title=hits&edge_flat=false)](https://hits.seeyoufarm.com)
```bash
git submodule update --init --recursive --remote
```

#### build bgfx libs for your platform
bgfx needs to be built on your platform to generate lib files we can link against.

Visit `linc_bgfx/lib/bgfx` and follow https://bkaradzic.github.io/bgfx/build.html and build all the libraries. It's recommended to build the examples as well as the tools.
```bash
genie --with-examples --with-tools <your compiler>
```

Review & Modify the libpaths as necessary in `linc_bgfx/linc/linc_bgfx.xml` (Temporary till we find a solution for all kinds of compilers, etc): 
```xml
<section if="windows">
    <lib name="gdi32.lib"/>
    <lib name="kernel32.lib"/>
    <lib name="psapi.lib"/>
    <section unless="debug">
        <lib if="HXCPP_M64" name="${LINC_BGFX_PATH}lib/bgfx/.build/win64_vs2022/bin/bgfxRelease.lib"/>
        <lib if="HXCPP_M64" name="${LINC_BGFX_PATH}lib/bgfx/.build/win64_vs2022/bin/bimgRelease.lib"/>
        <lib if="HXCPP_M64" name="${LINC_BGFX_PATH}lib/bgfx/.build/win64_vs2022/bin/bimg_decodeRelease.lib"/>
        <lib if="HXCPP_M64" name="${LINC_BGFX_PATH}lib/bgfx/.build/win64_vs2022/bin/bimg_encodeRelease.lib"/>
        <lib if="HXCPP_M64" name="${LINC_BGFX_PATH}lib/bgfx/.build/win64_vs2022/bin/bxRelease.lib"/>
    </section>
    <section if="debug">
        <lib if="HXCPP_M64" name="${LINC_BGFX_PATH}lib/bgfx/.build/win64_vs2022/bin/bgfxDebug.lib"/>
        <lib if="HXCPP_M64" name="${LINC_BGFX_PATH}lib/bgfx/.build/win64_vs2022/bin/bimgDebug.lib"/>
        <lib if="HXCPP_M64" name="${LINC_BGFX_PATH}lib/bgfx/.build/win64_vs2022/bin/bimg_decodeDebug.lib"/>
        <lib if="HXCPP_M64" name="${LINC_BGFX_PATH}lib/bgfx/.build/win64_vs2022/bin/bimg_encodeDebug.lib"/>
        <lib if="HXCPP_M64" name="${LINC_BGFX_PATH}lib/bgfx/.build/win64_vs2022/bin/bxDebug.lib"/>
    </section>
</section>
```