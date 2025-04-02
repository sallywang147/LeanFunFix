(module
  (type (;0;) (func (param i32) (result i32)))
  (type (;1;) (func (param i32)))
  (type (;2;) (func (param i32 i32) (result i32)))
  (import "env" "__linear_memory" (memory (;0;) 1))
  (import "env" "lean_dec_ref_cold" (func (;0;) (type 1)))
  (import "env" "initialize_Init" (func (;1;) (type 2)))
  (import "env" "lean_alloc_small" (func (;2;) (type 2)))
  (func $l_checkNumber (type 0) (param i32) (result i32)
    local.get 0
    i32.const 42
    i32.eq)
  (func $l_checkNumber___boxed (type 0) (param i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 0
        i32.load
        local.tee 1
        i32.const 2
        i32.lt_s
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        i32.const -1
        i32.add
        i32.store
        br 1 (;@1;)
      end
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      call 0
    end
    i32.const 3
    i32.const 1
    local.get 0
    i32.const 510
    i32.and
    i32.const 84
    i32.eq
    select)
  (func $initialize_no__main__example (type 2) (param i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load8_u
        br_if 0 (;@2;)
        i32.const 0
        i32.const 1
        i32.store8
        local.get 0
        i32.const 1
        call 1
        local.tee 0
        i32.load8_u offset=7
        i32.const 24
        i32.shl
        i32.const 16777216
        i32.eq
        br_if 1 (;@1;)
        block  ;; label = @3
          local.get 0
          i32.load
          local.tee 2
          i32.const 2
          i32.lt_s
          br_if 0 (;@3;)
          local.get 0
          local.get 2
          i32.const -1
          i32.add
          i32.store
          br 1 (;@2;)
        end
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        call 0
      end
      i32.const 16
      i32.const 1
      call 2
      local.tee 0
      i64.const 4294967297
      i64.store offset=8 align=4
      local.get 0
      i64.const 562949953421313
      i64.store align=4
    end
    local.get 0)
  (data $_G_initialized (i32.const 0) "\00"))
