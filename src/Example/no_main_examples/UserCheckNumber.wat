(module
  ;; Import the Fixpoint API functions:
  (import "fixpoint" "attach_tree_ro_table_0"
    (func $attach_tree_ro_table_0 (param externref)))
  (import "fixpoint" "attach_blob_ro_mem_0"
    (func $attach_blob_ro_mem_0 (param externref)))
  (import "fixpoint" "create_blob_i32"
    (func $create_blob_i32 (param i32) (result externref)))

  ;; Declare a read-only table to hold the ENCODE (or Fixpoint Tree).
  (table $ro_table_0 (export "ro_table_0") 0 externref)

  ;; Declare a read-only memory to hold the input Blob.
  (memory $ro_mem_0 (export "ro_mem_0") 0)

  ;; Function: l_checkNumber
  ;; Checks if its input equals 42. Returns 1 if so, 0 otherwise.
  (func $l_checkNumber (export "l_checkNumber") (param $n i32) (result i32)
    local.get $n
    i32.const 42
    i32.eq)

  ;; Main function: _fixpoint_apply
  ;; This function expects one ENCODE input (passed as an externref).
  ;; It attaches that ENCODE to the read-only table, then attaches the user input Blob
  ;; from table index 0 into memory. It loads the number from memory, checks whether it
  ;; equals 42 and finally returns a blob wrapping the boolean result (as an i32).
  (func (export "_fixpoint_apply") (param $encode externref) (result externref)
    ;; Attach the ENCODE to the tree read-only table.
    (call $attach_tree_ro_table_0 (local.get $encode))
    ;; Attach the input blob (expected at index 0) to the read-only memory.
    (call $attach_blob_ro_mem_0 (table.get $ro_table_0 (i32.const 2)))
    ;; Load the 32-bit integer from the read-only memory at offset 0.
    (i32.load (i32.const 0))
    ;; Call l_checkNumber to evaluate if the number equals 42.
    (call $l_checkNumber)
    ;; Create a blob for the result and return it.
    (call $create_blob_i32))
)

