# 1 "no_main_example.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 354 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "no_main_example.c" 2



# 1 "/home/sally/lean4/build/stage1/include/lean/lean.h" 1







# 1 "/usr/local/share/wasm-toolchain/sysroot/lib/clang/19/include/stddef.h" 1 3
# 43 "/usr/local/share/wasm-toolchain/sysroot/lib/clang/19/include/stddef.h" 3
# 1 "/usr/local/share/wasm-toolchain/sysroot/lib/clang/19/include/__stddef_header_macro.h" 1 3
# 44 "/usr/local/share/wasm-toolchain/sysroot/lib/clang/19/include/stddef.h" 2 3
# 71 "/usr/local/share/wasm-toolchain/sysroot/lib/clang/19/include/stddef.h" 3
# 1 "/usr/local/share/wasm-toolchain/sysroot/lib/clang/19/include/__stddef_ptrdiff_t.h" 1 3
# 18 "/usr/local/share/wasm-toolchain/sysroot/lib/clang/19/include/__stddef_ptrdiff_t.h" 3
typedef long int ptrdiff_t;
# 72 "/usr/local/share/wasm-toolchain/sysroot/lib/clang/19/include/stddef.h" 2 3




# 1 "/usr/local/share/wasm-toolchain/sysroot/lib/clang/19/include/__stddef_size_t.h" 1 3
# 18 "/usr/local/share/wasm-toolchain/sysroot/lib/clang/19/include/__stddef_size_t.h" 3
typedef long unsigned int size_t;
# 77 "/usr/local/share/wasm-toolchain/sysroot/lib/clang/19/include/stddef.h" 2 3
# 86 "/usr/local/share/wasm-toolchain/sysroot/lib/clang/19/include/stddef.h" 3
# 1 "/usr/local/share/wasm-toolchain/sysroot/lib/clang/19/include/__stddef_wchar_t.h" 1 3
# 24 "/usr/local/share/wasm-toolchain/sysroot/lib/clang/19/include/__stddef_wchar_t.h" 3
typedef int wchar_t;
# 87 "/usr/local/share/wasm-toolchain/sysroot/lib/clang/19/include/stddef.h" 2 3




