// Lean compiler output
// Module: tagproof
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
static lean_object* l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__3;
static lean_object* l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__1;
static lean_object* l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__13;
static lean_object* l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__9;
lean_object* l_String_quote(lean_object*);
static lean_object* l_instReprTaggedInput___closed__1;
static lean_object* l_assignTag___closed__4;
static lean_object* l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__5;
static lean_object* l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__15;
static lean_object* l_assignTag___closed__3;
static lean_object* l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__19;
static lean_object* l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__21;
uint8_t lean_string_dec_eq(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l_checkNumber___boxed(lean_object*);
static lean_object* l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__14;
static lean_object* l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__4;
LEAN_EXPORT lean_object* l_instReprTaggedInput;
static lean_object* l_assignTag___closed__2;
LEAN_EXPORT lean_object* l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____boxed(lean_object*, lean_object*);
static lean_object* l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__18;
lean_object* lean_nat_to_int(lean_object*);
static lean_object* l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__16;
static lean_object* l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__11;
static lean_object* l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__17;
static lean_object* l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__7;
LEAN_EXPORT lean_object* l_assignTag___boxed(lean_object*);
static lean_object* l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__8;
LEAN_EXPORT uint8_t l_EquivalnceTag(lean_object*, lean_object*);
static lean_object* l_assignTag___closed__1;
lean_object* lean_string_length(lean_object*);
static lean_object* l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__2;
static lean_object* l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__10;
LEAN_EXPORT lean_object* l_EquivalnceTag___boxed(lean_object*, lean_object*);
LEAN_EXPORT lean_object* l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51_(lean_object*, lean_object*);
lean_object* lean_uint8_to_nat(uint8_t);
static lean_object* l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__6;
LEAN_EXPORT lean_object* l_assignTag(uint8_t);
static lean_object* l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__20;
static lean_object* l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__12;
uint8_t lean_uint8_dec_eq(uint8_t, uint8_t);
lean_object* l_Nat_repr(lean_object*);
LEAN_EXPORT uint8_t l_checkNumber(uint8_t);
LEAN_EXPORT uint8_t l_checkNumber(uint8_t x_1) {
_start:
{
uint8_t x_2; uint8_t x_3; 
x_2 = 42;
x_3 = lean_uint8_dec_eq(x_1, x_2);
return x_3;
}
}
LEAN_EXPORT lean_object* l_checkNumber___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; uint8_t x_3; lean_object* x_4; 
x_2 = lean_unbox(x_1);
lean_dec(x_1);
x_3 = l_checkNumber(x_2);
x_4 = lean_box(x_3);
return x_4;
}
}
static lean_object* _init_l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_from_bytes("value", 5);
return x_1;
}
}
static lean_object* _init_l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__2() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__1;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = lean_box(0);
x_2 = l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__2;
x_3 = lean_alloc_ctor(5, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_from_bytes(" := ", 4);
return x_1;
}
}
static lean_object* _init_l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__4;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__6() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__3;
x_2 = l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__5;
x_3 = lean_alloc_ctor(5, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__7() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(9u);
x_2 = lean_nat_to_int(x_1);
return x_2;
}
}
static lean_object* _init_l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__8() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_from_bytes(",", 1);
return x_1;
}
}
static lean_object* _init_l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__9() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__8;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__10() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_from_bytes("tag", 3);
return x_1;
}
}
static lean_object* _init_l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__11() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__10;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__12() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(7u);
x_2 = lean_nat_to_int(x_1);
return x_2;
}
}
static lean_object* _init_l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__13() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_from_bytes("message", 7);
return x_1;
}
}
static lean_object* _init_l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__14() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__13;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__15() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = lean_unsigned_to_nat(11u);
x_2 = lean_nat_to_int(x_1);
return x_2;
}
}
static lean_object* _init_l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__16() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_from_bytes("{ ", 2);
return x_1;
}
}
static lean_object* _init_l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__17() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__16;
x_2 = lean_string_length(x_1);
return x_2;
}
}
static lean_object* _init_l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__18() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__17;
x_2 = lean_nat_to_int(x_1);
return x_2;
}
}
static lean_object* _init_l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__19() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__16;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
static lean_object* _init_l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__20() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_from_bytes(" }", 2);
return x_1;
}
}
static lean_object* _init_l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__21() {
_start:
{
lean_object* x_1; lean_object* x_2; 
x_1 = l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__20;
x_2 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_2, 0, x_1);
return x_2;
}
}
LEAN_EXPORT lean_object* l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51_(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; lean_object* x_5; lean_object* x_6; lean_object* x_7; lean_object* x_8; uint8_t x_9; lean_object* x_10; lean_object* x_11; lean_object* x_12; lean_object* x_13; lean_object* x_14; lean_object* x_15; lean_object* x_16; lean_object* x_17; lean_object* x_18; lean_object* x_19; lean_object* x_20; lean_object* x_21; lean_object* x_22; lean_object* x_23; lean_object* x_24; lean_object* x_25; lean_object* x_26; lean_object* x_27; lean_object* x_28; lean_object* x_29; lean_object* x_30; lean_object* x_31; lean_object* x_32; lean_object* x_33; lean_object* x_34; lean_object* x_35; lean_object* x_36; lean_object* x_37; lean_object* x_38; lean_object* x_39; lean_object* x_40; lean_object* x_41; lean_object* x_42; lean_object* x_43; lean_object* x_44; lean_object* x_45; lean_object* x_46; 
x_3 = lean_ctor_get_uint8(x_1, sizeof(void*)*2);
x_4 = lean_uint8_to_nat(x_3);
x_5 = l_Nat_repr(x_4);
x_6 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_6, 0, x_5);
x_7 = l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__7;
x_8 = lean_alloc_ctor(4, 2, 0);
lean_ctor_set(x_8, 0, x_7);
lean_ctor_set(x_8, 1, x_6);
x_9 = 0;
x_10 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_10, 0, x_8);
lean_ctor_set_uint8(x_10, sizeof(void*)*1, x_9);
x_11 = l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__6;
x_12 = lean_alloc_ctor(5, 2, 0);
lean_ctor_set(x_12, 0, x_11);
lean_ctor_set(x_12, 1, x_10);
x_13 = l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__9;
x_14 = lean_alloc_ctor(5, 2, 0);
lean_ctor_set(x_14, 0, x_12);
lean_ctor_set(x_14, 1, x_13);
x_15 = lean_box(1);
x_16 = lean_alloc_ctor(5, 2, 0);
lean_ctor_set(x_16, 0, x_14);
lean_ctor_set(x_16, 1, x_15);
x_17 = l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__11;
x_18 = lean_alloc_ctor(5, 2, 0);
lean_ctor_set(x_18, 0, x_16);
lean_ctor_set(x_18, 1, x_17);
x_19 = l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__5;
x_20 = lean_alloc_ctor(5, 2, 0);
lean_ctor_set(x_20, 0, x_18);
lean_ctor_set(x_20, 1, x_19);
x_21 = lean_ctor_get(x_1, 0);
x_22 = l_String_quote(x_21);
x_23 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_23, 0, x_22);
x_24 = l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__12;
x_25 = lean_alloc_ctor(4, 2, 0);
lean_ctor_set(x_25, 0, x_24);
lean_ctor_set(x_25, 1, x_23);
x_26 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_26, 0, x_25);
lean_ctor_set_uint8(x_26, sizeof(void*)*1, x_9);
x_27 = lean_alloc_ctor(5, 2, 0);
lean_ctor_set(x_27, 0, x_20);
lean_ctor_set(x_27, 1, x_26);
x_28 = lean_alloc_ctor(5, 2, 0);
lean_ctor_set(x_28, 0, x_27);
lean_ctor_set(x_28, 1, x_13);
x_29 = lean_alloc_ctor(5, 2, 0);
lean_ctor_set(x_29, 0, x_28);
lean_ctor_set(x_29, 1, x_15);
x_30 = l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__14;
x_31 = lean_alloc_ctor(5, 2, 0);
lean_ctor_set(x_31, 0, x_29);
lean_ctor_set(x_31, 1, x_30);
x_32 = lean_alloc_ctor(5, 2, 0);
lean_ctor_set(x_32, 0, x_31);
lean_ctor_set(x_32, 1, x_19);
x_33 = lean_ctor_get(x_1, 1);
x_34 = l_String_quote(x_33);
x_35 = lean_alloc_ctor(3, 1, 0);
lean_ctor_set(x_35, 0, x_34);
x_36 = l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__15;
x_37 = lean_alloc_ctor(4, 2, 0);
lean_ctor_set(x_37, 0, x_36);
lean_ctor_set(x_37, 1, x_35);
x_38 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_38, 0, x_37);
lean_ctor_set_uint8(x_38, sizeof(void*)*1, x_9);
x_39 = lean_alloc_ctor(5, 2, 0);
lean_ctor_set(x_39, 0, x_32);
lean_ctor_set(x_39, 1, x_38);
x_40 = l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__19;
x_41 = lean_alloc_ctor(5, 2, 0);
lean_ctor_set(x_41, 0, x_40);
lean_ctor_set(x_41, 1, x_39);
x_42 = l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__21;
x_43 = lean_alloc_ctor(5, 2, 0);
lean_ctor_set(x_43, 0, x_41);
lean_ctor_set(x_43, 1, x_42);
x_44 = l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__18;
x_45 = lean_alloc_ctor(4, 2, 0);
lean_ctor_set(x_45, 0, x_44);
lean_ctor_set(x_45, 1, x_43);
x_46 = lean_alloc_ctor(6, 1, 1);
lean_ctor_set(x_46, 0, x_45);
lean_ctor_set_uint8(x_46, sizeof(void*)*1, x_9);
return x_46;
}
}
LEAN_EXPORT lean_object* l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; 
x_3 = l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51_(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
return x_3;
}
}
static lean_object* _init_l_instReprTaggedInput___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_alloc_closure((void*)(l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____boxed), 2, 0);
return x_1;
}
}
static lean_object* _init_l_instReprTaggedInput() {
_start:
{
lean_object* x_1; 
x_1 = l_instReprTaggedInput___closed__1;
return x_1;
}
}
static lean_object* _init_l_assignTag___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_from_bytes("tag_other", 9);
return x_1;
}
}
static lean_object* _init_l_assignTag___closed__2() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_from_bytes("NotPassed", 9);
return x_1;
}
}
static lean_object* _init_l_assignTag___closed__3() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_from_bytes("tag_42", 6);
return x_1;
}
}
static lean_object* _init_l_assignTag___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_from_bytes("Passed", 6);
return x_1;
}
}
LEAN_EXPORT lean_object* l_assignTag(uint8_t x_1) {
_start:
{
uint8_t x_2; 
x_2 = l_checkNumber(x_1);
if (x_2 == 0)
{
lean_object* x_3; lean_object* x_4; lean_object* x_5; 
x_3 = l_assignTag___closed__1;
x_4 = l_assignTag___closed__2;
x_5 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_5, 0, x_3);
lean_ctor_set(x_5, 1, x_4);
lean_ctor_set_uint8(x_5, sizeof(void*)*2, x_1);
return x_5;
}
else
{
lean_object* x_6; lean_object* x_7; lean_object* x_8; 
x_6 = l_assignTag___closed__3;
x_7 = l_assignTag___closed__4;
x_8 = lean_alloc_ctor(0, 2, 1);
lean_ctor_set(x_8, 0, x_6);
lean_ctor_set(x_8, 1, x_7);
lean_ctor_set_uint8(x_8, sizeof(void*)*2, x_1);
return x_8;
}
}
}
LEAN_EXPORT lean_object* l_assignTag___boxed(lean_object* x_1) {
_start:
{
uint8_t x_2; lean_object* x_3; 
x_2 = lean_unbox(x_1);
lean_dec(x_1);
x_3 = l_assignTag(x_2);
return x_3;
}
}
LEAN_EXPORT uint8_t l_EquivalnceTag(lean_object* x_1, lean_object* x_2) {
_start:
{
lean_object* x_3; lean_object* x_4; uint8_t x_5; 
x_3 = lean_ctor_get(x_1, 0);
x_4 = lean_ctor_get(x_2, 0);
x_5 = lean_string_dec_eq(x_3, x_4);
if (x_5 == 0)
{
uint8_t x_6; 
x_6 = 0;
return x_6;
}
else
{
lean_object* x_7; lean_object* x_8; uint8_t x_9; 
x_7 = lean_ctor_get(x_1, 1);
x_8 = lean_ctor_get(x_2, 1);
x_9 = lean_string_dec_eq(x_7, x_8);
return x_9;
}
}
}
LEAN_EXPORT lean_object* l_EquivalnceTag___boxed(lean_object* x_1, lean_object* x_2) {
_start:
{
uint8_t x_3; lean_object* x_4; 
x_3 = l_EquivalnceTag(x_1, x_2);
lean_dec(x_2);
lean_dec(x_1);
x_4 = lean_box(x_3);
return x_4;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_tagproof(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__1 = _init_l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__1();
lean_mark_persistent(l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__1);
l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__2 = _init_l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__2();
lean_mark_persistent(l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__2);
l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__3 = _init_l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__3();
lean_mark_persistent(l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__3);
l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__4 = _init_l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__4();
lean_mark_persistent(l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__4);
l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__5 = _init_l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__5();
lean_mark_persistent(l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__5);
l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__6 = _init_l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__6();
lean_mark_persistent(l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__6);
l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__7 = _init_l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__7();
lean_mark_persistent(l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__7);
l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__8 = _init_l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__8();
lean_mark_persistent(l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__8);
l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__9 = _init_l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__9();
lean_mark_persistent(l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__9);
l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__10 = _init_l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__10();
lean_mark_persistent(l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__10);
l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__11 = _init_l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__11();
lean_mark_persistent(l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__11);
l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__12 = _init_l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__12();
lean_mark_persistent(l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__12);
l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__13 = _init_l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__13();
lean_mark_persistent(l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__13);
l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__14 = _init_l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__14();
lean_mark_persistent(l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__14);
l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__15 = _init_l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__15();
lean_mark_persistent(l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__15);
l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__16 = _init_l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__16();
lean_mark_persistent(l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__16);
l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__17 = _init_l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__17();
lean_mark_persistent(l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__17);
l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__18 = _init_l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__18();
lean_mark_persistent(l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__18);
l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__19 = _init_l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__19();
lean_mark_persistent(l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__19);
l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__20 = _init_l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__20();
lean_mark_persistent(l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__20);
l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__21 = _init_l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__21();
lean_mark_persistent(l___private_tagproof_0__reprTaggedInput____x40_tagproof___hyg_51____closed__21);
l_instReprTaggedInput___closed__1 = _init_l_instReprTaggedInput___closed__1();
lean_mark_persistent(l_instReprTaggedInput___closed__1);
l_instReprTaggedInput = _init_l_instReprTaggedInput();
lean_mark_persistent(l_instReprTaggedInput);
l_assignTag___closed__1 = _init_l_assignTag___closed__1();
lean_mark_persistent(l_assignTag___closed__1);
l_assignTag___closed__2 = _init_l_assignTag___closed__2();
lean_mark_persistent(l_assignTag___closed__2);
l_assignTag___closed__3 = _init_l_assignTag___closed__3();
lean_mark_persistent(l_assignTag___closed__3);
l_assignTag___closed__4 = _init_l_assignTag___closed__4();
lean_mark_persistent(l_assignTag___closed__4);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
