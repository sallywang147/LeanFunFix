(module
  (type (;0;) (func (param i32 i32) (result i32)))
  (type (;1;) (func (param i32) (result i32)))
  (type (;2;) (func (param i32)))
  (type (;3;) (func (result i32)))
  (type (;4;) (func (param i32 i32 i32) (result i32)))
  (type (;5;) (func (param i32 i32 i32)))
  (type (;6;) (func))
  (import "env" "__linear_memory" (memory (;0;) 1))
  (import "env" "__stack_pointer" (global (;0;) (mut i32)))
  (import "env" "lean_string_push" (func (;0;) (type 0)))
  (import "env" "l_IO_print___at_IO_println___spec__1" (func (;1;) (type 0)))
  (import "env" "initialize_Init" (func (;2;) (type 0)))
  (import "env" "lean_mark_persistent" (func (;3;) (type 2)))
  (import "env" "lean_dec_ref_cold" (func (;4;) (type 2)))
  (import "env" "lean_initialize_runtime_module" (func (;5;) (type 6)))
  (import "env" "lean_set_panic_messages" (func (;6;) (type 2)))
  (import "env" "lean_io_mark_end_initialization" (func (;7;) (type 6)))
  (import "env" "lean_init_task_manager" (func (;8;) (type 6)))
  (import "env" "lean_finalize_task_manager" (func (;9;) (type 6)))
  (import "env" "lean_io_result_show_error" (func (;10;) (type 2)))
  (import "env" "lean_notify_assert" (func (;11;) (type 5)))
  (import "env" "lean_alloc_small" (func (;12;) (type 0)))
  (import "env" "lean_mk_string_unchecked" (func (;13;) (type 4)))
  (func $lean_uint8_dec_eq (type 0) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    local.get 0
    i32.store8 offset=15
    local.get 4
    local.get 1
    i32.store8 offset=14
    local.get 4
    i32.load8_u offset=15
    local.set 5
    i32.const 255
    local.set 6
    local.get 5
    local.get 6
    i32.and
    local.set 7
    local.get 4
    i32.load8_u offset=14
    local.set 8
    i32.const 255
    local.set 9
    local.get 8
    local.get 9
    i32.and
    local.set 10
    local.get 7
    local.set 11
    local.get 10
    local.set 12
    local.get 11
    local.get 12
    i32.eq
    local.set 13
    i32.const 1
    local.set 14
    local.get 13
    local.get 14
    i32.and
    local.set 15
    i32.const 255
    local.set 16
    local.get 15
    local.get 16
    i32.and
    local.set 17
    local.get 17
    return)
  (func $l_checkNumber (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set 0
    local.get 3
    local.get 0
    i32.store8 offset=15
    i32.const 42
    local.set 4
    local.get 3
    local.get 4
    i32.store8 offset=14
    local.get 3
    i32.load8_u offset=15
    local.set 5
    local.get 3
    i32.load8_u offset=14
    local.set 6
    i32.const 255
    local.set 7
    local.get 5
    local.get 7
    i32.and
    local.set 8
    i32.const 255
    local.set 9
    local.get 6
    local.get 9
    i32.and
    local.set 10
    local.get 8
    local.get 10
    call $lean_uint8_dec_eq
    local.set 11
    local.get 3
    local.get 11
    i32.store8 offset=13
    local.get 3
    i32.load8_u offset=13
    local.set 12
    i32.const 255
    local.set 13
    local.get 12
    local.get 13
    i32.and
    local.set 14
    i32.const 16
    local.set 15
    local.get 3
    local.get 15
    i32.add
    local.set 16
    local.get 16
    global.set 0
    local.get 14
    return)
  (func $l_checkNumber___boxed (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set 0
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 4
    local.get 4
    call $lean_unbox
    local.set 5
    local.get 3
    local.get 5
    i32.store8 offset=11
    local.get 3
    i32.load offset=12
    local.set 6
    local.get 6
    call $lean_dec
    local.get 3
    i32.load8_u offset=11
    local.set 7
    i32.const 255
    local.set 8
    local.get 7
    local.get 8
    i32.and
    local.set 9
    local.get 9
    call $l_checkNumber
    local.set 10
    local.get 3
    local.get 10
    i32.store8 offset=10
    local.get 3
    i32.load8_u offset=10
    local.set 11
    i32.const 255
    local.set 12
    local.get 11
    local.get 12
    i32.and
    local.set 13
    local.get 13
    call $lean_box
    local.set 14
    local.get 3
    local.get 14
    i32.store offset=4
    local.get 3
    i32.load offset=4
    local.set 15
    i32.const 16
    local.set 16
    local.get 3
    local.get 16
    i32.add
    local.set 17
    local.get 17
    global.set 0
    local.get 15
    return)
  (func $lean_unbox (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 4
    i32.const 1
    local.set 5
    local.get 4
    local.get 5
    i32.shr_u
    local.set 6
    local.get 6
    return)
  (func $lean_dec (type 2) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set 0
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 4
    local.get 4
    call $lean_is_scalar
    local.set 5
    i32.const 1
    local.set 6
    local.get 5
    local.get 6
    i32.and
    local.set 7
    block  ;; label = @1
      local.get 7
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=12
      local.set 8
      local.get 8
      call $lean_dec_ref
    end
    i32.const 16
    local.set 9
    local.get 3
    local.get 9
    i32.add
    local.set 10
    local.get 10
    global.set 0
    return)
  (func $lean_box (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 4
    i32.const 1
    local.set 5
    local.get 4
    local.get 5
    i32.shl
    local.set 6
    i32.const 1
    local.set 7
    local.get 6
    local.get 7
    i32.or
    local.set 8
    local.get 8
    return)
  (func $lean_is_scalar (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 4
    i32.const 1
    local.set 5
    local.get 4
    local.get 5
    i32.and
    local.set 6
    i32.const 1
    local.set 7
    local.get 6
    local.set 8
    local.get 7
    local.set 9
    local.get 8
    local.get 9
    i32.eq
    local.set 10
    i32.const 1
    local.set 11
    local.get 10
    local.get 11
    i32.and
    local.set 12
    local.get 12
    return)
  (func $lean_dec_ref (type 2) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set 0
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 4
    local.get 4
    i32.load
    local.set 5
    i32.const 1
    local.set 6
    local.get 5
    local.set 7
    local.get 6
    local.set 8
    local.get 7
    local.get 8
    i32.gt_s
    local.set 9
    i32.const 1
    local.set 10
    local.get 9
    local.get 10
    i32.and
    local.set 11
    block  ;; label = @1
      block  ;; label = @2
        local.get 11
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.load offset=12
        local.set 12
        local.get 12
        i32.load
        local.set 13
        i32.const -1
        local.set 14
        local.get 13
        local.get 14
        i32.add
        local.set 15
        local.get 12
        local.get 15
        i32.store
        br 1 (;@1;)
      end
      local.get 3
      i32.load offset=12
      local.set 16
      local.get 16
      i32.load
      local.set 17
      block  ;; label = @2
        local.get 17
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.load offset=12
        local.set 18
        local.get 18
        call 4
      end
    end
    i32.const 16
    local.set 19
    local.get 3
    local.get 19
    i32.add
    local.set 20
    local.get 20
    global.set 0
    return)
  (func $l_IO_println___at_main___spec__1 (type 0) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 2
    i32.const 32
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set 0
    local.get 4
    local.get 0
    i32.store offset=28
    local.get 4
    local.get 1
    i32.store offset=24
    i32.const 10
    local.set 5
    local.get 4
    local.get 5
    i32.store offset=20
    local.get 4
    i32.load offset=28
    local.set 6
    local.get 4
    i32.load offset=20
    local.set 7
    local.get 6
    local.get 7
    call 0
    local.set 8
    local.get 4
    local.get 8
    i32.store offset=16
    local.get 4
    i32.load offset=16
    local.set 9
    local.get 4
    i32.load offset=24
    local.set 10
    local.get 9
    local.get 10
    call 1
    local.set 11
    local.get 4
    local.get 11
    i32.store offset=12
    local.get 4
    i32.load offset=12
    local.set 12
    i32.const 32
    local.set 13
    local.get 4
    local.get 13
    i32.add
    local.set 14
    local.get 14
    global.set 0
    local.get 12
    return)
  (func $_lean_main (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set 0
    local.get 3
    local.get 0
    i32.store offset=12
    i32.const 0
    local.set 4
    local.get 4
    i32.load
    local.set 5
    local.get 3
    local.get 5
    i32.store offset=8
    local.get 3
    i32.load offset=8
    local.set 6
    local.get 3
    i32.load offset=12
    local.set 7
    local.get 6
    local.get 7
    call $l_IO_println___at_main___spec__1
    local.set 8
    local.get 3
    local.get 8
    i32.store offset=4
    local.get 3
    i32.load offset=4
    local.set 9
    i32.const 16
    local.set 10
    local.get 3
    local.get 10
    i32.add
    local.set 11
    local.get 11
    global.set 0
    local.get 9
    return)
  (func $initialize_example (type 0) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set 0
    local.get 4
    local.get 0
    i32.store8 offset=11
    local.get 4
    local.get 1
    i32.store offset=4
    i32.const 0
    local.set 5
    local.get 5
    i32.load8_u offset=4
    local.set 6
    i32.const 1
    local.set 7
    local.get 6
    local.get 7
    i32.and
    local.set 8
    block  ;; label = @1
      block  ;; label = @2
        local.get 8
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.set 9
        local.get 9
        call $lean_box
        local.set 10
        local.get 10
        call $lean_io_result_mk_ok
        local.set 11
        local.get 4
        local.get 11
        i32.store offset=12
        br 1 (;@1;)
      end
      i32.const 1
      local.set 12
      i32.const 0
      local.set 13
      local.get 13
      local.get 12
      i32.store8 offset=4
      local.get 4
      i32.load8_u offset=11
      local.set 14
      call $lean_io_mk_world
      local.set 15
      i32.const 255
      local.set 16
      local.get 14
      local.get 16
      i32.and
      local.set 17
      local.get 17
      local.get 15
      call 2
      local.set 18
      local.get 4
      local.get 18
      i32.store
      local.get 4
      i32.load
      local.set 19
      local.get 19
      call $lean_io_result_is_error
      local.set 20
      i32.const 1
      local.set 21
      local.get 20
      local.get 21
      i32.and
      local.set 22
      block  ;; label = @2
        local.get 22
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        i32.load
        local.set 23
        local.get 4
        local.get 23
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 4
      i32.load
      local.set 24
      local.get 24
      call $lean_dec_ref
      call $_init_l_main___closed__1
      local.set 25
      i32.const 0
      local.set 26
      local.get 26
      local.get 25
      i32.store
      i32.const 0
      local.set 27
      local.get 27
      i32.load
      local.set 28
      local.get 28
      call 3
      i32.const 0
      local.set 29
      local.get 29
      call $lean_box
      local.set 30
      local.get 30
      call $lean_io_result_mk_ok
      local.set 31
      local.get 4
      local.get 31
      i32.store offset=12
    end
    local.get 4
    i32.load offset=12
    local.set 32
    i32.const 16
    local.set 33
    local.get 4
    local.get 33
    i32.add
    local.set 34
    local.get 34
    global.set 0
    local.get 32
    return)
  (func $lean_io_result_mk_ok (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set 0
    local.get 3
    local.get 0
    i32.store offset=12
    i32.const 0
    local.set 4
    i32.const 2
    local.set 5
    local.get 4
    local.get 5
    local.get 4
    call $lean_alloc_ctor
    local.set 6
    local.get 3
    local.get 6
    i32.store offset=8
    local.get 3
    i32.load offset=8
    local.set 7
    local.get 3
    i32.load offset=12
    local.set 8
    i32.const 0
    local.set 9
    local.get 7
    local.get 9
    local.get 8
    call $lean_ctor_set
    local.get 3
    i32.load offset=8
    local.set 10
    i32.const 0
    local.set 11
    local.get 11
    call $lean_box
    local.set 12
    i32.const 1
    local.set 13
    local.get 10
    local.get 13
    local.get 12
    call $lean_ctor_set
    local.get 3
    i32.load offset=8
    local.set 14
    i32.const 16
    local.set 15
    local.get 3
    local.get 15
    i32.add
    local.set 16
    local.get 16
    global.set 0
    local.get 14
    return)
  (func $lean_io_mk_world (type 3) (result i32)
    (local i32 i32)
    i32.const 0
    local.set 0
    local.get 0
    call $lean_box
    local.set 1
    local.get 1
    return)
  (func $lean_io_result_is_error (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set 0
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 4
    local.get 4
    call $lean_ptr_tag
    local.set 5
    i32.const 255
    local.set 6
    local.get 5
    local.get 6
    i32.and
    local.set 7
    i32.const 1
    local.set 8
    local.get 7
    local.set 9
    local.get 8
    local.set 10
    local.get 9
    local.get 10
    i32.eq
    local.set 11
    i32.const 1
    local.set 12
    local.get 11
    local.get 12
    i32.and
    local.set 13
    i32.const 16
    local.set 14
    local.get 3
    local.get 14
    i32.add
    local.set 15
    local.get 15
    global.set 0
    local.get 13
    return)
  (func $_init_l_main___closed__1 (type 3) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 0
    i32.const 16
    local.set 1
    local.get 0
    local.get 1
    i32.sub
    local.set 2
    local.get 2
    global.set 0
    i32.const 314
    local.set 3
    i32.const 5
    local.set 4
    local.get 3
    local.get 4
    local.get 4
    call 13
    local.set 5
    local.get 2
    local.get 5
    i32.store offset=12
    local.get 2
    i32.load offset=12
    local.set 6
    i32.const 16
    local.set 7
    local.get 2
    local.get 7
    i32.add
    local.set 8
    local.get 8
    global.set 0
    local.get 6
    return)
  (func $lean_alloc_ctor (type 4) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 3
    i32.const 16
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set 0
    local.get 5
    local.get 0
    i32.store offset=12
    local.get 5
    local.get 1
    i32.store offset=8
    local.get 5
    local.get 2
    i32.store offset=4
    local.get 5
    i32.load offset=12
    local.set 6
    i32.const 244
    local.set 7
    local.get 6
    local.set 8
    local.get 7
    local.set 9
    local.get 8
    local.get 9
    i32.le_u
    local.set 10
    i32.const 0
    local.set 11
    i32.const 1
    local.set 12
    local.get 10
    local.get 12
    i32.and
    local.set 13
    local.get 11
    local.set 14
    block  ;; label = @1
      local.get 13
      i32.eqz
      br_if 0 (;@1;)
      local.get 5
      i32.load offset=8
      local.set 15
      i32.const 256
      local.set 16
      local.get 15
      local.set 17
      local.get 16
      local.set 18
      local.get 17
      local.get 18
      i32.lt_u
      local.set 19
      i32.const 0
      local.set 20
      i32.const 1
      local.set 21
      local.get 19
      local.get 21
      i32.and
      local.set 22
      local.get 20
      local.set 14
      local.get 22
      i32.eqz
      br_if 0 (;@1;)
      local.get 5
      i32.load offset=4
      local.set 23
      i32.const 1024
      local.set 24
      local.get 23
      local.set 25
      local.get 24
      local.set 26
      local.get 25
      local.get 26
      i32.lt_u
      local.set 27
      local.get 27
      local.set 14
    end
    local.get 14
    local.set 28
    i32.const -1
    local.set 29
    local.get 28
    local.get 29
    i32.xor
    local.set 30
    i32.const 1
    local.set 31
    local.get 30
    local.get 31
    i32.and
    local.set 32
    block  ;; label = @1
      local.get 32
      i32.eqz
      br_if 0 (;@1;)
      i32.const 5
      local.set 33
      i32.const 559
      local.set 34
      i32.const 87
      local.set 35
      local.get 33
      local.get 34
      local.get 35
      call 11
    end
    local.get 5
    i32.load offset=8
    local.set 36
    i32.const 2
    local.set 37
    local.get 36
    local.get 37
    i32.shl
    local.set 38
    i32.const 8
    local.set 39
    local.get 38
    local.get 39
    i32.add
    local.set 40
    local.get 5
    i32.load offset=4
    local.set 41
    local.get 40
    local.get 41
    i32.add
    local.set 42
    local.get 42
    call $lean_alloc_ctor_memory
    local.set 43
    local.get 5
    local.get 43
    i32.store
    local.get 5
    i32.load
    local.set 44
    local.get 5
    i32.load offset=12
    local.set 45
    local.get 5
    i32.load offset=8
    local.set 46
    local.get 44
    local.get 45
    local.get 46
    call $lean_set_st_header
    local.get 5
    i32.load
    local.set 47
    i32.const 16
    local.set 48
    local.get 5
    local.get 48
    i32.add
    local.set 49
    local.get 49
    global.set 0
    local.get 47
    return)
  (func $lean_ctor_set (type 5) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 3
    i32.const 16
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set 0
    local.get 5
    local.get 0
    i32.store offset=12
    local.get 5
    local.get 1
    i32.store offset=8
    local.get 5
    local.get 2
    i32.store offset=4
    local.get 5
    i32.load offset=8
    local.set 6
    local.get 5
    i32.load offset=12
    local.set 7
    local.get 7
    call $lean_ctor_num_objs
    local.set 8
    local.get 6
    local.set 9
    local.get 8
    local.set 10
    local.get 9
    local.get 10
    i32.lt_u
    local.set 11
    i32.const -1
    local.set 12
    local.get 11
    local.get 12
    i32.xor
    local.set 13
    i32.const 1
    local.set 14
    local.get 13
    local.get 14
    i32.and
    local.set 15
    block  ;; label = @1
      local.get 15
      i32.eqz
      br_if 0 (;@1;)
      i32.const 5
      local.set 16
      i32.const 571
      local.set 17
      i32.const 272
      local.set 18
      local.get 16
      local.get 17
      local.get 18
      call 11
    end
    local.get 5
    i32.load offset=4
    local.set 19
    local.get 5
    i32.load offset=12
    local.set 20
    local.get 20
    call $lean_ctor_obj_cptr
    local.set 21
    local.get 5
    i32.load offset=8
    local.set 22
    i32.const 2
    local.set 23
    local.get 22
    local.get 23
    i32.shl
    local.set 24
    local.get 21
    local.get 24
    i32.add
    local.set 25
    local.get 25
    local.get 19
    i32.store
    i32.const 16
    local.set 26
    local.get 5
    local.get 26
    i32.add
    local.set 27
    local.get 27
    global.set 0
    return)
  (func $lean_ptr_tag (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 4
    local.get 4
    i32.load offset=4
    local.set 5
    i32.const 24
    local.set 6
    local.get 5
    local.get 6
    i32.shr_u
    local.set 7
    i32.const 255
    local.set 8
    local.get 7
    local.get 8
    i32.and
    local.set 9
    local.get 9
    return)
  (func $__main_argc_argv (type 0) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 2
    i32.const 32
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set 0
    i32.const 0
    local.set 5
    local.get 4
    local.get 5
    i32.store offset=28
    local.get 4
    local.get 0
    i32.store offset=24
    local.get 4
    local.get 1
    i32.store offset=20
    call 5
    i32.const 0
    local.set 6
    i32.const 1
    local.set 7
    local.get 6
    local.get 7
    i32.and
    local.set 8
    local.get 8
    call 6
    call $lean_io_mk_world
    local.set 9
    i32.const 1
    local.set 10
    i32.const 255
    local.set 11
    local.get 10
    local.get 11
    i32.and
    local.set 12
    local.get 12
    local.get 9
    call $initialize_example
    local.set 13
    local.get 4
    local.get 13
    i32.store offset=12
    i32.const 1
    local.set 14
    i32.const 1
    local.set 15
    local.get 14
    local.get 15
    i32.and
    local.set 16
    local.get 16
    call 6
    call 7
    local.get 4
    i32.load offset=12
    local.set 17
    local.get 17
    call $lean_io_result_is_ok
    local.set 18
    i32.const 1
    local.set 19
    local.get 18
    local.get 19
    i32.and
    local.set 20
    block  ;; label = @1
      local.get 20
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.load offset=12
      local.set 21
      local.get 21
      call $lean_dec_ref
      call 8
      call $lean_io_mk_world
      local.set 22
      local.get 22
      call $_lean_main
      local.set 23
      local.get 4
      local.get 23
      i32.store offset=12
    end
    call 9
    local.get 4
    i32.load offset=12
    local.set 24
    local.get 24
    call $lean_io_result_is_ok
    local.set 25
    i32.const 1
    local.set 26
    local.get 25
    local.get 26
    i32.and
    local.set 27
    block  ;; label = @1
      block  ;; label = @2
        local.get 27
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.set 28
        local.get 4
        local.get 28
        i32.store offset=8
        local.get 4
        i32.load offset=12
        local.set 29
        local.get 29
        call $lean_dec_ref
        local.get 4
        i32.load offset=8
        local.set 30
        local.get 4
        local.get 30
        i32.store offset=28
        br 1 (;@1;)
      end
      local.get 4
      i32.load offset=12
      local.set 31
      local.get 31
      call 10
      local.get 4
      i32.load offset=12
      local.set 32
      local.get 32
      call $lean_dec_ref
      i32.const 1
      local.set 33
      local.get 4
      local.get 33
      i32.store offset=28
    end
    local.get 4
    i32.load offset=28
    local.set 34
    i32.const 32
    local.set 35
    local.get 4
    local.get 35
    i32.add
    local.set 36
    local.get 36
    global.set 0
    local.get 34
    return)
  (func $lean_io_result_is_ok (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set 0
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 4
    local.get 4
    call $lean_ptr_tag
    local.set 5
    i32.const 255
    local.set 6
    local.get 5
    local.get 6
    i32.and
    local.set 7
    i32.const 0
    local.set 8
    local.get 7
    local.set 9
    local.get 8
    local.set 10
    local.get 9
    local.get 10
    i32.eq
    local.set 11
    i32.const 1
    local.set 12
    local.get 11
    local.get 12
    i32.and
    local.set 13
    i32.const 16
    local.set 14
    local.get 3
    local.get 14
    i32.add
    local.set 15
    local.get 15
    global.set 0
    local.get 13
    return)
  (func $lean_alloc_ctor_memory (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 32
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set 0
    local.get 3
    local.get 0
    i32.store offset=28
    local.get 3
    i32.load offset=28
    local.set 4
    i32.const 8
    local.set 5
    local.get 4
    local.get 5
    call $lean_align
    local.set 6
    local.get 3
    local.get 6
    i32.store offset=24
    local.get 3
    i32.load offset=24
    local.set 7
    local.get 7
    call $lean_get_slot_idx
    local.set 8
    local.get 3
    local.get 8
    i32.store offset=20
    local.get 3
    i32.load offset=24
    local.set 9
    i32.const 4096
    local.set 10
    local.get 9
    local.set 11
    local.get 10
    local.set 12
    local.get 11
    local.get 12
    i32.le_u
    local.set 13
    i32.const -1
    local.set 14
    local.get 13
    local.get 14
    i32.xor
    local.set 15
    i32.const 1
    local.set 16
    local.get 15
    local.get 16
    i32.and
    local.set 17
    block  ;; label = @1
      local.get 17
      i32.eqz
      br_if 0 (;@1;)
      i32.const 5
      local.set 18
      i32.const 350
      local.set 19
      i32.const 186
      local.set 20
      local.get 18
      local.get 19
      local.get 20
      call 11
    end
    local.get 3
    i32.load offset=24
    local.set 21
    local.get 3
    i32.load offset=20
    local.set 22
    local.get 21
    local.get 22
    call 12
    local.set 23
    local.get 3
    local.get 23
    i32.store offset=16
    local.get 3
    i32.load offset=24
    local.set 24
    local.get 3
    i32.load offset=28
    local.set 25
    local.get 24
    local.set 26
    local.get 25
    local.set 27
    local.get 26
    local.get 27
    i32.gt_u
    local.set 28
    i32.const 1
    local.set 29
    local.get 28
    local.get 29
    i32.and
    local.set 30
    block  ;; label = @1
      local.get 30
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=16
      local.set 31
      local.get 3
      i32.load offset=24
      local.set 32
      local.get 31
      local.get 32
      i32.add
      local.set 33
      local.get 3
      local.get 33
      i32.store offset=12
      local.get 3
      i32.load offset=12
      local.set 34
      i32.const -4
      local.set 35
      local.get 34
      local.get 35
      i32.add
      local.set 36
      i32.const 0
      local.set 37
      local.get 36
      local.get 37
      i32.store
    end
    local.get 3
    i32.load offset=16
    local.set 38
    i32.const 32
    local.set 39
    local.get 3
    local.get 39
    i32.add
    local.set 40
    local.get 40
    global.set 0
    local.get 38
    return)
  (func $lean_set_st_header (type 5) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 3
    i32.const 16
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    local.get 0
    i32.store offset=12
    local.get 5
    local.get 1
    i32.store offset=8
    local.get 5
    local.get 2
    i32.store offset=4
    local.get 5
    i32.load offset=12
    local.set 6
    i32.const 1
    local.set 7
    local.get 6
    local.get 7
    i32.store
    local.get 5
    i32.load offset=8
    local.set 8
    local.get 5
    i32.load offset=12
    local.set 9
    local.get 9
    i32.load offset=4
    local.set 10
    i32.const 255
    local.set 11
    local.get 8
    local.get 11
    i32.and
    local.set 12
    i32.const 24
    local.set 13
    local.get 12
    local.get 13
    i32.shl
    local.set 14
    i32.const 16777215
    local.set 15
    local.get 10
    local.get 15
    i32.and
    local.set 16
    local.get 16
    local.get 14
    i32.or
    local.set 17
    local.get 9
    local.get 17
    i32.store offset=4
    local.get 5
    i32.load offset=4
    local.set 18
    local.get 5
    i32.load offset=12
    local.set 19
    local.get 19
    i32.load offset=4
    local.set 20
    i32.const 255
    local.set 21
    local.get 18
    local.get 21
    i32.and
    local.set 22
    i32.const 16
    local.set 23
    local.get 22
    local.get 23
    i32.shl
    local.set 24
    i32.const -16711681
    local.set 25
    local.get 20
    local.get 25
    i32.and
    local.set 26
    local.get 26
    local.get 24
    i32.or
    local.set 27
    local.get 19
    local.get 27
    i32.store offset=4
    local.get 5
    i32.load offset=12
    local.set 28
    local.get 28
    i32.load offset=4
    local.set 29
    i32.const -65536
    local.set 30
    local.get 29
    local.get 30
    i32.and
    local.set 31
    i32.const 0
    local.set 32
    local.get 31
    local.get 32
    i32.or
    local.set 33
    local.get 28
    local.get 33
    i32.store offset=4
    return)
  (func $lean_ctor_num_objs (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set 0
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 4
    local.get 4
    call $lean_is_ctor
    local.set 5
    i32.const -1
    local.set 6
    local.get 5
    local.get 6
    i32.xor
    local.set 7
    i32.const 1
    local.set 8
    local.get 7
    local.get 8
    i32.and
    local.set 9
    block  ;; label = @1
      local.get 9
      i32.eqz
      br_if 0 (;@1;)
      i32.const 5
      local.set 10
      i32.const 544
      local.set 11
      i32.const 298
      local.set 12
      local.get 10
      local.get 11
      local.get 12
      call 11
    end
    local.get 3
    i32.load offset=12
    local.set 13
    local.get 13
    call $lean_ptr_other
    local.set 14
    i32.const 16
    local.set 15
    local.get 3
    local.get 15
    i32.add
    local.set 16
    local.get 16
    global.set 0
    local.get 14
    return)
  (func $lean_ctor_obj_cptr (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set 0
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 4
    local.get 4
    call $lean_is_ctor
    local.set 5
    i32.const -1
    local.set 6
    local.get 5
    local.get 6
    i32.xor
    local.set 7
    i32.const 1
    local.set 8
    local.get 7
    local.get 8
    i32.and
    local.set 9
    block  ;; label = @1
      local.get 9
      i32.eqz
      br_if 0 (;@1;)
      i32.const 5
      local.set 10
      i32.const 549
      local.set 11
      i32.const 298
      local.set 12
      local.get 10
      local.get 11
      local.get 12
      call 11
    end
    local.get 3
    i32.load offset=12
    local.set 13
    local.get 13
    call $lean_to_ctor
    local.set 14
    i32.const 8
    local.set 15
    local.get 14
    local.get 15
    i32.add
    local.set 16
    i32.const 16
    local.set 17
    local.get 3
    local.get 17
    i32.add
    local.set 18
    local.get 18
    global.set 0
    local.get 16
    return)
  (func $lean_align (type 0) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    local.get 0
    i32.store offset=12
    local.get 4
    local.get 1
    i32.store offset=8
    local.get 4
    i32.load offset=12
    local.set 5
    local.get 4
    i32.load offset=8
    local.set 6
    local.get 5
    local.get 6
    i32.div_u
    local.set 7
    local.get 4
    i32.load offset=8
    local.set 8
    local.get 7
    local.get 8
    i32.mul
    local.set 9
    local.get 4
    i32.load offset=8
    local.set 10
    local.get 4
    i32.load offset=12
    local.set 11
    local.get 4
    i32.load offset=8
    local.set 12
    local.get 11
    local.get 12
    i32.rem_u
    local.set 13
    i32.const 0
    local.set 14
    local.get 13
    local.set 15
    local.get 14
    local.set 16
    local.get 15
    local.get 16
    i32.ne
    local.set 17
    i32.const 1
    local.set 18
    local.get 17
    local.get 18
    i32.and
    local.set 19
    local.get 10
    local.get 19
    i32.mul
    local.set 20
    local.get 9
    local.get 20
    i32.add
    local.set 21
    local.get 21
    return)
  (func $lean_get_slot_idx (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set 0
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 4
    i32.const 0
    local.set 5
    local.get 4
    local.set 6
    local.get 5
    local.set 7
    local.get 6
    local.get 7
    i32.gt_u
    local.set 8
    i32.const -1
    local.set 9
    local.get 8
    local.get 9
    i32.xor
    local.set 10
    i32.const 1
    local.set 11
    local.get 10
    local.get 11
    i32.and
    local.set 12
    block  ;; label = @1
      local.get 12
      i32.eqz
      br_if 0 (;@1;)
      i32.const 5
      local.set 13
      i32.const 317
      local.set 14
      i32.const 220
      local.set 15
      local.get 13
      local.get 14
      local.get 15
      call 11
    end
    local.get 3
    i32.load offset=12
    local.set 16
    i32.const 8
    local.set 17
    local.get 16
    local.get 17
    call $lean_align
    local.set 18
    local.get 3
    i32.load offset=12
    local.set 19
    local.get 18
    local.set 20
    local.get 19
    local.set 21
    local.get 20
    local.get 21
    i32.eq
    local.set 22
    i32.const -1
    local.set 23
    local.get 22
    local.get 23
    i32.xor
    local.set 24
    i32.const 1
    local.set 25
    local.get 24
    local.get 25
    i32.and
    local.set 26
    block  ;; label = @1
      local.get 26
      i32.eqz
      br_if 0 (;@1;)
      i32.const 5
      local.set 27
      i32.const 318
      local.set 28
      i32.const 227
      local.set 29
      local.get 27
      local.get 28
      local.get 29
      call 11
    end
    local.get 3
    i32.load offset=12
    local.set 30
    i32.const 3
    local.set 31
    local.get 30
    local.get 31
    i32.shr_u
    local.set 32
    i32.const 1
    local.set 33
    local.get 32
    local.get 33
    i32.sub
    local.set 34
    i32.const 16
    local.set 35
    local.get 3
    local.get 35
    i32.add
    local.set 36
    local.get 36
    global.set 0
    local.get 34
    return)
  (func $lean_is_ctor (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set 0
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 4
    local.get 4
    call $lean_ptr_tag
    local.set 5
    i32.const 255
    local.set 6
    local.get 5
    local.get 6
    i32.and
    local.set 7
    i32.const 244
    local.set 8
    local.get 7
    local.set 9
    local.get 8
    local.set 10
    local.get 9
    local.get 10
    i32.le_s
    local.set 11
    i32.const 1
    local.set 12
    local.get 11
    local.get 12
    i32.and
    local.set 13
    i32.const 16
    local.set 14
    local.get 3
    local.get 14
    i32.add
    local.set 15
    local.get 15
    global.set 0
    local.get 13
    return)
  (func $lean_ptr_other (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 4
    local.get 4
    i32.load offset=4
    local.set 5
    i32.const 16
    local.set 6
    local.get 5
    local.get 6
    i32.shr_u
    local.set 7
    i32.const 255
    local.set 8
    local.get 7
    local.get 8
    i32.and
    local.set 9
    local.get 9
    return)
  (func $lean_to_ctor (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set 0
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 4
    local.get 4
    call $lean_is_ctor
    local.set 5
    i32.const -1
    local.set 6
    local.get 5
    local.get 6
    i32.xor
    local.set 7
    i32.const 1
    local.set 8
    local.get 7
    local.get 8
    i32.and
    local.set 9
    block  ;; label = @1
      local.get 9
      i32.eqz
      br_if 0 (;@1;)
      i32.const 5
      local.set 10
      i32.const 484
      local.set 11
      i32.const 298
      local.set 12
      local.get 10
      local.get 11
      local.get 12
      call 11
    end
    local.get 3
    i32.load offset=12
    local.set 13
    i32.const 16
    local.set 14
    local.get 3
    local.get 14
    i32.add
    local.set 15
    local.get 15
    global.set 0
    local.get 13
    return)
  (data $l_main___closed__1 (i32.const 0) "\00\00\00\00")
  (data $_G_initialized (i32.const 4) "\00")
  (data $.L.str (i32.const 5) "/Users/sallywang/.elan/toolchains/leanprover--lean4---v4.17.0/include/lean/lean.h\00")
  (data $.L.str.1 (i32.const 87) "tag <= LeanMaxCtorTag && num_objs < LEAN_MAX_CTOR_FIELDS && scalar_sz < LEAN_MAX_CTOR_SCALARS_SIZE\00")
  (data $.L.str.2 (i32.const 186) "sz1 <= LEAN_MAX_SMALL_OBJECT_SIZE\00")
  (data $.L.str.3 (i32.const 220) "sz > 0\00")
  (data $.L.str.4 (i32.const 227) "lean_align(sz, LEAN_OBJECT_SIZE_DELTA) == sz\00")
  (data $.L.str.5 (i32.const 272) "i < lean_ctor_num_objs(o)\00")
  (data $.L.str.6 (i32.const 298) "lean_is_ctor(o)\00")
  (data $.L.str.7 (i32.const 314) "Done.\00"))
