#include "wasm_context.h"
#include "render_context.h"
#include <stdio.h>

em_wasm_context_data_t *wasmData;
ESContext esContext;

void Draw(ESContext *esContext) {
//    fprintf(stdout, "Draw\n");
//    EmWasmCallMainLoop(wasmData);
}


int main(int argc, char *argv[]) {
    esContext = InitializeAndCreateWindow();

    wasmData = CreateEmWasmContext();
    EmWasmCallStart(wasmData);
    EmWasmCallMainLoop(wasmData);

//    RenderContextCreate(&Draw);
}
