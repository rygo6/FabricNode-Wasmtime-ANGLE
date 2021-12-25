//
// Created by rygo6 on 12/24/2021.
//

#include <wasm.h>
#include <wasi.h>
#include <wasmtime.h>
#include <stdio.h>
#include <stdlib.h>
#include "wasm_context.h"

#define own

wasmtime_table_t indirect_table;
wasmtime_func_t browser_iteration_func;

static void exit_with_error(const char *message, wasmtime_error_t *error, wasm_trap_t *trap) {
    fprintf(stderr, "error: %s\n", message);
    wasm_byte_vec_t error_message;
    if (error != NULL) {
        wasmtime_error_message(error, &error_message);
        wasmtime_error_delete(error);
    } else {
        wasm_trap_message(trap, &error_message);
        wasm_trap_delete(trap);
    }
    fprintf(stderr, "%.*s\n", (int) error_message.size, error_message.data);
    wasm_byte_vec_delete(&error_message);
    exit(1);
}

static void print_args(const char* name, const wasmtime_val_t *args, size_t nargs) {
    char print_result[128];
    strcpy(print_result,  "> ");
    strncat(print_result, name, strlen(name));
    char buf[128];
    int n = 0;
    for (int i = 0; i < nargs; i++) {
        if (args[i].kind == WASMTIME_I32){
            n = sprintf(buf, " |  %d ", args[i].of.i32);
        }
        strncat(print_result, buf, n);
    }
    printf("%s\n", print_result);
}

static wasm_trap_t* gl_attach_shader_cb(
        void *env,
        wasmtime_caller_t *caller,
        const wasmtime_val_t *args,
        size_t nargs,
        wasmtime_val_t *results,
        size_t nresults) {
    print_args("gl_attach_shader_cb", args, nargs);
//    print_args("gl_attach_shader_cb", args, nargs);
    return NULL;
}

static wasm_trap_t* gl_get_shader_iv_cb(
        void *env,
        wasmtime_caller_t *caller,
        const wasmtime_val_t *args,
        size_t nargs,
        wasmtime_val_t *results,
        size_t nresults) {
    print_args("gl_get_shader_iv_cb", args, nargs);
    return NULL;
}

static wasm_trap_t* gl_bind_buffer_cb(
        void *env,
        wasmtime_caller_t *caller,
        const wasmtime_val_t *args,
        size_t nargs,
        wasmtime_val_t *results,
        size_t nresults) {
    print_args("gl_bind_buffer_cb", args, nargs);
    return NULL;
}

static wasm_trap_t* gl_get_program_iv_cb(
        void *env,
        wasmtime_caller_t *caller,
        const wasmtime_val_t *args,
        size_t nargs,
        wasmtime_val_t *results,
        size_t nresults) {
    print_args("gl_get_program_iv_cb", args, nargs);
    return NULL;
}

static wasm_trap_t* gl_link_program_cb(
        void *env,
        wasmtime_caller_t *caller,
        const wasmtime_val_t *args,
        size_t nargs,
        wasmtime_val_t *results,
        size_t nresults) {
    print_args("gl_link_program_cb", args, nargs);
    return NULL;
}

static wasm_trap_t* gl_bind_attrib_location_cb(
        void *env,
        wasmtime_caller_t *caller,
        const wasmtime_val_t *args,
        size_t nargs,
        wasmtime_val_t *results,
        size_t nresults) {
    print_args("gl_bind_attrib_location_cb", args, nargs);
    return NULL;
}

static wasm_trap_t* gl_create_program_cb(
        void *env,
        wasmtime_caller_t *caller,
        const wasmtime_val_t *args,
        size_t nargs,
        wasmtime_val_t *results,
        size_t nresults) {
    print_args("gl_create_program_cb", args, nargs);
    //return i32
    return NULL;
}

static wasm_trap_t* gl_delete_shader_cb(
        void *env,
        wasmtime_caller_t *caller,
        const wasmtime_val_t *args,
        size_t nargs,
        wasmtime_val_t *results,
        size_t nresults) {
    print_args("gl_delete_shader_cb", args, nargs);
    return NULL;
}

