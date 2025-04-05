// Lean compiler output
// Module: no_main_example
// Imports: Init
#include <lean/lean.h>
#if defined(__clang__)
#pragma clang diagnostic ignored "-Wunused-parameter"
#pragma clang diagnostic ignored "-Wunused-label"
#elif defined(__GNUC__) && !defined(__CLANG__)
#pragma GCC diagnostic ignored "-Wunused-parameter"
#pragma GCC diagnostic ignored "-Wunused-label"
#pragma GCC diagnostic ignored "-Wunused-but-set-variable"
#endif
#ifdef __cplusplus
extern "C" {
#endif
LEAN_EXPORT lean_object *l_checkNumber___boxed(lean_object *);
uint8_t lean_uint8_dec_eq(uint8_t, uint8_t);
LEAN_EXPORT uint8_t l_checkNumber(uint8_t);
LEAN_EXPORT uint8_t l_checkNumber(uint8_t x_1) {
_start: {
  uint8_t x_2;
  uint8_t x_3;
  x_2 = 42;
  x_3 = lean_uint8_dec_eq(x_1, x_2);
  return x_3;
}
}
LEAN_EXPORT lean_object *l_checkNumber___boxed(lean_object *x_1) {
_start: {
  uint8_t x_2;
  uint8_t x_3;
  lean_object *x_4;
  x_2 = lean_unbox(x_1);
  lean_dec(x_1);
  x_3 = l_checkNumber(x_2);
  x_4 = lean_box(x_3);
  return x_4;
}
}
lean_object *initialize_Init(uint8_t builtin, lean_object *);
static bool _G_initialized = false;
LEAN_EXPORT lean_object *initialize_no__main__example(uint8_t builtin,
                                                      lean_object *w) {
  lean_object *res;
  if (_G_initialized)
    return lean_io_result_mk_ok(lean_box(0));
  _G_initialized = true;
  res = initialize_Init(builtin, lean_io_mk_world());
  if (lean_io_result_is_error(res))
    return res;
  lean_dec_ref(res);
  return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif