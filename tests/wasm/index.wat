(module
  (type (;0;) (func (param i32)))
  (type (;1;) (func (param i32) (result i32)))
  (type (;2;) (func (param i32 i32 i32)))
  (type (;3;) (func (param i32 i32 i32) (result i32)))
  (type (;4;) (func (param i32 i32)))
  (type (;5;) (func (param i32 i32) (result i32)))
  (type (;6;) (func (param i32 i32 i32 i32)))
  (type (;7;) (func (param i32 i64 i32) (result i64)))
  (type (;8;) (func))
  (type (;9;) (func (param i32 i32 i32 i32 i32)))
  (type (;10;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;11;) (func (param i32 f64 i32 i32 i32 i32) (result i32)))
  (type (;12;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;13;) (func (result i32)))
  (type (;14;) (func (param i32 i32 i32 i32 i32 i32)))
  (type (;15;) (func (param f32 f32 f32 f32)))
  (import "wasi_snapshot_preview1" "proc_exit" (func (;0;) (type 0)))
  (import "env" "glAttachShader" (func (;1;) (type 4)))
  (import "wasi_snapshot_preview1" "fd_write" (func (;2;) (type 12)))
  (import "env" "glGetShaderiv" (func (;3;) (type 2)))
  (import "env" "glBindBuffer" (func (;4;) (type 4)))
  (import "env" "glGetProgramiv" (func (;5;) (type 2)))
  (import "env" "glLinkProgram" (func (;6;) (type 0)))
  (import "env" "glBindAttribLocation" (func (;7;) (type 2)))
  (import "env" "glCreateProgram" (func (;8;) (type 13)))
  (import "env" "glDeleteShader" (func (;9;) (type 0)))
  (import "env" "glGetShaderInfoLog" (func (;10;) (type 6)))
  (import "wasi_snapshot_preview1" "args_get" (func (;11;) (type 5)))
  (import "wasi_snapshot_preview1" "args_sizes_get" (func (;12;) (type 5)))
  (import "env" "emscripten_set_main_loop" (func (;13;) (type 2)))
  (import "env" "emscripten_webgl_make_context_current" (func (;14;) (type 1)))
  (import "env" "emscripten_webgl_create_context" (func (;15;) (type 5)))
  (import "env" "emscripten_webgl_init_context_attributes" (func (;16;) (type 0)))
  (import "env" "emscripten_set_canvas_element_size" (func (;17;) (type 3)))
  (import "env" "glDrawArrays" (func (;18;) (type 2)))
  (import "env" "glEnableVertexAttribArray" (func (;19;) (type 0)))
  (import "env" "glVertexAttribPointer" (func (;20;) (type 14)))
  (import "env" "glCompileShader" (func (;21;) (type 0)))
  (import "env" "glUseProgram" (func (;22;) (type 0)))
  (import "env" "glClear" (func (;23;) (type 0)))
  (import "env" "glViewport" (func (;24;) (type 6)))
  (import "env" "glBufferData" (func (;25;) (type 6)))
  (import "env" "glGenBuffers" (func (;26;) (type 4)))
  (import "env" "glClearColor" (func (;27;) (type 15)))
  (import "env" "glDeleteProgram" (func (;28;) (type 0)))
  (import "env" "glGetProgramInfoLog" (func (;29;) (type 6)))
  (import "env" "glShaderSource" (func (;30;) (type 6)))
  (import "env" "glCreateShader" (func (;31;) (type 1)))
  (func (;32;) (type 1) (param i32) (result i32)
    (local i32 i32)
    i32.const 2000
    i32.load
    local.tee 1
    local.get 0
    i32.const 3
    i32.add
    i32.const -4
    i32.and
    local.tee 2
    i32.add
    local.set 0
    block  ;; label = @1
      local.get 2
      i32.const 0
      local.get 0
      local.get 1
      i32.le_u
      select
      br_if 0 (;@1;)
      memory.size
      i32.const 16
      i32.shl
      local.get 0
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 2000
      local.get 0
      i32.store
      local.get 1
      return
    end
    i32.const 2388
    i32.const 48
    i32.store
    i32.const -1)
  (func (;33;) (type 9) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 256
    i32.sub
    local.tee 5
    global.set 0
    local.get 4
    i32.const 73728
    i32.and
    local.get 2
    local.get 3
    i32.le_s
    i32.or
    i32.eqz
    if  ;; label = @1
      local.get 5
      local.get 1
      i32.const 255
      i32.and
      local.get 2
      local.get 3
      i32.sub
      local.tee 2
      i32.const 256
      local.get 2
      i32.const 256
      i32.lt_u
      local.tee 1
      select
      call 40
      local.get 1
      i32.eqz
      if  ;; label = @2
        loop  ;; label = @3
          local.get 0
          local.get 5
          i32.const 256
          call 34
          local.get 2
          i32.const 256
          i32.sub
          local.tee 2
          i32.const 255
          i32.gt_u
          br_if 0 (;@3;)
        end
      end
      local.get 0
      local.get 5
      local.get 2
      call 34
    end
    local.get 5
    i32.const 256
    i32.add
    global.set 0)
  (func (;34;) (type 2) (param i32 i32 i32)
    local.get 0
    i32.load8_u
    i32.const 32
    i32.and
    i32.eqz
    if  ;; label = @1
      local.get 1
      local.get 2
      local.get 0
      call 38
      drop
    end)
  (func (;35;) (type 1) (param i32) (result i32)
    local.get 0
    i32.const 48
    i32.sub
    i32.const 10
    i32.lt_u)
  (func (;36;) (type 1) (param i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load offset=20
      local.get 0
      i32.load offset=28
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.const 0
      local.get 0
      i32.load offset=36
      call_indirect (type 3)
      drop
      local.get 0
      i32.load offset=20
      br_if 0 (;@1;)
      i32.const -1
      return
    end
    local.get 0
    i32.load offset=4
    local.tee 1
    local.get 0
    i32.load offset=8
    local.tee 2
    i32.lt_u
    if  ;; label = @1
      local.get 0
      local.get 1
      local.get 2
      i32.sub
      i64.extend_i32_s
      i32.const 1
      local.get 0
      i32.load offset=40
      call_indirect (type 7)
      drop
    end
    local.get 0
    i32.const 0
    i32.store offset=28
    local.get 0
    i64.const 0
    i64.store offset=16
    local.get 0
    i64.const 0
    i64.store offset=4 align=4
    i32.const 0)
  (func (;37;) (type 10) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 5
    global.set 0
    local.get 5
    local.get 1
    i32.store offset=76
    local.get 5
    i32.const 55
    i32.add
    local.set 19
    local.get 5
    i32.const 56
    i32.add
    local.set 17
    i32.const 0
    local.set 1
    block  ;; label = @1
      loop  ;; label = @2
        block  ;; label = @3
          local.get 14
          i32.const 0
          i32.lt_s
          br_if 0 (;@3;)
          i32.const 2147483647
          local.get 14
          i32.sub
          local.get 1
          i32.lt_s
          if  ;; label = @4
            i32.const 2388
            i32.const 61
            i32.store
            i32.const -1
            local.set 14
            br 1 (;@3;)
          end
          local.get 1
          local.get 14
          i32.add
          local.set 14
        end
        local.get 5
        i32.load offset=76
        local.tee 11
        local.set 1
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 11
              i32.load8_u
              local.tee 6
              if  ;; label = @6
                loop  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 6
                      i32.const 255
                      i32.and
                      local.tee 6
                      i32.eqz
                      if  ;; label = @10
                        local.get 1
                        local.set 6
                        br 1 (;@9;)
                      end
                      local.get 6
                      i32.const 37
                      i32.ne
                      br_if 1 (;@8;)
                      local.get 1
                      local.set 6
                      loop  ;; label = @10
                        local.get 1
                        i32.load8_u offset=1
                        i32.const 37
                        i32.ne
                        br_if 1 (;@9;)
                        local.get 5
                        local.get 1
                        i32.const 2
                        i32.add
                        local.tee 7
                        i32.store offset=76
                        local.get 6
                        i32.const 1
                        i32.add
                        local.set 6
                        local.get 1
                        i32.load8_u offset=2
                        local.set 8
                        local.get 7
                        local.set 1
                        local.get 8
                        i32.const 37
                        i32.eq
                        br_if 0 (;@10;)
                      end
                    end
                    local.get 6
                    local.get 11
                    i32.sub
                    local.set 1
                    local.get 0
                    if  ;; label = @9
                      local.get 0
                      local.get 11
                      local.get 1
                      call 34
                    end
                    local.get 1
                    br_if 6 (;@2;)
                    i32.const -1
                    local.set 16
                    i32.const 1
                    local.set 6
                    local.get 5
                    i32.load offset=76
                    i32.load8_s offset=1
                    call 35
                    local.set 1
                    local.get 5
                    i32.load offset=76
                    local.set 7
                    block  ;; label = @9
                      local.get 1
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 7
                      i32.load8_u offset=2
                      i32.const 36
                      i32.ne
                      br_if 0 (;@9;)
                      local.get 7
                      i32.load8_s offset=1
                      i32.const 48
                      i32.sub
                      local.set 16
                      i32.const 1
                      local.set 18
                      i32.const 3
                      local.set 6
                    end
                    local.get 5
                    local.get 6
                    local.get 7
                    i32.add
                    local.tee 1
                    i32.store offset=76
                    i32.const 0
                    local.set 15
                    block  ;; label = @9
                      local.get 1
                      i32.load8_s
                      local.tee 9
                      i32.const 32
                      i32.sub
                      local.tee 7
                      i32.const 31
                      i32.gt_u
                      if  ;; label = @10
                        local.get 1
                        local.set 6
                        br 1 (;@9;)
                      end
                      local.get 1
                      local.set 6
                      i32.const 1
                      local.get 7
                      i32.shl
                      local.tee 8
                      i32.const 75913
                      i32.and
                      i32.eqz
                      br_if 0 (;@9;)
                      loop  ;; label = @10
                        local.get 5
                        local.get 1
                        i32.const 1
                        i32.add
                        local.tee 6
                        i32.store offset=76
                        local.get 8
                        local.get 15
                        i32.or
                        local.set 15
                        local.get 1
                        i32.load8_s offset=1
                        local.tee 9
                        i32.const 32
                        i32.sub
                        local.tee 7
                        i32.const 32
                        i32.ge_u
                        br_if 1 (;@9;)
                        local.get 6
                        local.set 1
                        i32.const 1
                        local.get 7
                        i32.shl
                        local.tee 8
                        i32.const 75913
                        i32.and
                        br_if 0 (;@10;)
                      end
                    end
                    block  ;; label = @9
                      local.get 9
                      i32.const 42
                      i32.eq
                      if  ;; label = @10
                        local.get 5
                        block (result i32)  ;; label = @11
                          block  ;; label = @12
                            local.get 6
                            i32.load8_s offset=1
                            call 35
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 5
                            i32.load offset=76
                            local.tee 1
                            i32.load8_u offset=2
                            i32.const 36
                            i32.ne
                            br_if 0 (;@12;)
                            local.get 1
                            i32.load8_s offset=1
                            i32.const 2
                            i32.shl
                            local.get 4
                            i32.add
                            i32.const 192
                            i32.sub
                            i32.const 10
                            i32.store
                            local.get 1
                            i32.load8_s offset=1
                            i32.const 3
                            i32.shl
                            local.get 3
                            i32.add
                            i32.const 384
                            i32.sub
                            i32.load
                            local.set 12
                            i32.const 1
                            local.set 18
                            local.get 1
                            i32.const 3
                            i32.add
                            br 1 (;@11;)
                          end
                          local.get 18
                          br_if 6 (;@5;)
                          i32.const 0
                          local.set 18
                          i32.const 0
                          local.set 12
                          local.get 0
                          if  ;; label = @12
                            local.get 2
                            local.get 2
                            i32.load
                            local.tee 1
                            i32.const 4
                            i32.add
                            i32.store
                            local.get 1
                            i32.load
                            local.set 12
                          end
                          local.get 5
                          i32.load offset=76
                          i32.const 1
                          i32.add
                        end
                        local.tee 1
                        i32.store offset=76
                        local.get 12
                        i32.const -1
                        i32.gt_s
                        br_if 1 (;@9;)
                        i32.const 0
                        local.get 12
                        i32.sub
                        local.set 12
                        local.get 15
                        i32.const 8192
                        i32.or
                        local.set 15
                        br 1 (;@9;)
                      end
                      local.get 5
                      i32.const 76
                      i32.add
                      call 50
                      local.tee 12
                      i32.const 0
                      i32.lt_s
                      br_if 4 (;@5;)
                      local.get 5
                      i32.load offset=76
                      local.set 1
                    end
                    i32.const -1
                    local.set 10
                    block  ;; label = @9
                      local.get 1
                      i32.load8_u
                      i32.const 46
                      i32.ne
                      br_if 0 (;@9;)
                      local.get 1
                      i32.load8_u offset=1
                      i32.const 42
                      i32.eq
                      if  ;; label = @10
                        block  ;; label = @11
                          local.get 1
                          i32.load8_s offset=2
                          call 35
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 5
                          i32.load offset=76
                          local.tee 1
                          i32.load8_u offset=3
                          i32.const 36
                          i32.ne
                          br_if 0 (;@11;)
                          local.get 1
                          i32.load8_s offset=2
                          i32.const 2
                          i32.shl
                          local.get 4
                          i32.add
                          i32.const 192
                          i32.sub
                          i32.const 10
                          i32.store
                          local.get 1
                          i32.load8_s offset=2
                          i32.const 3
                          i32.shl
                          local.get 3
                          i32.add
                          i32.const 384
                          i32.sub
                          i32.load
                          local.set 10
                          local.get 5
                          local.get 1
                          i32.const 4
                          i32.add
                          local.tee 1
                          i32.store offset=76
                          br 2 (;@9;)
                        end
                        local.get 18
                        br_if 5 (;@5;)
                        local.get 0
                        if (result i32)  ;; label = @11
                          local.get 2
                          local.get 2
                          i32.load
                          local.tee 1
                          i32.const 4
                          i32.add
                          i32.store
                          local.get 1
                          i32.load
                        else
                          i32.const 0
                        end
                        local.set 10
                        local.get 5
                        local.get 5
                        i32.load offset=76
                        i32.const 2
                        i32.add
                        local.tee 1
                        i32.store offset=76
                        br 1 (;@9;)
                      end
                      local.get 5
                      local.get 1
                      i32.const 1
                      i32.add
                      i32.store offset=76
                      local.get 5
                      i32.const 76
                      i32.add
                      call 50
                      local.set 10
                      local.get 5
                      i32.load offset=76
                      local.set 1
                    end
                    i32.const 0
                    local.set 6
                    loop  ;; label = @9
                      local.get 6
                      local.set 8
                      i32.const -1
                      local.set 13
                      local.get 1
                      i32.load8_s
                      i32.const 65
                      i32.sub
                      i32.const 57
                      i32.gt_u
                      br_if 8 (;@1;)
                      local.get 5
                      local.get 1
                      i32.const 1
                      i32.add
                      local.tee 9
                      i32.store offset=76
                      local.get 1
                      i32.load8_s
                      local.set 6
                      local.get 9
                      local.set 1
                      local.get 6
                      local.get 8
                      i32.const 58
                      i32.mul
                      i32.add
                      i32.const 1455
                      i32.add
                      i32.load8_u
                      local.tee 6
                      i32.const 1
                      i32.sub
                      i32.const 8
                      i32.lt_u
                      br_if 0 (;@9;)
                    end
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 6
                        i32.const 19
                        i32.ne
                        if  ;; label = @11
                          local.get 6
                          i32.eqz
                          br_if 10 (;@1;)
                          local.get 16
                          i32.const 0
                          i32.ge_s
                          if  ;; label = @12
                            local.get 4
                            local.get 16
                            i32.const 2
                            i32.shl
                            i32.add
                            local.get 6
                            i32.store
                            local.get 5
                            local.get 3
                            local.get 16
                            i32.const 3
                            i32.shl
                            i32.add
                            i64.load
                            i64.store offset=64
                            br 2 (;@10;)
                          end
                          local.get 0
                          i32.eqz
                          br_if 8 (;@3;)
                          local.get 5
                          i32.const -64
                          i32.sub
                          local.get 6
                          local.get 2
                          call 49
                          local.get 5
                          i32.load offset=76
                          local.set 9
                          br 2 (;@9;)
                        end
                        local.get 16
                        i32.const -1
                        i32.gt_s
                        br_if 9 (;@1;)
                      end
                      i32.const 0
                      local.set 1
                      local.get 0
                      i32.eqz
                      br_if 7 (;@2;)
                    end
                    local.get 15
                    i32.const -65537
                    i32.and
                    local.tee 7
                    local.get 15
                    local.get 15
                    i32.const 8192
                    i32.and
                    select
                    local.set 6
                    i32.const 0
                    local.set 13
                    i32.const 1024
                    local.set 16
                    local.get 17
                    local.set 15
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block (result i32)  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block (result i32)  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    local.get 9
                                                    i32.const 1
                                                    i32.sub
                                                    i32.load8_s
                                                    local.tee 1
                                                    i32.const -33
                                                    i32.and
                                                    local.get 1
                                                    local.get 1
                                                    i32.const 15
                                                    i32.and
                                                    i32.const 3
                                                    i32.eq
                                                    select
                                                    local.get 1
                                                    local.get 8
                                                    select
                                                    local.tee 1
                                                    i32.const 88
                                                    i32.sub
                                                    br_table 4 (;@20;) 20 (;@4;) 20 (;@4;) 20 (;@4;) 20 (;@4;) 20 (;@4;) 20 (;@4;) 20 (;@4;) 20 (;@4;) 14 (;@10;) 20 (;@4;) 15 (;@9;) 6 (;@18;) 14 (;@10;) 14 (;@10;) 14 (;@10;) 20 (;@4;) 6 (;@18;) 20 (;@4;) 20 (;@4;) 20 (;@4;) 20 (;@4;) 2 (;@22;) 5 (;@19;) 3 (;@21;) 20 (;@4;) 20 (;@4;) 9 (;@15;) 20 (;@4;) 1 (;@23;) 20 (;@4;) 20 (;@4;) 4 (;@20;) 0 (;@24;)
                                                  end
                                                  block  ;; label = @24
                                                    local.get 1
                                                    i32.const 65
                                                    i32.sub
                                                    br_table 14 (;@10;) 20 (;@4;) 11 (;@13;) 20 (;@4;) 14 (;@10;) 14 (;@10;) 14 (;@10;) 0 (;@24;)
                                                  end
                                                  local.get 1
                                                  i32.const 83
                                                  i32.eq
                                                  br_if 9 (;@14;)
                                                  br 19 (;@4;)
                                                end
                                                local.get 5
                                                i64.load offset=64
                                                local.set 20
                                                i32.const 1024
                                                br 5 (;@17;)
                                              end
                                              i32.const 0
                                              local.set 1
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            local.get 8
                                                            i32.const 255
                                                            i32.and
                                                            br_table 0 (;@28;) 1 (;@27;) 2 (;@26;) 3 (;@25;) 4 (;@24;) 26 (;@2;) 5 (;@23;) 6 (;@22;) 26 (;@2;)
                                                          end
                                                          local.get 5
                                                          i32.load offset=64
                                                          local.get 14
                                                          i32.store
                                                          br 25 (;@2;)
                                                        end
                                                        local.get 5
                                                        i32.load offset=64
                                                        local.get 14
                                                        i32.store
                                                        br 24 (;@2;)
                                                      end
                                                      local.get 5
                                                      i32.load offset=64
                                                      local.get 14
                                                      i64.extend_i32_s
                                                      i64.store
                                                      br 23 (;@2;)
                                                    end
                                                    local.get 5
                                                    i32.load offset=64
                                                    local.get 14
                                                    i32.store16
                                                    br 22 (;@2;)
                                                  end
                                                  local.get 5
                                                  i32.load offset=64
                                                  local.get 14
                                                  i32.store8
                                                  br 21 (;@2;)
                                                end
                                                local.get 5
                                                i32.load offset=64
                                                local.get 14
                                                i32.store
                                                br 20 (;@2;)
                                              end
                                              local.get 5
                                              i32.load offset=64
                                              local.get 14
                                              i64.extend_i32_s
                                              i64.store
                                              br 19 (;@2;)
                                            end
                                            local.get 10
                                            i32.const 8
                                            local.get 10
                                            i32.const 8
                                            i32.gt_u
                                            select
                                            local.set 10
                                            local.get 6
                                            i32.const 8
                                            i32.or
                                            local.set 6
                                            i32.const 120
                                            local.set 1
                                          end
                                          local.get 17
                                          local.set 7
                                          local.get 1
                                          i32.const 32
                                          i32.and
                                          local.set 8
                                          local.get 5
                                          i64.load offset=64
                                          local.tee 20
                                          i64.eqz
                                          i32.eqz
                                          if  ;; label = @20
                                            loop  ;; label = @21
                                              local.get 7
                                              i32.const 1
                                              i32.sub
                                              local.tee 7
                                              local.get 20
                                              i32.wrap_i64
                                              i32.const 15
                                              i32.and
                                              i32.const 1984
                                              i32.add
                                              i32.load8_u
                                              local.get 8
                                              i32.or
                                              i32.store8
                                              local.get 20
                                              i64.const 15
                                              i64.gt_u
                                              local.set 11
                                              local.get 20
                                              i64.const 4
                                              i64.shr_u
                                              local.set 20
                                              local.get 11
                                              br_if 0 (;@21;)
                                            end
                                          end
                                          local.get 7
                                          local.set 11
                                          local.get 6
                                          i32.const 8
                                          i32.and
                                          i32.eqz
                                          local.get 5
                                          i64.load offset=64
                                          i64.eqz
                                          i32.or
                                          br_if 3 (;@16;)
                                          local.get 1
                                          i32.const 4
                                          i32.shr_u
                                          i32.const 1024
                                          i32.add
                                          local.set 16
                                          i32.const 2
                                          local.set 13
                                          br 3 (;@16;)
                                        end
                                        local.get 17
                                        local.set 1
                                        local.get 5
                                        i64.load offset=64
                                        local.tee 20
                                        i64.eqz
                                        i32.eqz
                                        if  ;; label = @19
                                          loop  ;; label = @20
                                            local.get 1
                                            i32.const 1
                                            i32.sub
                                            local.tee 1
                                            local.get 20
                                            i32.wrap_i64
                                            i32.const 7
                                            i32.and
                                            i32.const 48
                                            i32.or
                                            i32.store8
                                            local.get 20
                                            i64.const 7
                                            i64.gt_u
                                            local.set 7
                                            local.get 20
                                            i64.const 3
                                            i64.shr_u
                                            local.set 20
                                            local.get 7
                                            br_if 0 (;@20;)
                                          end
                                        end
                                        local.get 1
                                        local.set 11
                                        local.get 6
                                        i32.const 8
                                        i32.and
                                        i32.eqz
                                        br_if 2 (;@16;)
                                        local.get 10
                                        local.get 17
                                        local.get 11
                                        i32.sub
                                        local.tee 1
                                        i32.const 1
                                        i32.add
                                        local.get 1
                                        local.get 10
                                        i32.lt_s
                                        select
                                        local.set 10
                                        br 2 (;@16;)
                                      end
                                      local.get 5
                                      i64.load offset=64
                                      local.tee 20
                                      i64.const -1
                                      i64.le_s
                                      if  ;; label = @18
                                        local.get 5
                                        i64.const 0
                                        local.get 20
                                        i64.sub
                                        local.tee 20
                                        i64.store offset=64
                                        i32.const 1
                                        local.set 13
                                        i32.const 1024
                                        br 1 (;@17;)
                                      end
                                      local.get 6
                                      i32.const 2048
                                      i32.and
                                      if  ;; label = @18
                                        i32.const 1
                                        local.set 13
                                        i32.const 1025
                                        br 1 (;@17;)
                                      end
                                      i32.const 1026
                                      i32.const 1024
                                      local.get 6
                                      i32.const 1
                                      i32.and
                                      local.tee 13
                                      select
                                    end
                                    local.set 16
                                    local.get 17
                                    local.set 11
                                    block  ;; label = @17
                                      local.get 20
                                      i64.const 4294967296
                                      i64.lt_u
                                      if  ;; label = @18
                                        local.get 20
                                        local.set 21
                                        br 1 (;@17;)
                                      end
                                      loop  ;; label = @18
                                        local.get 11
                                        i32.const 1
                                        i32.sub
                                        local.tee 11
                                        local.get 20
                                        local.get 20
                                        i64.const 10
                                        i64.div_u
                                        local.tee 21
                                        i64.const 10
                                        i64.mul
                                        i64.sub
                                        i32.wrap_i64
                                        i32.const 48
                                        i32.or
                                        i32.store8
                                        local.get 20
                                        i64.const 42949672959
                                        i64.gt_u
                                        local.set 1
                                        local.get 21
                                        local.set 20
                                        local.get 1
                                        br_if 0 (;@18;)
                                      end
                                    end
                                    local.get 21
                                    i32.wrap_i64
                                    local.tee 7
                                    if  ;; label = @17
                                      loop  ;; label = @18
                                        local.get 11
                                        i32.const 1
                                        i32.sub
                                        local.tee 11
                                        local.get 7
                                        local.get 7
                                        i32.const 10
                                        i32.div_u
                                        local.tee 1
                                        i32.const 10
                                        i32.mul
                                        i32.sub
                                        i32.const 48
                                        i32.or
                                        i32.store8
                                        local.get 7
                                        i32.const 9
                                        i32.gt_u
                                        local.set 8
                                        local.get 1
                                        local.set 7
                                        local.get 8
                                        br_if 0 (;@18;)
                                      end
                                    end
                                  end
                                  local.get 6
                                  i32.const -65537
                                  i32.and
                                  local.get 6
                                  local.get 10
                                  i32.const -1
                                  i32.gt_s
                                  select
                                  local.set 6
                                  local.get 5
                                  i64.load offset=64
                                  local.tee 20
                                  i64.const 0
                                  i64.ne
                                  local.get 10
                                  i32.or
                                  i32.eqz
                                  if  ;; label = @16
                                    i32.const 0
                                    local.set 10
                                    local.get 17
                                    local.set 11
                                    br 12 (;@4;)
                                  end
                                  local.get 10
                                  local.get 20
                                  i64.eqz
                                  local.get 17
                                  local.get 11
                                  i32.sub
                                  i32.add
                                  local.tee 1
                                  local.get 1
                                  local.get 10
                                  i32.lt_s
                                  select
                                  local.set 10
                                  br 11 (;@4;)
                                end
                                block (result i32)  ;; label = @15
                                  local.get 10
                                  local.tee 1
                                  i32.const 0
                                  i32.ne
                                  local.set 8
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        local.get 5
                                        i32.load offset=64
                                        local.tee 6
                                        i32.const 1065
                                        local.get 6
                                        select
                                        local.tee 11
                                        local.tee 9
                                        i32.const 3
                                        i32.and
                                        i32.eqz
                                        local.get 1
                                        i32.eqz
                                        i32.or
                                        br_if 0 (;@18;)
                                        loop  ;; label = @19
                                          local.get 9
                                          i32.load8_u
                                          i32.eqz
                                          br_if 2 (;@17;)
                                          local.get 1
                                          i32.const 1
                                          i32.sub
                                          local.tee 1
                                          i32.const 0
                                          i32.ne
                                          local.set 8
                                          local.get 9
                                          i32.const 1
                                          i32.add
                                          local.tee 9
                                          i32.const 3
                                          i32.and
                                          i32.eqz
                                          br_if 1 (;@18;)
                                          local.get 1
                                          br_if 0 (;@19;)
                                        end
                                      end
                                      local.get 8
                                      i32.eqz
                                      br_if 1 (;@16;)
                                    end
                                    block  ;; label = @17
                                      local.get 9
                                      i32.load8_u
                                      i32.eqz
                                      local.get 1
                                      i32.const 4
                                      i32.lt_u
                                      i32.or
                                      br_if 0 (;@17;)
                                      loop  ;; label = @18
                                        local.get 9
                                        i32.load
                                        local.tee 6
                                        i32.const -1
                                        i32.xor
                                        local.get 6
                                        i32.const 16843009
                                        i32.sub
                                        i32.and
                                        i32.const -2139062144
                                        i32.and
                                        br_if 1 (;@17;)
                                        local.get 9
                                        i32.const 4
                                        i32.add
                                        local.set 9
                                        local.get 1
                                        i32.const 4
                                        i32.sub
                                        local.tee 1
                                        i32.const 3
                                        i32.gt_u
                                        br_if 0 (;@18;)
                                      end
                                    end
                                    local.get 1
                                    i32.eqz
                                    br_if 0 (;@16;)
                                    loop  ;; label = @17
                                      local.get 9
                                      local.get 9
                                      i32.load8_u
                                      i32.eqz
                                      br_if 2 (;@15;)
                                      drop
                                      local.get 9
                                      i32.const 1
                                      i32.add
                                      local.set 9
                                      local.get 1
                                      i32.const 1
                                      i32.sub
                                      local.tee 1
                                      br_if 0 (;@17;)
                                    end
                                  end
                                  i32.const 0
                                end
                                local.tee 1
                                local.get 10
                                local.get 11
                                i32.add
                                local.get 1
                                select
                                local.set 15
                                local.get 7
                                local.set 6
                                local.get 1
                                local.get 11
                                i32.sub
                                local.get 10
                                local.get 1
                                select
                                local.set 10
                                br 10 (;@4;)
                              end
                              local.get 10
                              if  ;; label = @14
                                local.get 5
                                i32.load offset=64
                                br 2 (;@12;)
                              end
                              i32.const 0
                              local.set 1
                              local.get 0
                              i32.const 32
                              local.get 12
                              i32.const 0
                              local.get 6
                              call 33
                              br 2 (;@11;)
                            end
                            local.get 5
                            i32.const 0
                            i32.store offset=12
                            local.get 5
                            local.get 5
                            i64.load offset=64
                            i64.store32 offset=8
                            local.get 5
                            local.get 5
                            i32.const 8
                            i32.add
                            i32.store offset=64
                            i32.const -1
                            local.set 10
                            local.get 5
                            i32.const 8
                            i32.add
                          end
                          local.set 8
                          i32.const 0
                          local.set 1
                          block  ;; label = @12
                            loop  ;; label = @13
                              local.get 8
                              i32.load
                              local.tee 7
                              i32.eqz
                              br_if 1 (;@12;)
                              local.get 5
                              i32.const 4
                              i32.add
                              local.get 7
                              call 52
                              local.tee 11
                              i32.const 0
                              i32.lt_s
                              local.tee 7
                              local.get 11
                              local.get 10
                              local.get 1
                              i32.sub
                              i32.gt_u
                              i32.or
                              i32.eqz
                              if  ;; label = @14
                                local.get 8
                                i32.const 4
                                i32.add
                                local.set 8
                                local.get 10
                                local.get 1
                                local.get 11
                                i32.add
                                local.tee 1
                                i32.gt_u
                                br_if 1 (;@13;)
                                br 2 (;@12;)
                              end
                            end
                            i32.const -1
                            local.set 13
                            local.get 7
                            br_if 11 (;@1;)
                          end
                          local.get 0
                          i32.const 32
                          local.get 12
                          local.get 1
                          local.get 6
                          call 33
                          local.get 1
                          i32.eqz
                          if  ;; label = @12
                            i32.const 0
                            local.set 1
                            br 1 (;@11;)
                          end
                          i32.const 0
                          local.set 8
                          local.get 5
                          i32.load offset=64
                          local.set 9
                          loop  ;; label = @12
                            local.get 9
                            i32.load
                            local.tee 7
                            i32.eqz
                            br_if 1 (;@11;)
                            local.get 5
                            i32.const 4
                            i32.add
                            local.get 7
                            call 52
                            local.tee 7
                            local.get 8
                            i32.add
                            local.tee 8
                            local.get 1
                            i32.gt_s
                            br_if 1 (;@11;)
                            local.get 0
                            local.get 5
                            i32.const 4
                            i32.add
                            local.get 7
                            call 34
                            local.get 9
                            i32.const 4
                            i32.add
                            local.set 9
                            local.get 1
                            local.get 8
                            i32.gt_u
                            br_if 0 (;@12;)
                          end
                        end
                        local.get 0
                        i32.const 32
                        local.get 12
                        local.get 1
                        local.get 6
                        i32.const 8192
                        i32.xor
                        call 33
                        local.get 12
                        local.get 1
                        local.get 1
                        local.get 12
                        i32.lt_s
                        select
                        local.set 1
                        br 8 (;@2;)
                      end
                      local.get 0
                      local.get 5
                      f64.load offset=64
                      local.get 12
                      local.get 10
                      local.get 6
                      local.get 1
                      i32.const 0
                      call_indirect (type 11)
                      local.set 1
                      br 7 (;@2;)
                    end
                    local.get 5
                    local.get 5
                    i64.load offset=64
                    i64.store8 offset=55
                    i32.const 1
                    local.set 10
                    local.get 19
                    local.set 11
                    local.get 7
                    local.set 6
                    br 4 (;@4;)
                  end
                  local.get 5
                  local.get 1
                  i32.const 1
                  i32.add
                  local.tee 7
                  i32.store offset=76
                  local.get 1
                  i32.load8_u offset=1
                  local.set 6
                  local.get 7
                  local.set 1
                  br 0 (;@7;)
                end
                unreachable
              end
              local.get 14
              local.set 13
              local.get 0
              br_if 4 (;@1;)
              local.get 18
              i32.eqz
              br_if 2 (;@3;)
              i32.const 1
              local.set 1
              loop  ;; label = @6
                local.get 4
                local.get 1
                i32.const 2
                i32.shl
                i32.add
                i32.load
                local.tee 0
                if  ;; label = @7
                  local.get 3
                  local.get 1
                  i32.const 3
                  i32.shl
                  i32.add
                  local.get 0
                  local.get 2
                  call 49
                  i32.const 1
                  local.set 13
                  local.get 1
                  i32.const 1
                  i32.add
                  local.tee 1
                  i32.const 10
                  i32.ne
                  br_if 1 (;@6;)
                  br 6 (;@1;)
                end
              end
              i32.const 1
              local.set 13
              local.get 1
              i32.const 10
              i32.ge_u
              br_if 4 (;@1;)
              loop  ;; label = @6
                local.get 4
                local.get 1
                i32.const 2
                i32.shl
                i32.add
                i32.load
                br_if 1 (;@5;)
                local.get 1
                i32.const 1
                i32.add
                local.tee 1
                i32.const 10
                i32.ne
                br_if 0 (;@6;)
              end
              br 4 (;@1;)
            end
            i32.const -1
            local.set 13
            br 3 (;@1;)
          end
          local.get 0
          i32.const 32
          local.get 13
          local.get 15
          local.get 11
          i32.sub
          local.tee 8
          local.get 10
          local.get 8
          local.get 10
          i32.gt_s
          select
          local.tee 7
          i32.add
          local.tee 9
          local.get 12
          local.get 9
          local.get 12
          i32.gt_s
          select
          local.tee 1
          local.get 9
          local.get 6
          call 33
          local.get 0
          local.get 16
          local.get 13
          call 34
          local.get 0
          i32.const 48
          local.get 1
          local.get 9
          local.get 6
          i32.const 65536
          i32.xor
          call 33
          local.get 0
          i32.const 48
          local.get 7
          local.get 8
          i32.const 0
          call 33
          local.get 0
          local.get 11
          local.get 8
          call 34
          local.get 0
          i32.const 32
          local.get 1
          local.get 9
          local.get 6
          i32.const 8192
          i32.xor
          call 33
          br 1 (;@2;)
        end
      end
      i32.const 0
      local.set 13
    end
    local.get 5
    i32.const 80
    i32.add
    global.set 0
    local.get 13)
  (func (;38;) (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 1
      local.get 2
      i32.load offset=16
      local.tee 3
      if (result i32)  ;; label = @2
        local.get 3
      else
        local.get 2
        call 51
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=16
      end
      local.get 2
      i32.load offset=20
      local.tee 5
      i32.sub
      i32.gt_u
      if  ;; label = @2
        local.get 2
        local.get 0
        local.get 1
        local.get 2
        i32.load offset=36
        call_indirect (type 3)
        return
      end
      block  ;; label = @2
        local.get 2
        i32.load8_s offset=75
        i32.const 0
        i32.lt_s
        if  ;; label = @3
          i32.const 0
          local.set 3
          br 1 (;@2;)
        end
        local.get 1
        local.set 4
        loop  ;; label = @3
          local.get 4
          local.tee 3
          i32.eqz
          if  ;; label = @4
            i32.const 0
            local.set 3
            br 2 (;@2;)
          end
          local.get 0
          local.get 3
          i32.const 1
          i32.sub
          local.tee 4
          i32.add
          i32.load8_u
          i32.const 10
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 2
        local.get 0
        local.get 3
        local.get 2
        i32.load offset=36
        call_indirect (type 3)
        local.tee 4
        local.get 3
        i32.lt_u
        br_if 1 (;@1;)
        local.get 0
        local.get 3
        i32.add
        local.set 0
        local.get 1
        local.get 3
        i32.sub
        local.set 1
        local.get 2
        i32.load offset=20
        local.set 5
      end
      local.get 5
      local.get 0
      local.get 1
      call 41
      local.get 2
      local.get 2
      i32.load offset=20
      local.get 1
      i32.add
      i32.store offset=20
      local.get 1
      local.get 3
      i32.add
      local.set 4
    end
    local.get 4)
  (func (;39;) (type 0) (param i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=76
      drop
      local.get 0
      i32.load offset=20
      local.get 0
      i32.load offset=28
      i32.gt_u
      if  ;; label = @2
        local.get 0
        i32.const 0
        i32.const 0
        local.get 0
        i32.load offset=36
        call_indirect (type 3)
        drop
      end
      local.get 0
      i32.load offset=4
      local.tee 1
      local.get 0
      i32.load offset=8
      local.tee 2
      i32.ge_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 2
      i32.sub
      i64.extend_i32_s
      i32.const 1
      local.get 0
      i32.load offset=40
      call_indirect (type 7)
      drop
    end)
  (func (;40;) (type 2) (param i32 i32 i32)
    (local i32 i32 i64)
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      i32.add
      local.tee 3
      i32.const 1
      i32.sub
      local.get 1
      i32.store8
      local.get 0
      local.get 1
      i32.store8
      local.get 2
      i32.const 3
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      i32.const 2
      i32.sub
      local.get 1
      i32.store8
      local.get 0
      local.get 1
      i32.store8 offset=1
      local.get 3
      i32.const 3
      i32.sub
      local.get 1
      i32.store8
      local.get 0
      local.get 1
      i32.store8 offset=2
      local.get 2
      i32.const 7
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      i32.const 4
      i32.sub
      local.get 1
      i32.store8
      local.get 0
      local.get 1
      i32.store8 offset=3
      local.get 2
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      local.get 0
      i32.sub
      i32.const 3
      i32.and
      local.tee 4
      i32.add
      local.tee 3
      local.get 1
      i32.const 255
      i32.and
      i32.const 16843009
      i32.mul
      local.tee 0
      i32.store
      local.get 3
      local.get 2
      local.get 4
      i32.sub
      i32.const -4
      i32.and
      local.tee 2
      i32.add
      local.tee 1
      i32.const 4
      i32.sub
      local.get 0
      i32.store
      local.get 2
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      local.get 0
      i32.store offset=8
      local.get 3
      local.get 0
      i32.store offset=4
      local.get 1
      i32.const 8
      i32.sub
      local.get 0
      i32.store
      local.get 1
      i32.const 12
      i32.sub
      local.get 0
      i32.store
      local.get 2
      i32.const 25
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      local.get 0
      i32.store offset=24
      local.get 3
      local.get 0
      i32.store offset=20
      local.get 3
      local.get 0
      i32.store offset=16
      local.get 3
      local.get 0
      i32.store offset=12
      local.get 1
      i32.const 16
      i32.sub
      local.get 0
      i32.store
      local.get 1
      i32.const 20
      i32.sub
      local.get 0
      i32.store
      local.get 1
      i32.const 24
      i32.sub
      local.get 0
      i32.store
      local.get 1
      i32.const 28
      i32.sub
      local.get 0
      i32.store
      local.get 2
      local.get 3
      i32.const 4
      i32.and
      i32.const 24
      i32.or
      local.tee 1
      i32.sub
      local.tee 2
      i32.const 32
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i64.extend_i32_u
      i64.const 4294967297
      i64.mul
      local.set 5
      local.get 1
      local.get 3
      i32.add
      local.set 1
      loop  ;; label = @2
        local.get 1
        local.get 5
        i64.store offset=24
        local.get 1
        local.get 5
        i64.store offset=16
        local.get 1
        local.get 5
        i64.store offset=8
        local.get 1
        local.get 5
        i64.store
        local.get 1
        i32.const 32
        i32.add
        local.set 1
        local.get 2
        i32.const 32
        i32.sub
        local.tee 2
        i32.const 31
        i32.gt_u
        br_if 0 (;@2;)
      end
    end)
  (func (;41;) (type 2) (param i32 i32 i32)
    (local i32 i32)
    local.get 0
    local.get 2
    i32.add
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          local.get 1
          i32.xor
          i32.const 3
          i32.and
          i32.eqz
          if  ;; label = @4
            local.get 0
            i32.const 3
            i32.and
            i32.eqz
            local.get 2
            i32.const 1
            i32.lt_s
            i32.or
            br_if 1 (;@3;)
            local.get 0
            local.set 2
            loop  ;; label = @5
              local.get 2
              local.get 1
              i32.load8_u
              i32.store8
              local.get 1
              i32.const 1
              i32.add
              local.set 1
              local.get 2
              i32.const 1
              i32.add
              local.tee 2
              i32.const 3
              i32.and
              i32.eqz
              br_if 3 (;@2;)
              local.get 2
              local.get 3
              i32.lt_u
              br_if 0 (;@5;)
            end
            br 2 (;@2;)
          end
          block  ;; label = @4
            local.get 3
            i32.const 4
            i32.lt_u
            br_if 0 (;@4;)
            local.get 3
            i32.const 4
            i32.sub
            local.tee 4
            local.get 0
            i32.lt_u
            br_if 0 (;@4;)
            local.get 0
            local.set 2
            loop  ;; label = @5
              local.get 2
              local.get 1
              i32.load8_u
              i32.store8
              local.get 2
              local.get 1
              i32.load8_u offset=1
              i32.store8 offset=1
              local.get 2
              local.get 1
              i32.load8_u offset=2
              i32.store8 offset=2
              local.get 2
              local.get 1
              i32.load8_u offset=3
              i32.store8 offset=3
              local.get 1
              i32.const 4
              i32.add
              local.set 1
              local.get 2
              i32.const 4
              i32.add
              local.tee 2
              local.get 4
              i32.le_u
              br_if 0 (;@5;)
            end
            br 3 (;@1;)
          end
          local.get 0
          local.set 2
          br 2 (;@1;)
        end
        local.get 0
        local.set 2
      end
      block  ;; label = @2
        local.get 3
        i32.const -4
        i32.and
        local.tee 0
        i32.const 64
        i32.lt_u
        br_if 0 (;@2;)
        local.get 2
        local.get 0
        i32.const -64
        i32.add
        local.tee 4
        i32.gt_u
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 2
          local.get 1
          i32.load
          i32.store
          local.get 2
          local.get 1
          i32.load offset=4
          i32.store offset=4
          local.get 2
          local.get 1
          i32.load offset=8
          i32.store offset=8
          local.get 2
          local.get 1
          i32.load offset=12
          i32.store offset=12
          local.get 2
          local.get 1
          i32.load offset=16
          i32.store offset=16
          local.get 2
          local.get 1
          i32.load offset=20
          i32.store offset=20
          local.get 2
          local.get 1
          i32.load offset=24
          i32.store offset=24
          local.get 2
          local.get 1
          i32.load offset=28
          i32.store offset=28
          local.get 2
          local.get 1
          i32.load offset=32
          i32.store offset=32
          local.get 2
          local.get 1
          i32.load offset=36
          i32.store offset=36
          local.get 2
          local.get 1
          i32.load offset=40
          i32.store offset=40
          local.get 2
          local.get 1
          i32.load offset=44
          i32.store offset=44
          local.get 2
          local.get 1
          i32.load offset=48
          i32.store offset=48
          local.get 2
          local.get 1
          i32.load offset=52
          i32.store offset=52
          local.get 2
          local.get 1
          i32.load offset=56
          i32.store offset=56
          local.get 2
          local.get 1
          i32.load offset=60
          i32.store offset=60
          local.get 1
          i32.const -64
          i32.sub
          local.set 1
          local.get 2
          i32.const -64
          i32.sub
          local.tee 2
          local.get 4
          i32.le_u
          br_if 0 (;@3;)
        end
      end
      local.get 0
      local.get 2
      i32.le_u
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 2
        local.get 1
        i32.load
        i32.store
        local.get 1
        i32.const 4
        i32.add
        local.set 1
        local.get 2
        i32.const 4
        i32.add
        local.tee 2
        local.get 0
        i32.lt_u
        br_if 0 (;@2;)
      end
    end
    local.get 2
    local.get 3
    i32.lt_u
    if  ;; label = @1
      loop  ;; label = @2
        local.get 2
        local.get 1
        i32.load8_u
        i32.store8
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 2
        i32.const 1
        i32.add
        local.tee 2
        local.get 3
        i32.ne
        br_if 0 (;@2;)
      end
    end)
  (func (;42;) (type 8)
    nop)
  (func (;43;) (type 1) (param i32) (result i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 0
      return
    end
    i32.const 2388
    local.get 0
    i32.store
    i32.const -1)
  (func (;44;) (type 0) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 8
      i32.sub
      local.tee 3
      local.get 0
      i32.const 4
      i32.sub
      i32.load
      local.tee 1
      i32.const -8
      i32.and
      local.tee 0
      i32.add
      local.set 5
      block  ;; label = @2
        local.get 1
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 1
        i32.const 3
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        local.get 3
        i32.load
        local.tee 1
        i32.sub
        local.tee 3
        i32.const 2408
        i32.load
        i32.lt_u
        br_if 1 (;@1;)
        local.get 0
        local.get 1
        i32.add
        local.set 0
        local.get 3
        i32.const 2412
        i32.load
        i32.ne
        if  ;; label = @3
          local.get 1
          i32.const 255
          i32.le_u
          if  ;; label = @4
            local.get 3
            i32.load offset=8
            local.tee 2
            local.get 1
            i32.const 3
            i32.shr_u
            local.tee 4
            i32.const 3
            i32.shl
            i32.const 2432
            i32.add
            i32.eq
            drop
            local.get 2
            local.get 3
            i32.load offset=12
            local.tee 1
            i32.eq
            if  ;; label = @5
              i32.const 2392
              i32.const 2392
              i32.load
              i32.const -2
              local.get 4
              i32.rotl
              i32.and
              i32.store
              br 3 (;@2;)
            end
            local.get 2
            local.get 1
            i32.store offset=12
            local.get 1
            local.get 2
            i32.store offset=8
            br 2 (;@2;)
          end
          local.get 3
          i32.load offset=24
          local.set 6
          block  ;; label = @4
            local.get 3
            local.get 3
            i32.load offset=12
            local.tee 1
            i32.ne
            if  ;; label = @5
              local.get 3
              i32.load offset=8
              local.tee 2
              local.get 1
              i32.store offset=12
              local.get 1
              local.get 2
              i32.store offset=8
              br 1 (;@4;)
            end
            block  ;; label = @5
              local.get 3
              i32.const 20
              i32.add
              local.tee 2
              i32.load
              local.tee 4
              br_if 0 (;@5;)
              local.get 3
              i32.const 16
              i32.add
              local.tee 2
              i32.load
              local.tee 4
              br_if 0 (;@5;)
              i32.const 0
              local.set 1
              br 1 (;@4;)
            end
            loop  ;; label = @5
              local.get 2
              local.set 7
              local.get 4
              local.tee 1
              i32.const 20
              i32.add
              local.tee 2
              i32.load
              local.tee 4
              br_if 0 (;@5;)
              local.get 1
              i32.const 16
              i32.add
              local.set 2
              local.get 1
              i32.load offset=16
              local.tee 4
              br_if 0 (;@5;)
            end
            local.get 7
            i32.const 0
            i32.store
          end
          local.get 6
          i32.eqz
          br_if 1 (;@2;)
          block  ;; label = @4
            local.get 3
            local.get 3
            i32.load offset=28
            local.tee 2
            i32.const 2
            i32.shl
            i32.const 2696
            i32.add
            local.tee 4
            i32.load
            i32.eq
            if  ;; label = @5
              local.get 4
              local.get 1
              i32.store
              local.get 1
              br_if 1 (;@4;)
              i32.const 2396
              i32.const 2396
              i32.load
              i32.const -2
              local.get 2
              i32.rotl
              i32.and
              i32.store
              br 3 (;@2;)
            end
            local.get 6
            i32.const 16
            i32.const 20
            local.get 6
            i32.load offset=16
            local.get 3
            i32.eq
            select
            i32.add
            local.get 1
            i32.store
            local.get 1
            i32.eqz
            br_if 2 (;@2;)
          end
          local.get 1
          local.get 6
          i32.store offset=24
          local.get 3
          i32.load offset=16
          local.tee 2
          if  ;; label = @4
            local.get 1
            local.get 2
            i32.store offset=16
            local.get 2
            local.get 1
            i32.store offset=24
          end
          local.get 3
          i32.load offset=20
          local.tee 2
          i32.eqz
          br_if 1 (;@2;)
          local.get 1
          local.get 2
          i32.store offset=20
          local.get 2
          local.get 1
          i32.store offset=24
          br 1 (;@2;)
        end
        local.get 5
        i32.load offset=4
        local.tee 1
        i32.const 3
        i32.and
        i32.const 3
        i32.ne
        br_if 0 (;@2;)
        i32.const 2400
        local.get 0
        i32.store
        local.get 5
        local.get 1
        i32.const -2
        i32.and
        i32.store offset=4
        local.get 3
        local.get 0
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 0
        local.get 3
        i32.add
        local.get 0
        i32.store
        return
      end
      local.get 3
      local.get 5
      i32.ge_u
      br_if 0 (;@1;)
      local.get 5
      i32.load offset=4
      local.tee 1
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 1
        i32.const 2
        i32.and
        i32.eqz
        if  ;; label = @3
          local.get 5
          i32.const 2416
          i32.load
          i32.eq
          if  ;; label = @4
            i32.const 2416
            local.get 3
            i32.store
            i32.const 2404
            i32.const 2404
            i32.load
            local.get 0
            i32.add
            local.tee 0
            i32.store
            local.get 3
            local.get 0
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 3
            i32.const 2412
            i32.load
            i32.ne
            br_if 3 (;@1;)
            i32.const 2400
            i32.const 0
            i32.store
            i32.const 2412
            i32.const 0
            i32.store
            return
          end
          local.get 5
          i32.const 2412
          i32.load
          i32.eq
          if  ;; label = @4
            i32.const 2412
            local.get 3
            i32.store
            i32.const 2400
            i32.const 2400
            i32.load
            local.get 0
            i32.add
            local.tee 0
            i32.store
            local.get 3
            local.get 0
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            local.get 3
            i32.add
            local.get 0
            i32.store
            return
          end
          local.get 1
          i32.const -8
          i32.and
          local.get 0
          i32.add
          local.set 0
          block  ;; label = @4
            local.get 1
            i32.const 255
            i32.le_u
            if  ;; label = @5
              local.get 5
              i32.load offset=8
              local.tee 2
              local.get 1
              i32.const 3
              i32.shr_u
              local.tee 4
              i32.const 3
              i32.shl
              i32.const 2432
              i32.add
              i32.eq
              drop
              local.get 2
              local.get 5
              i32.load offset=12
              local.tee 1
              i32.eq
              if  ;; label = @6
                i32.const 2392
                i32.const 2392
                i32.load
                i32.const -2
                local.get 4
                i32.rotl
                i32.and
                i32.store
                br 2 (;@4;)
              end
              local.get 2
              local.get 1
              i32.store offset=12
              local.get 1
              local.get 2
              i32.store offset=8
              br 1 (;@4;)
            end
            local.get 5
            i32.load offset=24
            local.set 6
            block  ;; label = @5
              local.get 5
              local.get 5
              i32.load offset=12
              local.tee 1
              i32.ne
              if  ;; label = @6
                local.get 5
                i32.load offset=8
                local.tee 2
                i32.const 2408
                i32.load
                i32.lt_u
                drop
                local.get 2
                local.get 1
                i32.store offset=12
                local.get 1
                local.get 2
                i32.store offset=8
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 5
                i32.const 20
                i32.add
                local.tee 2
                i32.load
                local.tee 4
                br_if 0 (;@6;)
                local.get 5
                i32.const 16
                i32.add
                local.tee 2
                i32.load
                local.tee 4
                br_if 0 (;@6;)
                i32.const 0
                local.set 1
                br 1 (;@5;)
              end
              loop  ;; label = @6
                local.get 2
                local.set 7
                local.get 4
                local.tee 1
                i32.const 20
                i32.add
                local.tee 2
                i32.load
                local.tee 4
                br_if 0 (;@6;)
                local.get 1
                i32.const 16
                i32.add
                local.set 2
                local.get 1
                i32.load offset=16
                local.tee 4
                br_if 0 (;@6;)
              end
              local.get 7
              i32.const 0
              i32.store
            end
            local.get 6
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 5
              local.get 5
              i32.load offset=28
              local.tee 2
              i32.const 2
              i32.shl
              i32.const 2696
              i32.add
              local.tee 4
              i32.load
              i32.eq
              if  ;; label = @6
                local.get 4
                local.get 1
                i32.store
                local.get 1
                br_if 1 (;@5;)
                i32.const 2396
                i32.const 2396
                i32.load
                i32.const -2
                local.get 2
                i32.rotl
                i32.and
                i32.store
                br 2 (;@4;)
              end
              local.get 6
              i32.const 16
              i32.const 20
              local.get 6
              i32.load offset=16
              local.get 5
              i32.eq
              select
              i32.add
              local.get 1
              i32.store
              local.get 1
              i32.eqz
              br_if 1 (;@4;)
            end
            local.get 1
            local.get 6
            i32.store offset=24
            local.get 5
            i32.load offset=16
            local.tee 2
            if  ;; label = @5
              local.get 1
              local.get 2
              i32.store offset=16
              local.get 2
              local.get 1
              i32.store offset=24
            end
            local.get 5
            i32.load offset=20
            local.tee 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            local.get 2
            i32.store offset=20
            local.get 2
            local.get 1
            i32.store offset=24
          end
          local.get 3
          local.get 0
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 0
          local.get 3
          i32.add
          local.get 0
          i32.store
          local.get 3
          i32.const 2412
          i32.load
          i32.ne
          br_if 1 (;@2;)
          i32.const 2400
          local.get 0
          i32.store
          return
        end
        local.get 5
        local.get 1
        i32.const -2
        i32.and
        i32.store offset=4
        local.get 3
        local.get 0
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 0
        local.get 3
        i32.add
        local.get 0
        i32.store
      end
      local.get 0
      i32.const 255
      i32.le_u
      if  ;; label = @2
        local.get 0
        i32.const 3
        i32.shr_u
        local.tee 1
        i32.const 3
        i32.shl
        i32.const 2432
        i32.add
        local.set 0
        block (result i32)  ;; label = @3
          i32.const 2392
          i32.load
          local.tee 2
          i32.const 1
          local.get 1
          i32.shl
          local.tee 1
          i32.and
          i32.eqz
          if  ;; label = @4
            i32.const 2392
            local.get 1
            local.get 2
            i32.or
            i32.store
            local.get 0
            br 1 (;@3;)
          end
          local.get 0
          i32.load offset=8
        end
        local.set 2
        local.get 0
        local.get 3
        i32.store offset=8
        local.get 2
        local.get 3
        i32.store offset=12
        local.get 3
        local.get 0
        i32.store offset=12
        local.get 3
        local.get 2
        i32.store offset=8
        return
      end
      i32.const 31
      local.set 2
      local.get 3
      i64.const 0
      i64.store offset=16 align=4
      local.get 0
      i32.const 16777215
      i32.le_u
      if  ;; label = @2
        local.get 0
        i32.const 8
        i32.shr_u
        local.tee 1
        local.get 1
        i32.const 1048320
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 8
        i32.and
        local.tee 1
        i32.shl
        local.tee 2
        local.get 2
        i32.const 520192
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 4
        i32.and
        local.tee 2
        i32.shl
        local.tee 4
        local.get 4
        i32.const 245760
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 2
        i32.and
        local.tee 4
        i32.shl
        i32.const 15
        i32.shr_u
        local.get 1
        local.get 2
        i32.or
        local.get 4
        i32.or
        i32.sub
        local.tee 1
        i32.const 1
        i32.shl
        local.get 0
        local.get 1
        i32.const 21
        i32.add
        i32.shr_u
        i32.const 1
        i32.and
        i32.or
        i32.const 28
        i32.add
        local.set 2
      end
      local.get 3
      local.get 2
      i32.store offset=28
      local.get 2
      i32.const 2
      i32.shl
      i32.const 2696
      i32.add
      local.set 1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 2396
            i32.load
            local.tee 4
            i32.const 1
            local.get 2
            i32.shl
            local.tee 7
            i32.and
            i32.eqz
            if  ;; label = @5
              i32.const 2396
              local.get 4
              local.get 7
              i32.or
              i32.store
              local.get 1
              local.get 3
              i32.store
              local.get 3
              local.get 1
              i32.store offset=24
              br 1 (;@4;)
            end
            local.get 0
            i32.const 0
            i32.const 25
            local.get 2
            i32.const 1
            i32.shr_u
            i32.sub
            local.get 2
            i32.const 31
            i32.eq
            select
            i32.shl
            local.set 2
            local.get 1
            i32.load
            local.set 1
            loop  ;; label = @5
              local.get 1
              local.tee 4
              i32.load offset=4
              i32.const -8
              i32.and
              local.get 0
              i32.eq
              br_if 2 (;@3;)
              local.get 2
              i32.const 29
              i32.shr_u
              local.set 1
              local.get 2
              i32.const 1
              i32.shl
              local.set 2
              local.get 4
              local.get 1
              i32.const 4
              i32.and
              i32.add
              local.tee 7
              i32.const 16
              i32.add
              i32.load
              local.tee 1
              br_if 0 (;@5;)
            end
            local.get 7
            local.get 3
            i32.store offset=16
            local.get 3
            local.get 4
            i32.store offset=24
          end
          local.get 3
          local.get 3
          i32.store offset=12
          local.get 3
          local.get 3
          i32.store offset=8
          br 1 (;@2;)
        end
        local.get 4
        i32.load offset=8
        local.tee 0
        local.get 3
        i32.store offset=12
        local.get 4
        local.get 3
        i32.store offset=8
        local.get 3
        i32.const 0
        i32.store offset=24
        local.get 3
        local.get 4
        i32.store offset=12
        local.get 3
        local.get 0
        i32.store offset=8
      end
      i32.const 2424
      i32.const 2424
      i32.load
      i32.const 1
      i32.sub
      local.tee 0
      i32.const -1
      local.get 0
      select
      i32.store
    end)
  (func (;45;) (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 12
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 0
                            i32.const 244
                            i32.le_u
                            if  ;; label = @13
                              i32.const 2392
                              i32.load
                              local.tee 8
                              i32.const 16
                              local.get 0
                              i32.const 11
                              i32.add
                              i32.const -8
                              i32.and
                              local.get 0
                              i32.const 11
                              i32.lt_u
                              select
                              local.tee 7
                              i32.const 3
                              i32.shr_u
                              local.tee 2
                              i32.shr_u
                              local.tee 1
                              i32.const 3
                              i32.and
                              if  ;; label = @14
                                local.get 1
                                i32.const -1
                                i32.xor
                                i32.const 1
                                i32.and
                                local.get 2
                                i32.add
                                local.tee 4
                                i32.const 3
                                i32.shl
                                local.tee 1
                                i32.const 2440
                                i32.add
                                i32.load
                                local.tee 3
                                i32.const 8
                                i32.add
                                local.set 0
                                block  ;; label = @15
                                  local.get 3
                                  i32.load offset=8
                                  local.tee 2
                                  local.get 1
                                  i32.const 2432
                                  i32.add
                                  local.tee 1
                                  i32.eq
                                  if  ;; label = @16
                                    i32.const 2392
                                    local.get 8
                                    i32.const -2
                                    local.get 4
                                    i32.rotl
                                    i32.and
                                    i32.store
                                    br 1 (;@15;)
                                  end
                                  local.get 2
                                  local.get 1
                                  i32.store offset=12
                                  local.get 1
                                  local.get 2
                                  i32.store offset=8
                                end
                                local.get 3
                                local.get 4
                                i32.const 3
                                i32.shl
                                local.tee 1
                                i32.const 3
                                i32.or
                                i32.store offset=4
                                local.get 1
                                local.get 3
                                i32.add
                                local.tee 1
                                local.get 1
                                i32.load offset=4
                                i32.const 1
                                i32.or
                                i32.store offset=4
                                br 13 (;@1;)
                              end
                              local.get 7
                              i32.const 2400
                              i32.load
                              local.tee 10
                              i32.le_u
                              br_if 1 (;@12;)
                              local.get 1
                              if  ;; label = @14
                                block  ;; label = @15
                                  i32.const 2
                                  local.get 2
                                  i32.shl
                                  local.tee 0
                                  i32.const 0
                                  local.get 0
                                  i32.sub
                                  i32.or
                                  local.get 1
                                  local.get 2
                                  i32.shl
                                  i32.and
                                  local.tee 0
                                  i32.const 0
                                  local.get 0
                                  i32.sub
                                  i32.and
                                  i32.const 1
                                  i32.sub
                                  local.tee 0
                                  local.get 0
                                  i32.const 12
                                  i32.shr_u
                                  i32.const 16
                                  i32.and
                                  local.tee 2
                                  i32.shr_u
                                  local.tee 1
                                  i32.const 5
                                  i32.shr_u
                                  i32.const 8
                                  i32.and
                                  local.tee 0
                                  local.get 2
                                  i32.or
                                  local.get 1
                                  local.get 0
                                  i32.shr_u
                                  local.tee 1
                                  i32.const 2
                                  i32.shr_u
                                  i32.const 4
                                  i32.and
                                  local.tee 0
                                  i32.or
                                  local.get 1
                                  local.get 0
                                  i32.shr_u
                                  local.tee 1
                                  i32.const 1
                                  i32.shr_u
                                  i32.const 2
                                  i32.and
                                  local.tee 0
                                  i32.or
                                  local.get 1
                                  local.get 0
                                  i32.shr_u
                                  local.tee 1
                                  i32.const 1
                                  i32.shr_u
                                  i32.const 1
                                  i32.and
                                  local.tee 0
                                  i32.or
                                  local.get 1
                                  local.get 0
                                  i32.shr_u
                                  i32.add
                                  local.tee 4
                                  i32.const 3
                                  i32.shl
                                  local.tee 0
                                  i32.const 2440
                                  i32.add
                                  i32.load
                                  local.tee 3
                                  i32.load offset=8
                                  local.tee 1
                                  local.get 0
                                  i32.const 2432
                                  i32.add
                                  local.tee 0
                                  i32.eq
                                  if  ;; label = @16
                                    i32.const 2392
                                    local.get 8
                                    i32.const -2
                                    local.get 4
                                    i32.rotl
                                    i32.and
                                    local.tee 8
                                    i32.store
                                    br 1 (;@15;)
                                  end
                                  local.get 1
                                  local.get 0
                                  i32.store offset=12
                                  local.get 0
                                  local.get 1
                                  i32.store offset=8
                                end
                                local.get 3
                                i32.const 8
                                i32.add
                                local.set 0
                                local.get 3
                                local.get 7
                                i32.const 3
                                i32.or
                                i32.store offset=4
                                local.get 3
                                local.get 7
                                i32.add
                                local.tee 2
                                local.get 4
                                i32.const 3
                                i32.shl
                                local.tee 1
                                local.get 7
                                i32.sub
                                local.tee 4
                                i32.const 1
                                i32.or
                                i32.store offset=4
                                local.get 1
                                local.get 3
                                i32.add
                                local.get 4
                                i32.store
                                local.get 10
                                if  ;; label = @15
                                  local.get 10
                                  i32.const 3
                                  i32.shr_u
                                  local.tee 1
                                  i32.const 3
                                  i32.shl
                                  i32.const 2432
                                  i32.add
                                  local.set 6
                                  i32.const 2412
                                  i32.load
                                  local.set 3
                                  block (result i32)  ;; label = @16
                                    local.get 8
                                    i32.const 1
                                    local.get 1
                                    i32.shl
                                    local.tee 1
                                    i32.and
                                    i32.eqz
                                    if  ;; label = @17
                                      i32.const 2392
                                      local.get 1
                                      local.get 8
                                      i32.or
                                      i32.store
                                      local.get 6
                                      br 1 (;@16;)
                                    end
                                    local.get 6
                                    i32.load offset=8
                                  end
                                  local.set 1
                                  local.get 6
                                  local.get 3
                                  i32.store offset=8
                                  local.get 1
                                  local.get 3
                                  i32.store offset=12
                                  local.get 3
                                  local.get 6
                                  i32.store offset=12
                                  local.get 3
                                  local.get 1
                                  i32.store offset=8
                                end
                                i32.const 2412
                                local.get 2
                                i32.store
                                i32.const 2400
                                local.get 4
                                i32.store
                                br 13 (;@1;)
                              end
                              i32.const 2396
                              i32.load
                              local.tee 5
                              i32.eqz
                              br_if 1 (;@12;)
                              local.get 5
                              i32.const 0
                              local.get 5
                              i32.sub
                              i32.and
                              i32.const 1
                              i32.sub
                              local.tee 0
                              local.get 0
                              i32.const 12
                              i32.shr_u
                              i32.const 16
                              i32.and
                              local.tee 2
                              i32.shr_u
                              local.tee 1
                              i32.const 5
                              i32.shr_u
                              i32.const 8
                              i32.and
                              local.tee 0
                              local.get 2
                              i32.or
                              local.get 1
                              local.get 0
                              i32.shr_u
                              local.tee 1
                              i32.const 2
                              i32.shr_u
                              i32.const 4
                              i32.and
                              local.tee 0
                              i32.or
                              local.get 1
                              local.get 0
                              i32.shr_u
                              local.tee 1
                              i32.const 1
                              i32.shr_u
                              i32.const 2
                              i32.and
                              local.tee 0
                              i32.or
                              local.get 1
                              local.get 0
                              i32.shr_u
                              local.tee 1
                              i32.const 1
                              i32.shr_u
                              i32.const 1
                              i32.and
                              local.tee 0
                              i32.or
                              local.get 1
                              local.get 0
                              i32.shr_u
                              i32.add
                              i32.const 2
                              i32.shl
                              i32.const 2696
                              i32.add
                              i32.load
                              local.tee 1
                              i32.load offset=4
                              i32.const -8
                              i32.and
                              local.get 7
                              i32.sub
                              local.set 4
                              local.get 1
                              local.set 2
                              loop  ;; label = @14
                                block  ;; label = @15
                                  local.get 2
                                  i32.load offset=16
                                  local.tee 0
                                  i32.eqz
                                  if  ;; label = @16
                                    local.get 2
                                    i32.load offset=20
                                    local.tee 0
                                    i32.eqz
                                    br_if 1 (;@15;)
                                  end
                                  local.get 0
                                  i32.load offset=4
                                  i32.const -8
                                  i32.and
                                  local.get 7
                                  i32.sub
                                  local.tee 2
                                  local.get 4
                                  local.get 2
                                  local.get 4
                                  i32.lt_u
                                  local.tee 2
                                  select
                                  local.set 4
                                  local.get 0
                                  local.get 1
                                  local.get 2
                                  select
                                  local.set 1
                                  local.get 0
                                  local.set 2
                                  br 1 (;@14;)
                                end
                              end
                              local.get 1
                              local.get 7
                              i32.add
                              local.tee 9
                              local.get 1
                              i32.le_u
                              br_if 2 (;@11;)
                              local.get 1
                              i32.load offset=24
                              local.set 11
                              local.get 1
                              local.get 1
                              i32.load offset=12
                              local.tee 3
                              i32.ne
                              if  ;; label = @14
                                local.get 1
                                i32.load offset=8
                                local.tee 0
                                i32.const 2408
                                i32.load
                                i32.lt_u
                                drop
                                local.get 0
                                local.get 3
                                i32.store offset=12
                                local.get 3
                                local.get 0
                                i32.store offset=8
                                br 12 (;@2;)
                              end
                              local.get 1
                              i32.const 20
                              i32.add
                              local.tee 2
                              i32.load
                              local.tee 0
                              i32.eqz
                              if  ;; label = @14
                                local.get 1
                                i32.load offset=16
                                local.tee 0
                                i32.eqz
                                br_if 4 (;@10;)
                                local.get 1
                                i32.const 16
                                i32.add
                                local.set 2
                              end
                              loop  ;; label = @14
                                local.get 2
                                local.set 6
                                local.get 0
                                local.tee 3
                                i32.const 20
                                i32.add
                                local.tee 2
                                i32.load
                                local.tee 0
                                br_if 0 (;@14;)
                                local.get 3
                                i32.const 16
                                i32.add
                                local.set 2
                                local.get 3
                                i32.load offset=16
                                local.tee 0
                                br_if 0 (;@14;)
                              end
                              local.get 6
                              i32.const 0
                              i32.store
                              br 11 (;@2;)
                            end
                            i32.const -1
                            local.set 7
                            local.get 0
                            i32.const -65
                            i32.gt_u
                            br_if 0 (;@12;)
                            local.get 0
                            i32.const 11
                            i32.add
                            local.tee 0
                            i32.const -8
                            i32.and
                            local.set 7
                            i32.const 2396
                            i32.load
                            local.tee 9
                            i32.eqz
                            br_if 0 (;@12;)
                            i32.const 0
                            local.get 7
                            i32.sub
                            local.set 4
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block (result i32)  ;; label = @16
                                    i32.const 0
                                    local.get 7
                                    i32.const 256
                                    i32.lt_u
                                    br_if 0 (;@16;)
                                    drop
                                    i32.const 31
                                    local.get 7
                                    i32.const 16777215
                                    i32.gt_u
                                    br_if 0 (;@16;)
                                    drop
                                    local.get 0
                                    i32.const 8
                                    i32.shr_u
                                    local.tee 0
                                    local.get 0
                                    i32.const 1048320
                                    i32.add
                                    i32.const 16
                                    i32.shr_u
                                    i32.const 8
                                    i32.and
                                    local.tee 2
                                    i32.shl
                                    local.tee 0
                                    local.get 0
                                    i32.const 520192
                                    i32.add
                                    i32.const 16
                                    i32.shr_u
                                    i32.const 4
                                    i32.and
                                    local.tee 1
                                    i32.shl
                                    local.tee 0
                                    local.get 0
                                    i32.const 245760
                                    i32.add
                                    i32.const 16
                                    i32.shr_u
                                    i32.const 2
                                    i32.and
                                    local.tee 0
                                    i32.shl
                                    i32.const 15
                                    i32.shr_u
                                    local.get 1
                                    local.get 2
                                    i32.or
                                    local.get 0
                                    i32.or
                                    i32.sub
                                    local.tee 0
                                    i32.const 1
                                    i32.shl
                                    local.get 7
                                    local.get 0
                                    i32.const 21
                                    i32.add
                                    i32.shr_u
                                    i32.const 1
                                    i32.and
                                    i32.or
                                    i32.const 28
                                    i32.add
                                  end
                                  local.tee 8
                                  i32.const 2
                                  i32.shl
                                  i32.const 2696
                                  i32.add
                                  i32.load
                                  local.tee 2
                                  i32.eqz
                                  if  ;; label = @16
                                    i32.const 0
                                    local.set 0
                                    br 1 (;@15;)
                                  end
                                  i32.const 0
                                  local.set 0
                                  local.get 7
                                  i32.const 0
                                  i32.const 25
                                  local.get 8
                                  i32.const 1
                                  i32.shr_u
                                  i32.sub
                                  local.get 8
                                  i32.const 31
                                  i32.eq
                                  select
                                  i32.shl
                                  local.set 1
                                  loop  ;; label = @16
                                    block  ;; label = @17
                                      local.get 2
                                      i32.load offset=4
                                      i32.const -8
                                      i32.and
                                      local.get 7
                                      i32.sub
                                      local.tee 6
                                      local.get 4
                                      i32.ge_u
                                      br_if 0 (;@17;)
                                      local.get 2
                                      local.set 3
                                      local.get 6
                                      local.tee 4
                                      br_if 0 (;@17;)
                                      i32.const 0
                                      local.set 4
                                      local.get 2
                                      local.set 0
                                      br 3 (;@14;)
                                    end
                                    local.get 0
                                    local.get 2
                                    i32.load offset=20
                                    local.tee 6
                                    local.get 6
                                    local.get 2
                                    local.get 1
                                    i32.const 29
                                    i32.shr_u
                                    i32.const 4
                                    i32.and
                                    i32.add
                                    i32.load offset=16
                                    local.tee 2
                                    i32.eq
                                    select
                                    local.get 0
                                    local.get 6
                                    select
                                    local.set 0
                                    local.get 1
                                    i32.const 1
                                    i32.shl
                                    local.set 1
                                    local.get 2
                                    br_if 0 (;@16;)
                                  end
                                end
                                local.get 0
                                local.get 3
                                i32.or
                                i32.eqz
                                if  ;; label = @15
                                  i32.const 0
                                  local.set 3
                                  i32.const 2
                                  local.get 8
                                  i32.shl
                                  local.tee 0
                                  i32.const 0
                                  local.get 0
                                  i32.sub
                                  i32.or
                                  local.get 9
                                  i32.and
                                  local.tee 0
                                  i32.eqz
                                  br_if 3 (;@12;)
                                  local.get 0
                                  i32.const 0
                                  local.get 0
                                  i32.sub
                                  i32.and
                                  i32.const 1
                                  i32.sub
                                  local.tee 0
                                  local.get 0
                                  i32.const 12
                                  i32.shr_u
                                  i32.const 16
                                  i32.and
                                  local.tee 2
                                  i32.shr_u
                                  local.tee 1
                                  i32.const 5
                                  i32.shr_u
                                  i32.const 8
                                  i32.and
                                  local.tee 0
                                  local.get 2
                                  i32.or
                                  local.get 1
                                  local.get 0
                                  i32.shr_u
                                  local.tee 1
                                  i32.const 2
                                  i32.shr_u
                                  i32.const 4
                                  i32.and
                                  local.tee 0
                                  i32.or
                                  local.get 1
                                  local.get 0
                                  i32.shr_u
                                  local.tee 1
                                  i32.const 1
                                  i32.shr_u
                                  i32.const 2
                                  i32.and
                                  local.tee 0
                                  i32.or
                                  local.get 1
                                  local.get 0
                                  i32.shr_u
                                  local.tee 1
                                  i32.const 1
                                  i32.shr_u
                                  i32.const 1
                                  i32.and
                                  local.tee 0
                                  i32.or
                                  local.get 1
                                  local.get 0
                                  i32.shr_u
                                  i32.add
                                  i32.const 2
                                  i32.shl
                                  i32.const 2696
                                  i32.add
                                  i32.load
                                  local.set 0
                                end
                                local.get 0
                                i32.eqz
                                br_if 1 (;@13;)
                              end
                              loop  ;; label = @14
                                local.get 0
                                i32.load offset=4
                                i32.const -8
                                i32.and
                                local.get 7
                                i32.sub
                                local.tee 1
                                local.get 4
                                i32.lt_u
                                local.set 2
                                local.get 1
                                local.get 4
                                local.get 2
                                select
                                local.set 4
                                local.get 0
                                local.get 3
                                local.get 2
                                select
                                local.set 3
                                local.get 0
                                i32.load offset=16
                                local.tee 1
                                if (result i32)  ;; label = @15
                                  local.get 1
                                else
                                  local.get 0
                                  i32.load offset=20
                                end
                                local.tee 0
                                br_if 0 (;@14;)
                              end
                            end
                            local.get 3
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 4
                            i32.const 2400
                            i32.load
                            local.get 7
                            i32.sub
                            i32.ge_u
                            br_if 0 (;@12;)
                            local.get 3
                            local.get 7
                            i32.add
                            local.tee 5
                            local.get 3
                            i32.le_u
                            br_if 1 (;@11;)
                            local.get 3
                            i32.load offset=24
                            local.set 8
                            local.get 3
                            local.get 3
                            i32.load offset=12
                            local.tee 1
                            i32.ne
                            if  ;; label = @13
                              local.get 3
                              i32.load offset=8
                              local.tee 0
                              i32.const 2408
                              i32.load
                              i32.lt_u
                              drop
                              local.get 0
                              local.get 1
                              i32.store offset=12
                              local.get 1
                              local.get 0
                              i32.store offset=8
                              br 10 (;@3;)
                            end
                            local.get 3
                            i32.const 20
                            i32.add
                            local.tee 2
                            i32.load
                            local.tee 0
                            i32.eqz
                            if  ;; label = @13
                              local.get 3
                              i32.load offset=16
                              local.tee 0
                              i32.eqz
                              br_if 4 (;@9;)
                              local.get 3
                              i32.const 16
                              i32.add
                              local.set 2
                            end
                            loop  ;; label = @13
                              local.get 2
                              local.set 6
                              local.get 0
                              local.tee 1
                              i32.const 20
                              i32.add
                              local.tee 2
                              i32.load
                              local.tee 0
                              br_if 0 (;@13;)
                              local.get 1
                              i32.const 16
                              i32.add
                              local.set 2
                              local.get 1
                              i32.load offset=16
                              local.tee 0
                              br_if 0 (;@13;)
                            end
                            local.get 6
                            i32.const 0
                            i32.store
                            br 9 (;@3;)
                          end
                          local.get 7
                          i32.const 2400
                          i32.load
                          local.tee 2
                          i32.le_u
                          if  ;; label = @12
                            i32.const 2412
                            i32.load
                            local.set 4
                            block  ;; label = @13
                              local.get 2
                              local.get 7
                              i32.sub
                              local.tee 1
                              i32.const 16
                              i32.ge_u
                              if  ;; label = @14
                                i32.const 2400
                                local.get 1
                                i32.store
                                i32.const 2412
                                local.get 4
                                local.get 7
                                i32.add
                                local.tee 0
                                i32.store
                                local.get 0
                                local.get 1
                                i32.const 1
                                i32.or
                                i32.store offset=4
                                local.get 2
                                local.get 4
                                i32.add
                                local.get 1
                                i32.store
                                local.get 4
                                local.get 7
                                i32.const 3
                                i32.or
                                i32.store offset=4
                                br 1 (;@13;)
                              end
                              i32.const 2412
                              i32.const 0
                              i32.store
                              i32.const 2400
                              i32.const 0
                              i32.store
                              local.get 4
                              local.get 2
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              local.get 2
                              local.get 4
                              i32.add
                              local.tee 0
                              local.get 0
                              i32.load offset=4
                              i32.const 1
                              i32.or
                              i32.store offset=4
                            end
                            local.get 4
                            i32.const 8
                            i32.add
                            local.set 0
                            br 11 (;@1;)
                          end
                          local.get 7
                          i32.const 2404
                          i32.load
                          local.tee 5
                          i32.lt_u
                          if  ;; label = @12
                            i32.const 2404
                            local.get 5
                            local.get 7
                            i32.sub
                            local.tee 1
                            i32.store
                            i32.const 2416
                            i32.const 2416
                            i32.load
                            local.tee 2
                            local.get 7
                            i32.add
                            local.tee 0
                            i32.store
                            local.get 0
                            local.get 1
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            local.get 2
                            local.get 7
                            i32.const 3
                            i32.or
                            i32.store offset=4
                            local.get 2
                            i32.const 8
                            i32.add
                            local.set 0
                            br 11 (;@1;)
                          end
                          i32.const 0
                          local.set 0
                          local.get 7
                          i32.const 47
                          i32.add
                          local.tee 9
                          block (result i32)  ;; label = @12
                            i32.const 2864
                            i32.load
                            if  ;; label = @13
                              i32.const 2872
                              i32.load
                              br 1 (;@12;)
                            end
                            i32.const 2876
                            i64.const -1
                            i64.store align=4
                            i32.const 2868
                            i64.const 17592186048512
                            i64.store align=4
                            i32.const 2864
                            local.get 12
                            i32.const 12
                            i32.add
                            i32.const -16
                            i32.and
                            i32.const 1431655768
                            i32.xor
                            i32.store
                            i32.const 2884
                            i32.const 0
                            i32.store
                            i32.const 2836
                            i32.const 0
                            i32.store
                            i32.const 4096
                          end
                          local.tee 1
                          i32.add
                          local.tee 8
                          i32.const 0
                          local.get 1
                          i32.sub
                          local.tee 6
                          i32.and
                          local.tee 2
                          local.get 7
                          i32.le_u
                          br_if 10 (;@1;)
                          i32.const 2832
                          i32.load
                          local.tee 3
                          if  ;; label = @12
                            i32.const 2824
                            i32.load
                            local.tee 4
                            local.get 2
                            i32.add
                            local.tee 1
                            local.get 4
                            i32.le_u
                            local.get 1
                            local.get 3
                            i32.gt_u
                            i32.or
                            br_if 11 (;@1;)
                          end
                          i32.const 2836
                          i32.load8_u
                          i32.const 4
                          i32.and
                          br_if 5 (;@6;)
                          block  ;; label = @12
                            block  ;; label = @13
                              i32.const 2416
                              i32.load
                              local.tee 4
                              if  ;; label = @14
                                i32.const 2840
                                local.set 0
                                loop  ;; label = @15
                                  local.get 4
                                  local.get 0
                                  i32.load
                                  local.tee 1
                                  i32.ge_u
                                  if  ;; label = @16
                                    local.get 1
                                    local.get 0
                                    i32.load offset=4
                                    i32.add
                                    local.get 4
                                    i32.gt_u
                                    br_if 3 (;@13;)
                                  end
                                  local.get 0
                                  i32.load offset=8
                                  local.tee 0
                                  br_if 0 (;@15;)
                                end
                              end
                              i32.const 0
                              call 32
                              local.tee 1
                              i32.const -1
                              i32.eq
                              br_if 6 (;@7;)
                              local.get 2
                              local.set 8
                              i32.const 2868
                              i32.load
                              local.tee 4
                              i32.const 1
                              i32.sub
                              local.tee 0
                              local.get 1
                              i32.and
                              if  ;; label = @14
                                local.get 2
                                local.get 1
                                i32.sub
                                local.get 0
                                local.get 1
                                i32.add
                                i32.const 0
                                local.get 4
                                i32.sub
                                i32.and
                                i32.add
                                local.set 8
                              end
                              local.get 8
                              i32.const 2147483646
                              i32.gt_u
                              local.get 7
                              local.get 8
                              i32.ge_u
                              i32.or
                              br_if 6 (;@7;)
                              i32.const 2832
                              i32.load
                              local.tee 3
                              if  ;; label = @14
                                i32.const 2824
                                i32.load
                                local.tee 4
                                local.get 8
                                i32.add
                                local.tee 0
                                local.get 4
                                i32.le_u
                                local.get 0
                                local.get 3
                                i32.gt_u
                                i32.or
                                br_if 7 (;@7;)
                              end
                              local.get 8
                              call 32
                              local.tee 0
                              local.get 1
                              i32.ne
                              br_if 1 (;@12;)
                              br 8 (;@5;)
                            end
                            local.get 8
                            local.get 5
                            i32.sub
                            local.get 6
                            i32.and
                            local.tee 8
                            i32.const 2147483646
                            i32.gt_u
                            br_if 5 (;@7;)
                            local.get 8
                            call 32
                            local.tee 1
                            local.get 0
                            i32.load
                            local.get 0
                            i32.load offset=4
                            i32.add
                            i32.eq
                            br_if 4 (;@8;)
                            local.get 1
                            local.set 0
                          end
                          local.get 0
                          i32.const -1
                          i32.eq
                          local.get 7
                          i32.const 48
                          i32.add
                          local.get 8
                          i32.le_u
                          i32.or
                          i32.eqz
                          if  ;; label = @12
                            i32.const 2872
                            i32.load
                            local.tee 1
                            local.get 9
                            local.get 8
                            i32.sub
                            i32.add
                            i32.const 0
                            local.get 1
                            i32.sub
                            i32.and
                            local.tee 1
                            i32.const 2147483646
                            i32.gt_u
                            if  ;; label = @13
                              local.get 0
                              local.set 1
                              br 8 (;@5;)
                            end
                            local.get 1
                            call 32
                            i32.const -1
                            i32.ne
                            if  ;; label = @13
                              local.get 1
                              local.get 8
                              i32.add
                              local.set 8
                              local.get 0
                              local.set 1
                              br 8 (;@5;)
                            end
                            i32.const 0
                            local.get 8
                            i32.sub
                            call 32
                            drop
                            br 5 (;@7;)
                          end
                          local.get 0
                          local.tee 1
                          i32.const -1
                          i32.ne
                          br_if 6 (;@5;)
                          br 4 (;@7;)
                        end
                        unreachable
                      end
                      i32.const 0
                      local.set 3
                      br 7 (;@2;)
                    end
                    i32.const 0
                    local.set 1
                    br 5 (;@3;)
                  end
                  local.get 1
                  i32.const -1
                  i32.ne
                  br_if 2 (;@5;)
                end
                i32.const 2836
                i32.const 2836
                i32.load
                i32.const 4
                i32.or
                i32.store
              end
              local.get 2
              i32.const 2147483646
              i32.gt_u
              br_if 1 (;@4;)
              local.get 2
              call 32
              local.tee 1
              i32.const -1
              i32.eq
              i32.const 0
              call 32
              local.tee 0
              i32.const -1
              i32.eq
              i32.or
              local.get 0
              local.get 1
              i32.le_u
              i32.or
              br_if 1 (;@4;)
              local.get 0
              local.get 1
              i32.sub
              local.tee 8
              local.get 7
              i32.const 40
              i32.add
              i32.le_u
              br_if 1 (;@4;)
            end
            i32.const 2824
            i32.const 2824
            i32.load
            local.get 8
            i32.add
            local.tee 0
            i32.store
            i32.const 2828
            i32.load
            local.get 0
            i32.lt_u
            if  ;; label = @5
              i32.const 2828
              local.get 0
              i32.store
            end
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  i32.const 2416
                  i32.load
                  local.tee 6
                  if  ;; label = @8
                    i32.const 2840
                    local.set 0
                    loop  ;; label = @9
                      local.get 1
                      local.get 0
                      i32.load
                      local.tee 4
                      local.get 0
                      i32.load offset=4
                      local.tee 2
                      i32.add
                      i32.eq
                      br_if 2 (;@7;)
                      local.get 0
                      i32.load offset=8
                      local.tee 0
                      br_if 0 (;@9;)
                    end
                    br 2 (;@6;)
                  end
                  i32.const 2408
                  i32.load
                  local.tee 0
                  i32.const 0
                  local.get 0
                  local.get 1
                  i32.le_u
                  select
                  i32.eqz
                  if  ;; label = @8
                    i32.const 2408
                    local.get 1
                    i32.store
                  end
                  i32.const 0
                  local.set 0
                  i32.const 2844
                  local.get 8
                  i32.store
                  i32.const 2840
                  local.get 1
                  i32.store
                  i32.const 2424
                  i32.const -1
                  i32.store
                  i32.const 2428
                  i32.const 2864
                  i32.load
                  i32.store
                  i32.const 2852
                  i32.const 0
                  i32.store
                  loop  ;; label = @8
                    local.get 0
                    i32.const 3
                    i32.shl
                    local.tee 4
                    i32.const 2440
                    i32.add
                    local.get 4
                    i32.const 2432
                    i32.add
                    local.tee 2
                    i32.store
                    local.get 4
                    i32.const 2444
                    i32.add
                    local.get 2
                    i32.store
                    local.get 0
                    i32.const 1
                    i32.add
                    local.tee 0
                    i32.const 32
                    i32.ne
                    br_if 0 (;@8;)
                  end
                  i32.const 2416
                  local.get 1
                  i32.const -8
                  local.get 1
                  i32.sub
                  i32.const 7
                  i32.and
                  i32.const 0
                  local.get 1
                  i32.const 8
                  i32.add
                  i32.const 7
                  i32.and
                  select
                  local.tee 0
                  i32.add
                  local.tee 2
                  i32.store
                  i32.const 2404
                  local.get 8
                  local.get 0
                  i32.sub
                  i32.const 40
                  i32.sub
                  local.tee 0
                  i32.store
                  local.get 2
                  local.get 0
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 1
                  local.get 8
                  i32.add
                  i32.const 36
                  i32.sub
                  i32.const 40
                  i32.store
                  i32.const 2420
                  i32.const 2880
                  i32.load
                  i32.store
                  br 2 (;@5;)
                end
                local.get 0
                i32.load8_u offset=12
                i32.const 8
                i32.and
                local.get 4
                local.get 6
                i32.gt_u
                i32.or
                local.get 1
                local.get 6
                i32.le_u
                i32.or
                br_if 0 (;@6;)
                local.get 0
                local.get 2
                local.get 8
                i32.add
                i32.store offset=4
                i32.const 2416
                local.get 6
                i32.const -8
                local.get 6
                i32.sub
                i32.const 7
                i32.and
                i32.const 0
                local.get 6
                i32.const 8
                i32.add
                i32.const 7
                i32.and
                select
                local.tee 0
                i32.add
                local.tee 2
                i32.store
                i32.const 2404
                i32.const 2404
                i32.load
                local.get 8
                i32.add
                local.tee 1
                local.get 0
                i32.sub
                local.tee 0
                i32.store
                local.get 2
                local.get 0
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 1
                local.get 6
                i32.add
                i32.const 40
                i32.store offset=4
                i32.const 2420
                i32.const 2880
                i32.load
                i32.store
                br 1 (;@5;)
              end
              i32.const 2408
              i32.load
              local.get 1
              i32.gt_u
              if  ;; label = @6
                i32.const 2408
                local.get 1
                i32.store
              end
              local.get 1
              local.get 8
              i32.add
              local.set 3
              i32.const 2840
              local.set 0
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          loop  ;; label = @12
                            local.get 3
                            local.get 0
                            i32.load
                            i32.ne
                            if  ;; label = @13
                              local.get 0
                              i32.load offset=8
                              local.tee 0
                              br_if 1 (;@12;)
                              br 2 (;@11;)
                            end
                          end
                          local.get 0
                          i32.load8_u offset=12
                          i32.const 8
                          i32.and
                          i32.eqz
                          br_if 1 (;@10;)
                        end
                        i32.const 2840
                        local.set 0
                        loop  ;; label = @11
                          local.get 6
                          local.get 0
                          i32.load
                          local.tee 2
                          i32.ge_u
                          if  ;; label = @12
                            local.get 2
                            local.get 0
                            i32.load offset=4
                            i32.add
                            local.tee 4
                            local.get 6
                            i32.gt_u
                            br_if 3 (;@9;)
                          end
                          local.get 0
                          i32.load offset=8
                          local.set 0
                          br 0 (;@11;)
                        end
                        unreachable
                      end
                      local.get 0
                      local.get 1
                      i32.store
                      local.get 0
                      local.get 0
                      i32.load offset=4
                      local.get 8
                      i32.add
                      i32.store offset=4
                      local.get 1
                      i32.const -8
                      local.get 1
                      i32.sub
                      i32.const 7
                      i32.and
                      i32.const 0
                      local.get 1
                      i32.const 8
                      i32.add
                      i32.const 7
                      i32.and
                      select
                      i32.add
                      local.tee 9
                      local.get 7
                      i32.const 3
                      i32.or
                      i32.store offset=4
                      local.get 3
                      i32.const -8
                      local.get 3
                      i32.sub
                      i32.const 7
                      i32.and
                      i32.const 0
                      local.get 3
                      i32.const 8
                      i32.add
                      i32.const 7
                      i32.and
                      select
                      i32.add
                      local.tee 3
                      local.get 7
                      local.get 9
                      i32.add
                      local.tee 5
                      i32.sub
                      local.set 2
                      local.get 3
                      local.get 6
                      i32.eq
                      if  ;; label = @10
                        i32.const 2416
                        local.get 5
                        i32.store
                        i32.const 2404
                        i32.const 2404
                        i32.load
                        local.get 2
                        i32.add
                        local.tee 0
                        i32.store
                        local.get 5
                        local.get 0
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        br 3 (;@7;)
                      end
                      local.get 3
                      i32.const 2412
                      i32.load
                      i32.eq
                      if  ;; label = @10
                        i32.const 2412
                        local.get 5
                        i32.store
                        i32.const 2400
                        i32.const 2400
                        i32.load
                        local.get 2
                        i32.add
                        local.tee 0
                        i32.store
                        local.get 5
                        local.get 0
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get 0
                        local.get 5
                        i32.add
                        local.get 0
                        i32.store
                        br 3 (;@7;)
                      end
                      local.get 3
                      i32.load offset=4
                      local.tee 0
                      i32.const 3
                      i32.and
                      i32.const 1
                      i32.eq
                      if  ;; label = @10
                        local.get 0
                        i32.const -8
                        i32.and
                        local.set 8
                        block  ;; label = @11
                          local.get 0
                          i32.const 255
                          i32.le_u
                          if  ;; label = @12
                            local.get 3
                            i32.load offset=8
                            local.tee 4
                            local.get 0
                            i32.const 3
                            i32.shr_u
                            local.tee 0
                            i32.const 3
                            i32.shl
                            i32.const 2432
                            i32.add
                            i32.eq
                            drop
                            local.get 4
                            local.get 3
                            i32.load offset=12
                            local.tee 1
                            i32.eq
                            if  ;; label = @13
                              i32.const 2392
                              i32.const 2392
                              i32.load
                              i32.const -2
                              local.get 0
                              i32.rotl
                              i32.and
                              i32.store
                              br 2 (;@11;)
                            end
                            local.get 4
                            local.get 1
                            i32.store offset=12
                            local.get 1
                            local.get 4
                            i32.store offset=8
                            br 1 (;@11;)
                          end
                          local.get 3
                          i32.load offset=24
                          local.set 7
                          block  ;; label = @12
                            local.get 3
                            local.get 3
                            i32.load offset=12
                            local.tee 1
                            i32.ne
                            if  ;; label = @13
                              local.get 3
                              i32.load offset=8
                              local.tee 0
                              local.get 1
                              i32.store offset=12
                              local.get 1
                              local.get 0
                              i32.store offset=8
                              br 1 (;@12;)
                            end
                            block  ;; label = @13
                              local.get 3
                              i32.const 20
                              i32.add
                              local.tee 0
                              i32.load
                              local.tee 4
                              br_if 0 (;@13;)
                              local.get 3
                              i32.const 16
                              i32.add
                              local.tee 0
                              i32.load
                              local.tee 4
                              br_if 0 (;@13;)
                              i32.const 0
                              local.set 1
                              br 1 (;@12;)
                            end
                            loop  ;; label = @13
                              local.get 0
                              local.set 6
                              local.get 4
                              local.tee 1
                              i32.const 20
                              i32.add
                              local.tee 0
                              i32.load
                              local.tee 4
                              br_if 0 (;@13;)
                              local.get 1
                              i32.const 16
                              i32.add
                              local.set 0
                              local.get 1
                              i32.load offset=16
                              local.tee 4
                              br_if 0 (;@13;)
                            end
                            local.get 6
                            i32.const 0
                            i32.store
                          end
                          local.get 7
                          i32.eqz
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            local.get 3
                            local.get 3
                            i32.load offset=28
                            local.tee 4
                            i32.const 2
                            i32.shl
                            i32.const 2696
                            i32.add
                            local.tee 0
                            i32.load
                            i32.eq
                            if  ;; label = @13
                              local.get 0
                              local.get 1
                              i32.store
                              local.get 1
                              br_if 1 (;@12;)
                              i32.const 2396
                              i32.const 2396
                              i32.load
                              i32.const -2
                              local.get 4
                              i32.rotl
                              i32.and
                              i32.store
                              br 2 (;@11;)
                            end
                            local.get 7
                            i32.const 16
                            i32.const 20
                            local.get 7
                            i32.load offset=16
                            local.get 3
                            i32.eq
                            select
                            i32.add
                            local.get 1
                            i32.store
                            local.get 1
                            i32.eqz
                            br_if 1 (;@11;)
                          end
                          local.get 1
                          local.get 7
                          i32.store offset=24
                          local.get 3
                          i32.load offset=16
                          local.tee 0
                          if  ;; label = @12
                            local.get 1
                            local.get 0
                            i32.store offset=16
                            local.get 0
                            local.get 1
                            i32.store offset=24
                          end
                          local.get 3
                          i32.load offset=20
                          local.tee 0
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 1
                          local.get 0
                          i32.store offset=20
                          local.get 0
                          local.get 1
                          i32.store offset=24
                        end
                        local.get 3
                        local.get 8
                        i32.add
                        local.set 3
                        local.get 2
                        local.get 8
                        i32.add
                        local.set 2
                      end
                      local.get 3
                      local.get 3
                      i32.load offset=4
                      i32.const -2
                      i32.and
                      i32.store offset=4
                      local.get 5
                      local.get 2
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get 2
                      local.get 5
                      i32.add
                      local.get 2
                      i32.store
                      local.get 2
                      i32.const 255
                      i32.le_u
                      if  ;; label = @10
                        local.get 2
                        i32.const 3
                        i32.shr_u
                        local.tee 0
                        i32.const 3
                        i32.shl
                        i32.const 2432
                        i32.add
                        local.set 2
                        block (result i32)  ;; label = @11
                          i32.const 2392
                          i32.load
                          local.tee 1
                          i32.const 1
                          local.get 0
                          i32.shl
                          local.tee 0
                          i32.and
                          i32.eqz
                          if  ;; label = @12
                            i32.const 2392
                            local.get 0
                            local.get 1
                            i32.or
                            i32.store
                            local.get 2
                            br 1 (;@11;)
                          end
                          local.get 2
                          i32.load offset=8
                        end
                        local.set 0
                        local.get 2
                        local.get 5
                        i32.store offset=8
                        local.get 0
                        local.get 5
                        i32.store offset=12
                        local.get 5
                        local.get 2
                        i32.store offset=12
                        local.get 5
                        local.get 0
                        i32.store offset=8
                        br 3 (;@7;)
                      end
                      i32.const 31
                      local.set 0
                      local.get 2
                      i32.const 16777215
                      i32.le_u
                      if  ;; label = @10
                        local.get 2
                        i32.const 8
                        i32.shr_u
                        local.tee 0
                        local.get 0
                        i32.const 1048320
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 8
                        i32.and
                        local.tee 4
                        i32.shl
                        local.tee 0
                        local.get 0
                        i32.const 520192
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 4
                        i32.and
                        local.tee 1
                        i32.shl
                        local.tee 0
                        local.get 0
                        i32.const 245760
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 2
                        i32.and
                        local.tee 0
                        i32.shl
                        i32.const 15
                        i32.shr_u
                        local.get 1
                        local.get 4
                        i32.or
                        local.get 0
                        i32.or
                        i32.sub
                        local.tee 0
                        i32.const 1
                        i32.shl
                        local.get 2
                        local.get 0
                        i32.const 21
                        i32.add
                        i32.shr_u
                        i32.const 1
                        i32.and
                        i32.or
                        i32.const 28
                        i32.add
                        local.set 0
                      end
                      local.get 5
                      local.get 0
                      i32.store offset=28
                      local.get 5
                      i64.const 0
                      i64.store offset=16 align=4
                      local.get 0
                      i32.const 2
                      i32.shl
                      i32.const 2696
                      i32.add
                      local.set 3
                      block  ;; label = @10
                        i32.const 2396
                        i32.load
                        local.tee 4
                        i32.const 1
                        local.get 0
                        i32.shl
                        local.tee 1
                        i32.and
                        i32.eqz
                        if  ;; label = @11
                          i32.const 2396
                          local.get 1
                          local.get 4
                          i32.or
                          i32.store
                          local.get 3
                          local.get 5
                          i32.store
                          local.get 5
                          local.get 3
                          i32.store offset=24
                          br 1 (;@10;)
                        end
                        local.get 2
                        i32.const 0
                        i32.const 25
                        local.get 0
                        i32.const 1
                        i32.shr_u
                        i32.sub
                        local.get 0
                        i32.const 31
                        i32.eq
                        select
                        i32.shl
                        local.set 0
                        local.get 3
                        i32.load
                        local.set 1
                        loop  ;; label = @11
                          local.get 1
                          local.tee 4
                          i32.load offset=4
                          i32.const -8
                          i32.and
                          local.get 2
                          i32.eq
                          br_if 3 (;@8;)
                          local.get 0
                          i32.const 29
                          i32.shr_u
                          local.set 1
                          local.get 0
                          i32.const 1
                          i32.shl
                          local.set 0
                          local.get 4
                          local.get 1
                          i32.const 4
                          i32.and
                          i32.add
                          local.tee 3
                          i32.load offset=16
                          local.tee 1
                          br_if 0 (;@11;)
                        end
                        local.get 3
                        local.get 5
                        i32.store offset=16
                        local.get 5
                        local.get 4
                        i32.store offset=24
                      end
                      local.get 5
                      local.get 5
                      i32.store offset=12
                      local.get 5
                      local.get 5
                      i32.store offset=8
                      br 2 (;@7;)
                    end
                    i32.const 2416
                    local.get 1
                    i32.const -8
                    local.get 1
                    i32.sub
                    i32.const 7
                    i32.and
                    i32.const 0
                    local.get 1
                    i32.const 8
                    i32.add
                    i32.const 7
                    i32.and
                    select
                    local.tee 0
                    i32.add
                    local.tee 2
                    i32.store
                    i32.const 2404
                    local.get 8
                    local.get 0
                    i32.sub
                    i32.const 40
                    i32.sub
                    local.tee 0
                    i32.store
                    local.get 2
                    local.get 0
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 3
                    i32.const 36
                    i32.sub
                    i32.const 40
                    i32.store
                    i32.const 2420
                    i32.const 2880
                    i32.load
                    i32.store
                    local.get 6
                    local.get 4
                    i32.const 39
                    local.get 4
                    i32.sub
                    i32.const 7
                    i32.and
                    i32.const 0
                    local.get 4
                    i32.const 39
                    i32.sub
                    i32.const 7
                    i32.and
                    select
                    i32.add
                    i32.const 47
                    i32.sub
                    local.tee 0
                    local.get 0
                    local.get 6
                    i32.const 16
                    i32.add
                    i32.lt_u
                    select
                    local.tee 2
                    i32.const 27
                    i32.store offset=4
                    local.get 2
                    i32.const 2848
                    i64.load align=4
                    i64.store offset=16 align=4
                    local.get 2
                    i32.const 2840
                    i64.load align=4
                    i64.store offset=8 align=4
                    i32.const 2848
                    local.get 2
                    i32.const 8
                    i32.add
                    i32.store
                    i32.const 2844
                    local.get 8
                    i32.store
                    i32.const 2840
                    local.get 1
                    i32.store
                    i32.const 2852
                    i32.const 0
                    i32.store
                    local.get 2
                    i32.const 24
                    i32.add
                    local.set 0
                    loop  ;; label = @9
                      local.get 0
                      i32.const 7
                      i32.store offset=4
                      local.get 0
                      i32.const 8
                      i32.add
                      local.set 1
                      local.get 0
                      i32.const 4
                      i32.add
                      local.set 0
                      local.get 1
                      local.get 4
                      i32.lt_u
                      br_if 0 (;@9;)
                    end
                    local.get 2
                    local.get 6
                    i32.eq
                    br_if 3 (;@5;)
                    local.get 2
                    local.get 2
                    i32.load offset=4
                    i32.const -2
                    i32.and
                    i32.store offset=4
                    local.get 6
                    local.get 2
                    local.get 6
                    i32.sub
                    local.tee 3
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 2
                    local.get 3
                    i32.store
                    local.get 3
                    i32.const 255
                    i32.le_u
                    if  ;; label = @9
                      local.get 3
                      i32.const 3
                      i32.shr_u
                      local.tee 0
                      i32.const 3
                      i32.shl
                      i32.const 2432
                      i32.add
                      local.set 2
                      block (result i32)  ;; label = @10
                        i32.const 2392
                        i32.load
                        local.tee 1
                        i32.const 1
                        local.get 0
                        i32.shl
                        local.tee 0
                        i32.and
                        i32.eqz
                        if  ;; label = @11
                          i32.const 2392
                          local.get 0
                          local.get 1
                          i32.or
                          i32.store
                          local.get 2
                          br 1 (;@10;)
                        end
                        local.get 2
                        i32.load offset=8
                      end
                      local.set 0
                      local.get 2
                      local.get 6
                      i32.store offset=8
                      local.get 0
                      local.get 6
                      i32.store offset=12
                      local.get 6
                      local.get 2
                      i32.store offset=12
                      local.get 6
                      local.get 0
                      i32.store offset=8
                      br 4 (;@5;)
                    end
                    i32.const 31
                    local.set 0
                    local.get 6
                    i64.const 0
                    i64.store offset=16 align=4
                    local.get 3
                    i32.const 16777215
                    i32.le_u
                    if  ;; label = @9
                      local.get 3
                      i32.const 8
                      i32.shr_u
                      local.tee 0
                      local.get 0
                      i32.const 1048320
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 8
                      i32.and
                      local.tee 2
                      i32.shl
                      local.tee 0
                      local.get 0
                      i32.const 520192
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 4
                      i32.and
                      local.tee 1
                      i32.shl
                      local.tee 0
                      local.get 0
                      i32.const 245760
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 2
                      i32.and
                      local.tee 0
                      i32.shl
                      i32.const 15
                      i32.shr_u
                      local.get 1
                      local.get 2
                      i32.or
                      local.get 0
                      i32.or
                      i32.sub
                      local.tee 0
                      i32.const 1
                      i32.shl
                      local.get 3
                      local.get 0
                      i32.const 21
                      i32.add
                      i32.shr_u
                      i32.const 1
                      i32.and
                      i32.or
                      i32.const 28
                      i32.add
                      local.set 0
                    end
                    local.get 6
                    local.get 0
                    i32.store offset=28
                    local.get 0
                    i32.const 2
                    i32.shl
                    i32.const 2696
                    i32.add
                    local.set 4
                    block  ;; label = @9
                      i32.const 2396
                      i32.load
                      local.tee 2
                      i32.const 1
                      local.get 0
                      i32.shl
                      local.tee 1
                      i32.and
                      i32.eqz
                      if  ;; label = @10
                        i32.const 2396
                        local.get 1
                        local.get 2
                        i32.or
                        i32.store
                        local.get 4
                        local.get 6
                        i32.store
                        local.get 6
                        local.get 4
                        i32.store offset=24
                        br 1 (;@9;)
                      end
                      local.get 3
                      i32.const 0
                      i32.const 25
                      local.get 0
                      i32.const 1
                      i32.shr_u
                      i32.sub
                      local.get 0
                      i32.const 31
                      i32.eq
                      select
                      i32.shl
                      local.set 0
                      local.get 4
                      i32.load
                      local.set 1
                      loop  ;; label = @10
                        local.get 1
                        local.tee 2
                        i32.load offset=4
                        i32.const -8
                        i32.and
                        local.get 3
                        i32.eq
                        br_if 4 (;@6;)
                        local.get 0
                        i32.const 29
                        i32.shr_u
                        local.set 1
                        local.get 0
                        i32.const 1
                        i32.shl
                        local.set 0
                        local.get 2
                        local.get 1
                        i32.const 4
                        i32.and
                        i32.add
                        local.tee 4
                        i32.load offset=16
                        local.tee 1
                        br_if 0 (;@10;)
                      end
                      local.get 4
                      local.get 6
                      i32.store offset=16
                      local.get 6
                      local.get 2
                      i32.store offset=24
                    end
                    local.get 6
                    local.get 6
                    i32.store offset=12
                    local.get 6
                    local.get 6
                    i32.store offset=8
                    br 3 (;@5;)
                  end
                  local.get 4
                  i32.load offset=8
                  local.tee 0
                  local.get 5
                  i32.store offset=12
                  local.get 4
                  local.get 5
                  i32.store offset=8
                  local.get 5
                  i32.const 0
                  i32.store offset=24
                  local.get 5
                  local.get 4
                  i32.store offset=12
                  local.get 5
                  local.get 0
                  i32.store offset=8
                end
                local.get 9
                i32.const 8
                i32.add
                local.set 0
                br 5 (;@1;)
              end
              local.get 2
              i32.load offset=8
              local.tee 0
              local.get 6
              i32.store offset=12
              local.get 2
              local.get 6
              i32.store offset=8
              local.get 6
              i32.const 0
              i32.store offset=24
              local.get 6
              local.get 2
              i32.store offset=12
              local.get 6
              local.get 0
              i32.store offset=8
            end
            i32.const 2404
            i32.load
            local.tee 0
            local.get 7
            i32.le_u
            br_if 0 (;@4;)
            i32.const 2404
            local.get 0
            local.get 7
            i32.sub
            local.tee 1
            i32.store
            i32.const 2416
            i32.const 2416
            i32.load
            local.tee 2
            local.get 7
            i32.add
            local.tee 0
            i32.store
            local.get 0
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 2
            local.get 7
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 2
            i32.const 8
            i32.add
            local.set 0
            br 3 (;@1;)
          end
          i32.const 2388
          i32.const 48
          i32.store
          i32.const 0
          local.set 0
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 8
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 3
            i32.load offset=28
            local.tee 2
            i32.const 2
            i32.shl
            i32.const 2696
            i32.add
            local.tee 0
            i32.load
            local.get 3
            i32.eq
            if  ;; label = @5
              local.get 0
              local.get 1
              i32.store
              local.get 1
              br_if 1 (;@4;)
              i32.const 2396
              local.get 9
              i32.const -2
              local.get 2
              i32.rotl
              i32.and
              local.tee 9
              i32.store
              br 2 (;@3;)
            end
            local.get 8
            i32.const 16
            i32.const 20
            local.get 8
            i32.load offset=16
            local.get 3
            i32.eq
            select
            i32.add
            local.get 1
            i32.store
            local.get 1
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 1
          local.get 8
          i32.store offset=24
          local.get 3
          i32.load offset=16
          local.tee 0
          if  ;; label = @4
            local.get 1
            local.get 0
            i32.store offset=16
            local.get 0
            local.get 1
            i32.store offset=24
          end
          local.get 3
          i32.load offset=20
          local.tee 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          local.get 0
          i32.store offset=20
          local.get 0
          local.get 1
          i32.store offset=24
        end
        block  ;; label = @3
          local.get 4
          i32.const 15
          i32.le_u
          if  ;; label = @4
            local.get 3
            local.get 4
            local.get 7
            i32.add
            local.tee 0
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 0
            local.get 3
            i32.add
            local.tee 0
            local.get 0
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            br 1 (;@3;)
          end
          local.get 3
          local.get 7
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 5
          local.get 4
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 4
          local.get 5
          i32.add
          local.get 4
          i32.store
          local.get 4
          i32.const 255
          i32.le_u
          if  ;; label = @4
            local.get 4
            i32.const 3
            i32.shr_u
            local.tee 0
            i32.const 3
            i32.shl
            i32.const 2432
            i32.add
            local.set 2
            block (result i32)  ;; label = @5
              i32.const 2392
              i32.load
              local.tee 1
              i32.const 1
              local.get 0
              i32.shl
              local.tee 0
              i32.and
              i32.eqz
              if  ;; label = @6
                i32.const 2392
                local.get 0
                local.get 1
                i32.or
                i32.store
                local.get 2
                br 1 (;@5;)
              end
              local.get 2
              i32.load offset=8
            end
            local.set 0
            local.get 2
            local.get 5
            i32.store offset=8
            local.get 0
            local.get 5
            i32.store offset=12
            local.get 5
            local.get 2
            i32.store offset=12
            local.get 5
            local.get 0
            i32.store offset=8
            br 1 (;@3;)
          end
          i32.const 31
          local.set 0
          local.get 4
          i32.const 16777215
          i32.le_u
          if  ;; label = @4
            local.get 4
            i32.const 8
            i32.shr_u
            local.tee 0
            local.get 0
            i32.const 1048320
            i32.add
            i32.const 16
            i32.shr_u
            i32.const 8
            i32.and
            local.tee 2
            i32.shl
            local.tee 0
            local.get 0
            i32.const 520192
            i32.add
            i32.const 16
            i32.shr_u
            i32.const 4
            i32.and
            local.tee 1
            i32.shl
            local.tee 0
            local.get 0
            i32.const 245760
            i32.add
            i32.const 16
            i32.shr_u
            i32.const 2
            i32.and
            local.tee 0
            i32.shl
            i32.const 15
            i32.shr_u
            local.get 1
            local.get 2
            i32.or
            local.get 0
            i32.or
            i32.sub
            local.tee 0
            i32.const 1
            i32.shl
            local.get 4
            local.get 0
            i32.const 21
            i32.add
            i32.shr_u
            i32.const 1
            i32.and
            i32.or
            i32.const 28
            i32.add
            local.set 0
          end
          local.get 5
          local.get 0
          i32.store offset=28
          local.get 5
          i64.const 0
          i64.store offset=16 align=4
          local.get 0
          i32.const 2
          i32.shl
          i32.const 2696
          i32.add
          local.set 1
          block  ;; label = @4
            block  ;; label = @5
              local.get 9
              i32.const 1
              local.get 0
              i32.shl
              local.tee 2
              i32.and
              i32.eqz
              if  ;; label = @6
                i32.const 2396
                local.get 2
                local.get 9
                i32.or
                i32.store
                local.get 1
                local.get 5
                i32.store
                br 1 (;@5;)
              end
              local.get 4
              i32.const 0
              i32.const 25
              local.get 0
              i32.const 1
              i32.shr_u
              i32.sub
              local.get 0
              i32.const 31
              i32.eq
              select
              i32.shl
              local.set 0
              local.get 1
              i32.load
              local.set 7
              loop  ;; label = @6
                local.get 7
                local.tee 1
                i32.load offset=4
                i32.const -8
                i32.and
                local.get 4
                i32.eq
                br_if 2 (;@4;)
                local.get 0
                i32.const 29
                i32.shr_u
                local.set 2
                local.get 0
                i32.const 1
                i32.shl
                local.set 0
                local.get 1
                local.get 2
                i32.const 4
                i32.and
                i32.add
                local.tee 2
                i32.load offset=16
                local.tee 7
                br_if 0 (;@6;)
              end
              local.get 2
              local.get 5
              i32.store offset=16
            end
            local.get 5
            local.get 1
            i32.store offset=24
            local.get 5
            local.get 5
            i32.store offset=12
            local.get 5
            local.get 5
            i32.store offset=8
            br 1 (;@3;)
          end
          local.get 1
          i32.load offset=8
          local.tee 0
          local.get 5
          i32.store offset=12
          local.get 1
          local.get 5
          i32.store offset=8
          local.get 5
          i32.const 0
          i32.store offset=24
          local.get 5
          local.get 1
          i32.store offset=12
          local.get 5
          local.get 0
          i32.store offset=8
        end
        local.get 3
        i32.const 8
        i32.add
        local.set 0
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 11
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 1
          i32.load offset=28
          local.tee 2
          i32.const 2
          i32.shl
          i32.const 2696
          i32.add
          local.tee 0
          i32.load
          local.get 1
          i32.eq
          if  ;; label = @4
            local.get 0
            local.get 3
            i32.store
            local.get 3
            br_if 1 (;@3;)
            i32.const 2396
            local.get 5
            i32.const -2
            local.get 2
            i32.rotl
            i32.and
            i32.store
            br 2 (;@2;)
          end
          local.get 11
          i32.const 16
          i32.const 20
          local.get 11
          i32.load offset=16
          local.get 1
          i32.eq
          select
          i32.add
          local.get 3
          i32.store
          local.get 3
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 3
        local.get 11
        i32.store offset=24
        local.get 1
        i32.load offset=16
        local.tee 0
        if  ;; label = @3
          local.get 3
          local.get 0
          i32.store offset=16
          local.get 0
          local.get 3
          i32.store offset=24
        end
        local.get 1
        i32.load offset=20
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        local.get 0
        i32.store offset=20
        local.get 0
        local.get 3
        i32.store offset=24
      end
      block  ;; label = @2
        local.get 4
        i32.const 15
        i32.le_u
        if  ;; label = @3
          local.get 1
          local.get 4
          local.get 7
          i32.add
          local.tee 0
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 0
          local.get 1
          i32.add
          local.tee 0
          local.get 0
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          br 1 (;@2;)
        end
        local.get 1
        local.get 7
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 9
        local.get 4
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 4
        local.get 9
        i32.add
        local.get 4
        i32.store
        local.get 10
        if  ;; label = @3
          local.get 10
          i32.const 3
          i32.shr_u
          local.tee 0
          i32.const 3
          i32.shl
          i32.const 2432
          i32.add
          local.set 3
          i32.const 2412
          i32.load
          local.set 2
          block (result i32)  ;; label = @4
            i32.const 1
            local.get 0
            i32.shl
            local.tee 0
            local.get 8
            i32.and
            i32.eqz
            if  ;; label = @5
              i32.const 2392
              local.get 0
              local.get 8
              i32.or
              i32.store
              local.get 3
              br 1 (;@4;)
            end
            local.get 3
            i32.load offset=8
          end
          local.set 0
          local.get 3
          local.get 2
          i32.store offset=8
          local.get 0
          local.get 2
          i32.store offset=12
          local.get 2
          local.get 3
          i32.store offset=12
          local.get 2
          local.get 0
          i32.store offset=8
        end
        i32.const 2412
        local.get 9
        i32.store
        i32.const 2400
        local.get 4
        i32.store
      end
      local.get 1
      i32.const 8
      i32.add
      local.set 0
    end
    local.get 12
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func (;46;) (type 1) (param i32) (result i32)
    (local i32)
    local.get 0
    if  ;; label = @1
      local.get 0
      i32.load offset=76
      i32.const -1
      i32.le_s
      if  ;; label = @2
        local.get 0
        call 36
        return
      end
      local.get 0
      call 36
      return
    end
    i32.const 2152
    i32.load
    if  ;; label = @1
      i32.const 2152
      i32.load
      call 46
      local.set 1
    end
    i32.const 4000
    i32.load
    local.tee 0
    if  ;; label = @1
      loop  ;; label = @2
        local.get 0
        i32.load offset=76
        drop
        local.get 0
        i32.load offset=20
        local.get 0
        i32.load offset=28
        i32.gt_u
        if  ;; label = @3
          local.get 0
          call 36
          local.get 1
          i32.or
          local.set 1
        end
        local.get 0
        i32.load offset=56
        local.tee 0
        br_if 0 (;@2;)
      end
    end
    local.get 1)
  (func (;47;) (type 0) (param i32)
    (local i32 i32 i32 i32 i32 i32)
    i32.const 1508
    i32.load
    local.tee 2
    i32.load offset=76
    drop
    local.get 2
    local.set 5
    block  ;; label = @1
      i32.const -1
      i32.const 0
      block (result i32)  ;; label = @2
        local.get 0
        local.set 6
        block (result i32)  ;; label = @3
          block  ;; label = @4
            local.get 0
            local.tee 1
            i32.const 3
            i32.and
            if  ;; label = @5
              loop  ;; label = @6
                local.get 1
                i32.load8_u
                i32.eqz
                br_if 2 (;@4;)
                local.get 1
                i32.const 1
                i32.add
                local.tee 1
                i32.const 3
                i32.and
                br_if 0 (;@6;)
              end
            end
            loop  ;; label = @5
              local.get 1
              local.tee 3
              i32.const 4
              i32.add
              local.set 1
              local.get 3
              i32.load
              local.tee 4
              i32.const -1
              i32.xor
              local.get 4
              i32.const 16843009
              i32.sub
              i32.and
              i32.const -2139062144
              i32.and
              i32.eqz
              br_if 0 (;@5;)
            end
            local.get 3
            local.get 0
            i32.sub
            local.get 4
            i32.const 255
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            drop
            loop  ;; label = @5
              local.get 3
              i32.load8_u offset=1
              local.set 4
              local.get 3
              i32.const 1
              i32.add
              local.tee 1
              local.set 3
              local.get 4
              br_if 0 (;@5;)
            end
          end
          local.get 1
          local.get 0
          i32.sub
        end
        local.tee 1
        local.tee 0
        local.set 3
        local.get 0
        local.get 3
        block (result i32)  ;; label = @3
          local.get 5
          i32.load offset=76
          i32.const -1
          i32.le_s
          if  ;; label = @4
            local.get 6
            local.get 3
            local.get 5
            call 38
            br 1 (;@3;)
          end
          local.get 6
          local.get 3
          local.get 5
          call 38
        end
        local.tee 0
        i32.eq
        br_if 0 (;@2;)
        drop
        local.get 0
      end
      local.get 1
      i32.ne
      select
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 2
        i32.load8_u offset=75
        i32.const 10
        i32.eq
        br_if 0 (;@2;)
        local.get 2
        i32.load offset=20
        local.tee 0
        local.get 2
        i32.load offset=16
        i32.ge_u
        br_if 0 (;@2;)
        local.get 2
        local.get 0
        i32.const 1
        i32.add
        i32.store offset=20
        local.get 0
        i32.const 10
        i32.store8
        br 1 (;@1;)
      end
      global.get 0
      i32.const 16
      i32.sub
      local.tee 1
      global.set 0
      local.get 1
      i32.const 10
      i32.store8 offset=15
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.load offset=16
          local.tee 0
          if (result i32)  ;; label = @4
            local.get 0
          else
            local.get 2
            call 51
            br_if 2 (;@2;)
            local.get 2
            i32.load offset=16
          end
          local.get 2
          i32.load offset=20
          local.tee 0
          i32.le_u
          br_if 0 (;@3;)
          local.get 2
          i32.load8_s offset=75
          i32.const 10
          i32.eq
          br_if 0 (;@3;)
          local.get 2
          local.get 0
          i32.const 1
          i32.add
          i32.store offset=20
          local.get 0
          i32.const 10
          i32.store8
          br 1 (;@2;)
        end
        local.get 2
        local.get 1
        i32.const 15
        i32.add
        i32.const 1
        local.get 2
        i32.load offset=36
        call_indirect (type 3)
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 1
        i32.load8_u offset=15
        drop
      end
      local.get 1
      i32.const 16
      i32.add
      global.set 0
    end)
  (func (;48;) (type 4) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    local.get 1
    i32.store offset=12
    i32.const 1508
    i32.load
    local.set 2
    global.get 0
    i32.const 208
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 1
    i32.store offset=204
    local.get 3
    i32.const 160
    i32.add
    i32.const 0
    i32.const 40
    call 40
    local.get 3
    local.get 3
    i32.load offset=204
    i32.store offset=200
    block  ;; label = @1
      i32.const 0
      local.get 0
      local.get 3
      i32.const 200
      i32.add
      local.get 3
      i32.const 80
      i32.add
      local.get 3
      i32.const 160
      i32.add
      call 37
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      local.get 2
      i32.load offset=76
      i32.const 0
      i32.ge_s
      local.set 5
      local.get 2
      i32.load
      local.set 1
      local.get 2
      i32.load8_s offset=74
      i32.const 0
      i32.le_s
      if  ;; label = @2
        local.get 2
        local.get 1
        i32.const -33
        i32.and
        i32.store
      end
      local.get 1
      i32.const 32
      i32.and
      local.set 6
      block (result i32)  ;; label = @2
        local.get 2
        i32.load offset=48
        if  ;; label = @3
          local.get 2
          local.get 0
          local.get 3
          i32.const 200
          i32.add
          local.get 3
          i32.const 80
          i32.add
          local.get 3
          i32.const 160
          i32.add
          call 37
          br 1 (;@2;)
        end
        local.get 2
        i32.const 80
        i32.store offset=48
        local.get 2
        local.get 3
        i32.const 80
        i32.add
        i32.store offset=16
        local.get 2
        local.get 3
        i32.store offset=28
        local.get 2
        local.get 3
        i32.store offset=20
        local.get 2
        i32.load offset=44
        local.set 1
        local.get 2
        local.get 3
        i32.store offset=44
        local.get 2
        local.get 0
        local.get 3
        i32.const 200
        i32.add
        local.get 3
        i32.const 80
        i32.add
        local.get 3
        i32.const 160
        i32.add
        call 37
        local.get 1
        i32.eqz
        br_if 0 (;@2;)
        drop
        local.get 2
        i32.const 0
        i32.const 0
        local.get 2
        i32.load offset=36
        call_indirect (type 3)
        drop
        local.get 2
        i32.const 0
        i32.store offset=48
        local.get 2
        local.get 1
        i32.store offset=44
        local.get 2
        i32.const 0
        i32.store offset=28
        local.get 2
        i32.const 0
        i32.store offset=16
        local.get 2
        i32.load offset=20
        drop
        local.get 2
        i32.const 0
        i32.store offset=20
        i32.const 0
      end
      drop
      local.get 2
      local.get 2
      i32.load
      local.get 6
      i32.or
      i32.store
      local.get 5
      i32.eqz
      br_if 0 (;@1;)
    end
    local.get 3
    i32.const 208
    i32.add
    global.set 0
    local.get 4
    i32.const 16
    i32.add
    global.set 0)
  (func (;49;) (type 2) (param i32 i32 i32)
    block  ;; label = @1
      local.get 1
      i32.const 20
      i32.gt_u
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 1
                          i32.const 9
                          i32.sub
                          br_table 0 (;@11;) 1 (;@10;) 2 (;@9;) 3 (;@8;) 4 (;@7;) 5 (;@6;) 6 (;@5;) 7 (;@4;) 8 (;@3;) 9 (;@2;) 10 (;@1;)
                        end
                        local.get 2
                        local.get 2
                        i32.load
                        local.tee 1
                        i32.const 4
                        i32.add
                        i32.store
                        local.get 0
                        local.get 1
                        i32.load
                        i32.store
                        return
                      end
                      local.get 2
                      local.get 2
                      i32.load
                      local.tee 1
                      i32.const 4
                      i32.add
                      i32.store
                      local.get 0
                      local.get 1
                      i64.load32_s
                      i64.store
                      return
                    end
                    local.get 2
                    local.get 2
                    i32.load
                    local.tee 1
                    i32.const 4
                    i32.add
                    i32.store
                    local.get 0
                    local.get 1
                    i64.load32_u
                    i64.store
                    return
                  end
                  local.get 2
                  local.get 2
                  i32.load
                  i32.const 7
                  i32.add
                  i32.const -8
                  i32.and
                  local.tee 1
                  i32.const 8
                  i32.add
                  i32.store
                  local.get 0
                  local.get 1
                  i64.load
                  i64.store
                  return
                end
                local.get 2
                local.get 2
                i32.load
                local.tee 1
                i32.const 4
                i32.add
                i32.store
                local.get 0
                local.get 1
                i64.load16_s
                i64.store
                return
              end
              local.get 2
              local.get 2
              i32.load
              local.tee 1
              i32.const 4
              i32.add
              i32.store
              local.get 0
              local.get 1
              i64.load16_u
              i64.store
              return
            end
            local.get 2
            local.get 2
            i32.load
            local.tee 1
            i32.const 4
            i32.add
            i32.store
            local.get 0
            local.get 1
            i64.load8_s
            i64.store
            return
          end
          local.get 2
          local.get 2
          i32.load
          local.tee 1
          i32.const 4
          i32.add
          i32.store
          local.get 0
          local.get 1
          i64.load8_u
          i64.store
          return
        end
        local.get 2
        local.get 2
        i32.load
        i32.const 7
        i32.add
        i32.const -8
        i32.and
        local.tee 1
        i32.const 8
        i32.add
        i32.store
        local.get 0
        local.get 1
        f64.load
        f64.store
        return
      end
      local.get 0
      local.get 2
      i32.const 0
      call_indirect (type 4)
    end)
  (func (;50;) (type 1) (param i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    i32.load
    i32.load8_s
    call 35
    if  ;; label = @1
      loop  ;; label = @2
        local.get 0
        i32.load
        local.tee 2
        i32.load8_s
        local.set 3
        local.get 0
        local.get 2
        i32.const 1
        i32.add
        i32.store
        local.get 3
        local.get 1
        i32.const 10
        i32.mul
        i32.add
        i32.const 48
        i32.sub
        local.set 1
        local.get 2
        i32.load8_s offset=1
        call 35
        br_if 0 (;@2;)
      end
    end
    local.get 1)
  (func (;51;) (type 1) (param i32) (result i32)
    (local i32)
    local.get 0
    local.get 0
    i32.load8_u offset=74
    local.tee 1
    i32.const 1
    i32.sub
    local.get 1
    i32.or
    i32.store8 offset=74
    local.get 0
    i32.load
    local.tee 1
    i32.const 8
    i32.and
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.const 32
      i32.or
      i32.store
      i32.const -1
      return
    end
    local.get 0
    i64.const 0
    i64.store offset=4 align=4
    local.get 0
    local.get 0
    i32.load offset=44
    local.tee 1
    i32.store offset=28
    local.get 0
    local.get 1
    i32.store offset=20
    local.get 0
    local.get 1
    local.get 0
    i32.load offset=48
    i32.add
    i32.store offset=16
    i32.const 0)
  (func (;52;) (type 5) (param i32 i32) (result i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 0
      return
    end
    block (result i32)  ;; label = @1
      block  ;; label = @2
        local.get 0
        if (result i32)  ;; label = @3
          local.get 1
          i32.const 127
          i32.le_u
          br_if 1 (;@2;)
          block  ;; label = @4
            i32.const 2328
            i32.load
            i32.load
            i32.eqz
            if  ;; label = @5
              local.get 1
              i32.const -128
              i32.and
              i32.const 57216
              i32.eq
              br_if 3 (;@2;)
              br 1 (;@4;)
            end
            local.get 1
            i32.const 2047
            i32.le_u
            if  ;; label = @5
              local.get 0
              local.get 1
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=1
              local.get 0
              local.get 1
              i32.const 6
              i32.shr_u
              i32.const 192
              i32.or
              i32.store8
              i32.const 2
              br 4 (;@1;)
            end
            local.get 1
            i32.const 55296
            i32.ge_u
            i32.const 0
            local.get 1
            i32.const -8192
            i32.and
            i32.const 57344
            i32.ne
            select
            i32.eqz
            if  ;; label = @5
              local.get 0
              local.get 1
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=2
              local.get 0
              local.get 1
              i32.const 12
              i32.shr_u
              i32.const 224
              i32.or
              i32.store8
              local.get 0
              local.get 1
              i32.const 6
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=1
              i32.const 3
              br 4 (;@1;)
            end
            local.get 1
            i32.const 65536
            i32.sub
            i32.const 1048575
            i32.le_u
            if  ;; label = @5
              local.get 0
              local.get 1
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=3
              local.get 0
              local.get 1
              i32.const 18
              i32.shr_u
              i32.const 240
              i32.or
              i32.store8
              local.get 0
              local.get 1
              i32.const 6
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=2
              local.get 0
              local.get 1
              i32.const 12
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=1
              i32.const 4
              br 4 (;@1;)
            end
          end
          i32.const 2388
          i32.const 25
          i32.store
          i32.const -1
        else
          i32.const 1
        end
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      i32.store8
      i32.const 1
    end)
  (func (;53;) (type 5) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.store offset=12
    block  ;; label = @1
      local.get 0
      call 31
      local.tee 0
      if  ;; label = @2
        local.get 0
        i32.const 1
        local.get 2
        i32.const 12
        i32.add
        i32.const 0
        call 30
        local.get 0
        call 21
        local.get 0
        i32.const 35713
        local.get 2
        i32.const 8
        i32.add
        call 3
        local.get 2
        i32.load offset=8
        br_if 1 (;@1;)
        local.get 2
        i32.const 0
        i32.store offset=4
        local.get 0
        i32.const 35716
        local.get 2
        i32.const 4
        i32.add
        call 3
        local.get 2
        i32.load offset=4
        local.tee 1
        i32.const 2
        i32.ge_s
        if  ;; label = @3
          local.get 0
          local.get 1
          i32.const 0
          local.get 1
          call 45
          local.tee 1
          call 10
          local.get 2
          local.get 1
          i32.store
          i32.const 1072
          local.get 2
          call 48
          local.get 1
          call 44
        end
        local.get 0
        call 9
      end
      i32.const 0
      local.set 0
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func (;54;) (type 1) (param i32) (result i32)
    i32.const 0)
  (func (;55;) (type 8)
    (local i32 i32 i32 i32 i32 i32)
    block (result i32)  ;; label = @1
      global.get 0
      i32.const 16
      i32.sub
      local.tee 0
      global.set 0
      block  ;; label = @2
        local.get 0
        local.tee 2
        i32.const 12
        i32.add
        local.get 0
        i32.const 8
        i32.add
        call 12
        i32.eqz
        if  ;; label = @3
          local.get 2
          i32.load offset=12
          local.tee 3
          if (result i32)  ;; label = @4
            local.get 0
            local.get 3
            i32.const 2
            i32.shl
            local.tee 3
            i32.const 19
            i32.add
            i32.const -16
            i32.and
            i32.sub
            local.tee 0
            local.tee 1
            global.set 0
            local.get 1
            local.get 2
            i32.load offset=8
            i32.const 15
            i32.add
            i32.const -16
            i32.and
            i32.sub
            local.tee 1
            global.set 0
            local.get 0
            local.get 3
            i32.add
            i32.const 0
            i32.store
            local.get 0
            local.get 1
            call 11
            br_if 2 (;@2;)
            local.get 2
            i32.load offset=12
          else
            i32.const 0
          end
          drop
          global.get 0
          i32.const -64
          i32.add
          local.tee 3
          global.set 0
          i32.const 1034
          call 47
          i32.const 1041
          i32.const 512
          i32.const 512
          call 17
          drop
          local.get 3
          i32.const 8
          i32.add
          call 16
          i32.const 1040
          local.get 3
          i32.const 8
          i32.add
          call 15
          call 14
          drop
          global.get 0
          i32.const 400
          i32.sub
          local.tee 0
          global.set 0
          local.get 0
          i32.const 240
          i32.add
          i32.const 1136
          i32.const 151
          call 41
          local.get 0
          i32.const 16
          i32.add
          i32.const 1296
          i32.const 210
          call 41
          i32.const 35633
          local.get 0
          i32.const 240
          i32.add
          call 53
          local.set 4
          i32.const 35632
          local.get 0
          i32.const 16
          i32.add
          call 53
          local.set 5
          i32.const 2384
          call 8
          local.tee 1
          i32.store
          block  ;; label = @4
            local.get 1
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            local.get 4
            call 1
            i32.const 2384
            i32.load
            local.get 5
            call 1
            i32.const 2384
            i32.load
            i32.const 0
            i32.const 1048
            call 7
            i32.const 2384
            i32.load
            call 6
            i32.const 2384
            i32.load
            i32.const 35714
            local.get 0
            i32.const 12
            i32.add
            call 5
            local.get 0
            i32.load offset=12
            i32.eqz
            if  ;; label = @5
              local.get 0
              i32.const 0
              i32.store offset=8
              i32.const 2384
              i32.load
              i32.const 35716
              local.get 0
              i32.const 8
              i32.add
              call 5
              local.get 0
              i32.load offset=8
              local.tee 4
              i32.const 2
              i32.ge_s
              if  ;; label = @6
                local.get 4
                call 45
                local.set 1
                i32.const 2384
                i32.load
                local.get 4
                i32.const 0
                local.get 1
                call 29
                local.get 0
                local.get 1
                i32.store
                i32.const 1100
                local.get 0
                call 48
                local.get 1
                call 44
              end
              i32.const 2384
              i32.load
              call 28
              br 1 (;@4;)
            end
            f32.const 0x0p+0 (;=0;)
            f32.const 0x0p+0 (;=0;)
            f32.const 0x0p+0 (;=0;)
            f32.const 0x0p+0 (;=0;)
            call 27
          end
          local.get 0
          i32.const 400
          i32.add
          global.set 0
          i32.const 1
          i32.const 30
          i32.const 1
          call 13
          local.get 3
          i32.const -64
          i32.sub
          global.set 0
          i32.const 0
          local.set 0
          local.get 2
          i32.const 16
          i32.add
          global.set 0
          local.get 0
          br 2 (;@1;)
        end
        i32.const 71
        call 0
        unreachable
      end
      i32.const 71
      call 0
      unreachable
    end
    local.set 0
    i32.const 4000
    i32.load
    local.tee 2
    if  ;; label = @1
      loop  ;; label = @2
        local.get 2
        call 39
        local.get 2
        i32.load offset=56
        local.tee 2
        br_if 0 (;@2;)
      end
    end
    i32.const 4004
    i32.load
    call 39
    i32.const 2152
    i32.load
    call 39
    local.get 0
    call 0
    unreachable)
  (func (;56;) (type 8)
    (local i32)
    i32.const 1058
    call 47
    global.get 0
    i32.const -64
    i32.add
    local.tee 0
    global.set 0
    local.get 0
    i32.const 16
    i32.add
    i32.const 0
    i32.const 36
    call 40
    local.get 0
    i64.const -4683743611408351232
    i64.store offset=40
    local.get 0
    i64.const -4683743609260867584
    i64.store offset=28 align=4
    local.get 0
    i32.const 1056964608
    i32.store offset=20
    i32.const 1
    local.get 0
    i32.const 12
    i32.add
    call 26
    i32.const 34962
    local.get 0
    i32.load offset=12
    call 4
    i32.const 34962
    i32.const 36
    local.get 0
    i32.const 16
    i32.add
    i32.const 35044
    call 25
    i32.const 0
    i32.const 0
    i32.const 512
    i32.const 512
    call 24
    i32.const 16384
    call 23
    i32.const 2384
    i32.load
    call 22
    i32.const 34962
    local.get 0
    i32.load offset=12
    call 4
    i32.const 0
    i32.const 3
    i32.const 5126
    i32.const 0
    i32.const 0
    i32.const 0
    call 20
    i32.const 0
    call 19
    i32.const 4
    i32.const 0
    i32.const 3
    call 18
    local.get 0
    i32.const -64
    i32.sub
    global.set 0)
  (func (;57;) (type 7) (param i32 i64 i32) (result i64)
    i64.const 0)
  (func (;58;) (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 0
    i32.load offset=28
    local.tee 4
    i32.store offset=16
    local.get 0
    i32.load offset=20
    local.set 5
    local.get 3
    local.get 2
    i32.store offset=28
    local.get 3
    local.get 1
    i32.store offset=24
    local.get 3
    local.get 5
    local.get 4
    i32.sub
    local.tee 1
    i32.store offset=20
    local.get 1
    local.get 2
    i32.add
    local.set 4
    i32.const 2
    local.set 7
    local.get 3
    i32.const 16
    i32.add
    local.set 1
    block (result i32)  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load offset=60
          local.get 3
          i32.const 16
          i32.add
          i32.const 2
          local.get 3
          i32.const 12
          i32.add
          call 2
          call 43
          i32.eqz
          if  ;; label = @4
            loop  ;; label = @5
              local.get 4
              local.get 3
              i32.load offset=12
              local.tee 5
              i32.eq
              br_if 2 (;@3;)
              local.get 5
              i32.const -1
              i32.le_s
              br_if 3 (;@2;)
              local.get 1
              local.get 5
              local.get 1
              i32.load offset=4
              local.tee 8
              i32.gt_u
              local.tee 6
              i32.const 3
              i32.shl
              i32.add
              local.tee 9
              local.get 5
              local.get 8
              i32.const 0
              local.get 6
              select
              i32.sub
              local.tee 8
              local.get 9
              i32.load
              i32.add
              i32.store
              local.get 1
              i32.const 12
              i32.const 4
              local.get 6
              select
              i32.add
              local.tee 9
              local.get 9
              i32.load
              local.get 8
              i32.sub
              i32.store
              local.get 4
              local.get 5
              i32.sub
              local.set 4
              local.get 0
              i32.load offset=60
              local.get 1
              i32.const 8
              i32.add
              local.get 1
              local.get 6
              select
              local.tee 1
              local.get 7
              local.get 6
              i32.sub
              local.tee 7
              local.get 3
              i32.const 12
              i32.add
              call 2
              call 43
              i32.eqz
              br_if 0 (;@5;)
            end
          end
          local.get 4
          i32.const -1
          i32.ne
          br_if 1 (;@2;)
        end
        local.get 0
        local.get 0
        i32.load offset=44
        local.tee 1
        i32.store offset=28
        local.get 0
        local.get 1
        i32.store offset=20
        local.get 0
        local.get 1
        local.get 0
        i32.load offset=48
        i32.add
        i32.store offset=16
        local.get 2
        br 1 (;@1;)
      end
      local.get 0
      i32.const 0
      i32.store offset=28
      local.get 0
      i64.const 0
      i64.store offset=16
      local.get 0
      local.get 0
      i32.load
      i32.const 32
      i32.or
      i32.store
      i32.const 0
      local.get 7
      i32.const 2
      i32.eq
      br_if 0 (;@1;)
      drop
      local.get 2
      local.get 1
      i32.load offset=4
      i32.sub
    end
    local.set 4
    local.get 3
    i32.const 32
    i32.add
    global.set 0
    local.get 4)
  (table (;0;) 6 6 funcref)
  (memory (;0;) 256 256)
  (global (;0;) (mut i32) (i32.const 5246896))
  (export "memory" (memory 0))
  (export "__indirect_function_table" (table 0))
  (export "_start" (func 55))
  (export "fflush" (func 46))
  (elem (;0;) (i32.const 1) func 56 42 54 58 57)
  (data (;0;) (i32.const 1024) "-+   0X0x\00start\00#canvas\00vPosition\00update\00(null)\00Error compiling shader:\0a%s\0a\00Error linking program:\0a%s\0a")
  (data (;1;) (i32.const 1136) "attribute vec4 vPosition;    \0avoid main()                  \0a{                            \0a   gl_Position = vPosition;  \0a}                            \0a")
  (data (;2;) (i32.const 1296) "precision mediump float;\0avoid main()                                  \0a{                                            \0a  gl_FragColor = vec4 ( 1.0, 0.0, 0.0, 1.0 );\0a}                                            \0a\00\00\00\d8\07")
  (data (;3;) (i32.const 1520) "\11\00\0a\00\11\11\11\00\00\00\00\05\00\00\00\00\00\00\09\00\00\00\00\0b\00\00\00\00\00\00\00\00\11\00\0f\0a\11\11\11\03\0a\07\00\01\00\09\0b\0b\00\00\09\06\0b\00\00\0b\00\06\11\00\00\00\11\11\11")
  (data (;4;) (i32.const 1601) "\0b\00\00\00\00\00\00\00\00\11\00\0a\0a\11\11\11\00\0a\00\00\02\00\09\0b\00\00\00\09\00\0b\00\00\0b")
  (data (;5;) (i32.const 1659) "\0c")
  (data (;6;) (i32.const 1671) "\0c\00\00\00\00\0c\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c")
  (data (;7;) (i32.const 1717) "\0e")
  (data (;8;) (i32.const 1729) "\0d\00\00\00\04\0d\00\00\00\00\09\0e\00\00\00\00\00\0e\00\00\0e")
  (data (;9;) (i32.const 1775) "\10")
  (data (;10;) (i32.const 1787) "\0f\00\00\00\00\0f\00\00\00\00\09\10\00\00\00\00\00\10\00\00\10\00\00\12\00\00\00\12\12\12")
  (data (;11;) (i32.const 1842) "\12\00\00\00\12\12\12\00\00\00\00\00\00\09")
  (data (;12;) (i32.const 1891) "\0b")
  (data (;13;) (i32.const 1903) "\0a\00\00\00\00\0a\00\00\00\00\09\0b\00\00\00\00\00\0b\00\00\0b")
  (data (;14;) (i32.const 1949) "\0c")
  (data (;15;) (i32.const 1961) "\0c\00\00\00\00\0c\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c\00\000123456789ABCDEF")
  (data (;16;) (i32.const 2000) "\b0\0fP\00\00\00\00\00\05")
  (data (;17;) (i32.const 2020) "\03")
  (data (;18;) (i32.const 2044) "\04\00\00\00\05\00\00\00X\0b\00\00\00\04")
  (data (;19;) (i32.const 2068) "\01")
  (data (;20;) (i32.const 2083) "\0a\ff\ff\ff\ff")
  (data (;21;) (i32.const 2152) "\d8\07")
  (data (;22;) (i32.const 2328) "\80\0f"))