static wasm_trap_t* gl_get_shader_info_log_cb(
        void *env,
        wasmtime_caller_t *caller,
        const wasmtime_val_t *args,
        size_t nargs,
        wasmtime_val_t *results,
        size_t nresults) {
    print_args("gl_get_shader_info_log_cb", args, nargs);
    return NULL;
}

static wasm_trap_t* emscripten_set_main_loop_cb(
        void *env,
        wasmtime_caller_t *caller,
        const wasmtime_val_t *args,
        size_t nargs,
        wasmtime_val_t *results,
        size_t nresults) {
    print_args("emscripten_set_main_loop_cb", args, nargs);
    int func = args[0].of.i32;
    int fps = args[1].of.i32;
    int simulateInfiniteLoop = args[2].of.i32;

    wasmtime_val_t func_val;
    bool found = wasmtime_table_get(wasmtime_caller_context(caller), &indirect_table, func, &func_val);
    if (!found)
        printf("Failed to find entry in table!");

    browser_iteration_func = func_val.of.funcref;

    wasm_trap_t *trap;
    wasmtime_error_t *error = wasmtime_func_call(wasmtime_caller_context(caller), &browser_iteration_func, NULL, 0, NULL, 0, &trap);
    if (error != NULL || trap != NULL)
        exit_with_error("error calling browser_iteration_func", error, trap);

    return NULL;
}

static wasm_trap_t* emscripten_webgl_make_context_current_cb(
        void *env,
        wasmtime_caller_t *caller,
        const wasmtime_val_t *args,
        size_t nargs,
        wasmtime_val_t *results,
        size_t nresults) {
    print_args("emscripten_webgl_make_context_current_cb", args, nargs);
    // return 0
    return NULL;
}

static wasm_trap_t* emscripten_webgl_create_context_cb(
        void *env,
        wasmtime_caller_t *caller,
        const wasmtime_val_t *args,
        size_t nargs,
        wasmtime_val_t *results,
        size_t nresults) {
    print_args("emscripten_webgl_create_context_cb", args, nargs);
    // return 0
    return NULL;
}

static wasm_trap_t* emscripten_webgl_init_context_attributes_cb(
        void *env,
        wasmtime_caller_t *caller,
        const wasmtime_val_t *args,
        size_t nargs,
        wasmtime_val_t *results,
        size_t nresults) {
    print_args("emscripten_webgl_init_context_attributes_cb", args, nargs);
    return NULL;
}

static wasm_trap_t* emscripten_set_canvas_element_size_cb(
        void *env,
        wasmtime_caller_t *caller,
        const wasmtime_val_t *args,
        size_t nargs,
        wasmtime_val_t *results,
        size_t nresults) {
    print_args("emscripten_set_canvas_element_size_cb", args, nargs);
    // return 0
    return NULL;
}

static wasm_trap_t* gl_draw_arrays_cb(
        void *env,
        wasmtime_caller_t *caller,
        const wasmtime_val_t *args,
        size_t nargs,
        wasmtime_val_t *results,
        size_t nresults) {
    print_args("gl_draw_arrays_cb", args, nargs);
    return NULL;
}

static wasm_trap_t* gl_enable_vertex_attrib_array_cb(
        void *env,
        wasmtime_caller_t *caller,
        const wasmtime_val_t *args,
        size_t nargs,
        wasmtime_val_t *results,
        size_t nresults) {
    print_args("gl_enable_vertex_attrib_array_cb", args, nargs);
    return NULL;
}

static wasm_trap_t* gl_vertex_attrib_pointer_cb(
        void *env,
        wasmtime_caller_t *caller,
        const wasmtime_val_t *args,
        size_t nargs,
        wasmtime_val_t *results,
        size_t nresults) {
    print_args("gl_vertex_attrib_pointer_cb", args, nargs);
    return NULL;
}

static wasm_trap_t* gl_compile_shader_cb(
        void *env,
        wasmtime_caller_t *caller,
        const wasmtime_val_t *args,
        size_t nargs,
        wasmtime_val_t *results,
        size_t nresults) {
    print_args("gl_compile_shader_cb", args, nargs);
    return NULL;
}

