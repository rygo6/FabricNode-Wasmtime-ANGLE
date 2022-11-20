#include "wasm_context.h"
#include "render_context.h"
#include <stdlib.h>

em_wasm_context_data_t *wasm_data;

void Draw(ESContext *es_context) {
// for debugging
//    DrawTriangle(es_context);

    EmWasmCallMainLoop(wasm_data);

    eglSwapBuffers(es_context->eglDisplay, es_context->eglSurface);
}

int main(int argc, char *argv[]) {

    wasm_data = CreateEmWasmContext();

    wasm_data->es_context = malloc(sizeof(ESContext));

    UserData userData;
    esInitContext(wasm_data->es_context);
    wasm_data->es_context->userData = &userData;

    esCreateWindow(wasm_data->es_context, "Fabric", 640, 480, ES_WINDOW_RGB);

    esRegisterDrawFunc(wasm_data->es_context, Draw);

    EmWasmCallStart(wasm_data);
}
