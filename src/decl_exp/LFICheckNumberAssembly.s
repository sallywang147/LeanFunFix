.bundle_align_mode 5
.text
.file	"CheckNumber.c"
.p2align	4, 0x90                         # -- Begin function lean_uint8_dec_eq
.type	lean_uint8_dec_eq,@function
lean_uint8_dec_eq:
.cfi_startproc
pushq	%rbp
.cfi_def_cfa_offset 16
.cfi_offset %rbp, -16
movl %esp, %ebp
.cfi_def_cfa_register %rbp
movb	%sil, %al
movb	%dil, %cl
movb %cl, %gs:-1(%ebp)
movb %al, %gs:-2(%ebp)
movzbl %gs:-1(%ebp), %eax
movzbl %gs:-2(%ebp), %ecx
cmpl	%ecx, %eax
sete	%al
andb	$1, %al
movzbl	%al, %eax
movzbl	%al, %eax
popq	%rbp
.cfi_def_cfa %rsp, 8
popq %r11
.bundle_lock
andl $0xffffffe0, %r11d
orq %r14, %r11
jmpq *%r11
.bundle_unlock
.Lfunc_end0:
.size	lean_uint8_dec_eq, .Lfunc_end0-lean_uint8_dec_eq
.cfi_endproc
.globl	l_checkNumber                   # -- Begin function l_checkNumber
.p2align	4, 0x90
.type	l_checkNumber,@function
l_checkNumber:
.cfi_startproc
pushq	%rbp
.cfi_def_cfa_offset 16
.cfi_offset %rbp, -16
movl %esp, %ebp
.cfi_def_cfa_register %rbp
.bundle_lock
subl $16, %esp
orq %r14, %rsp
.bundle_unlock
movb	%dil, %al
movb %al, %gs:-1(%ebp)
movb $42, %gs:-2(%ebp)
movb %gs:-1(%ebp), %al
movzbl	%al, %edi
movzbl %gs:-2(%ebp), %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_uint8_dec_eq
.p2align 5
1023:
movb %al, %gs:-3(%ebp)
movzbl %gs:-3(%ebp), %eax
.bundle_lock
addl $16, %esp
orq %r14, %rsp
.bundle_unlock
popq	%rbp
.cfi_def_cfa %rsp, 8
popq %r11
.bundle_lock
andl $0xffffffe0, %r11d
orq %r14, %r11
jmpq *%r11
.bundle_unlock
.Lfunc_end1:
.size	l_checkNumber, .Lfunc_end1-l_checkNumber
.cfi_endproc
.globl	l_checkNumber___boxed           # -- Begin function l_checkNumber___boxed
.p2align	4, 0x90
.type	l_checkNumber___boxed,@function
l_checkNumber___boxed:
.cfi_startproc
pushq	%rbp
.cfi_def_cfa_offset 16
.cfi_offset %rbp, -16
movl %esp, %ebp
.cfi_def_cfa_register %rbp
.bundle_lock
subl $32, %esp
orq %r14, %rsp
.bundle_unlock
movq %rdi, %gs:-8(%ebp)
movq %gs:-8(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_unbox
.p2align 5
1023:
movb %al, %gs:-9(%ebp)
movq %gs:-8(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_dec
.p2align 5
1023:
movzbl %gs:-9(%ebp), %edi
leal 1023f(%rip), %r11d
pushq %r11
jmp l_checkNumber
.p2align 5
1023:
movb %al, %gs:-10(%ebp)
movzbl %gs:-10(%ebp), %eax
movl	%eax, %edi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_box
.p2align 5
1023:
movq %rax, %gs:-24(%ebp)
movq %gs:-24(%ebp), %rax
.bundle_lock
addl $32, %esp
orq %r14, %rsp
.bundle_unlock
popq	%rbp
.cfi_def_cfa %rsp, 8
popq %r11
.bundle_lock
andl $0xffffffe0, %r11d
orq %r14, %r11
jmpq *%r11
.bundle_unlock
.Lfunc_end2:
.size	l_checkNumber___boxed, .Lfunc_end2-l_checkNumber___boxed
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function lean_unbox
.type	lean_unbox,@function
lean_unbox:
.cfi_startproc
pushq	%rbp
.cfi_def_cfa_offset 16
.cfi_offset %rbp, -16
movl %esp, %ebp
.cfi_def_cfa_register %rbp
movq %rdi, %gs:-8(%ebp)
movq %gs:-8(%ebp), %rax
shrq	%rax
popq	%rbp
.cfi_def_cfa %rsp, 8
popq %r11
.bundle_lock
andl $0xffffffe0, %r11d
orq %r14, %r11
jmpq *%r11
.bundle_unlock
.Lfunc_end3:
.size	lean_unbox, .Lfunc_end3-lean_unbox
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function lean_dec
.type	lean_dec,@function
lean_dec:
.cfi_startproc
pushq	%rbp
.cfi_def_cfa_offset 16
.cfi_offset %rbp, -16
movl %esp, %ebp
.cfi_def_cfa_register %rbp
.bundle_lock
subl $16, %esp
orq %r14, %rsp
.bundle_unlock
movq %rdi, %gs:-8(%ebp)
movq %gs:-8(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_is_scalar
.p2align 5
1023:
testb	$1, %al
jne	.LBB4_2
movq %gs:-8(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_dec_ref
.p2align 5
1023:
.LBB4_2:
.bundle_lock
addl $16, %esp
orq %r14, %rsp
.bundle_unlock
popq	%rbp
.cfi_def_cfa %rsp, 8
popq %r11
.bundle_lock
andl $0xffffffe0, %r11d
orq %r14, %r11
jmpq *%r11
.bundle_unlock
.Lfunc_end4:
.size	lean_dec, .Lfunc_end4-lean_dec
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function lean_box
.type	lean_box,@function
lean_box:
.cfi_startproc
pushq	%rbp
.cfi_def_cfa_offset 16
.cfi_offset %rbp, -16
movl %esp, %ebp
.cfi_def_cfa_register %rbp
movq %rdi, %gs:-8(%ebp)
movq %gs:-8(%ebp), %rax
shlq	%rax
orq	$1, %rax
popq	%rbp
.cfi_def_cfa %rsp, 8
popq %r11
.bundle_lock
andl $0xffffffe0, %r11d
orq %r14, %r11
jmpq *%r11
.bundle_unlock
.Lfunc_end5:
.size	lean_box, .Lfunc_end5-lean_box
.cfi_endproc
.globl	l_IO_println___at_main___spec__1 # -- Begin function l_IO_println___at_main___spec__1
.p2align	4, 0x90
.type	l_IO_println___at_main___spec__1,@function
l_IO_println___at_main___spec__1:
.cfi_startproc
pushq	%rbp
.cfi_def_cfa_offset 16
.cfi_offset %rbp, -16
movl %esp, %ebp
.cfi_def_cfa_register %rbp
.bundle_lock
subl $48, %esp
orq %r14, %rsp
.bundle_unlock
movq %rdi, %gs:-8(%ebp)
movq %rsi, %gs:-16(%ebp)
movl $10, %gs:-20(%ebp)
movq %gs:-8(%ebp), %rdi
movl %gs:-20(%ebp), %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_string_push@PLT
.p2align 5
1023:
movq %rax, %gs:-32(%ebp)
movq %gs:-32(%ebp), %rdi
movq %gs:-16(%ebp), %rsi
leal 1023f(%rip), %r11d
pushq %r11
jmp l_IO_print___at_IO_println___spec__1@PLT
.p2align 5
1023:
movq %rax, %gs:-40(%ebp)
movq %gs:-40(%ebp), %rax
.bundle_lock
addl $48, %esp
orq %r14, %rsp
.bundle_unlock
popq	%rbp
.cfi_def_cfa %rsp, 8
popq %r11
.bundle_lock
andl $0xffffffe0, %r11d
orq %r14, %r11
jmpq *%r11
.bundle_unlock
.Lfunc_end6:
.size	l_IO_println___at_main___spec__1, .Lfunc_end6-l_IO_println___at_main___spec__1
.cfi_endproc
.globl	_lean_main                      # -- Begin function _lean_main
.p2align	4, 0x90
.type	_lean_main,@function
_lean_main:
.cfi_startproc
pushq	%rbp
.cfi_def_cfa_offset 16
.cfi_offset %rbp, -16
movl %esp, %ebp
.cfi_def_cfa_register %rbp
.bundle_lock
subl $32, %esp
orq %r14, %rsp
.bundle_unlock
movq %rdi, %gs:-8(%ebp)
movq l_main___closed__1(%rip), %rax
movq %rax, %gs:-16(%ebp)
movq %gs:-16(%ebp), %rdi
movq %gs:-8(%ebp), %rsi
leal 1023f(%rip), %r11d
pushq %r11
jmp l_IO_println___at_main___spec__1
.p2align 5
1023:
movq %rax, %gs:-24(%ebp)
movq %gs:-24(%ebp), %rax
.bundle_lock
addl $32, %esp
orq %r14, %rsp
.bundle_unlock
popq	%rbp
.cfi_def_cfa %rsp, 8
popq %r11
.bundle_lock
andl $0xffffffe0, %r11d
orq %r14, %r11
jmpq *%r11
.bundle_unlock
.Lfunc_end7:
.size	_lean_main, .Lfunc_end7-_lean_main
.cfi_endproc
.globl	initialize_example              # -- Begin function initialize_example
.p2align	4, 0x90
.type	initialize_example,@function
initialize_example:
.cfi_startproc
pushq	%rbp
.cfi_def_cfa_offset 16
.cfi_offset %rbp, -16
movl %esp, %ebp
.cfi_def_cfa_register %rbp
.bundle_lock
subl $48, %esp
orq %r14, %rsp
.bundle_unlock
movb	%dil, %al
movb %al, %gs:-9(%ebp)
movq %rsi, %gs:-24(%ebp)
testb $1, _G_initialized(%rip)
je	.LBB8_2
xorl	%eax, %eax
movl	%eax, %edi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_box
.p2align 5
1023:
movq	%rax, %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_io_result_mk_ok
.p2align 5
1023:
movq %rax, %gs:-8(%ebp)
jmp	.LBB8_5
.LBB8_2:
movb $1, _G_initialized(%rip)
movb %gs:-9(%ebp), %al
movb %al, %gs:-33(%ebp)
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_io_mk_world
.p2align 5
1023:
movq	%rax, %rsi
movb %gs:-33(%ebp), %al
movzbl	%al, %edi
leal 1023f(%rip), %r11d
pushq %r11
jmp initialize_Init@PLT
.p2align 5
1023:
movq %rax, %gs:-32(%ebp)
movq %gs:-32(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_io_result_is_error
.p2align 5
1023:
testb	$1, %al
jne	.LBB8_3
jmp	.LBB8_4
.LBB8_3:
movq %gs:-32(%ebp), %rax
movq %rax, %gs:-8(%ebp)
jmp	.LBB8_5
.LBB8_4:
movq %gs:-32(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_dec_ref
.p2align 5
1023:
leal 1023f(%rip), %r11d
pushq %r11
jmp _init_l_main___closed__1
.p2align 5
1023:
movq %rax, l_main___closed__1(%rip)
movq l_main___closed__1(%rip), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_mark_persistent@PLT
.p2align 5
1023:
xorl	%eax, %eax
movl	%eax, %edi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_box
.p2align 5
1023:
movq	%rax, %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_io_result_mk_ok
.p2align 5
1023:
movq %rax, %gs:-8(%ebp)
.LBB8_5:
movq %gs:-8(%ebp), %rax
.bundle_lock
addl $48, %esp
orq %r14, %rsp
.bundle_unlock
popq	%rbp
.cfi_def_cfa %rsp, 8
popq %r11
.bundle_lock
andl $0xffffffe0, %r11d
orq %r14, %r11
jmpq *%r11
.bundle_unlock
.Lfunc_end8:
.size	initialize_example, .Lfunc_end8-initialize_example
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function lean_io_result_mk_ok
.type	lean_io_result_mk_ok,@function
lean_io_result_mk_ok:
.cfi_startproc
pushq	%rbp
.cfi_def_cfa_offset 16
.cfi_offset %rbp, -16
movl %esp, %ebp
.cfi_def_cfa_register %rbp
.bundle_lock
subl $32, %esp
orq %r14, %rsp
.bundle_unlock
movq %rdi, %gs:-8(%ebp)
xorl	%edx, %edx
movl	$2, %esi
movl	%edx, %edi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_alloc_ctor
.p2align 5
1023:
movq %rax, %gs:-16(%ebp)
movq %gs:-16(%ebp), %rdi
movq %gs:-8(%ebp), %rdx
xorl	%esi, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set
.p2align 5
1023:
movq %gs:-16(%ebp), %rax
movq %rax, %gs:-24(%ebp)
xorl	%eax, %eax
movl	%eax, %edi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_box
.p2align 5
1023:
movq %gs:-24(%ebp), %rdi
movq	%rax, %rdx
movl	$1, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set
.p2align 5
1023:
movq %gs:-16(%ebp), %rax
.bundle_lock
addl $32, %esp
orq %r14, %rsp
.bundle_unlock
popq	%rbp
.cfi_def_cfa %rsp, 8
popq %r11
.bundle_lock
andl $0xffffffe0, %r11d
orq %r14, %r11
jmpq *%r11
.bundle_unlock
.Lfunc_end9:
.size	lean_io_result_mk_ok, .Lfunc_end9-lean_io_result_mk_ok
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function lean_io_result_is_error
.type	lean_io_result_is_error,@function
lean_io_result_is_error:
.cfi_startproc
pushq	%rbp
.cfi_def_cfa_offset 16
.cfi_offset %rbp, -16
movl %esp, %ebp
.cfi_def_cfa_register %rbp
.bundle_lock
subl $16, %esp
orq %r14, %rsp
.bundle_unlock
movq %rdi, %gs:-8(%ebp)
movq %gs:-8(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ptr_tag
.p2align 5
1023:
movzbl	%al, %eax
cmpl	$1, %eax
sete	%al
andb	$1, %al
movzbl	%al, %eax
.bundle_lock
addl $16, %esp
orq %r14, %rsp
.bundle_unlock
popq	%rbp
.cfi_def_cfa %rsp, 8
popq %r11
.bundle_lock
andl $0xffffffe0, %r11d
orq %r14, %r11
jmpq *%r11
.bundle_unlock
.Lfunc_end10:
.size	lean_io_result_is_error, .Lfunc_end10-lean_io_result_is_error
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function lean_dec_ref
.type	lean_dec_ref,@function
lean_dec_ref:
.cfi_startproc
pushq	%rbp
.cfi_def_cfa_offset 16
.cfi_offset %rbp, -16
movl %esp, %ebp
.cfi_def_cfa_register %rbp
.bundle_lock
subl $16, %esp
orq %r14, %rsp
.bundle_unlock
movq %rdi, %gs:-8(%ebp)
movq %gs:-8(%ebp), %rax
cmpl $1, %gs:(%eax)
setg	%al
andb	$1, %al
movzbl	%al, %eax
cltq
cmpq	$0, %rax
je	.LBB11_2
movq %gs:-8(%ebp), %rax
movl %gs:(%eax), %ecx
addl	$-1, %ecx
movl %ecx, %gs:(%eax)
jmp	.LBB11_5
.LBB11_2:
movq %gs:-8(%ebp), %rax
cmpl $0, %gs:(%eax)
je	.LBB11_4
movq %gs:-8(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_dec_ref_cold@PLT
.p2align 5
1023:
.LBB11_4:
jmp	.LBB11_5
.LBB11_5:
.bundle_lock
addl $16, %esp
orq %r14, %rsp
.bundle_unlock
popq	%rbp
.cfi_def_cfa %rsp, 8
popq %r11
.bundle_lock
andl $0xffffffe0, %r11d
orq %r14, %r11
jmpq *%r11
.bundle_unlock
.Lfunc_end11:
.size	lean_dec_ref, .Lfunc_end11-lean_dec_ref
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function lean_is_scalar
.type	lean_is_scalar,@function
lean_is_scalar:
.cfi_startproc
pushq	%rbp
.cfi_def_cfa_offset 16
.cfi_offset %rbp, -16
movl %esp, %ebp
.cfi_def_cfa_register %rbp
movq %rdi, %gs:-8(%ebp)
movq %gs:-8(%ebp), %rax
andq	$1, %rax
cmpq	$1, %rax
sete	%al
andb	$1, %al
movzbl	%al, %eax
popq	%rbp
.cfi_def_cfa %rsp, 8
popq %r11
.bundle_lock
andl $0xffffffe0, %r11d
orq %r14, %r11
jmpq *%r11
.bundle_unlock
.Lfunc_end12:
.size	lean_is_scalar, .Lfunc_end12-lean_is_scalar
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function lean_alloc_ctor
.type	lean_alloc_ctor,@function
lean_alloc_ctor:
.cfi_startproc
pushq	%rbp
.cfi_def_cfa_offset 16
.cfi_offset %rbp, -16
movl %esp, %ebp
.cfi_def_cfa_register %rbp
.bundle_lock
subl $32, %esp
orq %r14, %rsp
.bundle_unlock
movl %edi, %gs:-4(%ebp)
movl %esi, %gs:-8(%ebp)
movl %edx, %gs:-12(%ebp)
xorl	%eax, %eax
cmpl $244, %gs:-4(%ebp)
movb %al, %gs:-25(%ebp)
ja	.LBB13_3
xorl	%eax, %eax
cmpl $256, %gs:-8(%ebp)
movb %al, %gs:-25(%ebp)
jae	.LBB13_3
cmpl $1024, %gs:-12(%ebp)
setb	%al
movb %al, %gs:-25(%ebp)
.LBB13_3:
movb %gs:-25(%ebp), %al
xorb	$-1, %al
andb	$1, %al
movzbl	%al, %eax
cltq
cmpq	$0, %rax
je	.LBB13_5
leal .L.str(%rip), %edi
movl	$559, %esi                      
leal .L.str.1(%rip), %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_notify_assert@PLT
.p2align 5
1023:
.LBB13_5:
movl %gs:-8(%ebp), %eax
shlq	$3, %rax
addq	$8, %rax
movl %gs:-12(%ebp), %ecx
addq	%rcx, %rax
movl	%eax, %edi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_alloc_ctor_memory
.p2align 5
1023:
movq %rax, %gs:-24(%ebp)
movq %gs:-24(%ebp), %rdi
movl %gs:-4(%ebp), %esi
movl %gs:-8(%ebp), %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_set_st_header
.p2align 5
1023:
movq %gs:-24(%ebp), %rax
.bundle_lock
addl $32, %esp
orq %r14, %rsp
.bundle_unlock
popq	%rbp
.cfi_def_cfa %rsp, 8
popq %r11
.bundle_lock
andl $0xffffffe0, %r11d
orq %r14, %r11
jmpq *%r11
.bundle_unlock
.Lfunc_end13:
.size	lean_alloc_ctor, .Lfunc_end13-lean_alloc_ctor
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function lean_ctor_set
.type	lean_ctor_set,@function
lean_ctor_set:
.cfi_startproc
pushq	%rbp
.cfi_def_cfa_offset 16
.cfi_offset %rbp, -16
movl %esp, %ebp
.cfi_def_cfa_register %rbp
.bundle_lock
subl $48, %esp
orq %r14, %rsp
.bundle_unlock
movq %rdi, %gs:-8(%ebp)
movl %esi, %gs:-12(%ebp)
movq %rdx, %gs:-24(%ebp)
movl %gs:-12(%ebp), %eax
movl %eax, %gs:-28(%ebp)
movq %gs:-8(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_num_objs
.p2align 5
1023:
movl	%eax, %ecx
movl %gs:-28(%ebp), %eax
cmpl	%ecx, %eax
setb	%al
xorb	$-1, %al
andb	$1, %al
movzbl	%al, %eax
cltq
cmpq	$0, %rax
je	.LBB14_2
leal .L.str(%rip), %edi
movl	$571, %esi                      
leal .L.str.5(%rip), %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_notify_assert@PLT
.p2align 5
1023:
.LBB14_2:
movq %gs:-24(%ebp), %rax
movq %rax, %gs:-40(%ebp)
movq %gs:-8(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_obj_cptr
.p2align 5
1023:
movq %gs:-40(%ebp), %rdx
movl %gs:-12(%ebp), %ecx
movq %rdx, %gs:(%eax, %ecx, 8)
.bundle_lock
addl $48, %esp
orq %r14, %rsp
.bundle_unlock
popq	%rbp
.cfi_def_cfa %rsp, 8
popq %r11
.bundle_lock
andl $0xffffffe0, %r11d
orq %r14, %r11
jmpq *%r11
.bundle_unlock
.Lfunc_end14:
.size	lean_ctor_set, .Lfunc_end14-lean_ctor_set
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function lean_alloc_ctor_memory
.type	lean_alloc_ctor_memory,@function
lean_alloc_ctor_memory:
.cfi_startproc
pushq	%rbp
.cfi_def_cfa_offset 16
.cfi_offset %rbp, -16
movl %esp, %ebp
.cfi_def_cfa_register %rbp
.bundle_lock
subl $32, %esp
orq %r14, %rsp
.bundle_unlock
movl %edi, %gs:-4(%ebp)
movl %gs:-4(%ebp), %eax
movl	%eax, %edi
movl	$8, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_align
.p2align 5
1023:
movl %eax, %gs:-8(%ebp)
movl %gs:-8(%ebp), %edi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_get_slot_idx
.p2align 5
1023:
movl %eax, %gs:-12(%ebp)
cmpl $4096, %gs:-8(%ebp)
setbe	%al
xorb	$-1, %al
andb	$1, %al
movzbl	%al, %eax
cltq
cmpq	$0, %rax
je	.LBB15_2
leal .L.str(%rip), %edi
movl	$350, %esi                      
leal .L.str.2(%rip), %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_notify_assert@PLT
.p2align 5
1023:
.LBB15_2:
movl %gs:-8(%ebp), %edi
movl %gs:-12(%ebp), %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_alloc_small@PLT
.p2align 5
1023:
movq %rax, %gs:-24(%ebp)
movl %gs:-8(%ebp), %eax
cmpl %gs:-4(%ebp), %eax
jbe	.LBB15_4
movq %gs:-24(%ebp), %rax
movl %gs:-8(%ebp), %ecx
addq	%rcx, %rax
movq %rax, %gs:-32(%ebp)
movq %gs:-32(%ebp), %rax
movq $0, %gs:-8(%eax)
.LBB15_4:
movq %gs:-24(%ebp), %rax
.bundle_lock
addl $32, %esp
orq %r14, %rsp
.bundle_unlock
popq	%rbp
.cfi_def_cfa %rsp, 8
popq %r11
.bundle_lock
andl $0xffffffe0, %r11d
orq %r14, %r11
jmpq *%r11
.bundle_unlock
.Lfunc_end15:
.size	lean_alloc_ctor_memory, .Lfunc_end15-lean_alloc_ctor_memory
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function lean_set_st_header
.type	lean_set_st_header,@function
lean_set_st_header:
.cfi_startproc
pushq	%rbp
.cfi_def_cfa_offset 16
.cfi_offset %rbp, -16
movl %esp, %ebp
.cfi_def_cfa_register %rbp
movq %rdi, %gs:-8(%ebp)
movl %esi, %gs:-12(%ebp)
movl %edx, %gs:-16(%ebp)
movq %gs:-8(%ebp), %rax
movl $1, %gs:(%eax)
movl %gs:-12(%ebp), %edx
movq %gs:-8(%ebp), %rax
movl %gs:4(%eax), %ecx
andl	$255, %edx
shll	$24, %edx
andl	$16777215, %ecx                 
orl	%edx, %ecx
movl %ecx, %gs:4(%eax)
movl %gs:-16(%ebp), %edx
movq %gs:-8(%ebp), %rax
movl %gs:4(%eax), %ecx
andl	$255, %edx
shll	$16, %edx
andl	$-16711681, %ecx                
orl	%edx, %ecx
movl %ecx, %gs:4(%eax)
movq %gs:-8(%ebp), %rax
movl %gs:4(%eax), %ecx
andl	$-65536, %ecx                   
orl	$0, %ecx
movl %ecx, %gs:4(%eax)
popq	%rbp
.cfi_def_cfa %rsp, 8
popq %r11
.bundle_lock
andl $0xffffffe0, %r11d
orq %r14, %r11
jmpq *%r11
.bundle_unlock
.Lfunc_end16:
.size	lean_set_st_header, .Lfunc_end16-lean_set_st_header
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function lean_align
.type	lean_align,@function
lean_align:
.cfi_startproc
pushq	%rbp
.cfi_def_cfa_offset 16
.cfi_offset %rbp, -16
movl %esp, %ebp
.cfi_def_cfa_register %rbp
movq %rdi, %gs:-8(%ebp)
movq %rsi, %gs:-16(%ebp)
movq %gs:-8(%ebp), %rax
xorl	%ecx, %ecx
movl	%ecx, %edx
divq %gs:-16(%ebp)
imulq %gs:-16(%ebp), %rax
movq %rax, %gs:-24(%ebp)
movq %gs:-16(%ebp), %rcx
movq %gs:-8(%ebp), %rax
xorl	%edx, %edx
divq %gs:-16(%ebp)
movq %gs:-24(%ebp), %rax
cmpq	$0, %rdx
setne	%dl
andb	$1, %dl
movzbl	%dl, %edx
movslq	%edx, %rdx
imulq	%rdx, %rcx
addq	%rcx, %rax
popq	%rbp
.cfi_def_cfa %rsp, 8
popq %r11
.bundle_lock
andl $0xffffffe0, %r11d
orq %r14, %r11
jmpq *%r11
.bundle_unlock
.Lfunc_end17:
.size	lean_align, .Lfunc_end17-lean_align
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function lean_get_slot_idx
.type	lean_get_slot_idx,@function
lean_get_slot_idx:
.cfi_startproc
pushq	%rbp
.cfi_def_cfa_offset 16
.cfi_offset %rbp, -16
movl %esp, %ebp
.cfi_def_cfa_register %rbp
.bundle_lock
subl $16, %esp
orq %r14, %rsp
.bundle_unlock
movl %edi, %gs:-4(%ebp)
cmpl $0, %gs:-4(%ebp)
seta	%al
xorb	$-1, %al
andb	$1, %al
movzbl	%al, %eax
cltq
cmpq	$0, %rax
je	.LBB18_2
leal .L.str(%rip), %edi
movl	$317, %esi                      
leal .L.str.3(%rip), %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_notify_assert@PLT
.p2align 5
1023:
.LBB18_2:
movl %gs:-4(%ebp), %eax
movl	%eax, %edi
movl	$8, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_align
.p2align 5
1023:
movl %gs:-4(%ebp), %ecx
cmpq	%rcx, %rax
sete	%al
xorb	$-1, %al
andb	$1, %al
movzbl	%al, %eax
cltq
cmpq	$0, %rax
je	.LBB18_4
leal .L.str(%rip), %edi
movl	$318, %esi                      
leal .L.str.4(%rip), %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_notify_assert@PLT
.p2align 5
1023:
.LBB18_4:
movl %gs:-4(%ebp), %eax
shrl	$3, %eax
subl	$1, %eax
.bundle_lock
addl $16, %esp
orq %r14, %rsp
.bundle_unlock
popq	%rbp
.cfi_def_cfa %rsp, 8
popq %r11
.bundle_lock
andl $0xffffffe0, %r11d
orq %r14, %r11
jmpq *%r11
.bundle_unlock
.Lfunc_end18:
.size	lean_get_slot_idx, .Lfunc_end18-lean_get_slot_idx
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function lean_ctor_num_objs
.type	lean_ctor_num_objs,@function
lean_ctor_num_objs:
.cfi_startproc
pushq	%rbp
.cfi_def_cfa_offset 16
.cfi_offset %rbp, -16
movl %esp, %ebp
.cfi_def_cfa_register %rbp
.bundle_lock
subl $16, %esp
orq %r14, %rsp
.bundle_unlock
movq %rdi, %gs:-8(%ebp)
movq %gs:-8(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_is_ctor
.p2align 5
1023:
xorb	$-1, %al
andb	$1, %al
movzbl	%al, %eax
cltq
cmpq	$0, %rax
je	.LBB19_2
leal .L.str(%rip), %edi
movl	$544, %esi                      
leal .L.str.6(%rip), %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_notify_assert@PLT
.p2align 5
1023:
.LBB19_2:
movq %gs:-8(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ptr_other
.p2align 5
1023:
.bundle_lock
addl $16, %esp
orq %r14, %rsp
.bundle_unlock
popq	%rbp
.cfi_def_cfa %rsp, 8
popq %r11
.bundle_lock
andl $0xffffffe0, %r11d
orq %r14, %r11
jmpq *%r11
.bundle_unlock
.Lfunc_end19:
.size	lean_ctor_num_objs, .Lfunc_end19-lean_ctor_num_objs
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function lean_ctor_obj_cptr
.type	lean_ctor_obj_cptr,@function
lean_ctor_obj_cptr:
.cfi_startproc
pushq	%rbp
.cfi_def_cfa_offset 16
.cfi_offset %rbp, -16
movl %esp, %ebp
.cfi_def_cfa_register %rbp
.bundle_lock
subl $16, %esp
orq %r14, %rsp
.bundle_unlock
movq %rdi, %gs:-8(%ebp)
movq %gs:-8(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_is_ctor
.p2align 5
1023:
xorb	$-1, %al
andb	$1, %al
movzbl	%al, %eax
cltq
cmpq	$0, %rax
je	.LBB20_2
leal .L.str(%rip), %edi
movl	$549, %esi                      
leal .L.str.6(%rip), %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_notify_assert@PLT
.p2align 5
1023:
.LBB20_2:
movq %gs:-8(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_to_ctor
.p2align 5
1023:
addq	$8, %rax
.bundle_lock
addl $16, %esp
orq %r14, %rsp
.bundle_unlock
popq	%rbp
.cfi_def_cfa %rsp, 8
popq %r11
.bundle_lock
andl $0xffffffe0, %r11d
orq %r14, %r11
jmpq *%r11
.bundle_unlock
.Lfunc_end20:
.size	lean_ctor_obj_cptr, .Lfunc_end20-lean_ctor_obj_cptr
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function lean_is_ctor
.type	lean_is_ctor,@function
lean_is_ctor:
.cfi_startproc
pushq	%rbp
.cfi_def_cfa_offset 16
.cfi_offset %rbp, -16
movl %esp, %ebp
.cfi_def_cfa_register %rbp
.bundle_lock
subl $16, %esp
orq %r14, %rsp
.bundle_unlock
movq %rdi, %gs:-8(%ebp)
movq %gs:-8(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ptr_tag
.p2align 5
1023:
movzbl	%al, %eax
cmpl	$244, %eax
setle	%al
andb	$1, %al
movzbl	%al, %eax
.bundle_lock
addl $16, %esp
orq %r14, %rsp
.bundle_unlock
popq	%rbp
.cfi_def_cfa %rsp, 8
popq %r11
.bundle_lock
andl $0xffffffe0, %r11d
orq %r14, %r11
jmpq *%r11
.bundle_unlock
.Lfunc_end21:
.size	lean_is_ctor, .Lfunc_end21-lean_is_ctor
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function lean_ptr_other
.type	lean_ptr_other,@function
lean_ptr_other:
.cfi_startproc
pushq	%rbp
.cfi_def_cfa_offset 16
.cfi_offset %rbp, -16
movl %esp, %ebp
.cfi_def_cfa_register %rbp
movq %rdi, %gs:-8(%ebp)
movq %gs:-8(%ebp), %rax
movl %gs:4(%eax), %eax
shrl	$16, %eax
andl	$255, %eax
popq	%rbp
.cfi_def_cfa %rsp, 8
popq %r11
.bundle_lock
andl $0xffffffe0, %r11d
orq %r14, %r11
jmpq *%r11
.bundle_unlock
.Lfunc_end22:
.size	lean_ptr_other, .Lfunc_end22-lean_ptr_other
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function lean_ptr_tag
.type	lean_ptr_tag,@function
lean_ptr_tag:
.cfi_startproc
pushq	%rbp
.cfi_def_cfa_offset 16
.cfi_offset %rbp, -16
movl %esp, %ebp
.cfi_def_cfa_register %rbp
movq %rdi, %gs:-8(%ebp)
movq %gs:-8(%ebp), %rax
movl %gs:4(%eax), %eax
shrl	$24, %eax
movzbl	%al, %eax
popq	%rbp
.cfi_def_cfa %rsp, 8
popq %r11
.bundle_lock
andl $0xffffffe0, %r11d
orq %r14, %r11
jmpq *%r11
.bundle_unlock
.Lfunc_end23:
.size	lean_ptr_tag, .Lfunc_end23-lean_ptr_tag
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function lean_to_ctor
.type	lean_to_ctor,@function
lean_to_ctor:
.cfi_startproc
pushq	%rbp
.cfi_def_cfa_offset 16
.cfi_offset %rbp, -16
movl %esp, %ebp
.cfi_def_cfa_register %rbp
.bundle_lock
subl $16, %esp
orq %r14, %rsp
.bundle_unlock
movq %rdi, %gs:-8(%ebp)
movq %gs:-8(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_is_ctor
.p2align 5
1023:
xorb	$-1, %al
andb	$1, %al
movzbl	%al, %eax
cltq
cmpq	$0, %rax
je	.LBB24_2
leal .L.str(%rip), %edi
movl	$484, %esi                      
leal .L.str.6(%rip), %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_notify_assert@PLT
.p2align 5
1023:
.LBB24_2:
movq %gs:-8(%ebp), %rax
.bundle_lock
addl $16, %esp
orq %r14, %rsp
.bundle_unlock
popq	%rbp
.cfi_def_cfa %rsp, 8
popq %r11
.bundle_lock
andl $0xffffffe0, %r11d
orq %r14, %r11
jmpq *%r11
.bundle_unlock
.Lfunc_end24:
.size	lean_to_ctor, .Lfunc_end24-lean_to_ctor
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function lean_io_mk_world
.type	lean_io_mk_world,@function
lean_io_mk_world:
.cfi_startproc
pushq	%rbp
.cfi_def_cfa_offset 16
.cfi_offset %rbp, -16
movl %esp, %ebp
.cfi_def_cfa_register %rbp
xorl	%eax, %eax
movl	%eax, %edi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_box
.p2align 5
1023:
popq	%rbp
.cfi_def_cfa %rsp, 8
popq %r11
.bundle_lock
andl $0xffffffe0, %r11d
orq %r14, %r11
jmpq *%r11
.bundle_unlock
.Lfunc_end25:
.size	lean_io_mk_world, .Lfunc_end25-lean_io_mk_world
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function _init_l_main___closed__1
.type	_init_l_main___closed__1,@function
_init_l_main___closed__1:
.cfi_startproc
pushq	%rbp
.cfi_def_cfa_offset 16
.cfi_offset %rbp, -16
movl %esp, %ebp
.cfi_def_cfa_register %rbp
.bundle_lock
subl $16, %esp
orq %r14, %rsp
.bundle_unlock
leal .L.str.7(%rip), %edi
movl	$5, %edx
movq	%rdx, %rsi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_mk_string_unchecked@PLT
.p2align 5
1023:
movq %rax, %gs:-8(%ebp)
movq %gs:-8(%ebp), %rax
.bundle_lock
addl $16, %esp
orq %r14, %rsp
.bundle_unlock
popq	%rbp
.cfi_def_cfa %rsp, 8
popq %r11
.bundle_lock
andl $0xffffffe0, %r11d
orq %r14, %r11
jmpq *%r11
.bundle_unlock
.Lfunc_end26:
.size	_init_l_main___closed__1, .Lfunc_end26-_init_l_main___closed__1
.cfi_endproc
.type	l_main___closed__1,@object      # @l_main___closed__1
.local	l_main___closed__1
.comm	l_main___closed__1,8,8
.type	_G_initialized,@object          # @_G_initialized
.local	_G_initialized
.comm	_G_initialized,1,1
.type	.L.str,@object                  # @.str
.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
.asciz	"/home/sally/.elan/toolchains/leanprover--lean4---v4.17.0/include/lean/lean.h"
.size	.L.str, 77
.type	.L.str.1,@object                # @.str.1
.L.str.1:
.asciz	"tag <= LeanMaxCtorTag && num_objs < LEAN_MAX_CTOR_FIELDS && scalar_sz < LEAN_MAX_CTOR_SCALARS_SIZE"
.size	.L.str.1, 99
.type	.L.str.2,@object                # @.str.2
.L.str.2:
.asciz	"sz1 <= LEAN_MAX_SMALL_OBJECT_SIZE"
.size	.L.str.2, 34
.type	.L.str.3,@object                # @.str.3
.L.str.3:
.asciz	"sz > 0"
.size	.L.str.3, 7
.type	.L.str.4,@object                # @.str.4
.L.str.4:
.asciz	"lean_align(sz, LEAN_OBJECT_SIZE_DELTA) == sz"
.size	.L.str.4, 45
.type	.L.str.5,@object                # @.str.5
.L.str.5:
.asciz	"i < lean_ctor_num_objs(o)"
.size	.L.str.5, 26
.type	.L.str.6,@object                # @.str.6
.L.str.6:
.asciz	"lean_is_ctor(o)"
.size	.L.str.6, 16
.type	.L.str.7,@object                # @.str.7
.L.str.7:
.asciz	"Done."
.size	.L.str.7, 6
.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
.section	".note.GNU-stack","",@progbits
.addrsig
.addrsig_sym lean_uint8_dec_eq
.addrsig_sym l_checkNumber
.addrsig_sym lean_unbox
.addrsig_sym lean_dec
.addrsig_sym lean_box
.addrsig_sym l_IO_println___at_main___spec__1
.addrsig_sym lean_string_push
.addrsig_sym l_IO_print___at_IO_println___spec__1
.addrsig_sym lean_io_result_mk_ok
.addrsig_sym initialize_Init
.addrsig_sym lean_io_result_is_error
.addrsig_sym lean_dec_ref
.addrsig_sym lean_mark_persistent
.addrsig_sym lean_is_scalar
.addrsig_sym lean_alloc_ctor
.addrsig_sym lean_ctor_set
.addrsig_sym lean_notify_assert
.addrsig_sym lean_alloc_ctor_memory
.addrsig_sym lean_set_st_header
.addrsig_sym lean_align
.addrsig_sym lean_get_slot_idx
.addrsig_sym lean_alloc_small
.addrsig_sym lean_ctor_num_objs
.addrsig_sym lean_ctor_obj_cptr
.addrsig_sym lean_is_ctor
.addrsig_sym lean_ptr_other
.addrsig_sym lean_ptr_tag
.addrsig_sym lean_to_ctor
.addrsig_sym lean_io_mk_world
.addrsig_sym lean_dec_ref_cold
.addrsig_sym _init_l_main___closed__1
.addrsig_sym lean_mk_string_unchecked
.addrsig_sym l_main___closed__1
.addrsig_sym _G_initialized