static wasm_trap_t* gl_use_program_cb(
        void *env,
        wasmtime_caller_t *caller,
        const wasmtime_val_t *args,
        size_t nargs,
        wasmtime_val_t *results,
        size_t nresults) {
    print_args("gl_use_program_cb", args, nargs);
    return NULL;
}

static wasm_trap_t* gl_clear_cb(
        void *env,
        wasmtime_caller_t *caller,
        const wasmtime_val_t *args,
        size_t nargs,
        wasmtime_val_t *results,
        size_t nresults) {
    print_args("gl_clear_cb", args, nargs);
    return NULL;
}

static wasm_trap_t* gl_viewport_cb(
        void *env,
        wasmtime_caller_t *caller,
        const wasmtime_val_t *args,
        size_t nargs,
        wasmtime_val_t *results,
        size_t nresults) {
    print_args("gl_viewport_cb", args, nargs);
    return NULL;
}

static wasm_trap_t* gl_buffer_data_cb(
        void *env,
        wasmtime_caller_t *caller,
        const wasmtime_val_t *args,
        size_t nargs,
        wasmtime_val_t *results,
        size_t nresults) {
    print_args("gl_buffer_data_cb", args, nargs);
    return NULL;
}

static wasm_trap_t* gl_gen_buffers_cb(
        void *env,
        wasmtime_caller_t *caller,
        const wasmtime_val_t *args,
        size_t nargs,
        wasmtime_val_t *results,
        size_t nresults) {
    print_args("gl_gen_buffers_cb", args, nargs);
    return NULL;
}

static wasm_trap_t* gl_clear_color_cb(
        void *env,
        wasmtime_caller_t *caller,
        const wasmtime_val_t *args,
        size_t nargs,
        wasmtime_val_t *results,
        size_t nresults) {
    print_args("gl_clear_color_cb", args, nargs);
    return NULL;
}

static wasm_trap_t* gl_delete_program_cb(
        void *env,
        wasmtime_caller_t *caller,
        const wasmtime_val_t *args,
        size_t nargs,
        wasmtime_val_t *results,
        size_t nresults) {
    print_args("gl_delete_program_cb", args, nargs);
    return NULL;
}

static wasm_trap_t* gl_get_program_info_log_cb(
        void *env,
        wasmtime_caller_t *caller,
        const wasmtime_val_t *args,
        size_t nargs,
        wasmtime_val_t *results,
        size_t nresults) {
    print_args("gl_get_program_info_log_cb", args, nargs);
    return NULL;
}

static wasm_trap_t* gl_shader_source_cb(
        void *env,
        wasmtime_caller_t *caller,
        const wasmtime_val_t *args,
        size_t nargs,
        wasmtime_val_t *results,
        size_t nresults) {
    print_args("gl_shader_source_cb", args, nargs);
    return NULL;
}

static wasm_trap_t* gl_create_shader_cb(
        void *env,
        wasmtime_caller_t *caller,
        const wasmtime_val_t *args,
        size_t nargs,
        wasmtime_val_t *results,
        size_t nresults) {
    print_args("gl_create_shader_cb", args, nargs);
    return NULL;
}

static wasm_trap_t* generic_cb_unchecked(
        void *env,
        wasmtime_caller_t *caller,
        const wasmtime_val_raw_t *args_and_results) {
    printf("> generic_cb_unchecked!\n");
    return NULL;
}

static void define_func(
        wasmtime_linker_t *linker,
        const char *module,
        const char *name,
        const wasm_functype_t *ty,
        wasmtime_func_callback_t cb) {
    wasmtime_error_t* error = wasmtime_linker_define_func(linker, module, strlen(module), name, strlen(name), ty, cb, NULL, NULL);
    if (error != NULL)
        exit_with_error("failed to link wasi", error, NULL);
    wasm_functype_delete(ty);
}

