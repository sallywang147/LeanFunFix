.bundle_align_mode 5
extern "C" {
LEAN_EXPORT lean_object* _lean_main(lean_object*)
lean_object* lean_string_push(lean_object*, uint32_t)
LEAN_EXPORT lean_object* l_checkNumber___boxed(lean_object*)
static lean_object* l_main___closed__1
lean_object* l_IO_print___at_IO_println___spec__1(lean_object*, lean_object*)
LEAN_EXPORT lean_object* l_IO_println___at_main___spec__1(lean_object*, lean_object*)
uint8_t lean_uint8_dec_eq(uint8_t, uint8_t)
LEAN_EXPORT uint8_t l_checkNumber(uint8_t)
LEAN_EXPORT uint8_t l_checkNumber(uint8_t x_1) {
_start:
{
uint8_t x_2
uint8_t x_3
x_2 = 42
x_3 = lean_uint8_dec_eq(x_1, x_2)
popq %r11
.bundle_lock
andl $0xffffffe0, %r11d
orq %r14, %r11
jmpq *%r11
.bundle_unlock
}
}
LEAN_EXPORT lean_object* l_checkNumber___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2
uint8_t x_3
lean_object* x_4
x_2 = lean_unbox(x_1)
lean_dec (x_1)
x_3 = l_checkNumber(x_2)
x_4 = lean_box(x_3)
popq %r11
.bundle_lock
andl $0xffffffe0, %r11d
orq %r14, %r11
jmpq *%r11
.bundle_unlock
}
}
LEAN_EXPORT lean_object* l_IO_println___at_main___spec__1(lean_object* x_1, lean_object* x_2) {
_start:
{
uint32_t x_3
lean_object* x_4
lean_object* x_5
x_3 = 10
x_4 = lean_string_push(x_1, x_3)
x_5 = l_IO_print___at_IO_println___spec__1(x_4, x_2)
popq %r11
.bundle_lock
andl $0xffffffe0, %r11d
orq %r14, %r11
jmpq *%r11
.bundle_unlock
}
}
static lean_object* _init_l_main___closed__1() {
_start:
{
lean_object* x_1
x_1 = lean_mk_string_unchecked("Done.", 5, 5)
popq %r11
.bundle_lock
andl $0xffffffe0, %r11d
orq %r14, %r11
jmpq *%r11
.bundle_unlock
}
}
LEAN_EXPORT lean_object* _lean_main(lean_object* x_1) {
_start:
{
lean_object* x_2
lean_object* x_3
x_2 = l_main___closed__1
x_3 = l_IO_println___at_main___spec__1(x_2, x_1)
popq %r11
.bundle_lock
andl $0xffffffe0, %r11d
orq %r14, %r11
jmpq *%r11
.bundle_unlock
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*)
static bool _G_initialized = false
LEAN_EXPORT lean_object* initialize_example(uint8_t builtin, lean_object* w) {
lean_object * res
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0))
_G_initialized = true
res = initialize_Init(builtin, lean_io_mk_world())
if (lean_io_result_is_error(res)) return res
lean_dec_ref (res)
l_main___closed__1 = _init_l_main___closed__1()
lean_mark_persistent (l_main___closed__1)
popq %r11
.bundle_lock
andl $0xffffffe0, %r11d
orq %r14, %r11
jmpq *%r11
.bundle_unlock
}
void lean_initialize_runtime_module()
}
