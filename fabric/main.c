#include "wasm_context.h"
#include "render_context.h"
#include <stdio.h>

em_wasm_context_data_t *wasmData;

void Draw(ESContext *esContext) {
//    fprintf(stdout, "Draw\n");
//    EmWasmCallMainLoop(wasmData);
}


int main(int argc, char *argv[]) {
    wasmData = CreateEmWasmContext();

//    EmWasmCallStart(wasmData);
//    EmWasmCallMainLoop(wasmData);

//    RenderContextCreate(&Draw);
}