static void define_func_unchecked(
        wasmtime_linker_t *linker,
        const char *module,
        const char *name,
        const wasm_functype_t *ty,
        wasmtime_func_unchecked_callback_t cb) {
    wasmtime_error_t* error = wasmtime_linker_define_func_unchecked(linker, module, strlen(module), name, strlen(name), ty, cb, NULL, NULL);
    if (error != NULL)
        exit_with_error("failed to link wasi", error, NULL);
    wasm_functype_delete(ty);
}

static inline own wasm_functype_t* wasm_functype_new_4_0(
        own wasm_valtype_t* p1, own wasm_valtype_t* p2, own wasm_valtype_t* p3, own wasm_valtype_t* p4
) {
    wasm_valtype_t* ps[4] = {p1, p2, p3, p4};
    wasm_valtype_vec_t params, results;
    wasm_valtype_vec_new(&params, 4, ps);
    wasm_valtype_vec_new_empty(&results);
    return wasm_functype_new(&params, &results);
}

static inline own wasm_functype_t* wasm_functype_new_6_0(
        own wasm_valtype_t* p1, own wasm_valtype_t* p2, own wasm_valtype_t* p3, own wasm_valtype_t* p4, own wasm_valtype_t* p5, own wasm_valtype_t* p6
) {
    wasm_valtype_t* ps[6] = {p1, p2, p3, p4, p5, p6};
    wasm_valtype_vec_t params, results;
    wasm_valtype_vec_new(&params, 6, ps);
    wasm_valtype_vec_new_empty(&results);
    return wasm_functype_new(&params, &results);
}

