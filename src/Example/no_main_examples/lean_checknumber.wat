(module $lean_checknumber.wasm
  (type (;0;) (func (param i32) (result i32)))
  (type (;1;) (func))
  (func $l_checkNumber (type 0) (param i32) (result i32)
    local.get 0
    i32.const 42
    i32.eq)
  (func $dummy (type 1))
  (func $__wasm_call_dtors (type 1)
    call $dummy
    call $dummy)
  (func $l_checkNumber.command_export (type 0) (param i32) (result i32)
    local.get 0
    call $l_checkNumber
    call $__wasm_call_dtors)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 2)
  (global $__stack_pointer (mut i32) (i32.const 66560))
  (export "memory" (memory 0))
  (export "l_checkNumber" (func $l_checkNumber.command_export)))
