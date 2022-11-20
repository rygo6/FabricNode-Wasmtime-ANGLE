# FabricNode-Wasmtime-ANGLE

This a prototype showing how to issue rendering calls directly from a Standalone WASM VM to WebGL without needing any JavaScript.

This was initially intended to be an ANGLE+Wasmtime based Node for Fabric, but decided this is not the right route for that.

This contains index.wasm which was compiled via Emscripten and is the bare necessity to render a single triangle. The Wasmtime VM is placed on top of Google Angle. The Wasmtime VM then loads the index.wasm binary and utilizes the C-API to forward the WebGL rendering calls directly from WASM to Google Angle. This route I believe holds promise for something as through the C-API you can send memory directly from the WASM linear memory space into Google Angle for rendering.

Currently builds on windows with mingw gcc. All necessary dlls are in the third_party folder. But you may have to copy them next to the built exe.
