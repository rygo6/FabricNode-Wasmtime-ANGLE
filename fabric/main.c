#include "wasm_context.h"
#include "render_context.h"
#include <stdio.h>
#include <stdlib.h>

em_wasm_context_data_t *wasm_data;
//ESContext *es_context;

void Draw(ESContext *esContext) {
    EmWasmCallMainLoop(wasm_data);
//    DrawTriangle(esContext);
}

int main(int argc, char *argv[]) {
    wasm_data = CreateEmWasmContext();

    wasm_data->es_context = malloc(sizeof(ESContext));

    UserData userData;
    esInitContext(wasm_data->es_context);
    wasm_data->es_context->userData = &userData;
    esCreateWindow(wasm_data->es_context, "Fabric", 640, 480, ES_WINDOW_RGB);
    esRegisterDrawFunc(wasm_data->es_context, Draw);
    if (!render_context_init(wasm_data->es_context)){
        fprintf(stderr, "Could not init render content. \n");
    }

    EmWasmCallStart(wasm_data);
//    EmWasmCallMainLoop(wasm_data);

//    esMainLoop(wasm_data->es_context);
}