int wasm_run() {
    // Set up our context
    wasm_engine_t *engine = wasm_engine_new();
    assert(engine != NULL);
    wasmtime_store_t *store = wasmtime_store_new(engine, NULL, NULL);
    assert(store != NULL);
    wasmtime_context_t *context = wasmtime_store_context(store);

    // Create a linker with WASI functions defined
    wasmtime_linker_t *linker = wasmtime_linker_new(engine);
    wasmtime_error_t *error = wasmtime_linker_define_wasi(linker);
    if (error != NULL)
        exit_with_error("failed to link wasi", error, NULL);

    const char* env_module = "env";

    define_func(linker, env_module, "glAttachShader",
                wasm_functype_new_2_0(
                        wasm_valtype_new_i32(),
                        wasm_valtype_new_i32()),
                gl_attach_shader_cb);

    define_func(linker, env_module, "glGetShaderiv",
                wasm_functype_new_3_0(
                        wasm_valtype_new_i32(),
                        wasm_valtype_new_i32(),
                        wasm_valtype_new_i32()),
                gl_get_shader_iv_cb);

    define_func(linker, env_module, "glBindBuffer",
                wasm_functype_new_2_0(
                        wasm_valtype_new_i32(),
                        wasm_valtype_new_i32()),
                gl_bind_buffer_cb);

    define_func(linker, env_module, "glGetProgramiv",
                wasm_functype_new_3_0(
                        wasm_valtype_new_i32(),
                        wasm_valtype_new_i32(),
                        wasm_valtype_new_i32()),
                gl_get_program_iv_cb);

    define_func(linker, env_module, "glLinkProgram",
                wasm_functype_new_1_0(
                        wasm_valtype_new_i32()),
                gl_link_program_cb);

    define_func(linker, env_module, "glBindAttribLocation",
                wasm_functype_new_3_0(
                        wasm_valtype_new_i32(),
                        wasm_valtype_new_i32(),
                        wasm_valtype_new_i32()),
                gl_bind_attrib_location_cb);

    define_func(linker, env_module, "glCreateProgram",
                wasm_functype_new_0_1(
                        wasm_valtype_new_i32()),
                gl_create_program_cb);

    define_func(linker, env_module, "glDeleteShader",
                wasm_functype_new_1_0(
                        wasm_valtype_new_i32()),
                gl_delete_shader_cb);

    define_func(linker, env_module, "glGetShaderInfoLog",
                wasm_functype_new_4_0(
                        wasm_valtype_new_i32(),
                        wasm_valtype_new_i32(),
                        wasm_valtype_new_i32(),
                        wasm_valtype_new_i32()),
                gl_get_shader_info_log_cb);

    define_func(linker, env_module, "emscripten_set_main_loop",
                wasm_functype_new_3_0(
                        wasm_valtype_new_i32(),
                        wasm_valtype_new_i32(),
                        wasm_valtype_new_i32()),
                emscripten_set_main_loop_cb);

    define_func(linker, env_module, "emscripten_webgl_make_context_current",
                wasm_functype_new_1_1(
                        wasm_valtype_new_i32(),
                        wasm_valtype_new_i32()),
                emscripten_webgl_make_context_current_cb);

    define_func(linker, env_module, "emscripten_webgl_create_context",
                wasm_functype_new_2_1(
                        wasm_valtype_new_i32(),
                        wasm_valtype_new_i32(),
                        wasm_valtype_new_i32()),
                emscripten_webgl_create_context_cb);

    define_func(linker, env_module, "emscripten_webgl_init_context_attributes",
                wasm_functype_new_1_0(
                        wasm_valtype_new_i32()),
                emscripten_webgl_init_context_attributes_cb);

    define_func(linker, env_module, "emscripten_set_canvas_element_size",
                wasm_functype_new_3_1(
                        wasm_valtype_new_i32(),
                        wasm_valtype_new_i32(),
                        wasm_valtype_new_i32(),
                        wasm_valtype_new_i32()),
                emscripten_set_canvas_element_size_cb);

    define_func(linker, env_module, "glDrawArrays",
                wasm_functype_new_3_0(
                        wasm_valtype_new_i32(),
                        wasm_valtype_new_i32(),
                        wasm_valtype_new_i32()),
                gl_draw_arrays_cb);

    define_func(linker, env_module, "glEnableVertexAttribArray",
                wasm_functype_new_1_0(
                        wasm_valtype_new_i32()),
                gl_enable_vertex_attrib_array_cb);

    define_func(linker, env_module, "glVertexAttribPointer",
                wasm_functype_new_6_0(
                        wasm_valtype_new_i32(),
                        wasm_valtype_new_i32(),
                        wasm_valtype_new_i32(),
                        wasm_valtype_new_i32(),
                        wasm_valtype_new_i32(),
                        wasm_valtype_new_i32()),
                gl_vertex_attrib_pointer_cb);

    define_func(linker, env_module, "glCompileShader",
                wasm_functype_new_1_0(
                        wasm_valtype_new_i32()),
                gl_compile_shader_cb);

    define_func(linker, env_module, "glUseProgram",
                wasm_functype_new_1_0(
                        wasm_valtype_new_i32()),
                gl_use_program_cb);

    define_func(linker, env_module, "glClear",
                wasm_functype_new_1_0(
                        wasm_valtype_new_i32()),
                gl_clear_cb);

    define_func(linker, env_module, "glViewport",
                wasm_functype_new_4_0(
                        wasm_valtype_new_i32(),
                        wasm_valtype_new_i32(),
                        wasm_valtype_new_i32(),
                        wasm_valtype_new_i32()),
                gl_viewport_cb);

    define_func(linker, env_module, "glBufferData",
                wasm_functype_new_4_0(
                        wasm_valtype_new_i32(),
                        wasm_valtype_new_i32(),
                        wasm_valtype_new_i32(),
                        wasm_valtype_new_i32()),
                gl_buffer_data_cb);

    define_func(linker, env_module, "glGenBuffers",
                wasm_functype_new_2_0(
                        wasm_valtype_new_i32(),
                        wasm_valtype_new_i32()),
                gl_gen_buffers_cb);

    define_func(linker, env_module, "glClearColor",
                wasm_functype_new_4_0(
                        wasm_valtype_new_f32(),
                        wasm_valtype_new_f32(),
                        wasm_valtype_new_f32(),
                        wasm_valtype_new_f32()),
                gl_clear_color_cb);

    define_func(linker, env_module, "glDeleteProgram",
                wasm_functype_new_1_0(
                        wasm_valtype_new_i32()),
                gl_delete_program_cb);

    define_func(linker, env_module, "glGetProgramInfoLog",
                wasm_functype_new_4_0(
                        wasm_valtype_new_i32(),
                        wasm_valtype_new_i32(),
                        wasm_valtype_new_i32(),
                        wasm_valtype_new_i32()),
                gl_get_program_info_log_cb);

    define_func(linker, env_module, "glShaderSource",
                wasm_functype_new_4_0(
                        wasm_valtype_new_i32(),
                        wasm_valtype_new_i32(),
                        wasm_valtype_new_i32(),
                        wasm_valtype_new_i32()),
                gl_shader_source_cb);

    define_func(linker, env_module, "glCreateShader",
                wasm_functype_new_1_1(
                        wasm_valtype_new_i32(),
                        wasm_valtype_new_i32()),
                gl_create_shader_cb);


    wasm_byte_vec_t wasm;
    // Load our input file to parse it next
    FILE* file = fopen("../tests/wasm/index.wasm", "rb");
    if (!file) {
        printf("> Error loading file!\n");
        exit(1);
    }
    fseek(file, 0L, SEEK_END);
    size_t file_size = ftell(file);
    wasm_byte_vec_new_uninitialized(&wasm, file_size);
    fseek(file, 0L, SEEK_SET);
    if (fread(wasm.data, file_size, 1, file) != 1) {
        printf("> Error loading module!\n");
        exit(1);
    }
    fclose(file);

    // Compile our modules
    wasmtime_module_t *module = NULL;
    error = wasmtime_module_new(engine, (uint8_t*)wasm.data, wasm.size, &module);
    if (!module)
        exit_with_error("failed to compile module", error, NULL);
    wasm_byte_vec_delete(&wasm);

    // Instantiate wasi
    wasi_config_t *wasi_config = wasi_config_new();
    assert(wasi_config);
    wasi_config_inherit_argv(wasi_config);
    wasi_config_inherit_env(wasi_config);
    wasi_config_inherit_stdin(wasi_config);
    wasi_config_inherit_stdout(wasi_config);
    wasi_config_inherit_stderr(wasi_config);
    wasm_trap_t *trap = NULL;
    error = wasmtime_context_set_wasi(context, wasi_config);
    if (error != NULL)
        exit_with_error("failed to instantiate WASI", error, NULL);


    // Instantiate the module
//    error = wasmtime_linker_module(linker, context, "", 0, module);
//    if (error != NULL)
//        exit_with_error("failed to instantiate module", error, NULL);

    wasmtime_instance_t instance;
    error = wasmtime_linker_instantiate(linker, context, module, &instance, &trap);
    if (error != NULL || trap != NULL)
        exit_with_error("failed to instantiate", error, trap);


//    const char* table_name = "__indirect_function_table";
    const char* table_name = "__indirect_function_table";
    wasmtime_extern_t table;
    bool table_found = wasmtime_instance_export_get(context, &instance, table_name, strlen(table_name), &table);
//    bool table_found = wasmtime_linker_get(linker, context, "", 0, table_name, strlen(table_name), &table);
    if (!table_found)
        printf("Table not found!\n");
    indirect_table = table.of.table;

    // Run it.
    const char* start_func_name = "_start";
//    wasmtime_func_t func;
    wasmtime_extern_t start_func;
//    bool start_found = wasmtime_linker_get(linker, context, "", 0, start_func_name, strlen(start_func_name), &start_func);
//    error = wasmtime_linker_get_default(linker, context, "", 0, &func);
    bool start_found  = wasmtime_instance_export_get(context, &instance, start_func_name, strlen(start_func_name), &start_func);
//    if (error != NULL)
    if (!start_found)
        exit_with_error("failed to locate default export for module", error, NULL);

    error = wasmtime_func_call(context, &start_func.of.func, NULL, 0, NULL, 0, &trap);
    if (error != NULL || trap != NULL)
        exit_with_error("error calling default export", error, trap);

    // Clean up after ourselves at this point
    wasmtime_module_delete(module);
    wasmtime_store_delete(store);
    wasm_engine_delete(engine);
    return 0;
}