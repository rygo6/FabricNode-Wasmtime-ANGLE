#ifndef FABRIC_WASM_CONTEXT_H
#define FABRIC_WASM_CONTEXT_H

#include "esUtil.h"
#include <wasmtime.h>

typedef struct em_wasm_context_data em_wasm_context_data_t;

struct em_wasm_context_data {
    wasm_trap_t* (*CallMainLoop)(em_wasm_context_data_t *);

    wasmtime_context_t* context;
    wasmtime_store_t* store;
    wasmtime_instance_t instance;
    wasmtime_module_t* module;
    wasm_engine_t* engine;

    wasmtime_table_t indirectTable;

    wasmtime_func_t mainLoopFunc;
    wasmtime_func_t startFunc;

    int fps;
    int infiniteLoop;
};

wasm_trap_t* EmWasmCallMainLoop(em_wasm_context_data_t *emWasmContextData);
wasm_trap_t* EmWasmCallStart(em_wasm_context_data_t *emWasmContextData);
em_wasm_context_data_t* CreateEmWasmContext();

#endif //FABRIC_WASM_CONTEXT_H