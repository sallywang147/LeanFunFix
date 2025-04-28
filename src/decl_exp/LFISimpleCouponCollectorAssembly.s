.bundle_align_mode 5
.text
.file	"SimpleCouponCollector.c"
.p2align	4, 0x90                         # -- Begin function lean_nat_to_int
.type	lean_nat_to_int,@function
lean_nat_to_int:
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
movq %rdi, %gs:-16(%ebp)
movq %gs:-16(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_is_scalar
.p2align 5
1023:
testb	$1, %al
jne	.LBB0_1
jmp	.LBB0_4
.LBB0_1:
movq %gs:-16(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_unbox
.p2align 5
1023:
movq %rax, %gs:-24(%ebp)
cmpq $2147483647, %gs:-24(%ebp)
ja	.LBB0_3
movq %gs:-16(%ebp), %rax
movq %rax, %gs:-8(%ebp)
jmp	.LBB0_5
.LBB0_3:
movq %gs:-24(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_big_size_t_to_int@PLT
.p2align 5
1023:
movq %rax, %gs:-8(%ebp)
jmp	.LBB0_5
.LBB0_4:
movq %gs:-16(%ebp), %rax
movq %rax, %gs:-8(%ebp)
.LBB0_5:
movq %gs:-8(%ebp), %rax
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
.Lfunc_end0:
.size	lean_nat_to_int, .Lfunc_end0-lean_nat_to_int
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function lean_string_length
.type	lean_string_length,@function
lean_string_length:
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
jmp lean_string_len
.p2align 5
1023:
movq	%rax, %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_box
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
.Lfunc_end1:
.size	lean_string_length, .Lfunc_end1-lean_string_length
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function lean_uint8_to_nat
.type	lean_uint8_to_nat,@function
lean_uint8_to_nat:
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
movzbl %gs:-1(%ebp), %eax
movl	%eax, %edi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_usize_to_nat
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
.Lfunc_end2:
.size	lean_uint8_to_nat, .Lfunc_end2-lean_uint8_to_nat
.cfi_endproc
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
.Lfunc_end3:
.size	lean_uint8_dec_eq, .Lfunc_end3-lean_uint8_dec_eq
.cfi_endproc
.globl	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22_ # -- Begin function l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22_
.p2align	4, 0x90
.type	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22_,@function
l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22_:
.cfi_startproc
pushq	%rbp
.cfi_def_cfa_offset 16
.cfi_offset %rbp, -16
movl %esp, %ebp
.cfi_def_cfa_register %rbp
.bundle_lock
subl $272, %esp
orq %r14, %rsp
.bundle_unlock
movq %rdi, %gs:-8(%ebp)
movq %rsi, %gs:-16(%ebp)
movq %gs:-8(%ebp), %rdi
xorl	%esi, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_get_uint8
.p2align 5
1023:
movb %al, %gs:-17(%ebp)
movzbl %gs:-17(%ebp), %edi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_uint8_to_nat
.p2align 5
1023:
movq %rax, %gs:-32(%ebp)
movq %gs:-32(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp l___private_Init_Data_Repr_0__Nat_reprFast@PLT
.p2align 5
1023:
movq %rax, %gs:-40(%ebp)
movl	$3, %edi
movl	$1, %esi
xorl	%edx, %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_alloc_ctor
.p2align 5
1023:
movq %rax, %gs:-48(%ebp)
movq %gs:-48(%ebp), %rdi
movq %gs:-40(%ebp), %rdx
xorl	%esi, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set
.p2align 5
1023:
movq l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__7(%rip), %rax
movq %rax, %gs:-56(%ebp)
movl	$4, %edi
movl	$2, %esi
xorl	%edx, %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_alloc_ctor
.p2align 5
1023:
movq %rax, %gs:-64(%ebp)
movq %gs:-64(%ebp), %rdi
movq %gs:-56(%ebp), %rdx
xorl	%esi, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set
.p2align 5
1023:
movq %gs:-64(%ebp), %rdi
movq %gs:-48(%ebp), %rdx
movl	$1, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set
.p2align 5
1023:
movb $0, %gs:-65(%ebp)
movl	$6, %edi
movl	$1, %edx
movl	%edx, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_alloc_ctor
.p2align 5
1023:
movq %rax, %gs:-80(%ebp)
movq %gs:-80(%ebp), %rdi
movq %gs:-64(%ebp), %rdx
xorl	%esi, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set
.p2align 5
1023:
movq %gs:-80(%ebp), %rdi
movl	$8, %esi
movzbl %gs:-65(%ebp), %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set_uint8
.p2align 5
1023:
movq l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__6(%rip), %rax
movq %rax, %gs:-88(%ebp)
movl	$5, %edi
movl	$2, %esi
xorl	%edx, %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_alloc_ctor
.p2align 5
1023:
movq %rax, %gs:-96(%ebp)
movq %gs:-96(%ebp), %rdi
movq %gs:-88(%ebp), %rdx
xorl	%esi, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set
.p2align 5
1023:
movq %gs:-96(%ebp), %rdi
movq %gs:-80(%ebp), %rdx
movl	$1, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set
.p2align 5
1023:
movq l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__9(%rip), %rax
movq %rax, %gs:-104(%ebp)
movl	$5, %edi
movl	$2, %esi
xorl	%edx, %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_alloc_ctor
.p2align 5
1023:
movq %rax, %gs:-112(%ebp)
movq %gs:-112(%ebp), %rdi
movq %gs:-96(%ebp), %rdx
xorl	%esi, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set
.p2align 5
1023:
movq %gs:-112(%ebp), %rdi
movq %gs:-104(%ebp), %rdx
movl	$1, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set
.p2align 5
1023:
movl	$1, %edi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_box
.p2align 5
1023:
movq %rax, %gs:-120(%ebp)
movl	$5, %edi
movl	$2, %esi
xorl	%edx, %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_alloc_ctor
.p2align 5
1023:
movq %rax, %gs:-128(%ebp)
movq %gs:-128(%ebp), %rdi
movq %gs:-112(%ebp), %rdx
xorl	%esi, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set
.p2align 5
1023:
movq %gs:-128(%ebp), %rdi
movq %gs:-120(%ebp), %rdx
movl	$1, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set
.p2align 5
1023:
movq l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__11(%rip), %rax
movq %rax, %gs:-136(%ebp)
movl	$5, %edi
movl	$2, %esi
xorl	%edx, %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_alloc_ctor
.p2align 5
1023:
movq %rax, %gs:-144(%ebp)
movq %gs:-144(%ebp), %rdi
movq %gs:-128(%ebp), %rdx
xorl	%esi, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set
.p2align 5
1023:
movq %gs:-144(%ebp), %rdi
movq %gs:-136(%ebp), %rdx
movl	$1, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set
.p2align 5
1023:
movq l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__5(%rip), %rax
movq %rax, %gs:-152(%ebp)
movl	$5, %edi
movl	$2, %esi
xorl	%edx, %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_alloc_ctor
.p2align 5
1023:
movq %rax, %gs:-160(%ebp)
movq %gs:-160(%ebp), %rdi
movq %gs:-144(%ebp), %rdx
xorl	%esi, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set
.p2align 5
1023:
movq %gs:-160(%ebp), %rdi
movq %gs:-152(%ebp), %rdx
movl	$1, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set
.p2align 5
1023:
movq %gs:-8(%ebp), %rdi
movl	$1, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_get_uint8
.p2align 5
1023:
movb %al, %gs:-161(%ebp)
movzbl %gs:-161(%ebp), %edi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_uint8_to_nat
.p2align 5
1023:
movq %rax, %gs:-176(%ebp)
movq %gs:-176(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp l___private_Init_Data_Repr_0__Nat_reprFast@PLT
.p2align 5
1023:
movq %rax, %gs:-184(%ebp)
movl	$3, %edi
movl	$1, %esi
xorl	%edx, %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_alloc_ctor
.p2align 5
1023:
movq %rax, %gs:-192(%ebp)
movq %gs:-192(%ebp), %rdi
movq %gs:-184(%ebp), %rdx
xorl	%esi, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set
.p2align 5
1023:
movl	$4, %edi
movl	$2, %esi
xorl	%edx, %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_alloc_ctor
.p2align 5
1023:
movq %rax, %gs:-200(%ebp)
movq %gs:-200(%ebp), %rdi
movq %gs:-56(%ebp), %rdx
xorl	%esi, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set
.p2align 5
1023:
movq %gs:-200(%ebp), %rdi
movq %gs:-192(%ebp), %rdx
movl	$1, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set
.p2align 5
1023:
movl	$6, %edi
movl	$1, %edx
movl	%edx, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_alloc_ctor
.p2align 5
1023:
movq %rax, %gs:-208(%ebp)
movq %gs:-208(%ebp), %rdi
movq %gs:-200(%ebp), %rdx
xorl	%esi, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set
.p2align 5
1023:
movq %gs:-208(%ebp), %rdi
movl	$8, %esi
movzbl %gs:-65(%ebp), %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set_uint8
.p2align 5
1023:
movl	$5, %edi
movl	$2, %esi
xorl	%edx, %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_alloc_ctor
.p2align 5
1023:
movq %rax, %gs:-216(%ebp)
movq %gs:-216(%ebp), %rdi
movq %gs:-160(%ebp), %rdx
xorl	%esi, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set
.p2align 5
1023:
movq %gs:-216(%ebp), %rdi
movq %gs:-208(%ebp), %rdx
movl	$1, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set
.p2align 5
1023:
movq l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__15(%rip), %rax
movq %rax, %gs:-224(%ebp)
movl	$5, %edi
movl	$2, %esi
xorl	%edx, %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_alloc_ctor
.p2align 5
1023:
movq %rax, %gs:-232(%ebp)
movq %gs:-232(%ebp), %rdi
movq %gs:-224(%ebp), %rdx
xorl	%esi, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set
.p2align 5
1023:
movq %gs:-232(%ebp), %rdi
movq %gs:-216(%ebp), %rdx
movl	$1, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set
.p2align 5
1023:
movq l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__17(%rip), %rax
movq %rax, %gs:-240(%ebp)
movl	$5, %edi
movl	$2, %esi
xorl	%edx, %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_alloc_ctor
.p2align 5
1023:
movq %rax, %gs:-248(%ebp)
movq %gs:-248(%ebp), %rdi
movq %gs:-232(%ebp), %rdx
xorl	%esi, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set
.p2align 5
1023:
movq %gs:-248(%ebp), %rdi
movq %gs:-240(%ebp), %rdx
movl	$1, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set
.p2align 5
1023:
movq l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__14(%rip), %rax
movq %rax, %gs:-256(%ebp)
movl	$4, %edi
movl	$2, %esi
xorl	%edx, %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_alloc_ctor
.p2align 5
1023:
movq %rax, %gs:-264(%ebp)
movq %gs:-264(%ebp), %rdi
movq %gs:-256(%ebp), %rdx
xorl	%esi, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set
.p2align 5
1023:
movq %gs:-264(%ebp), %rdi
movq %gs:-248(%ebp), %rdx
movl	$1, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set
.p2align 5
1023:
movl	$6, %edi
movl	$1, %edx
movl	%edx, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_alloc_ctor
.p2align 5
1023:
movq %rax, %gs:-272(%ebp)
movq %gs:-272(%ebp), %rdi
movq %gs:-264(%ebp), %rdx
xorl	%esi, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set
.p2align 5
1023:
movq %gs:-272(%ebp), %rdi
movl	$8, %esi
movzbl %gs:-65(%ebp), %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set_uint8
.p2align 5
1023:
movq %gs:-272(%ebp), %rax
.bundle_lock
addl $272, %esp
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
.size	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22_, .Lfunc_end4-l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22_
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function lean_ctor_get_uint8
.type	lean_ctor_get_uint8,@function
lean_ctor_get_uint8:
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
movl %esi, %gs:-12(%ebp)
movl %gs:-12(%ebp), %eax
movq %rax, %gs:-24(%ebp)
movq %gs:-8(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_num_objs
.p2align 5
1023:
movl	%eax, %ecx
movq %gs:-24(%ebp), %rax
movl	%ecx, %ecx
shlq	$3, %rcx
cmpq	%rcx, %rax
setae	%al
xorb	$-1, %al
andb	$1, %al
movzbl	%al, %eax
cltq
cmpq	$0, %rax
je	.LBB5_2
leal .L.str(%rip), %edi
movl	$593, %esi                      
leal .L.str.2(%rip), %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_notify_assert@PLT
.p2align 5
1023:
.LBB5_2:
movq %gs:-8(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_obj_cptr
.p2align 5
1023:
movl %gs:-12(%ebp), %ecx
movzbl %gs:(%eax, %ecx), %eax
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
.Lfunc_end5:
.size	lean_ctor_get_uint8, .Lfunc_end5-lean_ctor_get_uint8
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
ja	.LBB6_3
xorl	%eax, %eax
cmpl $256, %gs:-8(%ebp)
movb %al, %gs:-25(%ebp)
jae	.LBB6_3
cmpl $1024, %gs:-12(%ebp)
setb	%al
movb %al, %gs:-25(%ebp)
.LBB6_3:
movb %gs:-25(%ebp), %al
xorb	$-1, %al
andb	$1, %al
movzbl	%al, %eax
cltq
cmpq	$0, %rax
je	.LBB6_5
leal .L.str(%rip), %edi
movl	$559, %esi                      
leal .L.str.4(%rip), %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_notify_assert@PLT
.p2align 5
1023:
.LBB6_5:
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
.Lfunc_end6:
.size	lean_alloc_ctor, .Lfunc_end6-lean_alloc_ctor
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
je	.LBB7_2
leal .L.str(%rip), %edi
movl	$571, %esi                      
leal .L.str.8(%rip), %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_notify_assert@PLT
.p2align 5
1023:
.LBB7_2:
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
.Lfunc_end7:
.size	lean_ctor_set, .Lfunc_end7-lean_ctor_set
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function lean_ctor_set_uint8
.type	lean_ctor_set_uint8,@function
lean_ctor_set_uint8:
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
movb	%dl, %al
movq %rdi, %gs:-8(%ebp)
movl %esi, %gs:-12(%ebp)
movb %al, %gs:-13(%ebp)
movl %gs:-12(%ebp), %eax
movq %rax, %gs:-24(%ebp)
movq %gs:-8(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_num_objs
.p2align 5
1023:
movl	%eax, %ecx
movq %gs:-24(%ebp), %rax
movl	%ecx, %ecx
shlq	$3, %rcx
cmpq	%rcx, %rax
setae	%al
xorb	$-1, %al
andb	$1, %al
movzbl	%al, %eax
cltq
cmpq	$0, %rax
je	.LBB8_2
leal .L.str(%rip), %edi
movl	$628, %esi                      
leal .L.str.2(%rip), %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_notify_assert@PLT
.p2align 5
1023:
.LBB8_2:
movb %gs:-13(%ebp), %al
movb %al, %gs:-25(%ebp)
movq %gs:-8(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_obj_cptr
.p2align 5
1023:
movb %gs:-25(%ebp), %dl
movl %gs:-12(%ebp), %ecx
movb %dl, %gs:(%eax, %ecx)
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
.Lfunc_end8:
.size	lean_ctor_set_uint8, .Lfunc_end8-lean_ctor_set_uint8
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
.Lfunc_end9:
.size	lean_box, .Lfunc_end9-lean_box
.cfi_endproc
.globl	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____boxed # -- Begin function l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____boxed
.p2align	4, 0x90
.type	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____boxed,@function
l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____boxed:
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
movq %rsi, %gs:-16(%ebp)
movq %gs:-8(%ebp), %rdi
movq %gs:-16(%ebp), %rsi
leal 1023f(%rip), %r11d
pushq %r11
jmp l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22_
.p2align 5
1023:
movq %rax, %gs:-24(%ebp)
movq %gs:-16(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_dec
.p2align 5
1023:
movq %gs:-8(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_dec
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
.Lfunc_end10:
.size	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____boxed, .Lfunc_end10-l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____boxed
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
jne	.LBB11_2
movq %gs:-8(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_dec_ref
.p2align 5
1023:
.LBB11_2:
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
.size	lean_dec, .Lfunc_end11-lean_dec
.cfi_endproc
.globl	l_apply__coupon__collector      # -- Begin function l_apply__coupon__collector
.p2align	4, 0x90
.type	l_apply__coupon__collector,@function
l_apply__coupon__collector:
.cfi_startproc
pushq	%rbp
.cfi_def_cfa_offset 16
.cfi_offset %rbp, -16
movl %esp, %ebp
.cfi_def_cfa_register %rbp
.bundle_lock
subl $192, %esp
orq %r14, %rsp
.bundle_unlock
movq %rdi, %gs:-16(%ebp)
movq %gs:-16(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_obj_tag
.p2align 5
1023:
movl	%eax, %ecx
movl %ecx, %gs:-180(%ebp)
testl	%eax, %eax
je	.LBB12_2
jmp	.LBB12_14
.LBB12_14:
movl %gs:-180(%ebp), %eax
subl	$1, %eax
je	.LBB12_3
jmp	.LBB12_6
.LBB12_2:
movq %gs:-16(%ebp), %rdi
xorl	%esi, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_get_uint8
.p2align 5
1023:
movb %al, %gs:-17(%ebp)
movq %gs:-16(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_dec
.p2align 5
1023:
xorl	%esi, %esi
movl	$2, %edx
movl	%esi, %edi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_alloc_ctor
.p2align 5
1023:
movq %rax, %gs:-32(%ebp)
movq %gs:-32(%ebp), %rdi
xorl	%esi, %esi
movzbl %gs:-17(%ebp), %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set_uint8
.p2align 5
1023:
movq %gs:-32(%ebp), %rdi
movl	$1, %esi
movzbl %gs:-17(%ebp), %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set_uint8
.p2align 5
1023:
movl	$1, %esi
xorl	%edx, %edx
movl	%esi, %edi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_alloc_ctor
.p2align 5
1023:
movq %rax, %gs:-40(%ebp)
movq %gs:-40(%ebp), %rdi
movq %gs:-32(%ebp), %rdx
xorl	%esi, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set
.p2align 5
1023:
movq %gs:-40(%ebp), %rax
movq %rax, %gs:-8(%ebp)
jmp	.LBB12_13
.LBB12_3:
movq %gs:-16(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_is_exclusive
.p2align 5
1023:
xorb	$-1, %al
andb	$1, %al
movzbl	%al, %eax
movb %al, %gs:-41(%ebp)
movzbl %gs:-41(%ebp), %eax
cmpl	$0, %eax
jne	.LBB12_5
movq %gs:-16(%ebp), %rdi
xorl	%esi, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_get
.p2align 5
1023:
movq %rax, %gs:-56(%ebp)
movq %gs:-56(%ebp), %rdi
movl	$1, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_get_uint8
.p2align 5
1023:
movb %al, %gs:-57(%ebp)
movq %gs:-56(%ebp), %rdi
xorl	%esi, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_get_uint8
.p2align 5
1023:
movb %al, %gs:-58(%ebp)
movq %gs:-56(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_dec
.p2align 5
1023:
xorl	%esi, %esi
movl	$2, %edx
movl	%esi, %edi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_alloc_ctor
.p2align 5
1023:
movq %rax, %gs:-72(%ebp)
movq %gs:-72(%ebp), %rdi
xorl	%esi, %esi
movzbl %gs:-57(%ebp), %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set_uint8
.p2align 5
1023:
movq %gs:-72(%ebp), %rdi
movl	$1, %esi
movzbl %gs:-58(%ebp), %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set_uint8
.p2align 5
1023:
movq %gs:-16(%ebp), %rdi
movq %gs:-72(%ebp), %rdx
xorl	%esi, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set
.p2align 5
1023:
movq %gs:-16(%ebp), %rax
movq %rax, %gs:-8(%ebp)
jmp	.LBB12_13
.LBB12_5:
movq %gs:-16(%ebp), %rdi
xorl	%esi, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_get
.p2align 5
1023:
movq %rax, %gs:-80(%ebp)
movq %gs:-80(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_inc
.p2align 5
1023:
movq %gs:-16(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_dec
.p2align 5
1023:
movq %gs:-80(%ebp), %rdi
movl	$1, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_get_uint8
.p2align 5
1023:
movb %al, %gs:-81(%ebp)
movq %gs:-80(%ebp), %rdi
xorl	%esi, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_get_uint8
.p2align 5
1023:
movb %al, %gs:-82(%ebp)
movq %gs:-80(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_dec
.p2align 5
1023:
xorl	%esi, %esi
movl	$2, %edx
movl	%esi, %edi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_alloc_ctor
.p2align 5
1023:
movq %rax, %gs:-96(%ebp)
movq %gs:-96(%ebp), %rdi
xorl	%esi, %esi
movzbl %gs:-81(%ebp), %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set_uint8
.p2align 5
1023:
movq %gs:-96(%ebp), %rdi
movl	$1, %esi
movzbl %gs:-82(%ebp), %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set_uint8
.p2align 5
1023:
movl	$1, %esi
xorl	%edx, %edx
movl	%esi, %edi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_alloc_ctor
.p2align 5
1023:
movq %rax, %gs:-104(%ebp)
movq %gs:-104(%ebp), %rdi
movq %gs:-96(%ebp), %rdx
xorl	%esi, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set
.p2align 5
1023:
movq %gs:-104(%ebp), %rax
movq %rax, %gs:-8(%ebp)
jmp	.LBB12_13
.LBB12_6:
movq %gs:-16(%ebp), %rdi
xorl	%esi, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_get
.p2align 5
1023:
movq %rax, %gs:-112(%ebp)
movq %gs:-112(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_inc
.p2align 5
1023:
movq %gs:-16(%ebp), %rdi
movl	$1, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_get
.p2align 5
1023:
movq %rax, %gs:-120(%ebp)
movq %gs:-120(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_inc
.p2align 5
1023:
movq %gs:-16(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_dec
.p2align 5
1023:
movq %gs:-112(%ebp), %rdi
xorl	%esi, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_get_uint8
.p2align 5
1023:
movb %al, %gs:-121(%ebp)
movq %gs:-112(%ebp), %rdi
movl	$1, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_get_uint8
.p2align 5
1023:
movb %al, %gs:-122(%ebp)
movq %gs:-112(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_dec
.p2align 5
1023:
movq %gs:-120(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_is_exclusive
.p2align 5
1023:
xorb	$-1, %al
andb	$1, %al
movzbl	%al, %eax
movb %al, %gs:-123(%ebp)
movzbl %gs:-123(%ebp), %eax
cmpl	$0, %eax
jne	.LBB12_10
movq %gs:-120(%ebp), %rdi
xorl	%esi, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_get_uint8
.p2align 5
1023:
movb %al, %gs:-124(%ebp)
movb %gs:-122(%ebp), %al
movzbl	%al, %edi
movzbl %gs:-124(%ebp), %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_uint8_dec_eq
.p2align 5
1023:
movb %al, %gs:-125(%ebp)
movzbl %gs:-125(%ebp), %eax
cmpl	$0, %eax
jne	.LBB12_9
movq %gs:-120(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_free_object@PLT
.p2align 5
1023:
xorl	%eax, %eax
movl	%eax, %edi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_box
.p2align 5
1023:
movq %rax, %gs:-136(%ebp)
movq %gs:-136(%ebp), %rax
movq %rax, %gs:-8(%ebp)
jmp	.LBB12_13
.LBB12_9:
movq %gs:-120(%ebp), %rdi
xorl	%esi, %esi
movzbl %gs:-121(%ebp), %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set_uint8
.p2align 5
1023:
movl	$1, %esi
xorl	%edx, %edx
movl	%esi, %edi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_alloc_ctor
.p2align 5
1023:
movq %rax, %gs:-144(%ebp)
movq %gs:-144(%ebp), %rdi
movq %gs:-120(%ebp), %rdx
xorl	%esi, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set
.p2align 5
1023:
movq %gs:-144(%ebp), %rax
movq %rax, %gs:-8(%ebp)
jmp	.LBB12_13
.LBB12_10:
movq %gs:-120(%ebp), %rdi
xorl	%esi, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_get_uint8
.p2align 5
1023:
movb %al, %gs:-145(%ebp)
movq %gs:-120(%ebp), %rdi
movl	$1, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_get_uint8
.p2align 5
1023:
movb %al, %gs:-146(%ebp)
movq %gs:-120(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_dec
.p2align 5
1023:
movb %gs:-122(%ebp), %al
movzbl	%al, %edi
movzbl %gs:-145(%ebp), %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_uint8_dec_eq
.p2align 5
1023:
movb %al, %gs:-147(%ebp)
movzbl %gs:-147(%ebp), %eax
cmpl	$0, %eax
jne	.LBB12_12
xorl	%eax, %eax
movl	%eax, %edi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_box
.p2align 5
1023:
movq %rax, %gs:-160(%ebp)
movq %gs:-160(%ebp), %rax
movq %rax, %gs:-8(%ebp)
jmp	.LBB12_13
.LBB12_12:
xorl	%esi, %esi
movl	$2, %edx
movl	%esi, %edi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_alloc_ctor
.p2align 5
1023:
movq %rax, %gs:-168(%ebp)
movq %gs:-168(%ebp), %rdi
xorl	%esi, %esi
movzbl %gs:-121(%ebp), %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set_uint8
.p2align 5
1023:
movq %gs:-168(%ebp), %rdi
movl	$1, %esi
movzbl %gs:-146(%ebp), %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set_uint8
.p2align 5
1023:
movl	$1, %esi
xorl	%edx, %edx
movl	%esi, %edi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_alloc_ctor
.p2align 5
1023:
movq %rax, %gs:-176(%ebp)
movq %gs:-176(%ebp), %rdi
movq %gs:-168(%ebp), %rdx
xorl	%esi, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set
.p2align 5
1023:
movq %gs:-176(%ebp), %rax
movq %rax, %gs:-8(%ebp)
.LBB12_13:
movq %gs:-8(%ebp), %rax
.bundle_lock
addl $192, %esp
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
.Lfunc_end12:
.size	l_apply__coupon__collector, .Lfunc_end12-l_apply__coupon__collector
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function lean_obj_tag
.type	lean_obj_tag,@function
lean_obj_tag:
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
movq %rdi, %gs:-16(%ebp)
movq %gs:-16(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_is_scalar
.p2align 5
1023:
testb	$1, %al
jne	.LBB13_1
jmp	.LBB13_2
.LBB13_1:
movq %gs:-16(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_unbox
.p2align 5
1023:
movl %eax, %gs:-4(%ebp)
jmp	.LBB13_3
.LBB13_2:
movq %gs:-16(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ptr_tag
.p2align 5
1023:
movzbl	%al, %eax
movl %eax, %gs:-4(%ebp)
.LBB13_3:
movl %gs:-4(%ebp), %eax
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
.Lfunc_end13:
.size	lean_obj_tag, .Lfunc_end13-lean_obj_tag
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function lean_is_exclusive
.type	lean_is_exclusive,@function
lean_is_exclusive:
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
movq %rdi, %gs:-16(%ebp)
movq %gs:-16(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_is_st
.p2align 5
1023:
testb	$1, %al
jne	.LBB14_1
jmp	.LBB14_2
.LBB14_1:
movq %gs:-16(%ebp), %rax
cmpl $1, %gs:(%eax)
sete	%al
andb	$1, %al
movb %al, %gs:-1(%ebp)
jmp	.LBB14_3
.LBB14_2:
movb $0, %gs:-1(%ebp)
.LBB14_3:
movb %gs:-1(%ebp), %al
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
.Lfunc_end14:
.size	lean_is_exclusive, .Lfunc_end14-lean_is_exclusive
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function lean_ctor_get
.type	lean_ctor_get,@function
lean_ctor_get:
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
movl %esi, %gs:-12(%ebp)
movl %gs:-12(%ebp), %eax
movl %eax, %gs:-16(%ebp)
movq %gs:-8(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_num_objs
.p2align 5
1023:
movl	%eax, %ecx
movl %gs:-16(%ebp), %eax
cmpl	%ecx, %eax
setb	%al
xorb	$-1, %al
andb	$1, %al
movzbl	%al, %eax
cltq
cmpq	$0, %rax
je	.LBB15_2
leal .L.str(%rip), %edi
movl	$566, %esi                      
leal .L.str.8(%rip), %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_notify_assert@PLT
.p2align 5
1023:
.LBB15_2:
movq %gs:-8(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_obj_cptr
.p2align 5
1023:
movl %gs:-12(%ebp), %ecx
movq %gs:(%eax, %ecx, 8), %rax
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
.Lfunc_end15:
.size	lean_ctor_get, .Lfunc_end15-lean_ctor_get
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function lean_inc
.type	lean_inc,@function
lean_inc:
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
jne	.LBB16_2
movq %gs:-8(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_inc_ref
.p2align 5
1023:
.LBB16_2:
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
.Lfunc_end16:
.size	lean_inc, .Lfunc_end16-lean_inc
.cfi_endproc
.globl	l_all__tag__true___lambda__1    # -- Begin function l_all__tag__true___lambda__1
.p2align	4, 0x90
.type	l_all__tag__true___lambda__1,@function
l_all__tag__true___lambda__1:
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
xorl	%esi, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_get_uint8
.p2align 5
1023:
movb %al, %gs:-9(%ebp)
movq %gs:-8(%ebp), %rdi
movl	$1, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_get_uint8
.p2align 5
1023:
movb %al, %gs:-10(%ebp)
movb %gs:-9(%ebp), %al
movzbl	%al, %edi
movzbl %gs:-10(%ebp), %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_uint8_dec_eq
.p2align 5
1023:
movb %al, %gs:-11(%ebp)
movzbl %gs:-11(%ebp), %eax
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
.Lfunc_end17:
.size	l_all__tag__true___lambda__1, .Lfunc_end17-l_all__tag__true___lambda__1
.cfi_endproc
.globl	l_all__tag__true                # -- Begin function l_all__tag__true
.p2align	4, 0x90
.type	l_all__tag__true,@function
l_all__tag__true:
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
movq l_all__tag__true___closed__1(%rip), %rax
movq %rax, %gs:-16(%ebp)
movq %gs:-8(%ebp), %rdi
movq %gs:-16(%ebp), %rsi
leal 1023f(%rip), %r11d
pushq %r11
jmp l_List_all___rarg@PLT
.p2align 5
1023:
movb %al, %gs:-17(%ebp)
movzbl %gs:-17(%ebp), %eax
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
.Lfunc_end18:
.size	l_all__tag__true, .Lfunc_end18-l_all__tag__true
.cfi_endproc
.globl	l_all__tag__true___lambda__1___boxed # -- Begin function l_all__tag__true___lambda__1___boxed
.p2align	4, 0x90
.type	l_all__tag__true___lambda__1___boxed,@function
l_all__tag__true___lambda__1___boxed:
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
jmp l_all__tag__true___lambda__1
.p2align 5
1023:
movb %al, %gs:-9(%ebp)
movq %gs:-8(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_dec
.p2align 5
1023:
movzbl %gs:-9(%ebp), %eax
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
.Lfunc_end19:
.size	l_all__tag__true___lambda__1___boxed, .Lfunc_end19-l_all__tag__true___lambda__1___boxed
.cfi_endproc
.globl	l_all__tag__true___boxed        # -- Begin function l_all__tag__true___boxed
.p2align	4, 0x90
.type	l_all__tag__true___boxed,@function
l_all__tag__true___boxed:
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
jmp l_all__tag__true
.p2align 5
1023:
movb %al, %gs:-9(%ebp)
movzbl %gs:-9(%ebp), %eax
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
.Lfunc_end20:
.size	l_all__tag__true___boxed, .Lfunc_end20-l_all__tag__true___boxed
.cfi_endproc
.globl	l_request__to__list             # -- Begin function l_request__to__list
.p2align	4, 0x90
.type	l_request__to__list,@function
l_request__to__list:
.cfi_startproc
pushq	%rbp
.cfi_def_cfa_offset 16
.cfi_offset %rbp, -16
movl %esp, %ebp
.cfi_def_cfa_register %rbp
.bundle_lock
subl $144, %esp
orq %r14, %rsp
.bundle_unlock
movq %rdi, %gs:-16(%ebp)
movq %gs:-16(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_obj_tag
.p2align 5
1023:
movl	%eax, %ecx
movl %ecx, %gs:-132(%ebp)
testl	%eax, %eax
je	.LBB21_2
jmp	.LBB21_8
.LBB21_8:
movl %gs:-132(%ebp), %eax
subl	$1, %eax
je	.LBB21_3
jmp	.LBB21_4
.LBB21_2:
movq %gs:-16(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_dec
.p2align 5
1023:
xorl	%eax, %eax
movl	%eax, %edi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_box
.p2align 5
1023:
movq %rax, %gs:-24(%ebp)
movq %gs:-24(%ebp), %rax
movq %rax, %gs:-8(%ebp)
jmp	.LBB21_7
.LBB21_3:
movq %gs:-16(%ebp), %rdi
xorl	%esi, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_get
.p2align 5
1023:
movq %rax, %gs:-32(%ebp)
movq %gs:-32(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_inc
.p2align 5
1023:
movq %gs:-16(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_dec
.p2align 5
1023:
xorl	%eax, %eax
movl	%eax, %edi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_box
.p2align 5
1023:
movq %rax, %gs:-40(%ebp)
movl	$1, %edi
movl	$2, %esi
xorl	%edx, %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_alloc_ctor
.p2align 5
1023:
movq %rax, %gs:-48(%ebp)
movq %gs:-48(%ebp), %rdi
movq %gs:-32(%ebp), %rdx
xorl	%esi, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set
.p2align 5
1023:
movq %gs:-48(%ebp), %rdi
movq %gs:-40(%ebp), %rdx
movl	$1, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set
.p2align 5
1023:
movq %gs:-48(%ebp), %rax
movq %rax, %gs:-8(%ebp)
jmp	.LBB21_7
.LBB21_4:
movq %gs:-16(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_is_exclusive
.p2align 5
1023:
xorb	$-1, %al
andb	$1, %al
movzbl	%al, %eax
movb %al, %gs:-49(%ebp)
movzbl %gs:-49(%ebp), %eax
cmpl	$0, %eax
jne	.LBB21_6
movq %gs:-16(%ebp), %rdi
xorl	%esi, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_get
.p2align 5
1023:
movq %rax, %gs:-64(%ebp)
movq %gs:-16(%ebp), %rdi
movl	$1, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_get
.p2align 5
1023:
movq %rax, %gs:-72(%ebp)
xorl	%eax, %eax
movl	%eax, %edi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_box
.p2align 5
1023:
movq %rax, %gs:-80(%ebp)
movq %gs:-16(%ebp), %rdi
movl	$1, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set_tag
.p2align 5
1023:
movq %gs:-16(%ebp), %rdi
movq %gs:-80(%ebp), %rdx
movl	$1, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set
.p2align 5
1023:
movq %gs:-16(%ebp), %rdi
movq %gs:-72(%ebp), %rdx
xorl	%esi, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set
.p2align 5
1023:
movl	$1, %edi
movl	$2, %esi
xorl	%edx, %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_alloc_ctor
.p2align 5
1023:
movq %rax, %gs:-88(%ebp)
movq %gs:-88(%ebp), %rdi
movq %gs:-64(%ebp), %rdx
xorl	%esi, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set
.p2align 5
1023:
movq %gs:-88(%ebp), %rdi
movq %gs:-16(%ebp), %rdx
movl	$1, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set
.p2align 5
1023:
movq %gs:-88(%ebp), %rax
movq %rax, %gs:-8(%ebp)
jmp	.LBB21_7
.LBB21_6:
movq %gs:-16(%ebp), %rdi
xorl	%esi, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_get
.p2align 5
1023:
movq %rax, %gs:-96(%ebp)
movq %gs:-16(%ebp), %rdi
movl	$1, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_get
.p2align 5
1023:
movq %rax, %gs:-104(%ebp)
movq %gs:-104(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_inc
.p2align 5
1023:
movq %gs:-96(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_inc
.p2align 5
1023:
movq %gs:-16(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_dec
.p2align 5
1023:
xorl	%eax, %eax
movl	%eax, %edi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_box
.p2align 5
1023:
movq %rax, %gs:-112(%ebp)
movl	$1, %edi
movl	$2, %esi
xorl	%edx, %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_alloc_ctor
.p2align 5
1023:
movq %rax, %gs:-120(%ebp)
movq %gs:-120(%ebp), %rdi
movq %gs:-104(%ebp), %rdx
xorl	%esi, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set
.p2align 5
1023:
movq %gs:-120(%ebp), %rdi
movq %gs:-112(%ebp), %rdx
movl	$1, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set
.p2align 5
1023:
movl	$1, %edi
movl	$2, %esi
xorl	%edx, %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_alloc_ctor
.p2align 5
1023:
movq %rax, %gs:-128(%ebp)
movq %gs:-128(%ebp), %rdi
movq %gs:-96(%ebp), %rdx
xorl	%esi, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set
.p2align 5
1023:
movq %gs:-128(%ebp), %rdi
movq %gs:-120(%ebp), %rdx
movl	$1, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set
.p2align 5
1023:
movq %gs:-128(%ebp), %rax
movq %rax, %gs:-8(%ebp)
.LBB21_7:
movq %gs:-8(%ebp), %rax
.bundle_lock
addl $144, %esp
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
.size	l_request__to__list, .Lfunc_end21-l_request__to__list
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function lean_ctor_set_tag
.type	lean_ctor_set_tag,@function
lean_ctor_set_tag:
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
movb	%sil, %al
movq %rdi, %gs:-8(%ebp)
movb %al, %gs:-9(%ebp)
movzbl %gs:-9(%ebp), %eax
cmpl	$244, %eax
setle	%al
xorb	$-1, %al
andb	$1, %al
movzbl	%al, %eax
cltq
cmpq	$0, %rax
je	.LBB22_2
leal .L.str(%rip), %edi
movl	$576, %esi                      
leal .L.str.9(%rip), %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_notify_assert@PLT
.p2align 5
1023:
.LBB22_2:
movzbl %gs:-9(%ebp), %edx
movq %gs:-8(%ebp), %rax
movl %gs:4(%eax), %ecx
andl	$255, %edx
shll	$24, %edx
andl	$16777215, %ecx                 
orl	%edx, %ecx
movl %ecx, %gs:4(%eax)
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
.Lfunc_end22:
.size	lean_ctor_set_tag, .Lfunc_end22-lean_ctor_set_tag
.cfi_endproc
.globl	l___private_SimpleCouponCollector_0__apply__coupon__collector_match__1_splitter___rarg # -- Begin function l___private_SimpleCouponCollector_0__apply__coupon__collector_match__1_splitter___rarg
.p2align	4, 0x90
.type	l___private_SimpleCouponCollector_0__apply__coupon__collector_match__1_splitter___rarg,@function
l___private_SimpleCouponCollector_0__apply__coupon__collector_match__1_splitter___rarg:
.cfi_startproc
pushq	%rbp
.cfi_def_cfa_offset 16
.cfi_offset %rbp, -16
movl %esp, %ebp
.cfi_def_cfa_register %rbp
.bundle_lock
subl $112, %esp
orq %r14, %rsp
.bundle_unlock
movq %rdi, %gs:-16(%ebp)
movq %rsi, %gs:-24(%ebp)
movq %rdx, %gs:-32(%ebp)
movq %rcx, %gs:-40(%ebp)
movq %gs:-16(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_obj_tag
.p2align 5
1023:
movl	%eax, %ecx
movl %ecx, %gs:-108(%ebp)
testl	%eax, %eax
je	.LBB23_2
jmp	.LBB23_6
.LBB23_6:
movl %gs:-108(%ebp), %eax
subl	$1, %eax
je	.LBB23_3
jmp	.LBB23_4
.LBB23_2:
movq %gs:-40(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_dec
.p2align 5
1023:
movq %gs:-32(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_dec
.p2align 5
1023:
movq %gs:-16(%ebp), %rdi
xorl	%esi, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_get_uint8
.p2align 5
1023:
movb %al, %gs:-41(%ebp)
movq %gs:-16(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_dec
.p2align 5
1023:
movzbl %gs:-41(%ebp), %eax
movl	%eax, %edi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_box
.p2align 5
1023:
movq %rax, %gs:-56(%ebp)
movq %gs:-24(%ebp), %rdi
movq %gs:-56(%ebp), %rsi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_apply_1@PLT
.p2align 5
1023:
movq %rax, %gs:-64(%ebp)
movq %gs:-64(%ebp), %rax
movq %rax, %gs:-8(%ebp)
jmp	.LBB23_5
.LBB23_3:
movq %gs:-40(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_dec
.p2align 5
1023:
movq %gs:-24(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_dec
.p2align 5
1023:
movq %gs:-16(%ebp), %rdi
xorl	%esi, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_get
.p2align 5
1023:
movq %rax, %gs:-72(%ebp)
movq %gs:-72(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_inc
.p2align 5
1023:
movq %gs:-16(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_dec
.p2align 5
1023:
movq %gs:-32(%ebp), %rdi
movq %gs:-72(%ebp), %rsi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_apply_1@PLT
.p2align 5
1023:
movq %rax, %gs:-80(%ebp)
movq %gs:-80(%ebp), %rax
movq %rax, %gs:-8(%ebp)
jmp	.LBB23_5
.LBB23_4:
movq %gs:-32(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_dec
.p2align 5
1023:
movq %gs:-24(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_dec
.p2align 5
1023:
movq %gs:-16(%ebp), %rdi
xorl	%esi, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_get
.p2align 5
1023:
movq %rax, %gs:-88(%ebp)
movq %gs:-88(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_inc
.p2align 5
1023:
movq %gs:-16(%ebp), %rdi
movl	$1, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_get
.p2align 5
1023:
movq %rax, %gs:-96(%ebp)
movq %gs:-96(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_inc
.p2align 5
1023:
movq %gs:-16(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_dec
.p2align 5
1023:
movq %gs:-40(%ebp), %rdi
movq %gs:-88(%ebp), %rsi
movq %gs:-96(%ebp), %rdx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_apply_2@PLT
.p2align 5
1023:
movq %rax, %gs:-104(%ebp)
movq %gs:-104(%ebp), %rax
movq %rax, %gs:-8(%ebp)
.LBB23_5:
movq %gs:-8(%ebp), %rax
.bundle_lock
addl $112, %esp
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
.Lfunc_end23:
.size	l___private_SimpleCouponCollector_0__apply__coupon__collector_match__1_splitter___rarg, .Lfunc_end23-l___private_SimpleCouponCollector_0__apply__coupon__collector_match__1_splitter___rarg
.cfi_endproc
.globl	l___private_SimpleCouponCollector_0__apply__coupon__collector_match__1_splitter # -- Begin function l___private_SimpleCouponCollector_0__apply__coupon__collector_match__1_splitter
.p2align	4, 0x90
.type	l___private_SimpleCouponCollector_0__apply__coupon__collector_match__1_splitter,@function
l___private_SimpleCouponCollector_0__apply__coupon__collector_match__1_splitter:
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
leal l___private_SimpleCouponCollector_0__apply__coupon__collector_match__1_splitter___rarg(%rip), %edi
movl	$4, %esi
xorl	%edx, %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_alloc_closure
.p2align 5
1023:
movq %rax, %gs:-16(%ebp)
movq %gs:-16(%ebp), %rax
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
.size	l___private_SimpleCouponCollector_0__apply__coupon__collector_match__1_splitter, .Lfunc_end24-l___private_SimpleCouponCollector_0__apply__coupon__collector_match__1_splitter
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function lean_alloc_closure
.type	lean_alloc_closure,@function
lean_alloc_closure:
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
movl %esi, %gs:-12(%ebp)
movl %edx, %gs:-16(%ebp)
cmpl $0, %gs:-12(%ebp)
seta	%al
xorb	$-1, %al
andb	$1, %al
movzbl	%al, %eax
cltq
cmpq	$0, %rax
je	.LBB25_2
leal .L.str(%rip), %edi
movl	$664, %esi                      
leal .L.str.10(%rip), %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_notify_assert@PLT
.p2align 5
1023:
.LBB25_2:
movl %gs:-16(%ebp), %eax
cmpl %gs:-12(%ebp), %eax
setb	%al
xorb	$-1, %al
andb	$1, %al
movzbl	%al, %eax
cltq
cmpq	$0, %rax
je	.LBB25_4
leal .L.str(%rip), %edi
movl	$665, %esi                      
leal .L.str.11(%rip), %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_notify_assert@PLT
.p2align 5
1023:
.LBB25_4:
movl %gs:-16(%ebp), %eax
shlq	$3, %rax
addq	$24, %rax
movl	%eax, %edi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_alloc_small_object
.p2align 5
1023:
movq %rax, %gs:-24(%ebp)
movq %gs:-24(%ebp), %rdi
movl	$245, %esi
xorl	%edx, %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_set_st_header
.p2align 5
1023:
movq %gs:-8(%ebp), %rcx
movq %gs:-24(%ebp), %rax
movq %rcx, %gs:8(%eax)
movl %gs:-12(%ebp), %eax
movw	%ax, %cx
movq %gs:-24(%ebp), %rax
movw %cx, %gs:16(%eax)
movl %gs:-16(%ebp), %eax
movw	%ax, %cx
movq %gs:-24(%ebp), %rax
movw %cx, %gs:18(%eax)
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
.Lfunc_end25:
.size	lean_alloc_closure, .Lfunc_end25-lean_alloc_closure
.cfi_endproc
.globl	initialize_SimpleCouponCollector # -- Begin function initialize_SimpleCouponCollector
.p2align	4, 0x90
.type	initialize_SimpleCouponCollector,@function
initialize_SimpleCouponCollector:
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
je	.LBB26_2
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
jmp	.LBB26_5
.LBB26_2:
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
jne	.LBB26_3
jmp	.LBB26_4
.LBB26_3:
movq %gs:-32(%ebp), %rax
movq %rax, %gs:-8(%ebp)
jmp	.LBB26_5
.LBB26_4:
movq %gs:-32(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_dec_ref
.p2align 5
1023:
leal 1023f(%rip), %r11d
pushq %r11
jmp _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__1
.p2align 5
1023:
movq %rax, l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__1(%rip)
movq l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__1(%rip), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_mark_persistent@PLT
.p2align 5
1023:
leal 1023f(%rip), %r11d
pushq %r11
jmp _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__2
.p2align 5
1023:
movq %rax, l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__2(%rip)
movq l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__2(%rip), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_mark_persistent@PLT
.p2align 5
1023:
leal 1023f(%rip), %r11d
pushq %r11
jmp _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__3
.p2align 5
1023:
movq %rax, l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__3(%rip)
movq l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__3(%rip), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_mark_persistent@PLT
.p2align 5
1023:
leal 1023f(%rip), %r11d
pushq %r11
jmp _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__4
.p2align 5
1023:
movq %rax, l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__4(%rip)
movq l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__4(%rip), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_mark_persistent@PLT
.p2align 5
1023:
leal 1023f(%rip), %r11d
pushq %r11
jmp _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__5
.p2align 5
1023:
movq %rax, l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__5(%rip)
movq l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__5(%rip), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_mark_persistent@PLT
.p2align 5
1023:
leal 1023f(%rip), %r11d
pushq %r11
jmp _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__6
.p2align 5
1023:
movq %rax, l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__6(%rip)
movq l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__6(%rip), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_mark_persistent@PLT
.p2align 5
1023:
leal 1023f(%rip), %r11d
pushq %r11
jmp _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__7
.p2align 5
1023:
movq %rax, l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__7(%rip)
movq l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__7(%rip), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_mark_persistent@PLT
.p2align 5
1023:
leal 1023f(%rip), %r11d
pushq %r11
jmp _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__8
.p2align 5
1023:
movq %rax, l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__8(%rip)
movq l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__8(%rip), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_mark_persistent@PLT
.p2align 5
1023:
leal 1023f(%rip), %r11d
pushq %r11
jmp _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__9
.p2align 5
1023:
movq %rax, l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__9(%rip)
movq l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__9(%rip), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_mark_persistent@PLT
.p2align 5
1023:
leal 1023f(%rip), %r11d
pushq %r11
jmp _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__10
.p2align 5
1023:
movq %rax, l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__10(%rip)
movq l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__10(%rip), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_mark_persistent@PLT
.p2align 5
1023:
leal 1023f(%rip), %r11d
pushq %r11
jmp _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__11
.p2align 5
1023:
movq %rax, l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__11(%rip)
movq l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__11(%rip), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_mark_persistent@PLT
.p2align 5
1023:
leal 1023f(%rip), %r11d
pushq %r11
jmp _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__12
.p2align 5
1023:
movq %rax, l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__12(%rip)
movq l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__12(%rip), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_mark_persistent@PLT
.p2align 5
1023:
leal 1023f(%rip), %r11d
pushq %r11
jmp _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__13
.p2align 5
1023:
movq %rax, l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__13(%rip)
movq l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__13(%rip), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_mark_persistent@PLT
.p2align 5
1023:
leal 1023f(%rip), %r11d
pushq %r11
jmp _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__14
.p2align 5
1023:
movq %rax, l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__14(%rip)
movq l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__14(%rip), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_mark_persistent@PLT
.p2align 5
1023:
leal 1023f(%rip), %r11d
pushq %r11
jmp _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__15
.p2align 5
1023:
movq %rax, l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__15(%rip)
movq l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__15(%rip), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_mark_persistent@PLT
.p2align 5
1023:
leal 1023f(%rip), %r11d
pushq %r11
jmp _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__16
.p2align 5
1023:
movq %rax, l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__16(%rip)
movq l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__16(%rip), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_mark_persistent@PLT
.p2align 5
1023:
leal 1023f(%rip), %r11d
pushq %r11
jmp _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__17
.p2align 5
1023:
movq %rax, l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__17(%rip)
movq l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__17(%rip), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_mark_persistent@PLT
.p2align 5
1023:
leal 1023f(%rip), %r11d
pushq %r11
jmp _init_l_instReprTag___closed__1
.p2align 5
1023:
movq %rax, l_instReprTag___closed__1(%rip)
movq l_instReprTag___closed__1(%rip), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_mark_persistent@PLT
.p2align 5
1023:
leal 1023f(%rip), %r11d
pushq %r11
jmp _init_l_instReprTag
.p2align 5
1023:
movq %rax, l_instReprTag(%rip)
movq l_instReprTag(%rip), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_mark_persistent@PLT
.p2align 5
1023:
leal 1023f(%rip), %r11d
pushq %r11
jmp _init_l_all__tag__true___closed__1
.p2align 5
1023:
movq %rax, l_all__tag__true___closed__1(%rip)
movq l_all__tag__true___closed__1(%rip), %rdi
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
.LBB26_5:
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
.Lfunc_end26:
.size	initialize_SimpleCouponCollector, .Lfunc_end26-initialize_SimpleCouponCollector
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
.Lfunc_end27:
.size	lean_io_result_mk_ok, .Lfunc_end27-lean_io_result_mk_ok
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
.Lfunc_end28:
.size	lean_io_result_is_error, .Lfunc_end28-lean_io_result_is_error
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
je	.LBB29_2
movq %gs:-8(%ebp), %rax
movl %gs:(%eax), %ecx
addl	$-1, %ecx
movl %ecx, %gs:(%eax)
jmp	.LBB29_5
.LBB29_2:
movq %gs:-8(%ebp), %rax
cmpl $0, %gs:(%eax)
je	.LBB29_4
movq %gs:-8(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_dec_ref_cold@PLT
.p2align 5
1023:
.LBB29_4:
jmp	.LBB29_5
.LBB29_5:
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
.Lfunc_end29:
.size	lean_dec_ref, .Lfunc_end29-lean_dec_ref
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
.Lfunc_end30:
.size	lean_is_scalar, .Lfunc_end30-lean_is_scalar
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
.Lfunc_end31:
.size	lean_unbox, .Lfunc_end31-lean_unbox
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function lean_string_len
.type	lean_string_len,@function
lean_string_len:
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
jmp lean_to_string
.p2align 5
1023:
movq %gs:24(%eax), %rax
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
.Lfunc_end32:
.size	lean_string_len, .Lfunc_end32-lean_string_len
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function lean_to_string
.type	lean_to_string,@function
lean_to_string:
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
jmp lean_is_string
.p2align 5
1023:
xorb	$-1, %al
andb	$1, %al
movzbl	%al, %eax
cltq
cmpq	$0, %rax
je	.LBB33_2
leal .L.str(%rip), %edi
movl	$488, %esi                      
leal .L.str.1(%rip), %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_notify_assert@PLT
.p2align 5
1023:
.LBB33_2:
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
.Lfunc_end33:
.size	lean_to_string, .Lfunc_end33-lean_to_string
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function lean_is_string
.type	lean_is_string,@function
lean_is_string:
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
cmpl	$249, %eax
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
.Lfunc_end34:
.size	lean_is_string, .Lfunc_end34-lean_is_string
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
.Lfunc_end35:
.size	lean_ptr_tag, .Lfunc_end35-lean_ptr_tag
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function lean_usize_to_nat
.type	lean_usize_to_nat,@function
lean_usize_to_nat:
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
movq %rdi, %gs:-16(%ebp)
movabsq	$9223372036854775807, %rax      
cmpq %rax, %gs:-16(%ebp)
setbe	%al
andb	$1, %al
movzbl	%al, %eax
cltq
cmpq	$0, %rax
je	.LBB36_2
movq %gs:-16(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_box
.p2align 5
1023:
movq %rax, %gs:-8(%ebp)
jmp	.LBB36_3
.LBB36_2:
movq %gs:-16(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_big_usize_to_nat@PLT
.p2align 5
1023:
movq %rax, %gs:-8(%ebp)
.LBB36_3:
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
.Lfunc_end36:
.size	lean_usize_to_nat, .Lfunc_end36-lean_usize_to_nat
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
je	.LBB37_2
leal .L.str(%rip), %edi
movl	$544, %esi                      
leal .L.str.3(%rip), %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_notify_assert@PLT
.p2align 5
1023:
.LBB37_2:
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
.Lfunc_end37:
.size	lean_ctor_num_objs, .Lfunc_end37-lean_ctor_num_objs
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
je	.LBB38_2
leal .L.str(%rip), %edi
movl	$549, %esi                      
leal .L.str.3(%rip), %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_notify_assert@PLT
.p2align 5
1023:
.LBB38_2:
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
.Lfunc_end38:
.size	lean_ctor_obj_cptr, .Lfunc_end38-lean_ctor_obj_cptr
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
.Lfunc_end39:
.size	lean_is_ctor, .Lfunc_end39-lean_is_ctor
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
.Lfunc_end40:
.size	lean_ptr_other, .Lfunc_end40-lean_ptr_other
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
je	.LBB41_2
leal .L.str(%rip), %edi
movl	$484, %esi                      
leal .L.str.3(%rip), %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_notify_assert@PLT
.p2align 5
1023:
.LBB41_2:
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
.Lfunc_end41:
.size	lean_to_ctor, .Lfunc_end41-lean_to_ctor
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
je	.LBB42_2
leal .L.str(%rip), %edi
movl	$350, %esi                      
leal .L.str.5(%rip), %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_notify_assert@PLT
.p2align 5
1023:
.LBB42_2:
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
jbe	.LBB42_4
movq %gs:-24(%ebp), %rax
movl %gs:-8(%ebp), %ecx
addq	%rcx, %rax
movq %rax, %gs:-32(%ebp)
movq %gs:-32(%ebp), %rax
movq $0, %gs:-8(%eax)
.LBB42_4:
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
.Lfunc_end42:
.size	lean_alloc_ctor_memory, .Lfunc_end42-lean_alloc_ctor_memory
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
.Lfunc_end43:
.size	lean_set_st_header, .Lfunc_end43-lean_set_st_header
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
.Lfunc_end44:
.size	lean_align, .Lfunc_end44-lean_align
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
je	.LBB45_2
leal .L.str(%rip), %edi
movl	$317, %esi                      
leal .L.str.6(%rip), %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_notify_assert@PLT
.p2align 5
1023:
.LBB45_2:
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
je	.LBB45_4
leal .L.str(%rip), %edi
movl	$318, %esi                      
leal .L.str.7(%rip), %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_notify_assert@PLT
.p2align 5
1023:
.LBB45_4:
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
.Lfunc_end45:
.size	lean_get_slot_idx, .Lfunc_end45-lean_get_slot_idx
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function lean_is_st
.type	lean_is_st,@function
lean_is_st:
.cfi_startproc
pushq	%rbp
.cfi_def_cfa_offset 16
.cfi_offset %rbp, -16
movl %esp, %ebp
.cfi_def_cfa_register %rbp
movq %rdi, %gs:-8(%ebp)
movq %gs:-8(%ebp), %rax
cmpl $0, %gs:(%eax)
setg	%al
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
.Lfunc_end46:
.size	lean_is_st, .Lfunc_end46-lean_is_st
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function lean_inc_ref
.type	lean_inc_ref,@function
lean_inc_ref:
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
jmp lean_is_st
.p2align 5
1023:
testb	$1, %al
jne	.LBB47_1
jmp	.LBB47_2
.LBB47_1:
movq %gs:-8(%ebp), %rax
movl %gs:(%eax), %ecx
addl	$1, %ecx
movl %ecx, %gs:(%eax)
jmp	.LBB47_5
.LBB47_2:
movq %gs:-8(%ebp), %rax
cmpl $0, %gs:(%eax)
je	.LBB47_4
movq %gs:-8(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_inc_ref_cold@PLT
.p2align 5
1023:
.LBB47_4:
jmp	.LBB47_5
.LBB47_5:
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
.Lfunc_end47:
.size	lean_inc_ref, .Lfunc_end47-lean_inc_ref
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function lean_alloc_small_object
.type	lean_alloc_small_object,@function
lean_alloc_small_object:
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
movl %gs:-4(%ebp), %eax
movl	%eax, %edi
movl	$8, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_align
.p2align 5
1023:
movl %eax, %gs:-4(%ebp)
movl %gs:-4(%ebp), %edi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_get_slot_idx
.p2align 5
1023:
movl %eax, %gs:-8(%ebp)
cmpl $4096, %gs:-4(%ebp)
setbe	%al
xorb	$-1, %al
andb	$1, %al
movzbl	%al, %eax
cltq
cmpq	$0, %rax
je	.LBB48_2
leal .L.str(%rip), %edi
movl	$335, %esi                      
leal .L.str.12(%rip), %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_notify_assert@PLT
.p2align 5
1023:
.LBB48_2:
movl %gs:-4(%ebp), %edi
movl %gs:-8(%ebp), %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_alloc_small@PLT
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
.Lfunc_end48:
.size	lean_alloc_small_object, .Lfunc_end48-lean_alloc_small_object
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
.Lfunc_end49:
.size	lean_io_mk_world, .Lfunc_end49-lean_io_mk_world
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__1
.type	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__1,@function
_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__1:
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
leal .L.str.13(%rip), %edi
movl	$3, %edx
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
.Lfunc_end50:
.size	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__1, .Lfunc_end50-_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__1
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__2
.type	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__2,@function
_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__2:
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
movq l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__1(%rip), %rax
movq %rax, %gs:-8(%ebp)
movl	$3, %edi
movl	$1, %esi
xorl	%edx, %edx
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
.Lfunc_end51:
.size	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__2, .Lfunc_end51-_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__2
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__3
.type	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__3,@function
_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__3:
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
xorl	%eax, %eax
movl	%eax, %edi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_box
.p2align 5
1023:
movq %rax, %gs:-8(%ebp)
movq l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__2(%rip), %rax
movq %rax, %gs:-16(%ebp)
movl	$5, %edi
movl	$2, %esi
xorl	%edx, %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_alloc_ctor
.p2align 5
1023:
movq %rax, %gs:-24(%ebp)
movq %gs:-24(%ebp), %rdi
movq %gs:-8(%ebp), %rdx
xorl	%esi, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set
.p2align 5
1023:
movq %gs:-24(%ebp), %rdi
movq %gs:-16(%ebp), %rdx
movl	$1, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set
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
.Lfunc_end52:
.size	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__3, .Lfunc_end52-_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__3
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__4
.type	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__4,@function
_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__4:
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
leal .L.str.14(%rip), %edi
movl	$4, %edx
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
.Lfunc_end53:
.size	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__4, .Lfunc_end53-_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__4
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__5
.type	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__5,@function
_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__5:
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
movq l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__4(%rip), %rax
movq %rax, %gs:-8(%ebp)
movl	$3, %edi
movl	$1, %esi
xorl	%edx, %edx
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
.Lfunc_end54:
.size	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__5, .Lfunc_end54-_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__5
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__6
.type	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__6,@function
_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__6:
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
movq l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__3(%rip), %rax
movq %rax, %gs:-8(%ebp)
movq l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__5(%rip), %rax
movq %rax, %gs:-16(%ebp)
movl	$5, %edi
movl	$2, %esi
xorl	%edx, %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_alloc_ctor
.p2align 5
1023:
movq %rax, %gs:-24(%ebp)
movq %gs:-24(%ebp), %rdi
movq %gs:-8(%ebp), %rdx
xorl	%esi, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set
.p2align 5
1023:
movq %gs:-24(%ebp), %rdi
movq %gs:-16(%ebp), %rdx
movl	$1, %esi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_ctor_set
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
.Lfunc_end55:
.size	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__6, .Lfunc_end55-_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__6
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__7
.type	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__7,@function
_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__7:
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
movl	$7, %edi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_unsigned_to_nat
.p2align 5
1023:
movq %rax, %gs:-8(%ebp)
movq %gs:-8(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_nat_to_int
.p2align 5
1023:
movq %rax, %gs:-16(%ebp)
movq %gs:-16(%ebp), %rax
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
.Lfunc_end56:
.size	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__7, .Lfunc_end56-_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__7
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function lean_unsigned_to_nat
.type	lean_unsigned_to_nat,@function
lean_unsigned_to_nat:
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
movl %gs:-4(%ebp), %eax
movl	%eax, %edi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_usize_to_nat
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
.Lfunc_end57:
.size	lean_unsigned_to_nat, .Lfunc_end57-lean_unsigned_to_nat
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__8
.type	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__8,@function
_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__8:
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
leal .L.str.15(%rip), %edi
movl	$1, %edx
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
.Lfunc_end58:
.size	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__8, .Lfunc_end58-_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__8
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__9
.type	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__9,@function
_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__9:
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
movq l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__8(%rip), %rax
movq %rax, %gs:-8(%ebp)
movl	$3, %edi
movl	$1, %esi
xorl	%edx, %edx
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
.Lfunc_end59:
.size	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__9, .Lfunc_end59-_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__9
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__10
.type	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__10,@function
_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__10:
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
leal .L.str.16(%rip), %edi
movl	$3, %edx
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
.Lfunc_end60:
.size	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__10, .Lfunc_end60-_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__10
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__11
.type	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__11,@function
_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__11:
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
movq l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__10(%rip), %rax
movq %rax, %gs:-8(%ebp)
movl	$3, %edi
movl	$1, %esi
xorl	%edx, %edx
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
.Lfunc_end61:
.size	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__11, .Lfunc_end61-_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__11
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__12
.type	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__12,@function
_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__12:
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
leal .L.str.17(%rip), %edi
movl	$2, %edx
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
.Lfunc_end62:
.size	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__12, .Lfunc_end62-_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__12
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__13
.type	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__13,@function
_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__13:
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
movq l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__12(%rip), %rax
movq %rax, %gs:-8(%ebp)
movq %gs:-8(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_string_length
.p2align 5
1023:
movq %rax, %gs:-16(%ebp)
movq %gs:-16(%ebp), %rax
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
.Lfunc_end63:
.size	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__13, .Lfunc_end63-_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__13
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__14
.type	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__14,@function
_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__14:
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
movq l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__13(%rip), %rax
movq %rax, %gs:-8(%ebp)
movq %gs:-8(%ebp), %rdi
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_nat_to_int
.p2align 5
1023:
movq %rax, %gs:-16(%ebp)
movq %gs:-16(%ebp), %rax
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
.Lfunc_end64:
.size	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__14, .Lfunc_end64-_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__14
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__15
.type	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__15,@function
_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__15:
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
movq l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__12(%rip), %rax
movq %rax, %gs:-8(%ebp)
movl	$3, %edi
movl	$1, %esi
xorl	%edx, %edx
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
.Lfunc_end65:
.size	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__15, .Lfunc_end65-_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__15
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__16
.type	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__16,@function
_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__16:
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
leal .L.str.18(%rip), %edi
movl	$2, %edx
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
.Lfunc_end66:
.size	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__16, .Lfunc_end66-_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__16
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__17
.type	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__17,@function
_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__17:
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
movq l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__16(%rip), %rax
movq %rax, %gs:-8(%ebp)
movl	$3, %edi
movl	$1, %esi
xorl	%edx, %edx
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
.Lfunc_end67:
.size	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__17, .Lfunc_end67-_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__17
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function _init_l_instReprTag___closed__1
.type	_init_l_instReprTag___closed__1,@function
_init_l_instReprTag___closed__1:
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
leal l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____boxed(%rip), %edi
movl	$2, %esi
xorl	%edx, %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_alloc_closure
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
.Lfunc_end68:
.size	_init_l_instReprTag___closed__1, .Lfunc_end68-_init_l_instReprTag___closed__1
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function _init_l_instReprTag
.type	_init_l_instReprTag,@function
_init_l_instReprTag:
.cfi_startproc
pushq	%rbp
.cfi_def_cfa_offset 16
.cfi_offset %rbp, -16
movl %esp, %ebp
.cfi_def_cfa_register %rbp
movq l_instReprTag___closed__1(%rip), %rax
movq %rax, %gs:-8(%ebp)
movq %gs:-8(%ebp), %rax
popq	%rbp
.cfi_def_cfa %rsp, 8
popq %r11
.bundle_lock
andl $0xffffffe0, %r11d
orq %r14, %r11
jmpq *%r11
.bundle_unlock
.Lfunc_end69:
.size	_init_l_instReprTag, .Lfunc_end69-_init_l_instReprTag
.cfi_endproc
.p2align	4, 0x90                         # -- Begin function _init_l_all__tag__true___closed__1
.type	_init_l_all__tag__true___closed__1,@function
_init_l_all__tag__true___closed__1:
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
leal l_all__tag__true___lambda__1___boxed(%rip), %edi
movl	$1, %esi
xorl	%edx, %edx
leal 1023f(%rip), %r11d
pushq %r11
jmp lean_alloc_closure
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
.Lfunc_end70:
.size	_init_l_all__tag__true___closed__1, .Lfunc_end70-_init_l_all__tag__true___closed__1
.cfi_endproc
.type	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__7,@object # @l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__7
.local	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__7
.comm	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__7,8,8
.type	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__6,@object # @l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__6
.local	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__6
.comm	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__6,8,8
.type	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__9,@object # @l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__9
.local	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__9
.comm	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__9,8,8
.type	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__11,@object # @l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__11
.local	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__11
.comm	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__11,8,8
.type	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__5,@object # @l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__5
.local	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__5
.comm	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__5,8,8
.type	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__15,@object # @l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__15
.local	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__15
.comm	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__15,8,8
.type	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__17,@object # @l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__17
.local	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__17
.comm	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__17,8,8
.type	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__14,@object # @l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__14
.local	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__14
.comm	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__14,8,8
.type	l_all__tag__true___closed__1,@object # @l_all__tag__true___closed__1
.local	l_all__tag__true___closed__1
.comm	l_all__tag__true___closed__1,8,8
.type	_G_initialized,@object          # @_G_initialized
.local	_G_initialized
.comm	_G_initialized,1,1
.type	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__1,@object # @l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__1
.local	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__1
.comm	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__1,8,8
.type	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__2,@object # @l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__2
.local	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__2
.comm	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__2,8,8
.type	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__3,@object # @l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__3
.local	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__3
.comm	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__3,8,8
.type	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__4,@object # @l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__4
.local	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__4
.comm	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__4,8,8
.type	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__8,@object # @l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__8
.local	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__8
.comm	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__8,8,8
.type	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__10,@object # @l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__10
.local	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__10
.comm	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__10,8,8
.type	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__12,@object # @l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__12
.local	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__12
.comm	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__12,8,8
.type	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__13,@object # @l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__13
.local	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__13
.comm	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__13,8,8
.type	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__16,@object # @l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__16
.local	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__16
.comm	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__16,8,8
.type	l_instReprTag___closed__1,@object # @l_instReprTag___closed__1
.local	l_instReprTag___closed__1
.comm	l_instReprTag___closed__1,8,8
.type	l_instReprTag,@object           # @l_instReprTag
.bss
.globl	l_instReprTag
.p2align	3, 0x0
l_instReprTag:
.quad	0
.size	l_instReprTag, 8
.type	.L.str,@object                  # @.str
.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
.asciz	"/home/sally/.elan/toolchains/leanprover--lean4---v4.17.0/include/lean/lean.h"
.size	.L.str, 77
.type	.L.str.1,@object                # @.str.1
.L.str.1:
.asciz	"lean_is_string(o)"
.size	.L.str.1, 18
.type	.L.str.2,@object                # @.str.2
.L.str.2:
.asciz	"offset >= lean_ctor_num_objs(o) * sizeof(void*)"
.size	.L.str.2, 48
.type	.L.str.3,@object                # @.str.3
.L.str.3:
.asciz	"lean_is_ctor(o)"
.size	.L.str.3, 16
.type	.L.str.4,@object                # @.str.4
.L.str.4:
.asciz	"tag <= LeanMaxCtorTag && num_objs < LEAN_MAX_CTOR_FIELDS && scalar_sz < LEAN_MAX_CTOR_SCALARS_SIZE"
.size	.L.str.4, 99
.type	.L.str.5,@object                # @.str.5
.L.str.5:
.asciz	"sz1 <= LEAN_MAX_SMALL_OBJECT_SIZE"
.size	.L.str.5, 34
.type	.L.str.6,@object                # @.str.6
.L.str.6:
.asciz	"sz > 0"
.size	.L.str.6, 7
.type	.L.str.7,@object                # @.str.7
.L.str.7:
.asciz	"lean_align(sz, LEAN_OBJECT_SIZE_DELTA) == sz"
.size	.L.str.7, 45
.type	.L.str.8,@object                # @.str.8
.L.str.8:
.asciz	"i < lean_ctor_num_objs(o)"
.size	.L.str.8, 26
.type	.L.str.9,@object                # @.str.9
.L.str.9:
.asciz	"new_tag <= LeanMaxCtorTag"
.size	.L.str.9, 26
.type	.L.str.10,@object               # @.str.10
.L.str.10:
.asciz	"arity > 0"
.size	.L.str.10, 10
.type	.L.str.11,@object               # @.str.11
.L.str.11:
.asciz	"num_fixed < arity"
.size	.L.str.11, 18
.type	.L.str.12,@object               # @.str.12
.L.str.12:
.asciz	"sz <= LEAN_MAX_SMALL_OBJECT_SIZE"
.size	.L.str.12, 33
.type	.L.str.13,@object               # @.str.13
.L.str.13:
.asciz	"lhs"
.size	.L.str.13, 4
.type	.L.str.14,@object               # @.str.14
.L.str.14:
.asciz	" := "
.size	.L.str.14, 5
.type	.L.str.15,@object               # @.str.15
.L.str.15:
.asciz	","
.size	.L.str.15, 2
.type	.L.str.16,@object               # @.str.16
.L.str.16:
.asciz	"rhs"
.size	.L.str.16, 4
.type	.L.str.17,@object               # @.str.17
.L.str.17:
.asciz	"{ "
.size	.L.str.17, 3
.type	.L.str.18,@object               # @.str.18
.L.str.18:
.asciz	" }"
.size	.L.str.18, 3
.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
.section	".note.GNU-stack","",@progbits
.addrsig
.addrsig_sym lean_nat_to_int
.addrsig_sym lean_string_length
.addrsig_sym lean_uint8_to_nat
.addrsig_sym lean_uint8_dec_eq
.addrsig_sym l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22_
.addrsig_sym lean_ctor_get_uint8
.addrsig_sym l___private_Init_Data_Repr_0__Nat_reprFast
.addrsig_sym lean_alloc_ctor
.addrsig_sym lean_ctor_set
.addrsig_sym lean_ctor_set_uint8
.addrsig_sym lean_box
.addrsig_sym l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____boxed
.addrsig_sym lean_dec
.addrsig_sym lean_obj_tag
.addrsig_sym lean_is_exclusive
.addrsig_sym lean_ctor_get
.addrsig_sym lean_inc
.addrsig_sym lean_free_object
.addrsig_sym l_all__tag__true___lambda__1
.addrsig_sym l_all__tag__true
.addrsig_sym l_List_all___rarg
.addrsig_sym l_all__tag__true___lambda__1___boxed
.addrsig_sym lean_ctor_set_tag
.addrsig_sym l___private_SimpleCouponCollector_0__apply__coupon__collector_match__1_splitter___rarg
.addrsig_sym lean_apply_1
.addrsig_sym lean_apply_2
.addrsig_sym lean_alloc_closure
.addrsig_sym lean_io_result_mk_ok
.addrsig_sym initialize_Init
.addrsig_sym lean_io_result_is_error
.addrsig_sym lean_dec_ref
.addrsig_sym lean_mark_persistent
.addrsig_sym lean_is_scalar
.addrsig_sym lean_unbox
.addrsig_sym lean_big_size_t_to_int
.addrsig_sym lean_string_len
.addrsig_sym lean_to_string
.addrsig_sym lean_is_string
.addrsig_sym lean_notify_assert
.addrsig_sym lean_ptr_tag
.addrsig_sym lean_usize_to_nat
.addrsig_sym lean_big_usize_to_nat
.addrsig_sym lean_ctor_num_objs
.addrsig_sym lean_ctor_obj_cptr
.addrsig_sym lean_is_ctor
.addrsig_sym lean_ptr_other
.addrsig_sym lean_to_ctor
.addrsig_sym lean_alloc_ctor_memory
.addrsig_sym lean_set_st_header
.addrsig_sym lean_align
.addrsig_sym lean_get_slot_idx
.addrsig_sym lean_alloc_small
.addrsig_sym lean_is_st
.addrsig_sym lean_inc_ref
.addrsig_sym lean_inc_ref_cold
.addrsig_sym lean_alloc_small_object
.addrsig_sym lean_io_mk_world
.addrsig_sym lean_dec_ref_cold
.addrsig_sym _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__1
.addrsig_sym lean_mk_string_unchecked
.addrsig_sym _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__2
.addrsig_sym _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__3
.addrsig_sym _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__4
.addrsig_sym _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__5
.addrsig_sym _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__6
.addrsig_sym _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__7
.addrsig_sym lean_unsigned_to_nat
.addrsig_sym _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__8
.addrsig_sym _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__9
.addrsig_sym _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__10
.addrsig_sym _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__11
.addrsig_sym _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__12
.addrsig_sym _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__13
.addrsig_sym _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__14
.addrsig_sym _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__15
.addrsig_sym _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__16
.addrsig_sym _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__17
.addrsig_sym _init_l_instReprTag___closed__1
.addrsig_sym _init_l_instReprTag
.addrsig_sym _init_l_all__tag__true___closed__1
.addrsig_sym l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__7
.addrsig_sym l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__6
.addrsig_sym l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__9
.addrsig_sym l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__11
.addrsig_sym l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__5
.addrsig_sym l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__15
.addrsig_sym l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__17
.addrsig_sym l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__14
.addrsig_sym l_all__tag__true___closed__1
.addrsig_sym _G_initialized
.addrsig_sym l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__1
.addrsig_sym l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__2
.addrsig_sym l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__3
.addrsig_sym l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__4
.addrsig_sym l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__8
.addrsig_sym l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__10
.addrsig_sym l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__12
.addrsig_sym l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__13
.addrsig_sym l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__16
.addrsig_sym l_instReprTag___closed__1
.addrsig_sym l_instReprTag
