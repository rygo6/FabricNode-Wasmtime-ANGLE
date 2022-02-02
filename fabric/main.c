#include "wasm_context.h"
#include "render_context.h"
#include <stdio.h>

em_wasm_context_data_t *wasm_data;
ESContext *es_context;

void Draw(ESContext *esContext) {
//    fprintf(stdout, "Draw\n");
//    EmWasmCallMainLoop(wasmData);
//    DrawTriangle(esContext);
}


int main(int argc, char *argv[]) {
    es_context = InitializeAndCreateWindow();

//    wasm_data = CreateEmWasmContext();
//    EmWasmCallStart(wasm_data);
//    EmWasmCallMainLoop(wasm_data);

    esRegisterDrawFunc(es_context, DrawTriangle);
    esMainLoop(es_context);

//    RenderContextCreate(es_context, DrawTriangle);
}
