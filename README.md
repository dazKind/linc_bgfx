# linc_bgfx
Haxe/hxcpp @:native + cppia binding for https://bkaradzic.github.io/bgfx.

```bash
git submodule update --init --recursive --remote
```


#### build bgfx tools for your platform
bgfx needs to be built on your platform to generate tools like shaderc & texturec.

Visit `linc_bgfx/lib/bgfx` and follow https://bkaradzic.github.io/bgfx/build.html and build all the libraries. It's recommended to build the examples as well as the tools.
```bash
genie --with-examples --with-tools <your compiler>
```


