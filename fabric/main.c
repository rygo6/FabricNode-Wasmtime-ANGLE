#include "wasm_context.h"
#include "render_context.h"
#include <stdio.h>
#include <stdlib.h>

em_wasm_context_data_t *wasm_data;
//ESContext *es_context;

bool run_once = false;

void Draw(ESContext *es_context) {

    if (!run_once){
        run_once = true;

//        DrawTriangle(es_context);

        EmWasmCallMainLoop(wasm_data);

        eglSwapBuffers(es_context->eglDisplay, es_context->eglSurface);
    }

}

int main(int argc, char *argv[]) {

    unsigned int i = 1;
    char *c = (char*)&i;
    if (*c)
        printf("Little Endian\n");
    else
        printf("Big Endian\n");

    wasm_data = CreateEmWasmContext();

    wasm_data->es_context = malloc(sizeof(ESContext));

    UserData userData;
    esInitContext(wasm_data->es_context);
    wasm_data->es_context->userData = &userData;

    esCreateWindow(wasm_data->es_context, "Fabric", 640, 480, ES_WINDOW_RGB);

    esRegisterDrawFunc(wasm_data->es_context, Draw);

//    if (!render_context_init(wasm_data->es_context)) {
//        fprintf(stderr, "Could not init render content. \n");
//    }

    EmWasmCallStart(wasm_data);
}