# 1 "/usr/local/share/wasm-toolchain/sysroot/lib/clang/19/include/__stddef_null.h" 1 3
# 92 "/usr/local/share/wasm-toolchain/sysroot/lib/clang/19/include/stddef.h" 2 3
# 106 "/usr/local/share/wasm-toolchain/sysroot/lib/clang/19/include/stddef.h" 3
# 1 "/usr/local/share/wasm-toolchain/sysroot/lib/clang/19/include/__stddef_max_align_t.h" 1 3
# 19 "/usr/local/share/wasm-toolchain/sysroot/lib/clang/19/include/__stddef_max_align_t.h" 3
typedef struct {
  long long __clang_max_align_nonce1
      __attribute__((__aligned__(__alignof__(long long))));
  long double __clang_max_align_nonce2
      __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;
# 107 "/usr/local/share/wasm-toolchain/sysroot/lib/clang/19/include/stddef.h" 2 3




# 1 "/usr/local/share/wasm-toolchain/sysroot/lib/clang/19/include/__stddef_offsetof.h" 1 3
# 112 "/usr/local/share/wasm-toolchain/sysroot/lib/clang/19/include/stddef.h" 2 3
# 9 "/home/sally/lean4/build/stage1/include/lean/lean.h" 2
# 1 "/usr/local/share/wasm-toolchain/sysroot/lib/clang/19/include/stdbool.h" 1 3
# 10 "/home/sally/lean4/build/stage1/include/lean/lean.h" 2
# 1 "/usr/local/share/wasm-toolchain/sysroot/lib/clang/19/include/stdint.h" 1 3
# 56 "/usr/local/share/wasm-toolchain/sysroot/lib/clang/19/include/stdint.h" 3
# 1 "/usr/local/share/wasm-toolchain/sysroot/include/wasm32-wasi/stdint.h" 1 3
# 20 "/usr/local/share/wasm-toolchain/sysroot/include/wasm32-wasi/stdint.h" 3
# 1 "/usr/local/share/wasm-toolchain/sysroot/include/wasm32-wasi/bits/alltypes.h" 1 3
# 77 "/usr/local/share/wasm-toolchain/sysroot/include/wasm32-wasi/bits/alltypes.h" 3
typedef unsigned long uintptr_t;
# 92 "/usr/local/share/wasm-toolchain/sysroot/include/wasm32-wasi/bits/alltypes.h" 3
typedef long intptr_t;
# 130 "/usr/local/share/wasm-toolchain/sysroot/include/wasm32-wasi/bits/alltypes.h" 3
typedef signed char int8_t;




typedef signed short int16_t;




typedef signed int int32_t;




typedef signed long long int64_t;




typedef signed long long intmax_t;




typedef unsigned char uint8_t;




typedef unsigned short uint16_t;




typedef unsigned int uint32_t;




typedef unsigned long long uint64_t;
# 180 "/usr/local/share/wasm-toolchain/sysroot/include/wasm32-wasi/bits/alltypes.h" 3
typedef unsigned long long uintmax_t;
# 269 "/usr/local/share/wasm-toolchain/sysroot/include/wasm32-wasi/bits/alltypes.h" 3
# 1 "/usr/local/share/wasm-toolchain/sysroot/include/wasm32-wasi/__struct_timeval.h" 1 3



# 1 "/usr/local/share/wasm-toolchain/sysroot/include/wasm32-wasi/__typedef_time_t.h" 1 3




typedef long long time_t;
# 5 "/usr/local/share/wasm-toolchain/sysroot/include/wasm32-wasi/__struct_timeval.h" 2 3
# 1 "/usr/local/share/wasm-toolchain/sysroot/include/wasm32-wasi/__typedef_suseconds_t.h" 1 3





typedef long long suseconds_t;
# 6 "/usr/local/share/wasm-toolchain/sysroot/include/wasm32-wasi/__struct_timeval.h" 2 3


struct timeval {
    time_t tv_sec;
    suseconds_t tv_usec;
};
# 270 "/usr/local/share/wasm-toolchain/sysroot/include/wasm32-wasi/bits/alltypes.h" 2 3
# 1 "/usr/local/share/wasm-toolchain/sysroot/include/wasm32-wasi/__struct_timespec.h" 1 3






struct timespec {
    time_t tv_sec;
    long tv_nsec;
};
# 271 "/usr/local/share/wasm-toolchain/sysroot/include/wasm32-wasi/bits/alltypes.h" 2 3
# 402 "/usr/local/share/wasm-toolchain/sysroot/include/wasm32-wasi/bits/alltypes.h" 3
# 1 "/usr/local/share/wasm-toolchain/sysroot/include/wasm32-wasi/__struct_iovec.h" 1 3




# 1 "/usr/local/share/wasm-toolchain/sysroot/lib/clang/19/include/stddef.h" 1 3
# 76 "/usr/local/share/wasm-toolchain/sysroot/lib/clang/19/include/stddef.h" 3
# 1 "/usr/local/share/wasm-toolchain/sysroot/lib/clang/19/include/__stddef_size_t.h" 1 3
# 77 "/usr/local/share/wasm-toolchain/sysroot/lib/clang/19/include/stddef.h" 2 3
# 6 "/usr/local/share/wasm-toolchain/sysroot/include/wasm32-wasi/__struct_iovec.h" 2 3

struct iovec {
    void *iov_base;
    size_t iov_len;
};
# 403 "/usr/local/share/wasm-toolchain/sysroot/include/wasm32-wasi/bits/alltypes.h" 2 3
# 21 "/usr/local/share/wasm-toolchain/sysroot/include/wasm32-wasi/stdint.h" 2 3

typedef int8_t int_fast8_t;
typedef int64_t int_fast64_t;

typedef int8_t int_least8_t;
typedef int16_t int_least16_t;
typedef int32_t int_least32_t;
typedef int64_t int_least64_t;

typedef uint8_t uint_fast8_t;
typedef uint64_t uint_fast64_t;

typedef uint8_t uint_least8_t;
typedef uint16_t uint_least16_t;
typedef uint32_t uint_least32_t;
typedef uint64_t uint_least64_t;
# 95 "/usr/local/share/wasm-toolchain/sysroot/include/wasm32-wasi/stdint.h" 3
# 1 "/usr/local/share/wasm-toolchain/sysroot/include/wasm32-wasi/bits/stdint.h" 1 3
typedef int16_t int_fast16_t;
typedef int32_t int_fast32_t;
typedef uint16_t uint_fast16_t;
typedef uint32_t uint_fast32_t;
# 96 "/usr/local/share/wasm-toolchain/sysroot/include/wasm32-wasi/stdint.h" 2 3
# 57 "/usr/local/share/wasm-toolchain/sysroot/lib/clang/19/include/stdint.h" 2 3
# 11 "/home/sally/lean4/build/stage1/include/lean/lean.h" 2
# 1 "/usr/local/share/wasm-toolchain/sysroot/lib/clang/19/include/limits.h" 1 3
# 25 "/usr/local/share/wasm-toolchain/sysroot/lib/clang/19/include/limits.h" 3
# 1 "/usr/local/share/wasm-toolchain/sysroot/include/wasm32-wasi/limits.h" 1 3



# 1 "/usr/local/share/wasm-toolchain/sysroot/include/wasm32-wasi/features.h" 1 3
# 5 "/usr/local/share/wasm-toolchain/sysroot/include/wasm32-wasi/limits.h" 2 3

# 1 "/usr/local/share/wasm-toolchain/sysroot/include/wasm32-wasi/bits/alltypes.h" 1 3
# 7 "/usr/local/share/wasm-toolchain/sysroot/include/wasm32-wasi/limits.h" 2 3
# 40 "/usr/local/share/wasm-toolchain/sysroot/include/wasm32-wasi/limits.h" 3
# 1 "/usr/local/share/wasm-toolchain/sysroot/include/wasm32-wasi/bits/limits.h" 1 3
# 1 "/usr/local/share/wasm-toolchain/sysroot/include/wasm32-wasi/__macro_PAGESIZE.h" 1 3
# 2 "/usr/local/share/wasm-toolchain/sysroot/include/wasm32-wasi/bits/limits.h" 2 3
# 41 "/usr/local/share/wasm-toolchain/sysroot/include/wasm32-wasi/limits.h" 2 3
# 26 "/usr/local/share/wasm-toolchain/sysroot/lib/clang/19/include/limits.h" 2 3
# 12 "/home/sally/lean4/build/stage1/include/lean/lean.h" 2
# 22 "/home/sally/lean4/build/stage1/include/lean/lean.h"
# 1 "/home/sally/lean4/build/stage1/include/lean/config.h" 1







# 1 "/home/sally/lean4/build/stage1/include/lean/version.h" 1
# 9 "/home/sally/lean4/build/stage1/include/lean/config.h" 2
# 23 "/home/sally/lean4/build/stage1/include/lean/lean.h" 2
# 59 "/home/sally/lean4/build/stage1/include/lean/lean.h"
void lean_notify_assert(const char * fileName, int line, const char * condition);
# 94 "/home/sally/lean4/build/stage1/include/lean/lean.h"
static inline _Bool lean_is_big_object_tag(uint8_t tag) {
    return tag == 246 || tag == 247 || tag == 248 || tag == 249;
}







typedef char assertion_failed___FILE___104[2*!!(sizeof(size_t) == sizeof(void*))-1];;
# 122 "/home/sally/lean4/build/stage1/include/lean/lean.h"
typedef struct {
    int m_rc;
    unsigned m_cs_sz:16;
    unsigned m_other:8;
    unsigned m_tag:8;
} lean_object;
# 155 "/home/sally/lean4/build/stage1/include/lean/lean.h"
typedef lean_object * lean_obj_arg;
typedef lean_object * b_lean_obj_arg;
typedef lean_object * u_lean_obj_arg;
typedef lean_object * lean_obj_res;
typedef lean_object * b_lean_obj_res;

typedef struct {
    lean_object m_header;
    lean_object * m_objs[];
} lean_ctor_object;


typedef struct {
    lean_object m_header;
    size_t m_size;
    size_t m_capacity;
    lean_object * m_data[];
} lean_array_object;


typedef struct {
    lean_object m_header;
    size_t m_size;
    size_t m_capacity;
    uint8_t m_data[];
} lean_sarray_object;

typedef struct {
    lean_object m_header;
    size_t m_size;
    size_t m_capacity;
    size_t m_length;
    char m_data[];
} lean_string_object;

typedef struct {
    lean_object m_header;
    void * m_fun;
    uint16_t m_arity;
    uint16_t m_num_fixed;
    lean_object * m_objs[];
} lean_closure_object;

typedef struct {
    lean_object m_header;
    lean_object * m_value;
} lean_ref_object;

typedef struct {
    lean_object m_header;
    _Atomic(lean_object *) m_value;
    _Atomic(lean_object *) m_closure;
} lean_thunk_object;

struct lean_task;



typedef struct {
    lean_object * m_closure;
    struct lean_task * m_head_dep;
    struct lean_task * m_next_dep;
    unsigned m_prio;
    uint8_t m_canceled;

    uint8_t m_keep_alive;
    uint8_t m_deleted;
} lean_task_imp;
# 275 "/home/sally/lean4/build/stage1/include/lean/lean.h"
typedef struct lean_task {
    lean_object m_header;
    _Atomic(lean_object *) m_value;
    lean_task_imp * m_imp;
} lean_task_object;

typedef struct lean_promise {
    lean_object m_header;
    lean_task_object * m_result;
} lean_promise_object;

typedef void (*lean_external_finalize_proc)(void *);
typedef void (*lean_external_foreach_proc)(void *, b_lean_obj_arg);

typedef struct {
    lean_external_finalize_proc m_finalize;
    lean_external_foreach_proc m_foreach;
} lean_external_class;

__attribute__((visibility("default"))) lean_external_class * lean_register_external_class(lean_external_finalize_proc, lean_external_foreach_proc);


typedef struct {
    lean_object m_header;
    lean_external_class * m_class;
    void * m_data;
} lean_external_object;

static inline _Bool lean_is_scalar(lean_object * o) { return ((size_t)(o) & 1) == 1; }
static inline lean_object * lean_box(size_t n) { return (lean_object*)(((size_t)(n) << 1) | 1); }
static inline size_t lean_unbox(lean_object * o) { return (size_t)(o) >> 1; }

__attribute__((visibility("default"))) void lean_set_exit_on_panic(_Bool flag);

__attribute__((visibility("default"))) void lean_set_panic_messages(_Bool flag);

__attribute__((visibility("default"))) void lean_panic(char const * msg, _Bool force_stderr);
__attribute__((visibility("default"))) lean_object * lean_panic_fn(lean_object * default_val, lean_object * msg);

__attribute__((visibility("default"))) __attribute__((noreturn)) void lean_internal_panic(char const * msg);
__attribute__((visibility("default"))) __attribute__((noreturn)) void lean_internal_panic_out_of_memory(void);
__attribute__((visibility("default"))) __attribute__((noreturn)) void lean_internal_panic_unreachable(void);
__attribute__((visibility("default"))) __attribute__((noreturn)) void lean_internal_panic_rc_overflow(void);

static inline size_t lean_align(size_t v, size_t a) {
    return (v / a)*a + a * (v % a != 0);
}

static inline unsigned lean_get_slot_idx(unsigned sz) {
    { if ((__builtin_expect((!(sz > 0)), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 324, "sz > 0"); };
    { if ((__builtin_expect((!(lean_align(sz, 8) == sz)), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 325, "lean_align(sz, LEAN_OBJECT_SIZE_DELTA) == sz"); };
    return sz / 8 - 1;
}

__attribute__((visibility("default"))) void * lean_alloc_small(unsigned sz, unsigned slot_idx);
__attribute__((visibility("default"))) void lean_free_small(void * p);
__attribute__((visibility("default"))) unsigned lean_small_mem_size(void * p);
__attribute__((visibility("default"))) void lean_inc_heartbeat(void);


void * malloc(size_t);


static inline lean_object * lean_alloc_small_object(unsigned sz) {

    sz = lean_align(sz, 8);
    unsigned slot_idx = lean_get_slot_idx(sz);
    { if ((__builtin_expect((!(sz <= 4096)), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 342, "sz <= LEAN_MAX_SMALL_OBJECT_SIZE"); };
    return (lean_object*)lean_alloc_small(sz, slot_idx);







}

static inline lean_object * lean_alloc_ctor_memory(unsigned sz) {

    unsigned sz1 = lean_align(sz, 8);
    unsigned slot_idx = lean_get_slot_idx(sz1);
    { if ((__builtin_expect((!(sz1 <= 4096)), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 357, "sz1 <= LEAN_MAX_SMALL_OBJECT_SIZE"); };
    lean_object* r = (lean_object*)lean_alloc_small(sz1, slot_idx);
    if (sz1 > sz) {
# 369 "/home/sally/lean4/build/stage1/include/lean/lean.h"
        size_t * end = (size_t*)(((char*)r) + sz1);
        end[-1] = 0;
    }
    return r;



}

static inline unsigned lean_small_object_size(lean_object * o) {

    return lean_small_mem_size(o);



}


void free(void *);



void free_sized(void* ptr, size_t);


static inline void lean_free_small_object(lean_object * o) {

    lean_free_small(o);




}

__attribute__((visibility("default"))) lean_object * lean_alloc_object(size_t sz);
__attribute__((visibility("default"))) void lean_free_object(lean_object * o);

static inline uint8_t lean_ptr_tag(lean_object * o) {
    return o->m_tag;
}

static inline unsigned lean_ptr_other(lean_object * o) {
    return o->m_other;
}






__attribute__((visibility("default"))) size_t lean_object_byte_size(lean_object * o);






__attribute__((visibility("default"))) size_t lean_object_data_byte_size(lean_object * o);

static inline _Bool lean_is_mt(lean_object * o) {
    return o->m_rc < 0;
}

static inline _Bool lean_is_st(lean_object * o) {
    return o->m_rc > 0;
}


static inline _Bool lean_is_persistent(lean_object * o) {
    return o->m_rc == 0;
}

static inline _Bool lean_has_rc(lean_object * o) {
    return o->m_rc != 0;
}

static inline _Atomic(int) * lean_get_rc_mt_addr(lean_object* o) {
    return (_Atomic(int)*)(&(o->m_rc));
}

__attribute__((visibility("default"))) void lean_inc_ref_cold(lean_object * o);
__attribute__((visibility("default"))) void lean_inc_ref_n_cold(lean_object * o, unsigned n);

static inline void lean_inc_ref(lean_object * o) {
    if ((__builtin_expect((lean_is_st(o)), 1))) {
        o->m_rc++;
    } else if (o->m_rc != 0) {
        lean_inc_ref_cold(o);
    }
}

static inline void lean_inc_ref_n(lean_object * o, size_t n) {
    if ((__builtin_expect((lean_is_st(o)), 1))) {
        o->m_rc += n;
    } else if (o->m_rc != 0) {
        lean_inc_ref_n_cold(o, n);
    }
}

__attribute__((visibility("default"))) void lean_dec_ref_cold(lean_object * o);

static inline void lean_dec_ref(lean_object * o) {
    if ((__builtin_expect((o->m_rc > 1), 1))) {
        o->m_rc--;
    } else if (o->m_rc != 0) {
        lean_dec_ref_cold(o);
    }
}
static inline void lean_inc(lean_object * o) { if (!lean_is_scalar(o)) lean_inc_ref(o); }
static inline void lean_inc_n(lean_object * o, size_t n) { if (!lean_is_scalar(o)) lean_inc_ref_n(o, n); }
static inline void lean_dec(lean_object * o) { if (!lean_is_scalar(o)) lean_dec_ref(o); }

static inline _Bool lean_is_ctor(lean_object * o) { return lean_ptr_tag(o) <= 243; }
static inline _Bool lean_is_closure(lean_object * o) { return lean_ptr_tag(o) == 245; }
static inline _Bool lean_is_array(lean_object * o) { return lean_ptr_tag(o) == 246; }
static inline _Bool lean_is_sarray(lean_object * o) { return lean_ptr_tag(o) == 248; }
static inline _Bool lean_is_string(lean_object * o) { return lean_ptr_tag(o) == 249; }
static inline _Bool lean_is_mpz(lean_object * o) { return lean_ptr_tag(o) == 250; }
static inline _Bool lean_is_thunk(lean_object * o) { return lean_ptr_tag(o) == 251; }
static inline _Bool lean_is_task(lean_object * o) { return lean_ptr_tag(o) == 252; }
static inline _Bool lean_is_promise(lean_object * o) { return lean_ptr_tag(o) == 244; }
static inline _Bool lean_is_external(lean_object * o) { return lean_ptr_tag(o) == 254; }
static inline _Bool lean_is_ref(lean_object * o) { return lean_ptr_tag(o) == 253; }

static inline unsigned lean_obj_tag(lean_object * o) {
    if (lean_is_scalar(o)) return lean_unbox(o); else return lean_ptr_tag(o);
}

static inline lean_ctor_object * lean_to_ctor(lean_object * o) { { if ((__builtin_expect((!(lean_is_ctor(o))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 497, "lean_is_ctor(o)"); }; return (lean_ctor_object*)(o); }
static inline lean_closure_object * lean_to_closure(lean_object * o) { { if ((__builtin_expect((!(lean_is_closure(o))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 498, "lean_is_closure(o)"); }; return (lean_closure_object*)(o); }
static inline lean_array_object * lean_to_array(lean_object * o) { { if ((__builtin_expect((!(lean_is_array(o))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 499, "lean_is_array(o)"); }; return (lean_array_object*)(o); }
static inline lean_sarray_object * lean_to_sarray(lean_object * o) { { if ((__builtin_expect((!(lean_is_sarray(o))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 500, "lean_is_sarray(o)"); }; return (lean_sarray_object*)(o); }
static inline lean_string_object * lean_to_string(lean_object * o) { { if ((__builtin_expect((!(lean_is_string(o))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 501, "lean_is_string(o)"); }; return (lean_string_object*)(o); }
static inline lean_thunk_object * lean_to_thunk(lean_object * o) { { if ((__builtin_expect((!(lean_is_thunk(o))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 502, "lean_is_thunk(o)"); }; return (lean_thunk_object*)(o); }
static inline lean_task_object * lean_to_task(lean_object * o) { { if ((__builtin_expect((!(lean_is_task(o))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 503, "lean_is_task(o)"); }; return (lean_task_object*)(o); }
static inline lean_promise_object * lean_to_promise(lean_object * o) { { if ((__builtin_expect((!(lean_is_promise(o))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 504, "lean_is_promise(o)"); }; return (lean_promise_object*)(o); }
static inline lean_ref_object * lean_to_ref(lean_object * o) { { if ((__builtin_expect((!(lean_is_ref(o))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 505, "lean_is_ref(o)"); }; return (lean_ref_object*)(o); }
static inline lean_external_object * lean_to_external(lean_object * o) { { if ((__builtin_expect((!(lean_is_external(o))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 506, "lean_is_external(o)"); }; return (lean_external_object*)(o); }

static inline _Bool lean_is_exclusive(lean_object * o) {
    if ((__builtin_expect((lean_is_st(o)), 1))) {
        return o->m_rc == 1;
    } else {
        return 0;
    }
}

static inline uint8_t lean_is_exclusive_obj(lean_object * o) {
    return lean_is_exclusive(o);
}

static inline _Bool lean_is_shared(lean_object * o) {
    if ((__builtin_expect((lean_is_st(o)), 1))) {
        return o->m_rc > 1;
    } else {
        return 0;
    }
}

__attribute__((visibility("default"))) void lean_mark_mt(lean_object * o);
__attribute__((visibility("default"))) void lean_mark_persistent(lean_object * o);

static inline void lean_set_st_header(lean_object * o, unsigned tag, unsigned other) {
    o->m_rc = 1;
    o->m_tag = tag;
    o->m_other = other;
    o->m_cs_sz = 0;
}



static inline void lean_set_non_heap_header(lean_object * o, size_t sz, unsigned tag, unsigned other) {
    { if ((__builtin_expect((!(sz > 0)), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 541, "sz > 0"); };
    { if ((__builtin_expect((!(sz < (1ull << 16))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 542, "sz < (1ull << 16)"); };
    { if ((__builtin_expect((!(sz == 1 || !lean_is_big_object_tag(tag))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 543, "sz == 1 || !lean_is_big_object_tag(tag)"); };
    o->m_rc = 0;
    o->m_tag = tag;
    o->m_other = other;
    o->m_cs_sz = sz;
}


static inline void lean_set_non_heap_header_for_big(lean_object * o, unsigned tag, unsigned other) {
    lean_set_non_heap_header(o, 1, tag, other);
}



static inline unsigned lean_ctor_num_objs(lean_object * o) {
    { if ((__builtin_expect((!(lean_is_ctor(o))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 558, "lean_is_ctor(o)"); };
    return lean_ptr_other(o);
}

static inline lean_object ** lean_ctor_obj_cptr(lean_object * o) {
    { if ((__builtin_expect((!(lean_is_ctor(o))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 563, "lean_is_ctor(o)"); };
    return lean_to_ctor(o)->m_objs;
}

static inline uint8_t * lean_ctor_scalar_cptr(lean_object * o) {
    { if ((__builtin_expect((!(lean_is_ctor(o))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 568, "lean_is_ctor(o)"); };
    return (uint8_t*)(lean_ctor_obj_cptr(o) + lean_ctor_num_objs(o));
}

static inline lean_object * lean_alloc_ctor(unsigned tag, unsigned num_objs, unsigned scalar_sz) {
    { if ((__builtin_expect((!(tag <= 243 && num_objs < 256 && scalar_sz < 1024)), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 573, "tag <= LeanMaxCtorTag && num_objs < LEAN_MAX_CTOR_FIELDS && scalar_sz < LEAN_MAX_CTOR_SCALARS_SIZE"); };
    lean_object * o = lean_alloc_ctor_memory(sizeof(lean_ctor_object) + sizeof(void*)*num_objs + scalar_sz);
    lean_set_st_header(o, tag, num_objs);
    return o;
}

static inline b_lean_obj_res lean_ctor_get(b_lean_obj_arg o, unsigned i) {
    { if ((__builtin_expect((!(i < lean_ctor_num_objs(o))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 580, "i < lean_ctor_num_objs(o)"); };
    return lean_ctor_obj_cptr(o)[i];
}

static inline void lean_ctor_set(b_lean_obj_arg o, unsigned i, lean_obj_arg v) {
    { if ((__builtin_expect((!(i < lean_ctor_num_objs(o))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 585, "i < lean_ctor_num_objs(o)"); };
    lean_ctor_obj_cptr(o)[i] = v;
}

static inline void lean_ctor_set_tag(b_lean_obj_arg o, uint8_t new_tag) {
    { if ((__builtin_expect((!(new_tag <= 243)), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 590, "new_tag <= LeanMaxCtorTag"); };
    o->m_tag = new_tag;
}

static inline void lean_ctor_release(b_lean_obj_arg o, unsigned i) {
    { if ((__builtin_expect((!(i < lean_ctor_num_objs(o))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 595, "i < lean_ctor_num_objs(o)"); };
    lean_object ** objs = lean_ctor_obj_cptr(o);
    lean_dec(objs[i]);
    objs[i] = lean_box(0);
}

static inline size_t lean_ctor_get_usize(b_lean_obj_arg o, unsigned i) {
    { if ((__builtin_expect((!(i >= lean_ctor_num_objs(o))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 602, "i >= lean_ctor_num_objs(o)"); };
    return *((size_t*)(lean_ctor_obj_cptr(o) + i));
}

static inline uint8_t lean_ctor_get_uint8(b_lean_obj_arg o, unsigned offset) {
    { if ((__builtin_expect((!(offset >= lean_ctor_num_objs(o) * sizeof(void*))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 607, "offset >= lean_ctor_num_objs(o) * sizeof(void*)"); };
    return *((uint8_t*)((uint8_t*)(lean_ctor_obj_cptr(o)) + offset));
}

static inline uint16_t lean_ctor_get_uint16(b_lean_obj_arg o, unsigned offset) {
    { if ((__builtin_expect((!(offset >= lean_ctor_num_objs(o) * sizeof(void*))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 612, "offset >= lean_ctor_num_objs(o) * sizeof(void*)"); };
    return *((uint16_t*)((uint8_t*)(lean_ctor_obj_cptr(o)) + offset));
}

static inline uint32_t lean_ctor_get_uint32(b_lean_obj_arg o, unsigned offset) {
    { if ((__builtin_expect((!(offset >= lean_ctor_num_objs(o) * sizeof(void*))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 617, "offset >= lean_ctor_num_objs(o) * sizeof(void*)"); };
    return *((uint32_t*)((uint8_t*)(lean_ctor_obj_cptr(o)) + offset));
}

static inline uint64_t lean_ctor_get_uint64(b_lean_obj_arg o, unsigned offset) {
    { if ((__builtin_expect((!(offset >= lean_ctor_num_objs(o) * sizeof(void*))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 622, "offset >= lean_ctor_num_objs(o) * sizeof(void*)"); };
    return *((uint64_t*)((uint8_t*)(lean_ctor_obj_cptr(o)) + offset));
}

static inline double lean_ctor_get_float(b_lean_obj_arg o, unsigned offset) {
    { if ((__builtin_expect((!(offset >= lean_ctor_num_objs(o) * sizeof(void*))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 627, "offset >= lean_ctor_num_objs(o) * sizeof(void*)"); };
    return *((double*)((uint8_t*)(lean_ctor_obj_cptr(o)) + offset));
}

static inline float lean_ctor_get_float32(b_lean_obj_arg o, unsigned offset) {
    { if ((__builtin_expect((!(offset >= lean_ctor_num_objs(o) * sizeof(void*))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 632, "offset >= lean_ctor_num_objs(o) * sizeof(void*)"); };
    return *((float*)((uint8_t*)(lean_ctor_obj_cptr(o)) + offset));
}

static inline void lean_ctor_set_usize(b_lean_obj_arg o, unsigned i, size_t v) {
    { if ((__builtin_expect((!(i >= lean_ctor_num_objs(o))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 637, "i >= lean_ctor_num_objs(o)"); };
    *((size_t*)(lean_ctor_obj_cptr(o) + i)) = v;
}

static inline void lean_ctor_set_uint8(b_lean_obj_arg o, unsigned offset, uint8_t v) {
    { if ((__builtin_expect((!(offset >= lean_ctor_num_objs(o) * sizeof(void*))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 642, "offset >= lean_ctor_num_objs(o) * sizeof(void*)"); };
    *((uint8_t*)((uint8_t*)(lean_ctor_obj_cptr(o)) + offset)) = v;
}

static inline void lean_ctor_set_uint16(b_lean_obj_arg o, unsigned offset, uint16_t v) {
    { if ((__builtin_expect((!(offset >= lean_ctor_num_objs(o) * sizeof(void*))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 647, "offset >= lean_ctor_num_objs(o) * sizeof(void*)"); };
    *((uint16_t*)((uint8_t*)(lean_ctor_obj_cptr(o)) + offset)) = v;
}

static inline void lean_ctor_set_uint32(b_lean_obj_arg o, unsigned offset, uint32_t v) {
    { if ((__builtin_expect((!(offset >= lean_ctor_num_objs(o) * sizeof(void*))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 652, "offset >= lean_ctor_num_objs(o) * sizeof(void*)"); };
    *((uint32_t*)((uint8_t*)(lean_ctor_obj_cptr(o)) + offset)) = v;
}

static inline void lean_ctor_set_uint64(b_lean_obj_arg o, unsigned offset, uint64_t v) {
    { if ((__builtin_expect((!(offset >= lean_ctor_num_objs(o) * sizeof(void*))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 657, "offset >= lean_ctor_num_objs(o) * sizeof(void*)"); };
    *((uint64_t*)((uint8_t*)(lean_ctor_obj_cptr(o)) + offset)) = v;
}

static inline void lean_ctor_set_float(b_lean_obj_arg o, unsigned offset, double v) {
    { if ((__builtin_expect((!(offset >= lean_ctor_num_objs(o) * sizeof(void*))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 662, "offset >= lean_ctor_num_objs(o) * sizeof(void*)"); };
    *((double*)((uint8_t*)(lean_ctor_obj_cptr(o)) + offset)) = v;
}

static inline void lean_ctor_set_float32(b_lean_obj_arg o, unsigned offset, float v) {
    { if ((__builtin_expect((!(offset >= lean_ctor_num_objs(o) * sizeof(void*))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 667, "offset >= lean_ctor_num_objs(o) * sizeof(void*)"); };
    *((float*)((uint8_t*)(lean_ctor_obj_cptr(o)) + offset)) = v;
}



static inline void * lean_closure_fun(lean_object * o) { return lean_to_closure(o)->m_fun; }
static inline unsigned lean_closure_arity(lean_object * o) { return lean_to_closure(o)->m_arity; }
static inline unsigned lean_closure_num_fixed(lean_object * o) { return lean_to_closure(o)->m_num_fixed; }
static inline lean_object ** lean_closure_arg_cptr(lean_object * o) { return lean_to_closure(o)->m_objs; }
static inline lean_obj_res lean_alloc_closure(void * fun, unsigned arity, unsigned num_fixed) {
    { if ((__builtin_expect((!(arity > 0)), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 678, "arity > 0"); };
    { if ((__builtin_expect((!(num_fixed < arity)), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 679, "num_fixed < arity"); };
    lean_closure_object * o = (lean_closure_object*)lean_alloc_small_object(sizeof(lean_closure_object) + sizeof(void*)*num_fixed);
    lean_set_st_header((lean_object*)o, 245, 0);
    o->m_fun = fun;
    o->m_arity = arity;
    o->m_num_fixed = num_fixed;
    return (lean_object*)o;
}
static inline b_lean_obj_res lean_closure_get(b_lean_obj_arg o, unsigned i) {
    { if ((__builtin_expect((!(i < lean_closure_num_fixed(o))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 688, "i < lean_closure_num_fixed(o)"); };
    return lean_to_closure(o)->m_objs[i];
}
static inline void lean_closure_set(u_lean_obj_arg o, unsigned i, lean_obj_arg a) {
    { if ((__builtin_expect((!(i < lean_closure_num_fixed(o))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 692, "i < lean_closure_num_fixed(o)"); };
    lean_to_closure(o)->m_objs[i] = a;
}

__attribute__((visibility("default"))) lean_object* lean_apply_1(lean_object* f, lean_object* a1);
__attribute__((visibility("default"))) lean_object* lean_apply_2(lean_object* f, lean_object* a1, lean_object* a2);
__attribute__((visibility("default"))) lean_object* lean_apply_3(lean_object* f, lean_object* a1, lean_object* a2, lean_object* a3);
__attribute__((visibility("default"))) lean_object* lean_apply_4(lean_object* f, lean_object* a1, lean_object* a2, lean_object* a3, lean_object* a4);
__attribute__((visibility("default"))) lean_object* lean_apply_5(lean_object* f, lean_object* a1, lean_object* a2, lean_object* a3, lean_object* a4, lean_object* a5);
__attribute__((visibility("default"))) lean_object* lean_apply_6(lean_object* f, lean_object* a1, lean_object* a2, lean_object* a3, lean_object* a4, lean_object* a5, lean_object* a6);
__attribute__((visibility("default"))) lean_object* lean_apply_7(lean_object* f, lean_object* a1, lean_object* a2, lean_object* a3, lean_object* a4, lean_object* a5, lean_object* a6, lean_object* a7);
__attribute__((visibility("default"))) lean_object* lean_apply_8(lean_object* f, lean_object* a1, lean_object* a2, lean_object* a3, lean_object* a4, lean_object* a5, lean_object* a6, lean_object* a7, lean_object* a8);
__attribute__((visibility("default"))) lean_object* lean_apply_9(lean_object* f, lean_object* a1, lean_object* a2, lean_object* a3, lean_object* a4, lean_object* a5, lean_object* a6, lean_object* a7, lean_object* a8, lean_object* a9);
__attribute__((visibility("default"))) lean_object* lean_apply_10(lean_object* f, lean_object* a1, lean_object* a2, lean_object* a3, lean_object* a4, lean_object* a5, lean_object* a6, lean_object* a7, lean_object* a8, lean_object* a9, lean_object* a10);
__attribute__((visibility("default"))) lean_object* lean_apply_11(lean_object* f, lean_object* a1, lean_object* a2, lean_object* a3, lean_object* a4, lean_object* a5, lean_object* a6, lean_object* a7, lean_object* a8, lean_object* a9, lean_object* a10, lean_object* a11);
__attribute__((visibility("default"))) lean_object* lean_apply_12(lean_object* f, lean_object* a1, lean_object* a2, lean_object* a3, lean_object* a4, lean_object* a5, lean_object* a6, lean_object* a7, lean_object* a8, lean_object* a9, lean_object* a10, lean_object* a11, lean_object* a12);
__attribute__((visibility("default"))) lean_object* lean_apply_13(lean_object* f, lean_object* a1, lean_object* a2, lean_object* a3, lean_object* a4, lean_object* a5, lean_object* a6, lean_object* a7, lean_object* a8, lean_object* a9, lean_object* a10, lean_object* a11, lean_object* a12, lean_object* a13);
__attribute__((visibility("default"))) lean_object* lean_apply_14(lean_object* f, lean_object* a1, lean_object* a2, lean_object* a3, lean_object* a4, lean_object* a5, lean_object* a6, lean_object* a7, lean_object* a8, lean_object* a9, lean_object* a10, lean_object* a11, lean_object* a12, lean_object* a13, lean_object* a14);
__attribute__((visibility("default"))) lean_object* lean_apply_15(lean_object* f, lean_object* a1, lean_object* a2, lean_object* a3, lean_object* a4, lean_object* a5, lean_object* a6, lean_object* a7, lean_object* a8, lean_object* a9, lean_object* a10, lean_object* a11, lean_object* a12, lean_object* a13, lean_object* a14, lean_object* a15);
__attribute__((visibility("default"))) lean_object* lean_apply_16(lean_object* f, lean_object* a1, lean_object* a2, lean_object* a3, lean_object* a4, lean_object* a5, lean_object* a6, lean_object* a7, lean_object* a8, lean_object* a9, lean_object* a10, lean_object* a11, lean_object* a12, lean_object* a13, lean_object* a14, lean_object* a15, lean_object* a16);
__attribute__((visibility("default"))) lean_object* lean_apply_n(lean_object* f, unsigned n, lean_object** args);

__attribute__((visibility("default"))) lean_object* lean_apply_m(lean_object* f, unsigned n, lean_object** args);


static inline lean_obj_res lean_alloc_array(size_t size, size_t capacity) {
    lean_array_object * o = (lean_array_object*)lean_alloc_object(sizeof(lean_array_object) + sizeof(void*)*capacity);
    lean_set_st_header((lean_object*)o, 246, 0);
    o->m_size = size;
    o->m_capacity = capacity;
    return (lean_object*)o;
}
static inline size_t lean_array_size(b_lean_obj_arg o) { return lean_to_array(o)->m_size; }
static inline size_t lean_array_capacity(b_lean_obj_arg o) { return lean_to_array(o)->m_capacity; }
static inline size_t lean_array_byte_size(lean_object * o) {
    return sizeof(lean_array_object) + sizeof(void*)*lean_array_capacity(o);
}
static inline size_t lean_array_data_byte_size(lean_object * o) {
    return sizeof(lean_array_object) + sizeof(void*)*lean_array_size(o);
}
static inline lean_object ** lean_array_cptr(lean_object * o) { return lean_to_array(o)->m_data; }
static inline void lean_array_set_size(u_lean_obj_arg o, size_t sz) {
    { if ((__builtin_expect((!(lean_is_array(o))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 734, "lean_is_array(o)"); };
    { if ((__builtin_expect((!(lean_is_exclusive(o))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 735, "lean_is_exclusive(o)"); };
    { if ((__builtin_expect((!(sz <= lean_array_capacity(o))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 736, "sz <= lean_array_capacity(o)"); };
    lean_to_array(o)->m_size = sz;
}
static inline b_lean_obj_res lean_array_get_core(b_lean_obj_arg o, size_t i) {
    { if ((__builtin_expect((!(i < lean_array_size(o))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 740, "i < lean_array_size(o)"); };
    return lean_to_array(o)->m_data[i];
}
static inline void lean_array_set_core(u_lean_obj_arg o, size_t i, lean_obj_arg v) {


    { if ((__builtin_expect((!(!lean_has_rc(o) || lean_is_exclusive(o))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 746, "!lean_has_rc(o) || lean_is_exclusive(o)"); };
    { if ((__builtin_expect((!(i < lean_array_size(o))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 747, "i < lean_array_size(o)"); };
    lean_to_array(o)->m_data[i] = v;
}
__attribute__((visibility("default"))) lean_object * lean_array_mk(lean_obj_arg l);
__attribute__((visibility("default"))) lean_object * lean_array_to_list(lean_obj_arg a);



static inline lean_object * lean_array_sz(lean_obj_arg a) {
    lean_object * r = lean_box(lean_array_size(a));
    lean_dec(a);
    return r;
}

static inline lean_object * lean_array_get_size(b_lean_obj_arg a) {
    return lean_box(lean_array_size(a));
}

static inline lean_object * lean_mk_empty_array() {
    return lean_alloc_array(0, 0);
}

static inline lean_object * lean_mk_empty_array_with_capacity(b_lean_obj_arg capacity) {
    if (!lean_is_scalar(capacity)) lean_internal_panic_out_of_memory();
    return lean_alloc_array(0, lean_unbox(capacity));
}

static inline lean_object * lean_array_uget(b_lean_obj_arg a, size_t i) {
    lean_object * r = lean_array_get_core(a, i); lean_inc(r);
    return r;
}

static inline lean_obj_res lean_array_fget(b_lean_obj_arg a, b_lean_obj_arg i) {
    return lean_array_uget(a, lean_unbox(i));
}

__attribute__((visibility("default"))) lean_obj_res lean_array_get_panic(lean_obj_arg def_val);

static inline lean_object * lean_array_get(lean_obj_arg def_val, b_lean_obj_arg a, b_lean_obj_arg i) {
    if (lean_is_scalar(i)) {
        size_t idx = lean_unbox(i);
        if (idx < lean_array_size(a)) {
            lean_dec(def_val);
            return lean_array_uget(a, idx);
        }
    }




    return lean_array_get_panic(def_val);
}

__attribute__((visibility("default"))) lean_obj_res lean_copy_expand_array(lean_obj_arg a, _Bool expand);

static inline lean_obj_res lean_copy_array(lean_obj_arg a) {
    return lean_copy_expand_array(a, 0);
}

static inline lean_obj_res lean_ensure_exclusive_array(lean_obj_arg a) {
    if (lean_is_exclusive(a)) return a;
    return lean_copy_array(a);
}

static inline lean_object * lean_array_uset(lean_obj_arg a, size_t i, lean_obj_arg v) {
    lean_object * r = lean_ensure_exclusive_array(a);
    lean_object ** it = lean_array_cptr(r) + i;
    lean_dec(*it);
    *it = v;
    return r;
}

static inline lean_object * lean_array_fset(lean_obj_arg a, b_lean_obj_arg i, lean_obj_arg v) {
    return lean_array_uset(a, lean_unbox(i), v);
}

__attribute__((visibility("default"))) lean_obj_res lean_array_set_panic(lean_obj_arg a, lean_obj_arg v);

static inline lean_object * lean_array_set(lean_obj_arg a, b_lean_obj_arg i, lean_obj_arg v) {
    if (lean_is_scalar(i)) {
        size_t idx = lean_unbox(i);
        if (idx < lean_array_size(a))
            return lean_array_uset(a, idx, v);
    }
    return lean_array_set_panic(a, v);
}

static inline lean_object * lean_array_pop(lean_obj_arg a) {
    lean_object * r = lean_ensure_exclusive_array(a);
    size_t sz = lean_to_array(r)->m_size;
    lean_object ** last;
    if (sz == 0) return r;
    sz--;
    last = lean_array_cptr(r) + sz;
    lean_to_array(r)->m_size = sz;
    lean_dec(*last);
    return r;
}

static inline lean_object * lean_array_uswap(lean_obj_arg a, size_t i, size_t j) {
    lean_object * r = lean_ensure_exclusive_array(a);
    lean_object ** it = lean_array_cptr(r);
    lean_object * v1 = it[i];
    it[i] = it[j];
    it[j] = v1;
    return r;
}

static inline lean_object * lean_array_fswap(lean_obj_arg a, b_lean_obj_arg i, b_lean_obj_arg j) {
    return lean_array_uswap(a, lean_unbox(i), lean_unbox(j));
}

static inline lean_object * lean_array_swap(lean_obj_arg a, b_lean_obj_arg i, b_lean_obj_arg j) {
    if (!lean_is_scalar(i) || !lean_is_scalar(j)) return a;
    size_t ui = lean_unbox(i);
    size_t uj = lean_unbox(j);
    size_t sz = lean_to_array(a)->m_size;
    if (ui >= sz || uj >= sz) return a;
    return lean_array_uswap(a, ui, uj);
}

__attribute__((visibility("default"))) lean_object * lean_array_push(lean_obj_arg a, lean_obj_arg v);
__attribute__((visibility("default"))) lean_object * lean_mk_array(lean_obj_arg n, lean_obj_arg v);



static inline lean_obj_res lean_alloc_sarray(unsigned elem_size, size_t size, size_t capacity) {
    lean_sarray_object * o = (lean_sarray_object*)lean_alloc_object(sizeof(lean_sarray_object) + elem_size*capacity);
    lean_set_st_header((lean_object*)o, 248, elem_size);
    o->m_size = size;
    o->m_capacity = capacity;
    return (lean_object*)o;
}
static inline unsigned lean_sarray_elem_size(lean_object * o) {
    { if ((__builtin_expect((!(lean_is_sarray(o))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 881, "lean_is_sarray(o)"); };
    return lean_ptr_other(o);
}
static inline size_t lean_sarray_capacity(lean_object * o) { return lean_to_sarray(o)->m_capacity; }
static inline size_t lean_sarray_byte_size(lean_object * o) {
    return sizeof(lean_sarray_object) + lean_sarray_elem_size(o)*lean_sarray_capacity(o);
}
static inline size_t lean_sarray_size(b_lean_obj_arg o) { return lean_to_sarray(o)->m_size; }
static inline size_t lean_sarray_data_byte_size(lean_object * o) {
    return sizeof(lean_sarray_object) + lean_sarray_elem_size(o)*lean_sarray_size(o);
}
static inline void lean_sarray_set_size(u_lean_obj_arg o, size_t sz) {
    { if ((__builtin_expect((!(lean_is_exclusive(o))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 893, "lean_is_exclusive(o)"); };
    { if ((__builtin_expect((!(sz <= lean_sarray_capacity(o))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 894, "sz <= lean_sarray_capacity(o)"); };
    lean_to_sarray(o)->m_size = sz;
}
static inline uint8_t* lean_sarray_cptr(lean_object * o) { return lean_to_sarray(o)->m_data; }





__attribute__((visibility("default"))) lean_obj_res lean_byte_array_mk(lean_obj_arg a);
__attribute__((visibility("default"))) lean_obj_res lean_byte_array_data(lean_obj_arg a);
__attribute__((visibility("default"))) lean_obj_res lean_copy_byte_array(lean_obj_arg a);
__attribute__((visibility("default"))) uint64_t lean_byte_array_hash(b_lean_obj_arg a);

static inline lean_obj_res lean_mk_empty_byte_array(b_lean_obj_arg capacity) {
    if (!lean_is_scalar(capacity)) lean_internal_panic_out_of_memory();
    return lean_alloc_sarray(1, 0, lean_unbox(capacity));
}

static inline lean_obj_res lean_byte_array_size(b_lean_obj_arg a) {
    return lean_box(lean_sarray_size(a));
}
static inline uint8_t lean_byte_array_uget(b_lean_obj_arg a, size_t i) {
    { if ((__builtin_expect((!(i < lean_sarray_size(a))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 917, "i < lean_sarray_size(a)"); };
    return lean_sarray_cptr(a)[i];
}
static inline uint8_t lean_byte_array_get(b_lean_obj_arg a, b_lean_obj_arg i) {
    if (lean_is_scalar(i)) {
        size_t idx = lean_unbox(i);
        return idx < lean_sarray_size(a) ? lean_byte_array_uget(a, idx) : 0;
    } else {

        return 0;
    }
}
static inline uint8_t lean_byte_array_fget(b_lean_obj_arg a, b_lean_obj_arg i) {
    return lean_byte_array_uget(a, lean_unbox(i));
}

__attribute__((visibility("default"))) lean_obj_res lean_byte_array_push(lean_obj_arg a, uint8_t b);

static inline lean_object * lean_byte_array_uset(lean_obj_arg a, size_t i, uint8_t v) {
    lean_obj_res r;
    if (lean_is_exclusive(a)) r = a;
    else r = lean_copy_byte_array(a);
    uint8_t * it = lean_sarray_cptr(r) + i;
    *it = v;
    return r;
}

static inline lean_obj_res lean_byte_array_set(lean_obj_arg a, b_lean_obj_arg i, uint8_t b) {
    if (!lean_is_scalar(i)) {
        return a;
    } else {
        size_t idx = lean_unbox(i);
        if (idx >= lean_sarray_size(a)) {
            return a;
        } else {
            return lean_byte_array_uset(a, idx, b);
        }
    }
}

static inline lean_obj_res lean_byte_array_fset(lean_obj_arg a, b_lean_obj_arg i, uint8_t b) {
    return lean_byte_array_uset(a, lean_unbox(i), b);
}



__attribute__((visibility("default"))) lean_obj_res lean_float_array_mk(lean_obj_arg a);
__attribute__((visibility("default"))) lean_obj_res lean_float_array_data(lean_obj_arg a);
__attribute__((visibility("default"))) lean_obj_res lean_copy_float_array(lean_obj_arg a);

static inline lean_obj_res lean_mk_empty_float_array(b_lean_obj_arg capacity) {
    if (!lean_is_scalar(capacity)) lean_internal_panic_out_of_memory();
    return lean_alloc_sarray(sizeof(double), 0, lean_unbox(capacity));
}

static inline lean_obj_res lean_float_array_size(b_lean_obj_arg a) {
    return lean_box(lean_sarray_size(a));
}

static inline double * lean_float_array_cptr(b_lean_obj_arg a) {
    return (double*)(lean_sarray_cptr(a));
}

static inline double lean_float_array_uget(b_lean_obj_arg a, size_t i) {
    return lean_float_array_cptr(a)[i];
}

static inline double lean_float_array_fget(b_lean_obj_arg a, b_lean_obj_arg i) {
    return lean_float_array_uget(a, lean_unbox(i));
}

static inline double lean_float_array_get(b_lean_obj_arg a, b_lean_obj_arg i) {
    if (lean_is_scalar(i)) {
        size_t idx = lean_unbox(i);
        return idx < lean_sarray_size(a) ? lean_float_array_uget(a, idx) : 0.0;
    } else {

        return 0.0;
    }
}

__attribute__((visibility("default"))) lean_obj_res lean_float_array_push(lean_obj_arg a, double d);

static inline lean_obj_res lean_float_array_uset(lean_obj_arg a, size_t i, double d) {
    lean_obj_res r;
    if (lean_is_exclusive(a)) r = a;
    else r = lean_copy_float_array(a);
    double * it = lean_float_array_cptr(r) + i;
    *it = d;
    return r;
}

static inline lean_obj_res lean_float_array_fset(lean_obj_arg a, b_lean_obj_arg i, double d) {
    return lean_float_array_uset(a, lean_unbox(i), d);
}

static inline lean_obj_res lean_float_array_set(lean_obj_arg a, b_lean_obj_arg i, double d) {
    if (!lean_is_scalar(i)) {
        return a;
    } else {
        size_t idx = lean_unbox(i);
        if (idx >= lean_sarray_size(a)) {
            return a;
        } else {
            return lean_float_array_uset(a, idx, d);
        }
    }
}



static inline lean_obj_res lean_alloc_string(size_t size, size_t capacity, size_t len) {
    lean_string_object * o = (lean_string_object*)lean_alloc_object(sizeof(lean_string_object) + capacity);
    lean_set_st_header((lean_object*)o, 249, 0);
    o->m_size = size;
    o->m_capacity = capacity;
    o->m_length = len;
    return (lean_object*)o;
}
__attribute__((visibility("default"))) size_t lean_utf8_strlen(char const * str);
__attribute__((visibility("default"))) size_t lean_utf8_n_strlen(char const * str, size_t n);
static inline size_t lean_string_capacity(lean_object * o) { return lean_to_string(o)->m_capacity; }
static inline size_t lean_string_byte_size(lean_object * o) { return sizeof(lean_string_object) + lean_string_capacity(o); }

static inline uint32_t lean_char_default_value() { return 'A'; }
__attribute__((visibility("default"))) lean_obj_res lean_mk_string_unchecked(char const * s, size_t sz, size_t len);
__attribute__((visibility("default"))) lean_obj_res lean_mk_string_from_bytes(char const * s, size_t sz);
__attribute__((visibility("default"))) lean_obj_res lean_mk_string_from_bytes_unchecked(char const * s, size_t sz);
__attribute__((visibility("default"))) lean_obj_res lean_mk_ascii_string_unchecked(char const * s);
__attribute__((visibility("default"))) lean_obj_res lean_mk_string(char const * s);
static inline char const * lean_string_cstr(b_lean_obj_arg o) {
    { if ((__builtin_expect((!(lean_is_string(o))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 1048, "lean_is_string(o)"); };
    return lean_to_string(o)->m_data;
}
static inline size_t lean_string_size(b_lean_obj_arg o) { return lean_to_string(o)->m_size; }
static inline size_t lean_string_len(b_lean_obj_arg o) { return lean_to_string(o)->m_length; }
static inline size_t lean_string_data_byte_size(lean_object * o) { return sizeof(lean_string_object) + lean_string_size(o); }
__attribute__((visibility("default"))) lean_obj_res lean_string_push(lean_obj_arg s, uint32_t c);
__attribute__((visibility("default"))) lean_obj_res lean_string_append(lean_obj_arg s1, b_lean_obj_arg s2);
static inline lean_obj_res lean_string_length(b_lean_obj_arg s) { return lean_box(lean_string_len(s)); }
__attribute__((visibility("default"))) lean_obj_res lean_string_mk(lean_obj_arg cs);
__attribute__((visibility("default"))) lean_obj_res lean_string_data(lean_obj_arg s);
__attribute__((visibility("default"))) uint32_t lean_string_utf8_get(b_lean_obj_arg s, b_lean_obj_arg i);
__attribute__((visibility("default"))) uint32_t lean_string_utf8_get_fast_cold(char const * str, size_t i, size_t size, unsigned char c);
static inline uint32_t lean_string_utf8_get_fast(b_lean_obj_arg s, b_lean_obj_arg i) {
  char const * str = lean_string_cstr(s);
  size_t idx = lean_unbox(i);
  unsigned char c = (unsigned char)(str[idx]);
  if ((c & 0x80) == 0) return c;
  return lean_string_utf8_get_fast_cold(str, idx, lean_string_size(s), c);
}
static inline uint8_t lean_string_get_byte_fast(b_lean_obj_arg s, b_lean_obj_arg i) {
  char const * str = lean_string_cstr(s);
  size_t idx = lean_unbox(i);
  return str[idx];
}

__attribute__((visibility("default"))) lean_obj_res lean_string_utf8_next(b_lean_obj_arg s, b_lean_obj_arg i);
__attribute__((visibility("default"))) lean_obj_res lean_string_utf8_next_fast_cold(size_t i, unsigned char c);
static inline lean_obj_res lean_string_utf8_next_fast(b_lean_obj_arg s, b_lean_obj_arg i) {
  char const * str = lean_string_cstr(s);
  size_t idx = lean_unbox(i);
  unsigned char c = (unsigned char)(str[idx]);
  if ((c & 0x80) == 0) return lean_box(idx+1);
  return lean_string_utf8_next_fast_cold(idx, c);
}

__attribute__((visibility("default"))) lean_obj_res lean_string_utf8_prev(b_lean_obj_arg s, b_lean_obj_arg i);
__attribute__((visibility("default"))) lean_obj_res lean_string_utf8_set(lean_obj_arg s, b_lean_obj_arg i, uint32_t c);
static inline uint8_t lean_string_utf8_at_end(b_lean_obj_arg s, b_lean_obj_arg i) {
    return !lean_is_scalar(i) || lean_unbox(i) >= lean_string_size(s) - 1;
}
__attribute__((visibility("default"))) lean_obj_res lean_string_utf8_extract(b_lean_obj_arg s, b_lean_obj_arg b, b_lean_obj_arg e);
static inline lean_obj_res lean_string_utf8_byte_size(b_lean_obj_arg s) { return lean_box(lean_string_size(s) - 1); }
__attribute__((visibility("default"))) _Bool lean_string_eq_cold(b_lean_obj_arg s1, b_lean_obj_arg s2);
static inline _Bool lean_string_eq(b_lean_obj_arg s1, b_lean_obj_arg s2) {
    return s1 == s2 || (lean_string_size(s1) == lean_string_size(s2) && lean_string_eq_cold(s1, s2));
}
static inline _Bool lean_string_ne(b_lean_obj_arg s1, b_lean_obj_arg s2) { return !lean_string_eq(s1, s2); }
__attribute__((visibility("default"))) _Bool lean_string_lt(b_lean_obj_arg s1, b_lean_obj_arg s2);
static inline uint8_t lean_string_dec_eq(b_lean_obj_arg s1, b_lean_obj_arg s2) { return lean_string_eq(s1, s2); }
static inline uint8_t lean_string_dec_lt(b_lean_obj_arg s1, b_lean_obj_arg s2) { return lean_string_lt(s1, s2); }
__attribute__((visibility("default"))) uint64_t lean_string_hash(b_lean_obj_arg);
__attribute__((visibility("default"))) lean_obj_res lean_string_of_usize(size_t);



static inline lean_obj_res lean_mk_thunk(lean_obj_arg c) {
    lean_thunk_object * o = (lean_thunk_object*)lean_alloc_small_object(sizeof(lean_thunk_object));
    lean_set_st_header((lean_object*)o, 251, 0);
    o->m_value = (lean_object*)0;
    o->m_closure = c;
    return (lean_object*)o;
}


static inline lean_obj_res lean_thunk_pure(lean_obj_arg v) {
    lean_thunk_object * o = (lean_thunk_object*)lean_alloc_small_object(sizeof(lean_thunk_object));
    lean_set_st_header((lean_object*)o, 251, 0);
    o->m_value = v;
    o->m_closure = (lean_object*)0;
    return (lean_object*)o;
}

__attribute__((visibility("default"))) lean_object * lean_thunk_get_core(lean_object * t);

static inline b_lean_obj_res lean_thunk_get(b_lean_obj_arg t) {
    lean_object * r = lean_to_thunk(t)->m_value;
    if (r) return r;
    return lean_thunk_get_core(t);
}


static inline lean_obj_res lean_thunk_get_own(b_lean_obj_arg t) {
    lean_object * r = lean_thunk_get(t);
    lean_inc(r);
    return r;
}



__attribute__((visibility("default"))) void lean_init_task_manager(void);
__attribute__((visibility("default"))) void lean_init_task_manager_using(unsigned num_workers);
__attribute__((visibility("default"))) void lean_finalize_task_manager(void);

__attribute__((visibility("default"))) lean_obj_res lean_task_spawn_core(lean_obj_arg c, unsigned prio, _Bool keep_alive);

static inline lean_obj_res lean_task_spawn(lean_obj_arg c, lean_obj_arg prio) { return lean_task_spawn_core(c, lean_unbox(prio), 0); }

__attribute__((visibility("default"))) lean_obj_res lean_task_pure(lean_obj_arg a);
__attribute__((visibility("default"))) lean_obj_res lean_task_bind_core(lean_obj_arg x, lean_obj_arg f, unsigned prio, _Bool sync, _Bool keep_alive);

static inline lean_obj_res lean_task_bind(lean_obj_arg x, lean_obj_arg f, lean_obj_arg prio, uint8_t sync) { return lean_task_bind_core(x, f, lean_unbox(prio), sync, 0); }
__attribute__((visibility("default"))) lean_obj_res lean_task_map_core(lean_obj_arg f, lean_obj_arg t, unsigned prio, _Bool sync, _Bool keep_alive);

static inline lean_obj_res lean_task_map(lean_obj_arg f, lean_obj_arg t, lean_obj_arg prio, uint8_t sync) { return lean_task_map_core(f, t, lean_unbox(prio), sync, 0); }
__attribute__((visibility("default"))) b_lean_obj_res lean_task_get(b_lean_obj_arg t);

static inline lean_obj_res lean_task_get_own(lean_obj_arg t) {
    lean_object * r = lean_task_get(t);
    lean_inc(r);
    lean_dec(t);
    return r;
}


__attribute__((visibility("default"))) _Bool lean_io_check_canceled_core(void);

__attribute__((visibility("default"))) void lean_io_cancel_core(b_lean_obj_arg t);

__attribute__((visibility("default"))) uint8_t lean_io_get_task_state_core(b_lean_obj_arg t);

__attribute__((visibility("default"))) b_lean_obj_res lean_io_wait_any_core(b_lean_obj_arg task_list);



static inline lean_object * lean_alloc_external(lean_external_class * cls, void * data) {
    lean_external_object * o = (lean_external_object*)lean_alloc_small_object(sizeof(lean_external_object));
    lean_set_st_header((lean_object*)o, 254, 0);
    o->m_class = cls;
    o->m_data = data;
    return (lean_object*)o;
}

static inline lean_external_class * lean_get_external_class(lean_object * o) {
    return lean_to_external(o)->m_class;
}

static inline void * lean_get_external_data(lean_object * o) {
    return lean_to_external(o)->m_data;
}

static inline lean_object * lean_set_external_data(lean_object * o, void * data) {
    if (lean_is_exclusive(o)) {
        lean_to_external(o)->m_data = data;
        return o;
    } else {
        lean_object * o_new = lean_alloc_external(lean_get_external_class(o), data);
        lean_dec_ref(o);
        return o_new;
    }
}





__attribute__((visibility("default"))) lean_object * lean_nat_big_succ(lean_object * a);
__attribute__((visibility("default"))) lean_object * lean_nat_big_add(lean_object * a1, lean_object * a2);
__attribute__((visibility("default"))) lean_object * lean_nat_big_sub(lean_object * a1, lean_object * a2);
__attribute__((visibility("default"))) lean_object * lean_nat_big_mul(lean_object * a1, lean_object * a2);
__attribute__((visibility("default"))) lean_object * lean_nat_overflow_mul(size_t a1, size_t a2);
__attribute__((visibility("default"))) lean_object * lean_nat_big_div(lean_object * a1, lean_object * a2);
__attribute__((visibility("default"))) lean_object * lean_nat_big_mod(lean_object * a1, lean_object * a2);
__attribute__((visibility("default"))) _Bool lean_nat_big_eq(lean_object * a1, lean_object * a2);
__attribute__((visibility("default"))) _Bool lean_nat_big_le(lean_object * a1, lean_object * a2);
__attribute__((visibility("default"))) _Bool lean_nat_big_lt(lean_object * a1, lean_object * a2);
__attribute__((visibility("default"))) lean_object * lean_nat_big_land(lean_object * a1, lean_object * a2);
__attribute__((visibility("default"))) lean_object * lean_nat_big_lor(lean_object * a1, lean_object * a2);
__attribute__((visibility("default"))) lean_object * lean_nat_big_xor(lean_object * a1, lean_object * a2);

__attribute__((visibility("default"))) lean_obj_res lean_cstr_to_nat(char const * n);
__attribute__((visibility("default"))) lean_obj_res lean_big_usize_to_nat(size_t n);
__attribute__((visibility("default"))) lean_obj_res lean_big_uint64_to_nat(uint64_t n);
static inline lean_obj_res lean_usize_to_nat(size_t n) {
    if ((__builtin_expect((n <= ((0xffffffffu) >> 1)), 1)))
        return lean_box(n);
    else
        return lean_big_usize_to_nat(n);
}
static inline lean_obj_res lean_unsigned_to_nat(unsigned n) {
    return lean_usize_to_nat(n);
}
static inline lean_obj_res lean_uint64_to_nat(uint64_t n) {
    if ((__builtin_expect((n <= ((0xffffffffu) >> 1)), 1)))
        return lean_box(n);
    else
        return lean_big_uint64_to_nat(n);
}

static inline lean_obj_res lean_nat_succ(b_lean_obj_arg a) {
    if ((__builtin_expect((lean_is_scalar(a)), 1)))
        return lean_usize_to_nat(lean_unbox(a) + 1);
    else
        return lean_nat_big_succ(a);
}

static inline lean_obj_res lean_nat_add(b_lean_obj_arg a1, b_lean_obj_arg a2) {
    if ((__builtin_expect((lean_is_scalar(a1) && lean_is_scalar(a2)), 1)))
        return lean_usize_to_nat(lean_unbox(a1) + lean_unbox(a2));
    else
        return lean_nat_big_add(a1, a2);
}

static inline lean_obj_res lean_nat_sub(b_lean_obj_arg a1, b_lean_obj_arg a2) {
    if ((__builtin_expect((lean_is_scalar(a1) && lean_is_scalar(a2)), 1))) {
        size_t n1 = lean_unbox(a1);
        size_t n2 = lean_unbox(a2);
        if (n1 < n2)
            return lean_box(0);
        else
            return lean_box(n1 - n2);
    } else {
        return lean_nat_big_sub(a1, a2);
    }
}

static inline lean_obj_res lean_nat_mul(b_lean_obj_arg a1, b_lean_obj_arg a2) {
    if ((__builtin_expect((lean_is_scalar(a1) && lean_is_scalar(a2)), 1))) {
        size_t n1 = lean_unbox(a1);
        if (n1 == 0)
            return a1;
        size_t n2 = lean_unbox(a2);
        size_t r = n1*n2;
        if (r <= ((0xffffffffu) >> 1) && r / n1 == n2)
            return lean_box(r);
        else
            return lean_nat_overflow_mul(n1, n2);
    } else {
        return lean_nat_big_mul(a1, a2);
    }
}

static inline lean_obj_res lean_nat_div(b_lean_obj_arg a1, b_lean_obj_arg a2) {
    if ((__builtin_expect((lean_is_scalar(a1) && lean_is_scalar(a2)), 1))) {
        size_t n1 = lean_unbox(a1);
        size_t n2 = lean_unbox(a2);
        if (n2 == 0)
            return lean_box(0);
        else
            return lean_box(n1 / n2);
    } else {
        return lean_nat_big_div(a1, a2);
    }
}

static inline lean_obj_res lean_nat_mod(b_lean_obj_arg a1, b_lean_obj_arg a2) {
    if ((__builtin_expect((lean_is_scalar(a1) && lean_is_scalar(a2)), 1))) {
        size_t n1 = lean_unbox(a1);
        size_t n2 = lean_unbox(a2);
        if (n2 == 0)
            return lean_box(n1);
        else
            return lean_box(n1 % n2);
    } else {
        return lean_nat_big_mod(a1, a2);
    }
}

static inline _Bool lean_nat_eq(b_lean_obj_arg a1, b_lean_obj_arg a2) {
    if ((__builtin_expect((lean_is_scalar(a1) && lean_is_scalar(a2)), 1))) {


        return a1 == a2;
    } else {
        return lean_nat_big_eq(a1, a2);
    }
}

static inline uint8_t lean_nat_dec_eq(b_lean_obj_arg a1, b_lean_obj_arg a2) {
    return lean_nat_eq(a1, a2);
}

static inline _Bool lean_nat_ne(b_lean_obj_arg a1, b_lean_obj_arg a2) {
    return !lean_nat_eq(a1, a2);
}

static inline _Bool lean_nat_le(b_lean_obj_arg a1, b_lean_obj_arg a2) {
    if ((__builtin_expect((lean_is_scalar(a1) && lean_is_scalar(a2)), 1))) {


        return a1 <= a2;
    } else {
        return lean_nat_big_le(a1, a2);
    }
}

static inline uint8_t lean_nat_dec_le(b_lean_obj_arg a1, b_lean_obj_arg a2) {
    return lean_nat_le(a1, a2);
}

static inline _Bool lean_nat_lt(b_lean_obj_arg a1, b_lean_obj_arg a2) {
    if ((__builtin_expect((lean_is_scalar(a1) && lean_is_scalar(a2)), 1))) {


        return a1 < a2;
    } else {
        return lean_nat_big_lt(a1, a2);
    }
}

static inline uint8_t lean_nat_dec_lt(b_lean_obj_arg a1, b_lean_obj_arg a2) {
    return lean_nat_lt(a1, a2);
}

static inline lean_obj_res lean_nat_land(b_lean_obj_arg a1, b_lean_obj_arg a2) {
    if ((__builtin_expect((lean_is_scalar(a1) && lean_is_scalar(a2)), 1))) {
        return (lean_object*)((size_t)(a1) & (size_t)(a2));
    } else {
        return lean_nat_big_land(a1, a2);
    }
}

static inline lean_obj_res lean_nat_lor(b_lean_obj_arg a1, b_lean_obj_arg a2) {
    if ((__builtin_expect((lean_is_scalar(a1) && lean_is_scalar(a2)), 1))) {
        return (lean_object*)((size_t)(a1) | (size_t)(a2));
    } else {
        return lean_nat_big_lor(a1, a2);
    }
}

static inline lean_obj_res lean_nat_lxor(b_lean_obj_arg a1, b_lean_obj_arg a2) {
    if ((__builtin_expect((lean_is_scalar(a1) && lean_is_scalar(a2)), 1))) {
        return lean_box(lean_unbox(a1) ^ lean_unbox(a2));
    } else {
        return lean_nat_big_xor(a1, a2);
    }
}

__attribute__((visibility("default"))) lean_obj_res lean_nat_shiftl(b_lean_obj_arg a1, b_lean_obj_arg a2);
__attribute__((visibility("default"))) lean_obj_res lean_nat_shiftr(b_lean_obj_arg a1, b_lean_obj_arg a2);
__attribute__((visibility("default"))) lean_obj_res lean_nat_pow(b_lean_obj_arg a1, b_lean_obj_arg a2);
__attribute__((visibility("default"))) lean_obj_res lean_nat_gcd(b_lean_obj_arg a1, b_lean_obj_arg a2);
__attribute__((visibility("default"))) lean_obj_res lean_nat_log2(b_lean_obj_arg a);





__attribute__((visibility("default"))) lean_object * lean_int_big_neg(lean_object * a);
__attribute__((visibility("default"))) lean_object * lean_int_big_add(lean_object * a1, lean_object * a2);
__attribute__((visibility("default"))) lean_object * lean_int_big_sub(lean_object * a1, lean_object * a2);
__attribute__((visibility("default"))) lean_object * lean_int_big_mul(lean_object * a1, lean_object * a2);
__attribute__((visibility("default"))) lean_object * lean_int_big_div(lean_object * a1, lean_object * a2);
__attribute__((visibility("default"))) lean_object * lean_int_big_mod(lean_object * a1, lean_object * a2);
__attribute__((visibility("default"))) lean_object * lean_int_big_ediv(lean_object * a1, lean_object * a2);
__attribute__((visibility("default"))) lean_object * lean_int_big_emod(lean_object * a1, lean_object * a2);
__attribute__((visibility("default"))) _Bool lean_int_big_eq(lean_object * a1, lean_object * a2);
__attribute__((visibility("default"))) _Bool lean_int_big_le(lean_object * a1, lean_object * a2);
__attribute__((visibility("default"))) _Bool lean_int_big_lt(lean_object * a1, lean_object * a2);
__attribute__((visibility("default"))) _Bool lean_int_big_nonneg(lean_object * a);

__attribute__((visibility("default"))) lean_object * lean_cstr_to_int(char const * n);
__attribute__((visibility("default"))) lean_object * lean_big_int_to_int(int n);
__attribute__((visibility("default"))) lean_object * lean_big_size_t_to_int(size_t n);
__attribute__((visibility("default"))) lean_object * lean_big_int64_to_int(int64_t n);

static inline lean_obj_res lean_int_to_int(int n) {
    if (sizeof(void*) == 8)
        return lean_box((unsigned)(n));
    else if ((sizeof(void*) == 8 ? (-2147483647 -1) : ((-2147483647 -1) >> 1)) <= n && n <= (sizeof(void*) == 8 ? 2147483647 : (2147483647 >> 1)))
        return lean_box((unsigned)(n));
    else
        return lean_big_int_to_int(n);
}

static inline lean_obj_res lean_int64_to_int(int64_t n) {
    if ((__builtin_expect(((sizeof(void*) == 8 ? (-2147483647 -1) : ((-2147483647 -1) >> 1)) <= n && n <= (sizeof(void*) == 8 ? 2147483647 : (2147483647 >> 1))), 1)))
        return lean_box((unsigned)((int)n));
    else
        return lean_big_int64_to_int(n);
}

static inline int64_t lean_scalar_to_int64(b_lean_obj_arg a) {
    { if ((__builtin_expect((!(lean_is_scalar(a))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 1421, "lean_is_scalar(a)"); };
    if (sizeof(void*) == 8)
        return (int)((unsigned)lean_unbox(a));
    else
        return ((int)((size_t)a)) >> 1;
}

static inline int lean_scalar_to_int(b_lean_obj_arg a) {
    { if ((__builtin_expect((!(lean_is_scalar(a))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 1429, "lean_is_scalar(a)"); };
    if (sizeof(void*) == 8)
        return (int)((unsigned)lean_unbox(a));
    else
        return ((int)((size_t)a)) >> 1;
}

static inline lean_obj_res lean_nat_to_int(lean_obj_arg a) {
    if (lean_is_scalar(a)) {
        size_t v = lean_unbox(a);
        if (v <= (sizeof(void*) == 8 ? 2147483647 : (2147483647 >> 1)))
            return a;
        else
            return lean_big_size_t_to_int(v);
    } else {
        return a;
    }
}

static inline lean_obj_res lean_int_neg(b_lean_obj_arg a) {
    if ((__builtin_expect((lean_is_scalar(a)), 1))) {
        return lean_int64_to_int(-lean_scalar_to_int64(a));
    } else {
        return lean_int_big_neg(a);
    }
}

static inline lean_obj_res lean_int_neg_succ_of_nat(lean_obj_arg a) {
    lean_obj_res s = lean_nat_succ(a); lean_dec(a);
    lean_obj_res i = lean_nat_to_int(s);
    lean_obj_res r = lean_int_neg(i); lean_dec(i);
    return r;
}

static inline lean_obj_res lean_int_add(b_lean_obj_arg a1, b_lean_obj_arg a2) {
    if ((__builtin_expect((lean_is_scalar(a1) && lean_is_scalar(a2)), 1))) {
        return lean_int64_to_int(lean_scalar_to_int64(a1) + lean_scalar_to_int64(a2));
    } else {
        return lean_int_big_add(a1, a2);
    }
}

static inline lean_obj_res lean_int_sub(b_lean_obj_arg a1, b_lean_obj_arg a2) {
    if ((__builtin_expect((lean_is_scalar(a1) && lean_is_scalar(a2)), 1))) {
        return lean_int64_to_int(lean_scalar_to_int64(a1) - lean_scalar_to_int64(a2));
    } else {
        return lean_int_big_sub(a1, a2);
    }
}

static inline lean_obj_res lean_int_mul(b_lean_obj_arg a1, b_lean_obj_arg a2) {
    if ((__builtin_expect((lean_is_scalar(a1) && lean_is_scalar(a2)), 1))) {
        return lean_int64_to_int(lean_scalar_to_int64(a1) * lean_scalar_to_int64(a2));
    } else {
        return lean_int_big_mul(a1, a2);
    }
}

static inline lean_obj_res lean_int_div(b_lean_obj_arg a1, b_lean_obj_arg a2) {
    if ((__builtin_expect((lean_is_scalar(a1) && lean_is_scalar(a2)), 1))) {
        if (sizeof(void*) == 8) {

            int64_t v1 = lean_scalar_to_int(a1);
            int64_t v2 = lean_scalar_to_int(a2);
            if (v2 == 0)
                return lean_box(0);
            else
                return lean_int64_to_int(v1 / v2);
        } else {

            int v1 = lean_scalar_to_int(a1);
            int v2 = lean_scalar_to_int(a2);
            if (v2 == 0)
                return lean_box(0);
            else
                return lean_int_to_int(v1 / v2);
        }
    } else {
        return lean_int_big_div(a1, a2);
    }
}

static inline lean_obj_res lean_int_mod(b_lean_obj_arg a1, b_lean_obj_arg a2) {
    if ((__builtin_expect((lean_is_scalar(a1) && lean_is_scalar(a2)), 1))) {
        if (sizeof(void*) == 8) {

            int64_t v1 = lean_scalar_to_int64(a1);
            int64_t v2 = lean_scalar_to_int64(a2);
            if (v2 == 0)
                return a1;
            else
                return lean_int64_to_int(v1 % v2);
        } else {

            int v1 = lean_scalar_to_int(a1);
            int v2 = lean_scalar_to_int(a2);
            if (v2 == 0)
                return a1;
            else
                return lean_int_to_int(v1 % v2);
        }
    } else {
        return lean_int_big_mod(a1, a2);
    }
}
# 1544 "/home/sally/lean4/build/stage1/include/lean/lean.h"
static inline lean_obj_res lean_int_ediv(b_lean_obj_arg a1, b_lean_obj_arg a2) {
    if ((__builtin_expect((lean_is_scalar(a1) && lean_is_scalar(a2)), 1))) {
        if (sizeof(void*) == 8) {

            int64_t n = lean_scalar_to_int(a1);
            int64_t d = lean_scalar_to_int(a2);
            if (d == 0)
                return lean_box(0);
            else {
                int64_t q = n / d;
                int64_t r = n % d;
                if (r < 0)
                    q = (d > 0) ? q - 1 : q + 1;
                return lean_int64_to_int(q);
            }
        } else {

            int n = lean_scalar_to_int(a1);
            int d = lean_scalar_to_int(a2);
            if (d == 0) {
                return lean_box(0);
            } else {
                int q = n / d;
                int r = n % d;
                if (r < 0)
                    q = (d > 0) ? q - 1 : q + 1;
                return lean_int_to_int(q);
            }
        }
    } else {
        return lean_int_big_ediv(a1, a2);
    }
}

static inline lean_obj_res lean_int_emod(b_lean_obj_arg a1, b_lean_obj_arg a2) {
    if ((__builtin_expect((lean_is_scalar(a1) && lean_is_scalar(a2)), 1))) {
        if (sizeof(void*) == 8) {

            int64_t n = lean_scalar_to_int64(a1);
            int64_t d = lean_scalar_to_int64(a2);
            if (d == 0) {
                return a1;
            } else {
                int64_t r = n % d;
                if (r < 0)
                    r = (d > 0) ? r + d : r - d;
                return lean_int64_to_int(r);
            }
        } else {

            int n = lean_scalar_to_int(a1);
            int d = lean_scalar_to_int(a2);
            if (d == 0)
                return a1;
            else {
                int r = n % d;
                if (r < 0)
                    r = (d > 0) ? r + d : r - d;
                return lean_int_to_int(r);
            }
        }
    } else {
        return lean_int_big_emod(a1, a2);
    }
}

static inline _Bool lean_int_eq(b_lean_obj_arg a1, b_lean_obj_arg a2) {
    if ((__builtin_expect((lean_is_scalar(a1) && lean_is_scalar(a2)), 1))) {
        return a1 == a2;
    } else {
        return lean_int_big_eq(a1, a2);
    }
}

static inline _Bool lean_int_ne(b_lean_obj_arg a1, b_lean_obj_arg a2) {
    return !lean_int_eq(a1, a2);
}

static inline _Bool lean_int_le(b_lean_obj_arg a1, b_lean_obj_arg a2) {
    if ((__builtin_expect((lean_is_scalar(a1) && lean_is_scalar(a2)), 1))) {
        return lean_scalar_to_int(a1) <= lean_scalar_to_int(a2);
    } else {
        return lean_int_big_le(a1, a2);
    }
}

static inline _Bool lean_int_lt(b_lean_obj_arg a1, b_lean_obj_arg a2) {
    if ((__builtin_expect((lean_is_scalar(a1) && lean_is_scalar(a2)), 1))) {
        return lean_scalar_to_int(a1) < lean_scalar_to_int(a2);
    } else {
        return lean_int_big_lt(a1, a2);
    }
}

__attribute__((visibility("default"))) lean_obj_res lean_big_int_to_nat(lean_obj_arg a);
static inline lean_obj_res lean_int_to_nat(lean_obj_arg a) {
    { if ((__builtin_expect((!(!lean_int_lt(a, lean_box(0)))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 1640, "!lean_int_lt(a, lean_box(0))"); };
    if (lean_is_scalar(a)) {
        return a;
    } else {
        return lean_big_int_to_nat(a);
    }
}

static inline lean_obj_res lean_nat_abs(b_lean_obj_arg i) {
    if (lean_int_lt(i, lean_box(0))) {
        return lean_int_to_nat(lean_int_neg(i));
    } else {
        lean_inc(i);
        return lean_int_to_nat(i);
    }
}

static inline uint8_t lean_int_dec_eq(b_lean_obj_arg a1, b_lean_obj_arg a2) { return lean_int_eq(a1, a2); }

static inline uint8_t lean_int_dec_le(b_lean_obj_arg a1, b_lean_obj_arg a2) { return lean_int_le(a1, a2); }

static inline uint8_t lean_int_dec_lt(b_lean_obj_arg a1, b_lean_obj_arg a2) { return lean_int_lt(a1, a2); }

static inline uint8_t lean_int_dec_nonneg(b_lean_obj_arg a) {
    if ((__builtin_expect((lean_is_scalar(a)), 1)))
        return lean_scalar_to_int(a) >= 0;
    else
        return lean_int_big_nonneg(a);
}



static inline uint8_t lean_bool_to_uint8(uint8_t a) { return a; }
static inline uint16_t lean_bool_to_uint16(uint8_t a) { return (uint16_t)a; }
static inline uint32_t lean_bool_to_uint32(uint8_t a) { return (uint32_t)a; }
static inline uint64_t lean_bool_to_uint64(uint8_t a) { return (uint64_t)a; }
static inline size_t lean_bool_to_usize(uint8_t a) { return (size_t)a; }
static inline uint8_t lean_bool_to_int8(uint8_t a) { return (uint8_t)(int8_t)a; }
static inline uint16_t lean_bool_to_int16(uint8_t a) { return (uint16_t)(int16_t)a; }
static inline uint32_t lean_bool_to_int32(uint8_t a) { return (uint32_t)(int32_t)a; }
static inline uint64_t lean_bool_to_int64(uint8_t a) { return (uint64_t)(int64_t)a; }
static inline size_t lean_bool_to_isize(uint8_t a) { return (size_t)(ptrdiff_t)a; }




__attribute__((visibility("default"))) uint8_t lean_uint8_of_big_nat(b_lean_obj_arg a);
static inline uint8_t lean_uint8_of_nat(b_lean_obj_arg a) { return lean_is_scalar(a) ? (uint8_t)(lean_unbox(a)) : lean_uint8_of_big_nat(a); }

static inline uint8_t lean_uint8_of_nat_mk(lean_obj_arg a) { uint8_t r = lean_uint8_of_nat(a); lean_dec(a); return r; }
static inline lean_obj_res lean_uint8_to_nat(uint8_t a) { return lean_usize_to_nat((size_t)a); }
static inline uint8_t lean_uint8_add(uint8_t a1, uint8_t a2) { return a1+a2; }
static inline uint8_t lean_uint8_sub(uint8_t a1, uint8_t a2) { return a1-a2; }
static inline uint8_t lean_uint8_mul(uint8_t a1, uint8_t a2) { return a1*a2; }
static inline uint8_t lean_uint8_div(uint8_t a1, uint8_t a2) { return a2 == 0 ? 0 : a1/a2; }
static inline uint8_t lean_uint8_mod(uint8_t a1, uint8_t a2) { return a2 == 0 ? a1 : a1%a2; }
static inline uint8_t lean_uint8_land(uint8_t a, uint8_t b) { return a & b; }
static inline uint8_t lean_uint8_lor(uint8_t a, uint8_t b) { return a | b; }
static inline uint8_t lean_uint8_xor(uint8_t a, uint8_t b) { return a ^ b; }
static inline uint8_t lean_uint8_shift_left(uint8_t a, uint8_t b) { return a << (b % 8); }
static inline uint8_t lean_uint8_shift_right(uint8_t a, uint8_t b) { return a >> (b % 8); }
static inline uint8_t lean_uint8_complement(uint8_t a) { return ~a; }
static inline uint8_t lean_uint8_neg(uint8_t a) { return -a; }
static inline uint8_t lean_uint8_log2(uint8_t a) {
    uint8_t res = 0;
    while (a >= 2) {
        res++;
        a /= 2;
    }
    return res;
}
static inline uint8_t lean_uint8_dec_eq(uint8_t a1, uint8_t a2) { return a1 == a2; }
static inline uint8_t lean_uint8_dec_lt(uint8_t a1, uint8_t a2) { return a1 < a2; }
static inline uint8_t lean_uint8_dec_le(uint8_t a1, uint8_t a2) { return a1 <= a2; }



static inline uint16_t lean_uint8_to_uint16(uint8_t a) { return ((uint16_t)a); }
static inline uint32_t lean_uint8_to_uint32(uint8_t a) { return ((uint32_t)a); }
static inline uint64_t lean_uint8_to_uint64(uint8_t a) { return ((uint64_t)a); }
static inline size_t lean_uint8_to_usize(uint8_t a) { return ((size_t)a); }



__attribute__((visibility("default"))) uint16_t lean_uint16_of_big_nat(b_lean_obj_arg a);
static inline uint16_t lean_uint16_of_nat(b_lean_obj_arg a) { return lean_is_scalar(a) ? (int16_t)(lean_unbox(a)) : lean_uint16_of_big_nat(a); }

static inline uint16_t lean_uint16_of_nat_mk(lean_obj_arg a) { uint16_t r = lean_uint16_of_nat(a); lean_dec(a); return r; }
static inline lean_obj_res lean_uint16_to_nat(uint16_t a) { return lean_usize_to_nat((size_t)a); }
static inline uint16_t lean_uint16_add(uint16_t a1, uint16_t a2) { return a1+a2; }
static inline uint16_t lean_uint16_sub(uint16_t a1, uint16_t a2) { return a1-a2; }
static inline uint16_t lean_uint16_mul(uint16_t a1, uint16_t a2) { return a1*a2; }
static inline uint16_t lean_uint16_div(uint16_t a1, uint16_t a2) { return a2 == 0 ? 0 : a1/a2; }
static inline uint16_t lean_uint16_mod(uint16_t a1, uint16_t a2) { return a2 == 0 ? a1 : a1%a2; }
static inline uint16_t lean_uint16_land(uint16_t a, uint16_t b) { return a & b; }
static inline uint16_t lean_uint16_lor(uint16_t a, uint16_t b) { return a | b; }
static inline uint16_t lean_uint16_xor(uint16_t a, uint16_t b) { return a ^ b; }
static inline uint16_t lean_uint16_shift_left(uint16_t a, uint16_t b) { return a << (b % 16); }
static inline uint16_t lean_uint16_shift_right(uint16_t a, uint16_t b) { return a >> (b % 16); }
static inline uint16_t lean_uint16_complement(uint16_t a) { return ~a; }
static inline uint16_t lean_uint16_neg(uint16_t a) { return -a; }
static inline uint16_t lean_uint16_log2(uint16_t a) {
    uint16_t res = 0;
    while (a >= 2) {
        res++;
        a /= 2;
    }
    return res;
}
static inline uint8_t lean_uint16_dec_eq(uint16_t a1, uint16_t a2) { return a1 == a2; }
static inline uint8_t lean_uint16_dec_lt(uint16_t a1, uint16_t a2) { return a1 < a2; }
static inline uint8_t lean_uint16_dec_le(uint16_t a1, uint16_t a2) { return a1 <= a2; }


static inline uint8_t lean_uint16_to_uint8(uint16_t a) { return ((uint8_t)a); }
static inline uint32_t lean_uint16_to_uint32(uint16_t a) { return ((uint32_t)a); }
static inline uint64_t lean_uint16_to_uint64(uint16_t a) { return ((uint64_t)a); }
static inline size_t lean_uint16_to_usize(uint16_t a) { return ((size_t)a); }



__attribute__((visibility("default"))) uint32_t lean_uint32_of_big_nat(b_lean_obj_arg a);
static inline uint32_t lean_uint32_of_nat(b_lean_obj_arg a) { return lean_is_scalar(a) ? (uint32_t)(lean_unbox(a)) : lean_uint32_of_big_nat(a); }

static inline uint32_t lean_uint32_of_nat_mk(lean_obj_arg a) { uint32_t r = lean_uint32_of_nat(a); lean_dec(a); return r; }
static inline lean_obj_res lean_uint32_to_nat(uint32_t a) { return lean_usize_to_nat((size_t)a); }
static inline uint32_t lean_uint32_add(uint32_t a1, uint32_t a2) { return a1+a2; }
static inline uint32_t lean_uint32_sub(uint32_t a1, uint32_t a2) { return a1-a2; }
static inline uint32_t lean_uint32_mul(uint32_t a1, uint32_t a2) { return a1*a2; }
static inline uint32_t lean_uint32_div(uint32_t a1, uint32_t a2) { return a2 == 0 ? 0 : a1/a2; }
static inline uint32_t lean_uint32_mod(uint32_t a1, uint32_t a2) { return a2 == 0 ? a1 : a1%a2; }
static inline uint32_t lean_uint32_land(uint32_t a, uint32_t b) { return a & b; }
static inline uint32_t lean_uint32_lor(uint32_t a, uint32_t b) { return a | b; }
static inline uint32_t lean_uint32_xor(uint32_t a, uint32_t b) { return a ^ b; }
static inline uint32_t lean_uint32_shift_left(uint32_t a, uint32_t b) { return a << (b % 32); }
static inline uint32_t lean_uint32_shift_right(uint32_t a, uint32_t b) { return a >> (b % 32); }
static inline uint32_t lean_uint32_complement(uint32_t a) { return ~a; }
static inline uint32_t lean_uint32_neg(uint32_t a) { return -a; }
static inline uint32_t lean_uint32_log2(uint32_t a) {
    uint32_t res = 0;
    while (a >= 2) {
        res++;
        a /= 2;
    }
    return res;
}
static inline uint8_t lean_uint32_dec_eq(uint32_t a1, uint32_t a2) { return a1 == a2; }
static inline uint8_t lean_uint32_dec_lt(uint32_t a1, uint32_t a2) { return a1 < a2; }
static inline uint8_t lean_uint32_dec_le(uint32_t a1, uint32_t a2) { return a1 <= a2; }


static inline uint8_t lean_uint32_to_uint8(uint32_t a) { return ((uint8_t)a); }
static inline uint16_t lean_uint32_to_uint16(uint32_t a) { return ((uint16_t)a); }
static inline uint64_t lean_uint32_to_uint64(uint32_t a) { return ((uint64_t)a); }
static inline size_t lean_uint32_to_usize(uint32_t a) { return ((size_t)a); }




__attribute__((visibility("default"))) uint64_t lean_uint64_of_big_nat(b_lean_obj_arg a);
static inline uint64_t lean_uint64_of_nat(b_lean_obj_arg a) { return lean_is_scalar(a) ? (uint64_t)(lean_unbox(a)) : lean_uint64_of_big_nat(a); }

static inline uint64_t lean_uint64_of_nat_mk(lean_obj_arg a) { uint64_t r = lean_uint64_of_nat(a); lean_dec(a); return r; }
static inline uint64_t lean_uint64_add(uint64_t a1, uint64_t a2) { return a1+a2; }
static inline uint64_t lean_uint64_sub(uint64_t a1, uint64_t a2) { return a1-a2; }
static inline uint64_t lean_uint64_mul(uint64_t a1, uint64_t a2) { return a1*a2; }
static inline uint64_t lean_uint64_div(uint64_t a1, uint64_t a2) { return a2 == 0 ? 0 : a1/a2; }
static inline uint64_t lean_uint64_mod(uint64_t a1, uint64_t a2) { return a2 == 0 ? a1 : a1%a2; }
static inline uint64_t lean_uint64_land(uint64_t a, uint64_t b) { return a & b; }
static inline uint64_t lean_uint64_lor(uint64_t a, uint64_t b) { return a | b; }
static inline uint64_t lean_uint64_xor(uint64_t a, uint64_t b) { return a ^ b; }
static inline uint64_t lean_uint64_shift_left(uint64_t a, uint64_t b) { return a << (b % 64); }
static inline uint64_t lean_uint64_shift_right(uint64_t a, uint64_t b) { return a >> (b % 64); }
static inline uint64_t lean_uint64_complement(uint64_t a) { return ~a; }
static inline uint64_t lean_uint64_neg(uint64_t a) { return -a; }
static inline uint64_t lean_uint64_log2(uint64_t a) {
    uint64_t res = 0;
    while (a >= 2) {
        res++;
        a /= 2;
    }
    return res;
}
static inline uint8_t lean_uint64_dec_eq(uint64_t a1, uint64_t a2) { return a1 == a2; }
static inline uint8_t lean_uint64_dec_lt(uint64_t a1, uint64_t a2) { return a1 < a2; }
static inline uint8_t lean_uint64_dec_le(uint64_t a1, uint64_t a2) { return a1 <= a2; }
__attribute__((visibility("default"))) uint64_t lean_uint64_mix_hash(uint64_t a1, uint64_t a2);



static inline uint8_t lean_uint64_to_uint8(uint64_t a) { return ((uint8_t)a); }
static inline uint16_t lean_uint64_to_uint16(uint64_t a) { return ((uint16_t)a); }
static inline uint32_t lean_uint64_to_uint32(uint64_t a) { return ((uint32_t)a); }
static inline size_t lean_uint64_to_usize(uint64_t a) { return ((size_t)a); }



__attribute__((visibility("default"))) size_t lean_usize_of_big_nat(b_lean_obj_arg a);
static inline size_t lean_usize_of_nat(b_lean_obj_arg a) { return lean_is_scalar(a) ? lean_unbox(a) : lean_usize_of_big_nat(a); }

static inline size_t lean_usize_of_nat_mk(lean_obj_arg a) { size_t r = lean_usize_of_nat(a); lean_dec(a); return r; }
static inline size_t lean_usize_add(size_t a1, size_t a2) { return a1+a2; }
static inline size_t lean_usize_sub(size_t a1, size_t a2) { return a1-a2; }
static inline size_t lean_usize_mul(size_t a1, size_t a2) { return a1*a2; }
static inline size_t lean_usize_div(size_t a1, size_t a2) { return a2 == 0 ? 0 : a1/a2; }
static inline size_t lean_usize_mod(size_t a1, size_t a2) { return a2 == 0 ? a1 : a1%a2; }
static inline size_t lean_usize_land(size_t a, size_t b) { return a & b; }
static inline size_t lean_usize_lor(size_t a, size_t b) { return a | b; }
static inline size_t lean_usize_xor(size_t a, size_t b) { return a ^ b; }
static inline size_t lean_usize_shift_left(size_t a, size_t b) { return a << (b % (sizeof(size_t) * 8)); }
static inline size_t lean_usize_shift_right(size_t a, size_t b) { return a >> (b % (sizeof(size_t) * 8)); }
static inline size_t lean_usize_complement(size_t a) { return ~a; }
static inline size_t lean_usize_neg(size_t a) { return -a; }
static inline size_t lean_usize_log2(size_t a) {
    size_t res = 0;
    while (a >= 2) {
        res++;
        a /= 2;
    }
    return res;
}
static inline uint8_t lean_usize_dec_eq(size_t a1, size_t a2) { return a1 == a2; }
static inline uint8_t lean_usize_dec_lt(size_t a1, size_t a2) { return a1 < a2; }
static inline uint8_t lean_usize_dec_le(size_t a1, size_t a2) { return a1 <= a2; }




static inline uint8_t lean_usize_to_uint8(size_t a) { return ((uint8_t)a); }
static inline uint16_t lean_usize_to_uint16(size_t a) { return ((uint16_t)a); }
static inline uint32_t lean_usize_to_uint32(size_t a) { return ((uint32_t)a); }
static inline uint64_t lean_usize_to_uint64(size_t a) { return ((uint64_t)a); }
# 1886 "/home/sally/lean4/build/stage1/include/lean/lean.h"
__attribute__((visibility("default"))) int8_t lean_int8_of_big_int(b_lean_obj_arg a);
static inline uint8_t lean_int8_of_int(b_lean_obj_arg a) {
    int8_t res;

    if (lean_is_scalar(a)) {
        res = (int8_t)lean_scalar_to_int64(a);
    } else {
        res = lean_int8_of_big_int(a);
    }

    return (uint8_t)res;
}

static inline uint8_t lean_int8_of_nat(b_lean_obj_arg a) {
    int8_t res;

    if (lean_is_scalar(a)) {
        res = (int8_t)lean_unbox(a);
    } else {
        res = lean_int8_of_big_int(a);
    }

    return (uint8_t)res;
}

static inline lean_obj_res lean_int8_to_int(uint8_t a) {
    int8_t arg = (int8_t)a;
    return lean_int64_to_int((int64_t)arg);
}

static inline uint8_t lean_int8_neg(uint8_t a) {
    int8_t arg = (int8_t)a;

    return (uint8_t)(-arg);
}

static inline uint8_t lean_int8_add(uint8_t a1, uint8_t a2) {
    int8_t lhs = (int8_t)a1;
    int8_t rhs = (int8_t)a2;

    return (uint8_t)(lhs + rhs);
}

static inline uint8_t lean_int8_sub(uint8_t a1, uint8_t a2) {
    int8_t lhs = (int8_t)a1;
    int8_t rhs = (int8_t)a2;

    return (uint8_t)(lhs - rhs);
}

static inline uint8_t lean_int8_mul(uint8_t a1, uint8_t a2) {
    int8_t lhs = (int8_t)a1;
    int8_t rhs = (int8_t)a2;

    return (uint8_t)(lhs * rhs);
}

static inline uint8_t lean_int8_div(uint8_t a1, uint8_t a2) {
    int8_t lhs = (int8_t)a1;
    int8_t rhs = (int8_t)a2;

    return (uint8_t)(rhs == 0 ? 0 : lhs / rhs);
}

static inline uint8_t lean_int8_mod(uint8_t a1, uint8_t a2) {
    int8_t lhs = (int8_t)a1;
    int8_t rhs = (int8_t)a2;

    return (uint8_t)(rhs == 0 ? lhs : lhs % rhs);
}

static inline uint8_t lean_int8_land(uint8_t a1, uint8_t a2) {
    int8_t lhs = (int8_t)a1;
    int8_t rhs = (int8_t)a2;

    return (uint8_t)(lhs & rhs);
}

static inline uint8_t lean_int8_lor(uint8_t a1, uint8_t a2) {
    int8_t lhs = (int8_t)a1;
    int8_t rhs = (int8_t)a2;

    return (uint8_t)(lhs | rhs);
}

static inline uint8_t lean_int8_xor(uint8_t a1, uint8_t a2) {
    int8_t lhs = (int8_t)a1;
    int8_t rhs = (int8_t)a2;

    return (uint8_t)(lhs ^ rhs);
}

static inline uint8_t lean_int8_shift_right(uint8_t a1, uint8_t a2) {
    int8_t lhs = (int8_t)a1;
    int8_t rhs = (((int8_t)a2 % 8) + 8) % 8;

    return (uint8_t)(lhs >> rhs);
}

static inline uint8_t lean_int8_shift_left(uint8_t a1, uint8_t a2) {
    int8_t lhs = (int8_t)a1;
    int8_t rhs = (((int8_t)a2 % 8) + 8) % 8;

    return (uint8_t)(lhs << rhs);
}

static inline uint8_t lean_int8_complement(uint8_t a) {
    int8_t arg = (int8_t)a;

    return (uint8_t)(~arg);
}

static inline uint8_t lean_int8_abs(uint8_t a) {
    int8_t arg = (int8_t)a;



    return (uint8_t)(arg < 0 ? -arg : arg);
}

static inline uint8_t lean_int8_dec_eq(uint8_t a1, uint8_t a2) {
    int8_t lhs = (int8_t)a1;
    int8_t rhs = (int8_t)a2;

    return lhs == rhs;
}

static inline uint8_t lean_int8_dec_lt(uint8_t a1, uint8_t a2) {
    int8_t lhs = (int8_t)a1;
    int8_t rhs = (int8_t)a2;

    return lhs < rhs;
}

static inline uint8_t lean_int8_dec_le(uint8_t a1, uint8_t a2) {
    int8_t lhs = (int8_t)a1;
    int8_t rhs = (int8_t)a2;

    return lhs <= rhs;
}


static inline uint16_t lean_int8_to_int16(uint8_t a) { return (uint16_t)(int16_t)(int8_t)a; }
static inline uint32_t lean_int8_to_int32(uint8_t a) { return (uint32_t)(int32_t)(int8_t)a; }
static inline uint64_t lean_int8_to_int64(uint8_t a) { return (uint64_t)(int64_t)(int8_t)a; }
static inline size_t lean_int8_to_isize(uint8_t a) { return (size_t)(ptrdiff_t)(int8_t)a; }



__attribute__((visibility("default"))) int16_t lean_int16_of_big_int(b_lean_obj_arg a);
static inline uint16_t lean_int16_of_int(b_lean_obj_arg a) {
    int16_t res;

    if (lean_is_scalar(a)) {
        res = (int16_t)lean_scalar_to_int64(a);
    } else {
        res = lean_int16_of_big_int(a);
    }

    return (uint16_t)res;
}

static inline uint16_t lean_int16_of_nat(b_lean_obj_arg a) {
    int16_t res;

    if (lean_is_scalar(a)) {
        res = (int16_t)lean_unbox(a);
    } else {
        res = lean_int16_of_big_int(a);
    }

    return (uint16_t)res;
}

static inline lean_obj_res lean_int16_to_int(uint16_t a) {
    int16_t arg = (int16_t)a;
    return lean_int64_to_int((int64_t)arg);
}

static inline uint16_t lean_int16_neg(uint16_t a) {
    int16_t arg = (int16_t)a;

    return (uint16_t)(-arg);
}

static inline uint16_t lean_int16_add(uint16_t a1, uint16_t a2) {
    int16_t lhs = (int16_t)a1;
    int16_t rhs = (int16_t)a2;

    return (uint16_t)(lhs + rhs);
}

static inline uint16_t lean_int16_sub(uint16_t a1, uint16_t a2) {
    int16_t lhs = (int16_t)a1;
    int16_t rhs = (int16_t)a2;

    return (uint16_t)(lhs - rhs);
}

static inline uint16_t lean_int16_mul(uint16_t a1, uint16_t a2) {
    int16_t lhs = (int16_t)a1;
    int16_t rhs = (int16_t)a2;

    return (uint16_t)(lhs * rhs);
}

static inline uint16_t lean_int16_div(uint16_t a1, uint16_t a2) {
    int16_t lhs = (int16_t)a1;
    int16_t rhs = (int16_t)a2;

    return (uint16_t)(rhs == 0 ? 0 : lhs / rhs);
}

static inline uint16_t lean_int16_mod(uint16_t a1, uint16_t a2) {
    int16_t lhs = (int16_t)a1;
    int16_t rhs = (int16_t)a2;

    return (uint16_t)(rhs == 0 ? lhs : lhs % rhs);
}

static inline uint16_t lean_int16_land(uint16_t a1, uint16_t a2) {
    int16_t lhs = (int16_t)a1;
    int16_t rhs = (int16_t)a2;

    return (uint16_t)(lhs & rhs);
}

static inline uint16_t lean_int16_lor(uint16_t a1, uint16_t a2) {
    int16_t lhs = (int16_t)a1;
    int16_t rhs = (int16_t)a2;

    return (uint16_t)(lhs | rhs);
}

static inline uint16_t lean_int16_xor(uint16_t a1, uint16_t a2) {
    int16_t lhs = (int16_t)a1;
    int16_t rhs = (int16_t)a2;

    return (uint16_t)(lhs ^ rhs);
}

static inline uint16_t lean_int16_shift_right(uint16_t a1, uint16_t a2) {
    int16_t lhs = (int16_t)a1;
    int16_t rhs = (((int16_t)a2 % 16) + 16) % 16;

    return (uint16_t)(lhs >> rhs);
}

static inline uint16_t lean_int16_shift_left(uint16_t a1, uint16_t a2) {
    int16_t lhs = (int16_t)a1;
    int16_t rhs = (((int16_t)a2 % 16) + 16) % 16;

    return (uint16_t)(lhs << rhs);
}

static inline uint16_t lean_int16_complement(uint16_t a) {
    int16_t arg = (int16_t)a;

    return (uint16_t)(~arg);
}

static inline uint16_t lean_int16_abs(uint16_t a) {
    int16_t arg = (int16_t)a;



    return (uint16_t)(arg < 0 ? -arg : arg);
}

static inline uint8_t lean_int16_dec_eq(uint16_t a1, uint16_t a2) {
    int16_t lhs = (int16_t)a1;
    int16_t rhs = (int16_t)a2;

    return lhs == rhs;
}

static inline uint8_t lean_int16_dec_lt(uint16_t a1, uint16_t a2) {
    int16_t lhs = (int16_t)a1;
    int16_t rhs = (int16_t)a2;

    return lhs < rhs;
}

static inline uint8_t lean_int16_dec_le(uint16_t a1, uint16_t a2) {
    int16_t lhs = (int16_t)a1;
    int16_t rhs = (int16_t)a2;

    return lhs <= rhs;
}


static inline uint8_t lean_int16_to_int8(uint16_t a) { return (uint8_t)(int8_t)(int16_t)a; }
static inline uint32_t lean_int16_to_int32(uint16_t a) { return (uint32_t)(int32_t)(int16_t)a; }
static inline uint64_t lean_int16_to_int64(uint16_t a) { return (uint64_t)(int64_t)(int16_t)a; }
static inline size_t lean_int16_to_isize(uint16_t a) { return (size_t)(ptrdiff_t)(int16_t)a; }


__attribute__((visibility("default"))) int32_t lean_int32_of_big_int(b_lean_obj_arg a);
static inline uint32_t lean_int32_of_int(b_lean_obj_arg a) {
    int32_t res;

    if (lean_is_scalar(a)) {
        res = (int32_t)lean_scalar_to_int64(a);
    } else {
        res = lean_int32_of_big_int(a);
    }

    return (uint32_t)res;
}

static inline uint32_t lean_int32_of_nat(b_lean_obj_arg a) {
    int32_t res;

    if (lean_is_scalar(a)) {
        res = (int32_t)lean_unbox(a);
    } else {
        res = lean_int32_of_big_int(a);
    }

    return (uint32_t)res;
}

static inline lean_obj_res lean_int32_to_int(uint32_t a) {
    int32_t arg = (int32_t)a;
    return lean_int64_to_int((int64_t)arg);
}

static inline uint32_t lean_int32_neg(uint32_t a) {
    int32_t arg = (int32_t)a;

    return (uint32_t)(-arg);
}

static inline uint32_t lean_int32_add(uint32_t a1, uint32_t a2) {
    int32_t lhs = (int32_t)a1;
    int32_t rhs = (int32_t)a2;

    return (uint32_t)(lhs + rhs);
}

static inline uint32_t lean_int32_sub(uint32_t a1, uint32_t a2) {
    int32_t lhs = (int32_t)a1;
    int32_t rhs = (int32_t)a2;

    return (uint32_t)(lhs - rhs);
}

static inline uint32_t lean_int32_mul(uint32_t a1, uint32_t a2) {
    int32_t lhs = (int32_t)a1;
    int32_t rhs = (int32_t)a2;

    return (uint32_t)(lhs * rhs);
}

static inline uint32_t lean_int32_div(uint32_t a1, uint32_t a2) {
    int32_t lhs = (int32_t)a1;
    int32_t rhs = (int32_t)a2;

    return (uint32_t)(rhs == 0 ? 0 : lhs / rhs);
}

static inline uint32_t lean_int32_mod(uint32_t a1, uint32_t a2) {
    int32_t lhs = (int32_t)a1;
    int32_t rhs = (int32_t)a2;

    return (uint32_t)(rhs == 0 ? lhs : lhs % rhs);
}

static inline uint32_t lean_int32_land(uint32_t a1, uint32_t a2) {
    int32_t lhs = (int32_t)a1;
    int32_t rhs = (int32_t)a2;

    return (uint32_t)(lhs & rhs);
}

static inline uint32_t lean_int32_lor(uint32_t a1, uint32_t a2) {
    int32_t lhs = (int32_t)a1;
    int32_t rhs = (int32_t)a2;

    return (uint32_t)(lhs | rhs);
}

static inline uint32_t lean_int32_xor(uint32_t a1, uint32_t a2) {
    int32_t lhs = (int32_t)a1;
    int32_t rhs = (int32_t)a2;

    return (uint32_t)(lhs ^ rhs);
}

static inline uint32_t lean_int32_shift_right(uint32_t a1, uint32_t a2) {
    int32_t lhs = (int32_t)a1;
    int32_t rhs = (((int32_t)a2 % 32) + 32) % 32;

    return (uint32_t)(lhs >> rhs);
}

static inline uint32_t lean_int32_shift_left(uint32_t a1, uint32_t a2) {
    int32_t lhs = (int32_t)a1;
    int32_t rhs = (((int32_t)a2 % 32) + 32) % 32;

    return (uint32_t)(lhs << rhs);
}

static inline uint32_t lean_int32_complement(uint32_t a) {
    int32_t arg = (int32_t)a;

    return (uint32_t)(~arg);
}

static inline uint32_t lean_int32_abs(uint32_t a) {
    int32_t arg = (int32_t)a;



    return (uint32_t)(arg < 0 ? -arg : arg);
}

static inline uint8_t lean_int32_dec_eq(uint32_t a1, uint32_t a2) {
    int32_t lhs = (int32_t)a1;
    int32_t rhs = (int32_t)a2;

    return lhs == rhs;
}

static inline uint8_t lean_int32_dec_lt(uint32_t a1, uint32_t a2) {
    int32_t lhs = (int32_t)a1;
    int32_t rhs = (int32_t)a2;

    return lhs < rhs;
}

static inline uint8_t lean_int32_dec_le(uint32_t a1, uint32_t a2) {
    int32_t lhs = (int32_t)a1;
    int32_t rhs = (int32_t)a2;

    return lhs <= rhs;
}


static inline uint8_t lean_int32_to_int8(uint32_t a) { return (uint8_t)(int8_t)(int32_t)a; }
static inline uint16_t lean_int32_to_int16(uint32_t a) { return (uint16_t)(int16_t)(int32_t)a; }
static inline uint64_t lean_int32_to_int64(uint32_t a) { return (uint64_t)(int64_t)(int32_t)a; }
static inline size_t lean_int32_to_isize(uint32_t a) { return (size_t)(ptrdiff_t)(int32_t)a; }


__attribute__((visibility("default"))) int64_t lean_int64_of_big_int(b_lean_obj_arg a);
static inline uint64_t lean_int64_of_int(b_lean_obj_arg a) {
    int64_t res;

    if (lean_is_scalar(a)) {
        res = lean_scalar_to_int64(a);
    } else {
        res = lean_int64_of_big_int(a);
    }

    return (uint64_t)res;
}

static inline uint64_t lean_int64_of_nat(b_lean_obj_arg a) {
    int64_t res;

    if (lean_is_scalar(a)) {
        res = (int64_t)lean_unbox(a);
    } else {
        res = lean_int64_of_big_int(a);
    }

    return (uint64_t)res;
}

static inline lean_obj_res lean_int64_to_int_sint(uint64_t a) {
    int64_t arg = (int64_t)a;
    return lean_int64_to_int(arg);
}

static inline uint64_t lean_int64_neg(uint64_t a) {
    int64_t arg = (int64_t)a;

    return (uint64_t)(-arg);
}

static inline uint64_t lean_int64_add(uint64_t a1, uint64_t a2) {
    int64_t lhs = (int64_t)a1;
    int64_t rhs = (int64_t)a2;

    return (uint64_t)(lhs + rhs);
}

static inline uint64_t lean_int64_sub(uint64_t a1, uint64_t a2) {
    int64_t lhs = (int64_t)a1;
    int64_t rhs = (int64_t)a2;

    return (uint64_t)(lhs - rhs);
}

static inline uint64_t lean_int64_mul(uint64_t a1, uint64_t a2) {
    int64_t lhs = (int64_t)a1;
    int64_t rhs = (int64_t)a2;

    return (uint64_t)(lhs * rhs);
}

static inline uint64_t lean_int64_div(uint64_t a1, uint64_t a2) {
    int64_t lhs = (int64_t)a1;
    int64_t rhs = (int64_t)a2;

    return (uint64_t)(rhs == 0 ? 0 : lhs / rhs);
}

static inline uint64_t lean_int64_mod(uint64_t a1, uint64_t a2) {
    int64_t lhs = (int64_t)a1;
    int64_t rhs = (int64_t)a2;

    return (uint64_t)(rhs == 0 ? lhs : lhs % rhs);
}

static inline uint64_t lean_int64_land(uint64_t a1, uint64_t a2) {
    int64_t lhs = (int64_t)a1;
    int64_t rhs = (int64_t)a2;

    return (uint64_t)(lhs & rhs);
}

static inline uint64_t lean_int64_lor(uint64_t a1, uint64_t a2) {
    int64_t lhs = (int64_t)a1;
    int64_t rhs = (int64_t)a2;

    return (uint64_t)(lhs | rhs);
}

static inline uint64_t lean_int64_xor(uint64_t a1, uint64_t a2) {
    int64_t lhs = (int64_t)a1;
    int64_t rhs = (int64_t)a2;

    return (uint64_t)(lhs ^ rhs);
}

static inline uint64_t lean_int64_shift_right(uint64_t a1, uint64_t a2) {
    int64_t lhs = (int64_t)a1;
    int64_t rhs = (((int64_t)a2 % 64) + 64) % 64;

    return (uint64_t)(lhs >> rhs);
}

static inline uint64_t lean_int64_shift_left(uint64_t a1, uint64_t a2) {
    int64_t lhs = (int64_t)a1;
    int64_t rhs = (((int64_t)a2 % 64) + 64) % 64;

    return (uint64_t)(lhs << rhs);
}

static inline uint64_t lean_int64_complement(uint64_t a) {
    int64_t arg = (int64_t)a;

    return (uint64_t)(~arg);
}

static inline uint64_t lean_int64_abs(uint64_t a) {
    int64_t arg = (int64_t)a;



    return (uint64_t)(arg < 0 ? -arg : arg);
}

static inline uint8_t lean_int64_dec_eq(uint64_t a1, uint64_t a2) {
    int64_t lhs = (int64_t)a1;
    int64_t rhs = (int64_t)a2;

    return lhs == rhs;
}

static inline uint8_t lean_int64_dec_lt(uint64_t a1, uint64_t a2) {
    int64_t lhs = (int64_t)a1;
    int64_t rhs = (int64_t)a2;

    return lhs < rhs;
}

static inline uint8_t lean_int64_dec_le(uint64_t a1, uint64_t a2) {
    int64_t lhs = (int64_t)a1;
    int64_t rhs = (int64_t)a2;

    return lhs <= rhs;
}


static inline uint8_t lean_int64_to_int8(uint64_t a) { return (uint8_t)(int8_t)(int64_t)a; }
static inline uint16_t lean_int64_to_int16(uint64_t a) { return (uint16_t)(int16_t)(int64_t)a; }
static inline uint32_t lean_int64_to_int32(uint64_t a) { return (uint32_t)(int32_t)(int64_t)a; }
static inline size_t lean_int64_to_isize(uint64_t a) { return (size_t)(ptrdiff_t)(int64_t)a; }


__attribute__((visibility("default"))) ptrdiff_t lean_isize_of_big_int(b_lean_obj_arg a);
static inline size_t lean_isize_of_int(b_lean_obj_arg a) {
    ptrdiff_t res;

    if (lean_is_scalar(a)) {
        res = (ptrdiff_t)lean_scalar_to_int64(a);
    } else {
        res = lean_isize_of_big_int(a);
    }

    return (size_t)res;
}

static inline size_t lean_isize_of_nat(b_lean_obj_arg a) {
    ptrdiff_t res;

    if (lean_is_scalar(a)) {
        res = (ptrdiff_t)lean_unbox(a);
    } else {
        res = lean_isize_of_big_int(a);
    }

    return (size_t)res;
}

static inline lean_obj_res lean_isize_to_int(size_t a) {
    ptrdiff_t arg = (ptrdiff_t)a;
    return lean_int64_to_int((int64_t)arg);
}

static inline size_t lean_isize_neg(size_t a) {
    ptrdiff_t arg = (ptrdiff_t)a;

    return (size_t)(-arg);
}

static inline size_t lean_isize_add(size_t a1, size_t a2) {
    ptrdiff_t lhs = (ptrdiff_t)a1;
    ptrdiff_t rhs = (ptrdiff_t)a2;

    return (size_t)(lhs + rhs);
}

static inline size_t lean_isize_sub(size_t a1, size_t a2) {
    ptrdiff_t lhs = (ptrdiff_t)a1;
    ptrdiff_t rhs = (ptrdiff_t)a2;

    return (size_t)(lhs - rhs);
}

static inline size_t lean_isize_mul(size_t a1, size_t a2) {
    ptrdiff_t lhs = (ptrdiff_t)a1;
    ptrdiff_t rhs = (ptrdiff_t)a2;

    return (size_t)(lhs * rhs);
}

static inline size_t lean_isize_div(size_t a1, size_t a2) {
    ptrdiff_t lhs = (ptrdiff_t)a1;
    ptrdiff_t rhs = (ptrdiff_t)a2;

    return (size_t)(rhs == 0 ? 0 : lhs / rhs);
}

static inline size_t lean_isize_mod(size_t a1, size_t a2) {
    ptrdiff_t lhs = (ptrdiff_t)a1;
    ptrdiff_t rhs = (ptrdiff_t)a2;

    return (size_t)(rhs == 0 ? lhs : lhs % rhs);
}

static inline size_t lean_isize_land(size_t a1, size_t a2) {
    ptrdiff_t lhs = (ptrdiff_t)a1;
    ptrdiff_t rhs = (ptrdiff_t)a2;

    return (size_t)(lhs & rhs);
}

static inline size_t lean_isize_lor(size_t a1, size_t a2) {
    ptrdiff_t lhs = (ptrdiff_t)a1;
    ptrdiff_t rhs = (ptrdiff_t)a2;

    return (size_t)(lhs | rhs);
}

static inline size_t lean_isize_xor(size_t a1, size_t a2) {
    ptrdiff_t lhs = (ptrdiff_t)a1;
    ptrdiff_t rhs = (ptrdiff_t)a2;

    return (size_t)(lhs ^ rhs);
}

static inline size_t lean_isize_shift_right(size_t a1, size_t a2) {
    ptrdiff_t lhs = (ptrdiff_t)a1;
    ptrdiff_t size = sizeof(ptrdiff_t) * 8;
    ptrdiff_t rhs = (((ptrdiff_t)a2 % size) + size) % size;

    return (size_t)(lhs >> rhs);
}

static inline size_t lean_isize_shift_left(size_t a1, size_t a2) {
    ptrdiff_t lhs = (ptrdiff_t)a1;
    ptrdiff_t size = sizeof(ptrdiff_t) * 8;
    ptrdiff_t rhs = (((ptrdiff_t)a2 % size) + size) % size;

    return (size_t)(lhs << rhs);
}

static inline size_t lean_isize_complement(size_t a) {
    ptrdiff_t arg = (ptrdiff_t)a;

    return (size_t)(~arg);
}

static inline size_t lean_isize_abs(size_t a) {
    ptrdiff_t arg = (ptrdiff_t)a;



    return (size_t)(arg < 0 ? -arg : arg);
}

static inline uint8_t lean_isize_dec_eq(size_t a1, size_t a2) {
    ptrdiff_t lhs = (ptrdiff_t)a1;
    ptrdiff_t rhs = (ptrdiff_t)a2;

    return lhs == rhs;
}

static inline uint8_t lean_isize_dec_lt(size_t a1, size_t a2) {
    ptrdiff_t lhs = (ptrdiff_t)a1;
    ptrdiff_t rhs = (ptrdiff_t)a2;

    return lhs < rhs;
}

static inline uint8_t lean_isize_dec_le(size_t a1, size_t a2) {
    ptrdiff_t lhs = (ptrdiff_t)a1;
    ptrdiff_t rhs = (ptrdiff_t)a2;

    return lhs <= rhs;
}


static inline uint8_t lean_isize_to_int8(size_t a) { return (uint8_t)(int8_t)(ptrdiff_t)a; }
static inline uint16_t lean_isize_to_int16(size_t a) { return (uint16_t)(int16_t)(ptrdiff_t)a; }
static inline uint32_t lean_isize_to_int32(size_t a) { return (uint32_t)(int32_t)(ptrdiff_t)a; }
static inline uint64_t lean_isize_to_int64(size_t a) { return (uint64_t)(int64_t)(ptrdiff_t)a; }



__attribute__((visibility("default"))) lean_obj_res lean_float_to_string(double a);
__attribute__((visibility("default"))) double lean_float_scaleb(double a, b_lean_obj_arg b);
__attribute__((visibility("default"))) uint8_t lean_float_isnan(double a);
__attribute__((visibility("default"))) uint8_t lean_float_isfinite(double a);
__attribute__((visibility("default"))) uint8_t lean_float_isinf(double a);
__attribute__((visibility("default"))) lean_obj_res lean_float_frexp(double a);



__attribute__((visibility("default"))) lean_obj_res lean_float32_to_string(float a);
__attribute__((visibility("default"))) float lean_float32_scaleb(float a, b_lean_obj_arg b);
__attribute__((visibility("default"))) uint8_t lean_float32_isnan(float a);
__attribute__((visibility("default"))) uint8_t lean_float32_isfinite(float a);
__attribute__((visibility("default"))) uint8_t lean_float32_isinf(float a);
__attribute__((visibility("default"))) lean_obj_res lean_float32_frexp(float a);



static inline lean_obj_res lean_box_uint32(uint32_t v) {
    if (sizeof(void*) == 4) {

        lean_obj_res r = lean_alloc_ctor(0, 0, sizeof(uint32_t));
        lean_ctor_set_uint32(r, 0, v);
        return r;
    } else {

        return lean_box(v);
    }
}

static inline unsigned lean_unbox_uint32(b_lean_obj_arg o) {
    if (sizeof(void*) == 4) {

        return lean_ctor_get_uint32(o, 0);
    } else {

        return lean_unbox(o);
    }
}

static inline lean_obj_res lean_box_uint64(uint64_t v) {
    lean_obj_res r = lean_alloc_ctor(0, 0, sizeof(uint64_t));
    lean_ctor_set_uint64(r, 0, v);
    return r;
}

static inline uint64_t lean_unbox_uint64(b_lean_obj_arg o) {
    return lean_ctor_get_uint64(o, 0);
}

static inline lean_obj_res lean_box_usize(size_t v) {
    lean_obj_res r = lean_alloc_ctor(0, 0, sizeof(size_t));
    lean_ctor_set_usize(r, 0, v);
    return r;
}

static inline size_t lean_unbox_usize(b_lean_obj_arg o) {
    return lean_ctor_get_usize(o, 0);
}

static inline lean_obj_res lean_box_float(double v) {
    lean_obj_res r = lean_alloc_ctor(0, 0, sizeof(double));
    lean_ctor_set_float(r, 0, v);
    return r;
}

static inline double lean_unbox_float(b_lean_obj_arg o) {
    return lean_ctor_get_float(o, 0);
}

static inline lean_obj_res lean_box_float32(float v) {
    lean_obj_res r = lean_alloc_ctor(0, 0, sizeof(float));
    lean_ctor_set_float32(r, 0, v);
    return r;
}

static inline float lean_unbox_float32(b_lean_obj_arg o) {
    return lean_ctor_get_float32(o, 0);
}



__attribute__((visibility("default"))) lean_object * lean_dbg_trace(lean_obj_arg s, lean_obj_arg fn);
__attribute__((visibility("default"))) lean_object * lean_dbg_sleep(uint32_t ms, lean_obj_arg fn);
__attribute__((visibility("default"))) lean_object * lean_dbg_trace_if_shared(lean_obj_arg s, lean_obj_arg a);



__attribute__((visibility("default"))) lean_obj_res lean_decode_io_error(int errnum, b_lean_obj_arg fname);
__attribute__((visibility("default"))) lean_obj_res lean_decode_uv_error(int errnum, b_lean_obj_arg fname);

static inline lean_obj_res lean_io_mk_world() { return lean_box(0); }
static inline _Bool lean_io_result_is_ok(b_lean_obj_arg r) { return lean_ptr_tag(r) == 0; }
static inline _Bool lean_io_result_is_error(b_lean_obj_arg r) { return lean_ptr_tag(r) == 1; }
static inline b_lean_obj_res lean_io_result_get_value(b_lean_obj_arg r) { { if ((__builtin_expect((!(lean_io_result_is_ok(r))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 2724, "lean_io_result_is_ok(r)"); }; return lean_ctor_get(r, 0); }
static inline b_lean_obj_res lean_io_result_get_error(b_lean_obj_arg r) { { if ((__builtin_expect((!(lean_io_result_is_error(r))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 2725, "lean_io_result_is_error(r)"); }; return lean_ctor_get(r, 0); }
static inline lean_obj_res lean_io_result_take_value(lean_obj_arg r) {
    { if ((__builtin_expect((!(lean_io_result_is_ok(r))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 2727, "lean_io_result_is_ok(r)"); };
    lean_object* v = lean_ctor_get(r, 0);
    lean_inc(v);
    lean_dec(r);
    return v;
}
__attribute__((visibility("default"))) void lean_io_result_show_error(b_lean_obj_arg r);
__attribute__((visibility("default"))) void lean_io_mark_end_initialization(void);
static inline lean_obj_res lean_io_result_mk_ok(lean_obj_arg a) {
    lean_object * r = lean_alloc_ctor(0, 2, 0);
    lean_ctor_set(r, 0, a);
    lean_ctor_set(r, 1, lean_box(0));
    return r;
}
static inline lean_obj_res lean_io_result_mk_error(lean_obj_arg e) {
    lean_object * r = lean_alloc_ctor(1, 2, 0);
    lean_ctor_set(r, 0, e);
    lean_ctor_set(r, 1, lean_box(0));
    return r;
}

__attribute__((visibility("default"))) lean_obj_res lean_mk_io_error_already_exists(uint32_t, lean_obj_arg);
__attribute__((visibility("default"))) lean_obj_res lean_mk_io_error_already_exists_file(lean_obj_arg, uint32_t, lean_obj_arg);
__attribute__((visibility("default"))) lean_obj_res lean_mk_io_error_eof(lean_obj_arg);
__attribute__((visibility("default"))) lean_obj_res lean_mk_io_error_hardware_fault(uint32_t, lean_obj_arg);
__attribute__((visibility("default"))) lean_obj_res lean_mk_io_error_illegal_operation(uint32_t, lean_obj_arg);
__attribute__((visibility("default"))) lean_obj_res lean_mk_io_error_inappropriate_type(uint32_t, lean_obj_arg);
__attribute__((visibility("default"))) lean_obj_res lean_mk_io_error_inappropriate_type_file(lean_obj_arg, uint32_t, lean_obj_arg);
__attribute__((visibility("default"))) lean_obj_res lean_mk_io_error_interrupted(lean_obj_arg, uint32_t, lean_obj_arg);
__attribute__((visibility("default"))) lean_obj_res lean_mk_io_error_invalid_argument(uint32_t, lean_obj_arg);
__attribute__((visibility("default"))) lean_obj_res lean_mk_io_error_invalid_argument_file(lean_obj_arg, uint32_t, lean_obj_arg);
__attribute__((visibility("default"))) lean_obj_res lean_mk_io_error_no_file_or_directory(lean_obj_arg, uint32_t, lean_obj_arg);
__attribute__((visibility("default"))) lean_obj_res lean_mk_io_error_no_such_thing(uint32_t, lean_obj_arg);
__attribute__((visibility("default"))) lean_obj_res lean_mk_io_error_no_such_thing_file(lean_obj_arg, uint32_t, lean_obj_arg);
__attribute__((visibility("default"))) lean_obj_res lean_mk_io_error_other_error(uint32_t, lean_obj_arg);
__attribute__((visibility("default"))) lean_obj_res lean_mk_io_error_permission_denied(uint32_t, lean_obj_arg);
__attribute__((visibility("default"))) lean_obj_res lean_mk_io_error_permission_denied_file(lean_obj_arg, uint32_t, lean_obj_arg);
__attribute__((visibility("default"))) lean_obj_res lean_mk_io_error_protocol_error(uint32_t, lean_obj_arg);
__attribute__((visibility("default"))) lean_obj_res lean_mk_io_error_resource_busy(uint32_t, lean_obj_arg);
__attribute__((visibility("default"))) lean_obj_res lean_mk_io_error_resource_exhausted(uint32_t, lean_obj_arg);
__attribute__((visibility("default"))) lean_obj_res lean_mk_io_error_resource_exhausted_file(lean_obj_arg, uint32_t, lean_obj_arg);
__attribute__((visibility("default"))) lean_obj_res lean_mk_io_error_resource_vanished(uint32_t, lean_obj_arg);
__attribute__((visibility("default"))) lean_obj_res lean_mk_io_error_time_expired(uint32_t, lean_obj_arg);
__attribute__((visibility("default"))) lean_obj_res lean_mk_io_error_unsatisfied_constraints(uint32_t, lean_obj_arg);
__attribute__((visibility("default"))) lean_obj_res lean_mk_io_error_unsupported_operation(uint32_t, lean_obj_arg);
__attribute__((visibility("default"))) lean_obj_res lean_mk_io_user_error(lean_obj_arg str);



__attribute__((visibility("default"))) lean_obj_res lean_st_mk_ref(lean_obj_arg, lean_obj_arg);
__attribute__((visibility("default"))) lean_obj_res lean_st_ref_get(b_lean_obj_arg, lean_obj_arg);
__attribute__((visibility("default"))) lean_obj_res lean_st_ref_set(b_lean_obj_arg, lean_obj_arg, lean_obj_arg);
__attribute__((visibility("default"))) lean_obj_res lean_st_ref_reset(b_lean_obj_arg, lean_obj_arg);
__attribute__((visibility("default"))) lean_obj_res lean_st_ref_swap(b_lean_obj_arg, lean_obj_arg, lean_obj_arg);


static inline size_t lean_ptr_addr(b_lean_obj_arg a) { return (size_t)a; }


__attribute__((visibility("default"))) uint8_t lean_name_eq(b_lean_obj_arg n1, b_lean_obj_arg n2);

static inline uint64_t lean_name_hash_ptr(b_lean_obj_arg n) {
    { if ((__builtin_expect((!(!lean_is_scalar(n))), 0))) lean_notify_assert("/home/sally/lean4/build/stage1/include/lean/lean.h", 2789, "!lean_is_scalar(n)"); };
    return lean_ctor_get_uint64(n, sizeof(lean_object*)*2);
}

static inline uint64_t lean_name_hash(b_lean_obj_arg n) {
    if (lean_is_scalar(n))
        return 1723;
    else
        return lean_name_hash_ptr(n);
}
# 2808 "/home/sally/lean4/build/stage1/include/lean/lean.h"
static inline uint8_t lean_float_to_uint8(double a) {
    return 0. <= a ? (a < 256. ? (uint8_t)a : (0xff)) : 0;
}
static inline uint16_t lean_float_to_uint16(double a) {
    return 0. <= a ? (a < 65536. ? (uint16_t)a : (0xffff)) : 0;
}
static inline uint32_t lean_float_to_uint32(double a) {
    return 0. <= a ? (a < 4294967296. ? (uint32_t)a : (0xffffffffu)) : 0;
}
static inline uint64_t lean_float_to_uint64(double a) {
    return 0. <= a ? (a < 18446744073709551616. ? (uint64_t)a : (0xffffffffffffffffu)) : 0;
}
static inline size_t lean_float_to_usize(double a) {
    if (sizeof(size_t) == sizeof(uint64_t))
        return (size_t) lean_float_to_uint64(a);
    else
        return (size_t) lean_float_to_uint32(a);
}
static inline uint8_t lean_float_to_int8(double a) {
    int8_t result;
    if (lean_float_isnan(a)) result = 0;
    else result = -129. < a ? (a < 128. ? (int8_t)a : (0x7f)) : (-1-0x7f);
    return (uint8_t)result;
}
static inline uint16_t lean_float_to_int16(double a) {
    int16_t result;
    if (lean_float_isnan(a)) result = 0;
    else result = -32769. < a ? (a < 32768. ? (int16_t)a : (0x7fff)) : (-1-0x7fff);
    return (uint16_t)result;
}
static inline uint32_t lean_float_to_int32(double a) {
    int32_t result;
    if (lean_float_isnan(a)) result = 0;
    else result = -2147483649. < a ? (a < 2147483648. ? (int32_t)a : (0x7fffffff)) : (-1-0x7fffffff);
    return (uint32_t)result;
}
static inline uint64_t lean_float_to_int64(double a) {
    int64_t result;
    if (lean_float_isnan(a)) result = 0;
    else result = -9223372036854775809. < a ? (a < 9223372036854775808. ? (int64_t)a : (0x7fffffffffffffff)) : (-1-0x7fffffffffffffff);
    return (uint64_t)result;
}
static inline size_t lean_float_to_isize(double a) {
    if (sizeof(size_t) == sizeof(uint64_t)) {
        ptrdiff_t result;
        if (lean_float_isnan(a)) result = 0;
        else result = -9223372036854775809. < a ? (a < 9223372036854775808. ? (ptrdiff_t)a : (0x7fffffffffffffff)) : (-1-0x7fffffffffffffff);
        return (size_t)result;
    } else {
        ptrdiff_t result;
        if (lean_float_isnan(a)) result = 0;
        else result = -2147483649. < a ? (a < 2147483648. ? (ptrdiff_t)a : (0x7fffffff)) : (-1-0x7fffffff);
        return (size_t)result;
    }
}
__attribute__((visibility("default"))) double lean_float_of_bits(uint64_t u);
__attribute__((visibility("default"))) uint64_t lean_float_to_bits(double d);
static inline double lean_float_add(double a, double b) { return a + b; }
static inline double lean_float_sub(double a, double b) { return a - b; }
static inline double lean_float_mul(double a, double b) { return a * b; }
static inline double lean_float_div(double a, double b) { return a / b; }
static inline double lean_float_negate(double a) { return -a; }
static inline uint8_t lean_float_beq(double a, double b) { return a == b; }
static inline uint8_t lean_float_decLe(double a, double b) { return a <= b; }
static inline uint8_t lean_float_decLt(double a, double b) { return a < b; }
static inline double lean_uint8_to_float(uint8_t a) { return (double) a; }
static inline double lean_uint16_to_float(uint16_t a) { return (double) a; }
static inline double lean_uint32_to_float(uint32_t a) { return (double) a; }
static inline double lean_uint64_to_float(uint64_t a) { return (double) a; }
static inline double lean_usize_to_float(size_t a) { return (double) a; }
static inline double lean_int8_to_float(uint8_t a) { return (double)(int8_t) a; }
static inline double lean_int16_to_float(uint16_t a) { return (double)(int16_t) a; }
static inline double lean_int32_to_float(uint32_t a) { return (double)(int32_t) a; }
static inline double lean_int64_to_float(uint64_t a) { return (double)(int64_t) a; }
static inline double lean_isize_to_float(size_t a) { return (double)(ptrdiff_t) a; }


static inline uint8_t lean_float32_to_uint8(float a) {
    return 0. <= a ? (a < 256. ? (uint8_t)a : (0xff)) : 0;
}
static inline uint16_t lean_float32_to_uint16(float a) {
    return 0. <= a ? (a < 65536. ? (uint16_t)a : (0xffff)) : 0;
}
static inline uint32_t lean_float32_to_uint32(float a) {
    return 0. <= a ? (a < 4294967296. ? (uint32_t)a : (0xffffffffu)) : 0;
}
static inline uint64_t lean_float32_to_uint64(float a) {
    return 0. <= a ? (a < 18446744073709551616. ? (uint64_t)a : (0xffffffffffffffffu)) : 0;
}
static inline size_t lean_float32_to_usize(float a) {
    if (sizeof(size_t) == sizeof(uint64_t))
        return (size_t) lean_float32_to_uint64(a);
    else
        return (size_t) lean_float32_to_uint32(a);
}
static inline uint8_t lean_float32_to_int8(float a) {
    int8_t result;
    if (lean_float32_isnan(a)) result = 0;
    else result = -129. < a ? (a < 128. ? (int8_t)a : (0x7f)) : (-1-0x7f);
    return (uint8_t)result;
}
static inline uint16_t lean_float32_to_int16(float a) {
    int16_t result;
    if (lean_float32_isnan(a)) result = 0;
    else result = -32769. < a ? (a < 32768. ? (int16_t)a : (0x7fff)) : (-1-0x7fff);
    return (uint16_t)result;
}
static inline uint32_t lean_float32_to_int32(float a) {
    int32_t result;
    if (lean_float32_isnan(a)) result = 0;
    else result = -2147483649. < a ? (a < 2147483648. ? (int32_t)a : (0x7fffffff)) : (-1-0x7fffffff);
    return (uint32_t)result;
}
static inline uint64_t lean_float32_to_int64(float a) {
    int64_t result;
    if (lean_float32_isnan(a)) result = 0;
    else result = -9223372036854775809. < a ? (a < 9223372036854775808. ? (int64_t)a : (0x7fffffffffffffff)) : (-1-0x7fffffffffffffff);
    return (uint64_t)result;
}
static inline size_t lean_float32_to_isize(float a) {
    if (sizeof(size_t) == sizeof(uint64_t)) {
        ptrdiff_t result;
        if (lean_float32_isnan(a)) result = 0;
        else result = -9223372036854775809. < a ? (a < 9223372036854775808. ? (ptrdiff_t)a : (0x7fffffffffffffff)) : (-1-0x7fffffffffffffff);
        return (size_t)result;
    } else {
        ptrdiff_t result;
        if (lean_float32_isnan(a)) result = 0;
        else result = -2147483649. < a ? (a < 2147483648. ? (ptrdiff_t)a : (0x7fffffff)) : (-1-0x7fffffff);
        return (size_t)result;
    }
}
__attribute__((visibility("default"))) float lean_float32_of_bits(uint32_t u);
__attribute__((visibility("default"))) uint32_t lean_float32_to_bits(float d);
static inline float lean_float32_add(float a, float b) { return a + b; }
static inline float lean_float32_sub(float a, float b) { return a - b; }
static inline float lean_float32_mul(float a, float b) { return a * b; }
static inline float lean_float32_div(float a, float b) { return a / b; }
static inline float lean_float32_negate(float a) { return -a; }
static inline uint8_t lean_float32_beq(float a, float b) { return a == b; }
static inline uint8_t lean_float32_decLe(float a, float b) { return a <= b; }
static inline uint8_t lean_float32_decLt(float a, float b) { return a < b; }
static inline float lean_uint8_to_float32(uint8_t a) { return (float) a; }
static inline float lean_uint16_to_float32(uint16_t a) { return (float) a; }
static inline float lean_uint32_to_float32(uint32_t a) { return (float) a; }
static inline float lean_uint64_to_float32(uint64_t a) { return (float) a; }
static inline float lean_usize_to_float32(size_t a) { return (float) a; }
static inline float lean_int8_to_float32(uint8_t a) { return (float)(int8_t) a; }
static inline float lean_int16_to_float32(uint16_t a) { return (float)(int16_t) a; }
static inline float lean_int32_to_float32(uint32_t a) { return (float)(int32_t) a; }
static inline float lean_int64_to_float32(uint64_t a) { return (float)(int64_t) a; }
static inline float lean_isize_to_float32(size_t a) { return (float)(ptrdiff_t) a; }

static inline float lean_float_to_float32(double a) { return (float)a; }
static inline double lean_float32_to_float(float a) { return (double)a; }


static inline size_t lean_hashmap_mk_idx(lean_obj_arg sz, uint64_t hash) {
    return (size_t)(hash & (lean_unbox(sz) - 1));
}

static inline size_t lean_hashset_mk_idx(lean_obj_arg sz, uint64_t hash) {
    return (size_t)(hash & (lean_unbox(sz) - 1));
}

static inline uint64_t lean_expr_data(lean_obj_arg expr) {
    return lean_ctor_get_uint64(expr, lean_ctor_num_objs(expr)*sizeof(void*));
}



#pragma clang diagnostic ignored "-Wunused-parameter"




static inline lean_obj_res lean_get_max_ctor_fields(lean_obj_arg _unit) {
    return lean_box(256);
}

static inline lean_obj_res lean_get_max_ctor_scalars_size(lean_obj_arg _unit) {
    return lean_box(1024);
}

static inline lean_obj_res lean_get_usize_size(lean_obj_arg _unit) {
    return lean_box(sizeof(size_t));
}

static inline lean_obj_res lean_get_max_ctor_tag(lean_obj_arg _unit) {
    return lean_box(243);
}

static inline uint8_t lean_strict_or(uint8_t b1, uint8_t b2) {
    return b1 || b2;
}

static inline uint8_t lean_strict_and(uint8_t b1, uint8_t b2) {
    return b1 && b2;
}

static inline lean_obj_res lean_version_get_major(lean_obj_arg _unit) {
    return lean_box(4);
}

static inline lean_obj_res lean_version_get_minor(lean_obj_arg _unit) {
    return lean_box(19);
}

static inline lean_obj_res lean_version_get_patch(lean_obj_arg _unit) {
    return lean_box(0);
}

static inline uint8_t lean_version_get_is_release(lean_obj_arg _unit) {
    return 0;
}

static inline lean_obj_res lean_version_get_special_desc(lean_obj_arg _unit) {
    return lean_mk_string("");
}

static inline lean_obj_res lean_system_platform_target(lean_obj_arg _unit) {
    return lean_mk_string("wasm32-unknown-wasi");
}

static inline uint8_t lean_internal_is_stage0(lean_obj_arg _unit) {
    return 0;
}

static inline lean_obj_res lean_nat_pred(b_lean_obj_arg n) {
    return lean_nat_sub(n, lean_box(1));
}

static inline lean_obj_res lean_manual_get_root(lean_obj_arg _unit) {
    return lean_mk_string("");
}
# 5 "no_main_example.c" 2

#pragma clang diagnostic ignored "-Wunused-parameter"
#pragma clang diagnostic ignored "-Wunused-label"








__attribute__((visibility("default"))) lean_object* l_checkNumber___boxed(lean_object*);
uint8_t lean_uint8_dec_eq(uint8_t, uint8_t);
__attribute__((visibility("default"))) uint8_t l_checkNumber(uint8_t);
__attribute__((visibility("default"))) uint8_t l_checkNumber(uint8_t x_1)__attribute__((export_name("checkNumber"))) {
_start:
{
uint8_t x_2; uint8_t x_3;
x_2 = 42;
x_3 = lean_uint8_dec_eq(x_1, x_2);
return x_3;
}
}
__attribute__((visibility("default"))) lean_object* l_checkNumber___boxed(lean_object* x_1) {
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
lean_object* initialize_Init(uint8_t builtin, lean_object*);
static _Bool _G_initialized = 0;
__attribute__((visibility("default"))) lean_object* initialize_no__main__example(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = 1;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
return lean_io_result_mk_ok(lean_box(0));
}
