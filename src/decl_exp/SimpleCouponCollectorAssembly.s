	.text
	.file	"SimpleCouponCollector.c"
	.p2align	4, 0x90                         # -- Begin function lean_nat_to_int
	.type	lean_nat_to_int,@function
lean_nat_to_int:                        # @lean_nat_to_int
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	lean_is_scalar
	testb	$1, %al
	jne	.LBB0_1
	jmp	.LBB0_4
.LBB0_1:
	movq	-16(%rbp), %rdi
	callq	lean_unbox
	movq	%rax, -24(%rbp)
	cmpq	$2147483647, -24(%rbp)          # imm = 0x7FFFFFFF
	ja	.LBB0_3
# %bb.2:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_5
.LBB0_3:
	movq	-24(%rbp), %rdi
	callq	lean_big_size_t_to_int@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_5:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	lean_nat_to_int, .Lfunc_end0-lean_nat_to_int
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lean_string_length
	.type	lean_string_length,@function
lean_string_length:                     # @lean_string_length
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	lean_string_len
	movq	%rax, %rdi
	callq	lean_box
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	lean_string_length, .Lfunc_end1-lean_string_length
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lean_uint8_to_nat
	.type	lean_uint8_to_nat,@function
lean_uint8_to_nat:                      # @lean_uint8_to_nat
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movb	%dil, %al
	movb	%al, -1(%rbp)
	movzbl	-1(%rbp), %eax
	movl	%eax, %edi
	callq	lean_usize_to_nat
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	lean_uint8_to_nat, .Lfunc_end2-lean_uint8_to_nat
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lean_uint8_dec_eq
	.type	lean_uint8_dec_eq,@function
lean_uint8_dec_eq:                      # @lean_uint8_dec_eq
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%sil, %al
	movb	%dil, %cl
	movb	%cl, -1(%rbp)
	movb	%al, -2(%rbp)
	movzbl	-1(%rbp), %eax
	movzbl	-2(%rbp), %ecx
	cmpl	%ecx, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	lean_uint8_dec_eq, .Lfunc_end3-lean_uint8_dec_eq
	.cfi_endproc
                                        # -- End function
	.globl	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22_ # -- Begin function l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22_
	.p2align	4, 0x90
	.type	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22_,@function
l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22_: # @l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$272, %rsp                      # imm = 0x110
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# %bb.1:
	movq	-8(%rbp), %rdi
	xorl	%esi, %esi
	callq	lean_ctor_get_uint8
	movb	%al, -17(%rbp)
	movzbl	-17(%rbp), %edi
	callq	lean_uint8_to_nat
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	l___private_Init_Data_Repr_0__Nat_reprFast@PLT
	movq	%rax, -40(%rbp)
	movl	$3, %edi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	lean_alloc_ctor
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rdx
	xorl	%esi, %esi
	callq	lean_ctor_set
	movq	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__7(%rip), %rax
	movq	%rax, -56(%rbp)
	movl	$4, %edi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	lean_alloc_ctor
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rdx
	xorl	%esi, %esi
	callq	lean_ctor_set
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movl	$1, %esi
	callq	lean_ctor_set
	movb	$0, -65(%rbp)
	movl	$6, %edi
	movl	$1, %edx
	movl	%edx, %esi
	callq	lean_alloc_ctor
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	movq	-64(%rbp), %rdx
	xorl	%esi, %esi
	callq	lean_ctor_set
	movq	-80(%rbp), %rdi
	movl	$8, %esi
	movzbl	-65(%rbp), %edx
	callq	lean_ctor_set_uint8
	movq	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__6(%rip), %rax
	movq	%rax, -88(%rbp)
	movl	$5, %edi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	lean_alloc_ctor
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	movq	-88(%rbp), %rdx
	xorl	%esi, %esi
	callq	lean_ctor_set
	movq	-96(%rbp), %rdi
	movq	-80(%rbp), %rdx
	movl	$1, %esi
	callq	lean_ctor_set
	movq	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__9(%rip), %rax
	movq	%rax, -104(%rbp)
	movl	$5, %edi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	lean_alloc_ctor
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	movq	-96(%rbp), %rdx
	xorl	%esi, %esi
	callq	lean_ctor_set
	movq	-112(%rbp), %rdi
	movq	-104(%rbp), %rdx
	movl	$1, %esi
	callq	lean_ctor_set
	movl	$1, %edi
	callq	lean_box
	movq	%rax, -120(%rbp)
	movl	$5, %edi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	lean_alloc_ctor
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rdi
	movq	-112(%rbp), %rdx
	xorl	%esi, %esi
	callq	lean_ctor_set
	movq	-128(%rbp), %rdi
	movq	-120(%rbp), %rdx
	movl	$1, %esi
	callq	lean_ctor_set
	movq	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__11(%rip), %rax
	movq	%rax, -136(%rbp)
	movl	$5, %edi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	lean_alloc_ctor
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rdi
	movq	-128(%rbp), %rdx
	xorl	%esi, %esi
	callq	lean_ctor_set
	movq	-144(%rbp), %rdi
	movq	-136(%rbp), %rdx
	movl	$1, %esi
	callq	lean_ctor_set
	movq	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__5(%rip), %rax
	movq	%rax, -152(%rbp)
	movl	$5, %edi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	lean_alloc_ctor
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rdi
	movq	-144(%rbp), %rdx
	xorl	%esi, %esi
	callq	lean_ctor_set
	movq	-160(%rbp), %rdi
	movq	-152(%rbp), %rdx
	movl	$1, %esi
	callq	lean_ctor_set
	movq	-8(%rbp), %rdi
	movl	$1, %esi
	callq	lean_ctor_get_uint8
	movb	%al, -161(%rbp)
	movzbl	-161(%rbp), %edi
	callq	lean_uint8_to_nat
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rdi
	callq	l___private_Init_Data_Repr_0__Nat_reprFast@PLT
	movq	%rax, -184(%rbp)
	movl	$3, %edi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	lean_alloc_ctor
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rdi
	movq	-184(%rbp), %rdx
	xorl	%esi, %esi
	callq	lean_ctor_set
	movl	$4, %edi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	lean_alloc_ctor
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rdi
	movq	-56(%rbp), %rdx
	xorl	%esi, %esi
	callq	lean_ctor_set
	movq	-200(%rbp), %rdi
	movq	-192(%rbp), %rdx
	movl	$1, %esi
	callq	lean_ctor_set
	movl	$6, %edi
	movl	$1, %edx
	movl	%edx, %esi
	callq	lean_alloc_ctor
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rdi
	movq	-200(%rbp), %rdx
	xorl	%esi, %esi
	callq	lean_ctor_set
	movq	-208(%rbp), %rdi
	movl	$8, %esi
	movzbl	-65(%rbp), %edx
	callq	lean_ctor_set_uint8
	movl	$5, %edi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	lean_alloc_ctor
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rdi
	movq	-160(%rbp), %rdx
	xorl	%esi, %esi
	callq	lean_ctor_set
	movq	-216(%rbp), %rdi
	movq	-208(%rbp), %rdx
	movl	$1, %esi
	callq	lean_ctor_set
	movq	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__15(%rip), %rax
	movq	%rax, -224(%rbp)
	movl	$5, %edi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	lean_alloc_ctor
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rdi
	movq	-224(%rbp), %rdx
	xorl	%esi, %esi
	callq	lean_ctor_set
	movq	-232(%rbp), %rdi
	movq	-216(%rbp), %rdx
	movl	$1, %esi
	callq	lean_ctor_set
	movq	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__17(%rip), %rax
	movq	%rax, -240(%rbp)
	movl	$5, %edi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	lean_alloc_ctor
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rdi
	movq	-232(%rbp), %rdx
	xorl	%esi, %esi
	callq	lean_ctor_set
	movq	-248(%rbp), %rdi
	movq	-240(%rbp), %rdx
	movl	$1, %esi
	callq	lean_ctor_set
	movq	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__14(%rip), %rax
	movq	%rax, -256(%rbp)
	movl	$4, %edi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	lean_alloc_ctor
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rdi
	movq	-256(%rbp), %rdx
	xorl	%esi, %esi
	callq	lean_ctor_set
	movq	-264(%rbp), %rdi
	movq	-248(%rbp), %rdx
	movl	$1, %esi
	callq	lean_ctor_set
	movl	$6, %edi
	movl	$1, %edx
	movl	%edx, %esi
	callq	lean_alloc_ctor
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rdi
	movq	-264(%rbp), %rdx
	xorl	%esi, %esi
	callq	lean_ctor_set
	movq	-272(%rbp), %rdi
	movl	$8, %esi
	movzbl	-65(%rbp), %edx
	callq	lean_ctor_set_uint8
	movq	-272(%rbp), %rax
	addq	$272, %rsp                      # imm = 0x110
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22_, .Lfunc_end4-l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22_
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lean_ctor_get_uint8
	.type	lean_ctor_get_uint8,@function
lean_ctor_get_uint8:                    # @lean_ctor_get_uint8
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	-8(%rbp), %rdi
	callq	lean_ctor_num_objs
	movl	%eax, %ecx
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	setae	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	cltq
	cmpq	$0, %rax
	je	.LBB5_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	movl	$593, %esi                      # imm = 0x251
	leaq	.L.str.2(%rip), %rdx
	callq	lean_notify_assert@PLT
.LBB5_2:
	movq	-8(%rbp), %rdi
	callq	lean_ctor_obj_cptr
	movl	-12(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movzbl	(%rax,%rcx), %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	lean_ctor_get_uint8, .Lfunc_end5-lean_ctor_get_uint8
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lean_alloc_ctor
	.type	lean_alloc_ctor,@function
lean_alloc_ctor:                        # @lean_alloc_ctor
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$244, -4(%rbp)
	movb	%al, -25(%rbp)                  # 1-byte Spill
	ja	.LBB6_3
# %bb.1:
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$256, -8(%rbp)                  # imm = 0x100
	movb	%al, -25(%rbp)                  # 1-byte Spill
	jae	.LBB6_3
# %bb.2:
	cmpl	$1024, -12(%rbp)                # imm = 0x400
	setb	%al
	movb	%al, -25(%rbp)                  # 1-byte Spill
.LBB6_3:
	movb	-25(%rbp), %al                  # 1-byte Reload
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	cltq
	cmpq	$0, %rax
	je	.LBB6_5
# %bb.4:
	leaq	.L.str(%rip), %rdi
	movl	$559, %esi                      # imm = 0x22F
	leaq	.L.str.4(%rip), %rdx
	callq	lean_notify_assert@PLT
.LBB6_5:
	movl	-8(%rbp), %eax
                                        # kill: def $rax killed $eax
	shlq	$3, %rax
	addq	$8, %rax
	movl	-12(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	addq	%rcx, %rax
	movl	%eax, %edi
	callq	lean_alloc_ctor_memory
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	callq	lean_set_st_header
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	lean_alloc_ctor, .Lfunc_end6-lean_alloc_ctor
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lean_ctor_set
	.type	lean_ctor_set,@function
lean_ctor_set:                          # @lean_ctor_set
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -28(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rdi
	callq	lean_ctor_num_objs
	movl	%eax, %ecx
	movl	-28(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	setb	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	cltq
	cmpq	$0, %rax
	je	.LBB7_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	movl	$571, %esi                      # imm = 0x23B
	leaq	.L.str.8(%rip), %rdx
	callq	lean_notify_assert@PLT
.LBB7_2:
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	-8(%rbp), %rdi
	callq	lean_ctor_obj_cptr
	movq	-40(%rbp), %rdx                 # 8-byte Reload
	movl	-12(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movq	%rdx, (%rax,%rcx,8)
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	lean_ctor_set, .Lfunc_end7-lean_ctor_set
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lean_ctor_set_uint8
	.type	lean_ctor_set_uint8,@function
lean_ctor_set_uint8:                    # @lean_ctor_set_uint8
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movb	%dl, %al
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movb	%al, -13(%rbp)
	movl	-12(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	-8(%rbp), %rdi
	callq	lean_ctor_num_objs
	movl	%eax, %ecx
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	setae	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	cltq
	cmpq	$0, %rax
	je	.LBB8_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	movl	$628, %esi                      # imm = 0x274
	leaq	.L.str.2(%rip), %rdx
	callq	lean_notify_assert@PLT
.LBB8_2:
	movb	-13(%rbp), %al
	movb	%al, -25(%rbp)                  # 1-byte Spill
	movq	-8(%rbp), %rdi
	callq	lean_ctor_obj_cptr
	movb	-25(%rbp), %dl                  # 1-byte Reload
	movl	-12(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movb	%dl, (%rax,%rcx)
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end8:
	.size	lean_ctor_set_uint8, .Lfunc_end8-lean_ctor_set_uint8
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lean_box
	.type	lean_box,@function
lean_box:                               # @lean_box
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	shlq	%rax
	orq	$1, %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end9:
	.size	lean_box, .Lfunc_end9-lean_box
	.cfi_endproc
                                        # -- End function
	.globl	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____boxed # -- Begin function l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____boxed
	.p2align	4, 0x90
	.type	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____boxed,@function
l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____boxed: # @l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____boxed
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# %bb.1:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22_
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	lean_dec
	movq	-8(%rbp), %rdi
	callq	lean_dec
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end10:
	.size	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____boxed, .Lfunc_end10-l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____boxed
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lean_dec
	.type	lean_dec,@function
lean_dec:                               # @lean_dec
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	lean_is_scalar
	testb	$1, %al
	jne	.LBB11_2
# %bb.1:
	movq	-8(%rbp), %rdi
	callq	lean_dec_ref
.LBB11_2:
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end11:
	.size	lean_dec, .Lfunc_end11-lean_dec
	.cfi_endproc
                                        # -- End function
	.globl	l_apply__coupon__collector      # -- Begin function l_apply__coupon__collector
	.p2align	4, 0x90
	.type	l_apply__coupon__collector,@function
l_apply__coupon__collector:             # @l_apply__coupon__collector
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, -16(%rbp)
# %bb.1:
	movq	-16(%rbp), %rdi
	callq	lean_obj_tag
	movl	%eax, %ecx
	movl	%ecx, -180(%rbp)                # 4-byte Spill
	testl	%eax, %eax
	je	.LBB12_2
	jmp	.LBB12_14
.LBB12_14:
	movl	-180(%rbp), %eax                # 4-byte Reload
	subl	$1, %eax
	je	.LBB12_3
	jmp	.LBB12_6
.LBB12_2:
	movq	-16(%rbp), %rdi
	xorl	%esi, %esi
	callq	lean_ctor_get_uint8
	movb	%al, -17(%rbp)
	movq	-16(%rbp), %rdi
	callq	lean_dec
	xorl	%esi, %esi
	movl	$2, %edx
	movl	%esi, %edi
	callq	lean_alloc_ctor
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	xorl	%esi, %esi
	movzbl	-17(%rbp), %edx
	callq	lean_ctor_set_uint8
	movq	-32(%rbp), %rdi
	movl	$1, %esi
	movzbl	-17(%rbp), %edx
	callq	lean_ctor_set_uint8
	movl	$1, %esi
	xorl	%edx, %edx
	movl	%esi, %edi
	callq	lean_alloc_ctor
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rdx
	xorl	%esi, %esi
	callq	lean_ctor_set
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB12_13
.LBB12_3:
	movq	-16(%rbp), %rdi
	callq	lean_is_exclusive
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -41(%rbp)
	movzbl	-41(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB12_5
# %bb.4:
	movq	-16(%rbp), %rdi
	xorl	%esi, %esi
	callq	lean_ctor_get
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movl	$1, %esi
	callq	lean_ctor_get_uint8
	movb	%al, -57(%rbp)
	movq	-56(%rbp), %rdi
	xorl	%esi, %esi
	callq	lean_ctor_get_uint8
	movb	%al, -58(%rbp)
	movq	-56(%rbp), %rdi
	callq	lean_dec
	xorl	%esi, %esi
	movl	$2, %edx
	movl	%esi, %edi
	callq	lean_alloc_ctor
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	xorl	%esi, %esi
	movzbl	-57(%rbp), %edx
	callq	lean_ctor_set_uint8
	movq	-72(%rbp), %rdi
	movl	$1, %esi
	movzbl	-58(%rbp), %edx
	callq	lean_ctor_set_uint8
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rdx
	xorl	%esi, %esi
	callq	lean_ctor_set
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB12_13
.LBB12_5:
	movq	-16(%rbp), %rdi
	xorl	%esi, %esi
	callq	lean_ctor_get
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	lean_inc
	movq	-16(%rbp), %rdi
	callq	lean_dec
	movq	-80(%rbp), %rdi
	movl	$1, %esi
	callq	lean_ctor_get_uint8
	movb	%al, -81(%rbp)
	movq	-80(%rbp), %rdi
	xorl	%esi, %esi
	callq	lean_ctor_get_uint8
	movb	%al, -82(%rbp)
	movq	-80(%rbp), %rdi
	callq	lean_dec
	xorl	%esi, %esi
	movl	$2, %edx
	movl	%esi, %edi
	callq	lean_alloc_ctor
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	xorl	%esi, %esi
	movzbl	-81(%rbp), %edx
	callq	lean_ctor_set_uint8
	movq	-96(%rbp), %rdi
	movl	$1, %esi
	movzbl	-82(%rbp), %edx
	callq	lean_ctor_set_uint8
	movl	$1, %esi
	xorl	%edx, %edx
	movl	%esi, %edi
	callq	lean_alloc_ctor
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
	movq	-96(%rbp), %rdx
	xorl	%esi, %esi
	callq	lean_ctor_set
	movq	-104(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB12_13
.LBB12_6:
	movq	-16(%rbp), %rdi
	xorl	%esi, %esi
	callq	lean_ctor_get
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	callq	lean_inc
	movq	-16(%rbp), %rdi
	movl	$1, %esi
	callq	lean_ctor_get
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rdi
	callq	lean_inc
	movq	-16(%rbp), %rdi
	callq	lean_dec
	movq	-112(%rbp), %rdi
	xorl	%esi, %esi
	callq	lean_ctor_get_uint8
	movb	%al, -121(%rbp)
	movq	-112(%rbp), %rdi
	movl	$1, %esi
	callq	lean_ctor_get_uint8
	movb	%al, -122(%rbp)
	movq	-112(%rbp), %rdi
	callq	lean_dec
	movq	-120(%rbp), %rdi
	callq	lean_is_exclusive
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -123(%rbp)
	movzbl	-123(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB12_10
# %bb.7:
	movq	-120(%rbp), %rdi
	xorl	%esi, %esi
	callq	lean_ctor_get_uint8
	movb	%al, -124(%rbp)
	movb	-122(%rbp), %al
	movzbl	%al, %edi
	movzbl	-124(%rbp), %esi
	callq	lean_uint8_dec_eq
	movb	%al, -125(%rbp)
	movzbl	-125(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB12_9
# %bb.8:
	movq	-120(%rbp), %rdi
	callq	lean_free_object@PLT
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	lean_box
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB12_13
.LBB12_9:
	movq	-120(%rbp), %rdi
	xorl	%esi, %esi
	movzbl	-121(%rbp), %edx
	callq	lean_ctor_set_uint8
	movl	$1, %esi
	xorl	%edx, %edx
	movl	%esi, %edi
	callq	lean_alloc_ctor
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rdi
	movq	-120(%rbp), %rdx
	xorl	%esi, %esi
	callq	lean_ctor_set
	movq	-144(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB12_13
.LBB12_10:
	movq	-120(%rbp), %rdi
	xorl	%esi, %esi
	callq	lean_ctor_get_uint8
	movb	%al, -145(%rbp)
	movq	-120(%rbp), %rdi
	movl	$1, %esi
	callq	lean_ctor_get_uint8
	movb	%al, -146(%rbp)
	movq	-120(%rbp), %rdi
	callq	lean_dec
	movb	-122(%rbp), %al
	movzbl	%al, %edi
	movzbl	-145(%rbp), %esi
	callq	lean_uint8_dec_eq
	movb	%al, -147(%rbp)
	movzbl	-147(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB12_12
# %bb.11:
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	lean_box
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB12_13
.LBB12_12:
	xorl	%esi, %esi
	movl	$2, %edx
	movl	%esi, %edi
	callq	lean_alloc_ctor
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rdi
	xorl	%esi, %esi
	movzbl	-121(%rbp), %edx
	callq	lean_ctor_set_uint8
	movq	-168(%rbp), %rdi
	movl	$1, %esi
	movzbl	-146(%rbp), %edx
	callq	lean_ctor_set_uint8
	movl	$1, %esi
	xorl	%edx, %edx
	movl	%esi, %edi
	callq	lean_alloc_ctor
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rdi
	movq	-168(%rbp), %rdx
	xorl	%esi, %esi
	callq	lean_ctor_set
	movq	-176(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB12_13:
	movq	-8(%rbp), %rax
	addq	$192, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end12:
	.size	l_apply__coupon__collector, .Lfunc_end12-l_apply__coupon__collector
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lean_obj_tag
	.type	lean_obj_tag,@function
lean_obj_tag:                           # @lean_obj_tag
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	lean_is_scalar
	testb	$1, %al
	jne	.LBB13_1
	jmp	.LBB13_2
.LBB13_1:
	movq	-16(%rbp), %rdi
	callq	lean_unbox
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -4(%rbp)
	jmp	.LBB13_3
.LBB13_2:
	movq	-16(%rbp), %rdi
	callq	lean_ptr_tag
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
.LBB13_3:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end13:
	.size	lean_obj_tag, .Lfunc_end13-lean_obj_tag
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lean_is_exclusive
	.type	lean_is_exclusive,@function
lean_is_exclusive:                      # @lean_is_exclusive
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	lean_is_st
	testb	$1, %al
	jne	.LBB14_1
	jmp	.LBB14_2
.LBB14_1:
	movq	-16(%rbp), %rax
	cmpl	$1, (%rax)
	sete	%al
	andb	$1, %al
	movb	%al, -1(%rbp)
	jmp	.LBB14_3
.LBB14_2:
	movb	$0, -1(%rbp)
.LBB14_3:
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end14:
	.size	lean_is_exclusive, .Lfunc_end14-lean_is_exclusive
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lean_ctor_get
	.type	lean_ctor_get,@function
lean_ctor_get:                          # @lean_ctor_get
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rdi
	callq	lean_ctor_num_objs
	movl	%eax, %ecx
	movl	-16(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	setb	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	cltq
	cmpq	$0, %rax
	je	.LBB15_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	movl	$566, %esi                      # imm = 0x236
	leaq	.L.str.8(%rip), %rdx
	callq	lean_notify_assert@PLT
.LBB15_2:
	movq	-8(%rbp), %rdi
	callq	lean_ctor_obj_cptr
	movl	-12(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	movq	(%rax,%rcx,8), %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end15:
	.size	lean_ctor_get, .Lfunc_end15-lean_ctor_get
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lean_inc
	.type	lean_inc,@function
lean_inc:                               # @lean_inc
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	lean_is_scalar
	testb	$1, %al
	jne	.LBB16_2
# %bb.1:
	movq	-8(%rbp), %rdi
	callq	lean_inc_ref
.LBB16_2:
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end16:
	.size	lean_inc, .Lfunc_end16-lean_inc
	.cfi_endproc
                                        # -- End function
	.globl	l_all__tag__true___lambda__1    # -- Begin function l_all__tag__true___lambda__1
	.p2align	4, 0x90
	.type	l_all__tag__true___lambda__1,@function
l_all__tag__true___lambda__1:           # @l_all__tag__true___lambda__1
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# %bb.1:
	movq	-8(%rbp), %rdi
	xorl	%esi, %esi
	callq	lean_ctor_get_uint8
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	movl	$1, %esi
	callq	lean_ctor_get_uint8
	movb	%al, -10(%rbp)
	movb	-9(%rbp), %al
	movzbl	%al, %edi
	movzbl	-10(%rbp), %esi
	callq	lean_uint8_dec_eq
	movb	%al, -11(%rbp)
	movzbl	-11(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end17:
	.size	l_all__tag__true___lambda__1, .Lfunc_end17-l_all__tag__true___lambda__1
	.cfi_endproc
                                        # -- End function
	.globl	l_all__tag__true                # -- Begin function l_all__tag__true
	.p2align	4, 0x90
	.type	l_all__tag__true,@function
l_all__tag__true:                       # @l_all__tag__true
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# %bb.1:
	movq	l_all__tag__true___closed__1(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	l_List_all___rarg@PLT
	movb	%al, -17(%rbp)
	movzbl	-17(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end18:
	.size	l_all__tag__true, .Lfunc_end18-l_all__tag__true
	.cfi_endproc
                                        # -- End function
	.globl	l_all__tag__true___lambda__1___boxed # -- Begin function l_all__tag__true___lambda__1___boxed
	.p2align	4, 0x90
	.type	l_all__tag__true___lambda__1___boxed,@function
l_all__tag__true___lambda__1___boxed:   # @l_all__tag__true___lambda__1___boxed
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# %bb.1:
	movq	-8(%rbp), %rdi
	callq	l_all__tag__true___lambda__1
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	callq	lean_dec
	movzbl	-9(%rbp), %eax
	movl	%eax, %edi
	callq	lean_box
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end19:
	.size	l_all__tag__true___lambda__1___boxed, .Lfunc_end19-l_all__tag__true___lambda__1___boxed
	.cfi_endproc
                                        # -- End function
	.globl	l_all__tag__true___boxed        # -- Begin function l_all__tag__true___boxed
	.p2align	4, 0x90
	.type	l_all__tag__true___boxed,@function
l_all__tag__true___boxed:               # @l_all__tag__true___boxed
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# %bb.1:
	movq	-8(%rbp), %rdi
	callq	l_all__tag__true
	movb	%al, -9(%rbp)
	movzbl	-9(%rbp), %eax
	movl	%eax, %edi
	callq	lean_box
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end20:
	.size	l_all__tag__true___boxed, .Lfunc_end20-l_all__tag__true___boxed
	.cfi_endproc
                                        # -- End function
	.globl	l_request__to__list             # -- Begin function l_request__to__list
	.p2align	4, 0x90
	.type	l_request__to__list,@function
l_request__to__list:                    # @l_request__to__list
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
# %bb.1:
	movq	-16(%rbp), %rdi
	callq	lean_obj_tag
	movl	%eax, %ecx
	movl	%ecx, -132(%rbp)                # 4-byte Spill
	testl	%eax, %eax
	je	.LBB21_2
	jmp	.LBB21_8
.LBB21_8:
	movl	-132(%rbp), %eax                # 4-byte Reload
	subl	$1, %eax
	je	.LBB21_3
	jmp	.LBB21_4
.LBB21_2:
	movq	-16(%rbp), %rdi
	callq	lean_dec
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	lean_box
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB21_7
.LBB21_3:
	movq	-16(%rbp), %rdi
	xorl	%esi, %esi
	callq	lean_ctor_get
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	lean_inc
	movq	-16(%rbp), %rdi
	callq	lean_dec
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	lean_box
	movq	%rax, -40(%rbp)
	movl	$1, %edi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	lean_alloc_ctor
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rdx
	xorl	%esi, %esi
	callq	lean_ctor_set
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movl	$1, %esi
	callq	lean_ctor_set
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB21_7
.LBB21_4:
	movq	-16(%rbp), %rdi
	callq	lean_is_exclusive
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -49(%rbp)
	movzbl	-49(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB21_6
# %bb.5:
	movq	-16(%rbp), %rdi
	xorl	%esi, %esi
	callq	lean_ctor_get
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdi
	movl	$1, %esi
	callq	lean_ctor_get
	movq	%rax, -72(%rbp)
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	lean_box
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rdi
	movl	$1, %esi
	callq	lean_ctor_set_tag
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rdx
	movl	$1, %esi
	callq	lean_ctor_set
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rdx
	xorl	%esi, %esi
	callq	lean_ctor_set
	movl	$1, %edi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	lean_alloc_ctor
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	movq	-64(%rbp), %rdx
	xorl	%esi, %esi
	callq	lean_ctor_set
	movq	-88(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movl	$1, %esi
	callq	lean_ctor_set
	movq	-88(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB21_7
.LBB21_6:
	movq	-16(%rbp), %rdi
	xorl	%esi, %esi
	callq	lean_ctor_get
	movq	%rax, -96(%rbp)
	movq	-16(%rbp), %rdi
	movl	$1, %esi
	callq	lean_ctor_get
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
	callq	lean_inc
	movq	-96(%rbp), %rdi
	callq	lean_inc
	movq	-16(%rbp), %rdi
	callq	lean_dec
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	lean_box
	movq	%rax, -112(%rbp)
	movl	$1, %edi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	lean_alloc_ctor
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rdi
	movq	-104(%rbp), %rdx
	xorl	%esi, %esi
	callq	lean_ctor_set
	movq	-120(%rbp), %rdi
	movq	-112(%rbp), %rdx
	movl	$1, %esi
	callq	lean_ctor_set
	movl	$1, %edi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	lean_alloc_ctor
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rdi
	movq	-96(%rbp), %rdx
	xorl	%esi, %esi
	callq	lean_ctor_set
	movq	-128(%rbp), %rdi
	movq	-120(%rbp), %rdx
	movl	$1, %esi
	callq	lean_ctor_set
	movq	-128(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB21_7:
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end21:
	.size	l_request__to__list, .Lfunc_end21-l_request__to__list
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lean_ctor_set_tag
	.type	lean_ctor_set_tag,@function
lean_ctor_set_tag:                      # @lean_ctor_set_tag
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movzbl	-9(%rbp), %eax
	cmpl	$244, %eax
	setle	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	cltq
	cmpq	$0, %rax
	je	.LBB22_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	movl	$576, %esi                      # imm = 0x240
	leaq	.L.str.9(%rip), %rdx
	callq	lean_notify_assert@PLT
.LBB22_2:
	movzbl	-9(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	andl	$255, %edx
	shll	$24, %edx
	andl	$16777215, %ecx                 # imm = 0xFFFFFF
	orl	%edx, %ecx
	movl	%ecx, 4(%rax)
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end22:
	.size	lean_ctor_set_tag, .Lfunc_end22-lean_ctor_set_tag
	.cfi_endproc
                                        # -- End function
	.globl	l___private_SimpleCouponCollector_0__apply__coupon__collector_match__1_splitter___rarg # -- Begin function l___private_SimpleCouponCollector_0__apply__coupon__collector_match__1_splitter___rarg
	.p2align	4, 0x90
	.type	l___private_SimpleCouponCollector_0__apply__coupon__collector_match__1_splitter___rarg,@function
l___private_SimpleCouponCollector_0__apply__coupon__collector_match__1_splitter___rarg: # @l___private_SimpleCouponCollector_0__apply__coupon__collector_match__1_splitter___rarg
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
# %bb.1:
	movq	-16(%rbp), %rdi
	callq	lean_obj_tag
	movl	%eax, %ecx
	movl	%ecx, -108(%rbp)                # 4-byte Spill
	testl	%eax, %eax
	je	.LBB23_2
	jmp	.LBB23_6
.LBB23_6:
	movl	-108(%rbp), %eax                # 4-byte Reload
	subl	$1, %eax
	je	.LBB23_3
	jmp	.LBB23_4
.LBB23_2:
	movq	-40(%rbp), %rdi
	callq	lean_dec
	movq	-32(%rbp), %rdi
	callq	lean_dec
	movq	-16(%rbp), %rdi
	xorl	%esi, %esi
	callq	lean_ctor_get_uint8
	movb	%al, -41(%rbp)
	movq	-16(%rbp), %rdi
	callq	lean_dec
	movzbl	-41(%rbp), %eax
	movl	%eax, %edi
	callq	lean_box
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	lean_apply_1@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB23_5
.LBB23_3:
	movq	-40(%rbp), %rdi
	callq	lean_dec
	movq	-24(%rbp), %rdi
	callq	lean_dec
	movq	-16(%rbp), %rdi
	xorl	%esi, %esi
	callq	lean_ctor_get
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	lean_inc
	movq	-16(%rbp), %rdi
	callq	lean_dec
	movq	-32(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	lean_apply_1@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB23_5
.LBB23_4:
	movq	-32(%rbp), %rdi
	callq	lean_dec
	movq	-24(%rbp), %rdi
	callq	lean_dec
	movq	-16(%rbp), %rdi
	xorl	%esi, %esi
	callq	lean_ctor_get
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	lean_inc
	movq	-16(%rbp), %rdi
	movl	$1, %esi
	callq	lean_ctor_get
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	lean_inc
	movq	-16(%rbp), %rdi
	callq	lean_dec
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	-96(%rbp), %rdx
	callq	lean_apply_2@PLT
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB23_5:
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end23:
	.size	l___private_SimpleCouponCollector_0__apply__coupon__collector_match__1_splitter___rarg, .Lfunc_end23-l___private_SimpleCouponCollector_0__apply__coupon__collector_match__1_splitter___rarg
	.cfi_endproc
                                        # -- End function
	.globl	l___private_SimpleCouponCollector_0__apply__coupon__collector_match__1_splitter # -- Begin function l___private_SimpleCouponCollector_0__apply__coupon__collector_match__1_splitter
	.p2align	4, 0x90
	.type	l___private_SimpleCouponCollector_0__apply__coupon__collector_match__1_splitter,@function
l___private_SimpleCouponCollector_0__apply__coupon__collector_match__1_splitter: # @l___private_SimpleCouponCollector_0__apply__coupon__collector_match__1_splitter
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# %bb.1:
	leaq	l___private_SimpleCouponCollector_0__apply__coupon__collector_match__1_splitter___rarg(%rip), %rdi
	movl	$4, %esi
	xorl	%edx, %edx
	callq	lean_alloc_closure
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end24:
	.size	l___private_SimpleCouponCollector_0__apply__coupon__collector_match__1_splitter, .Lfunc_end24-l___private_SimpleCouponCollector_0__apply__coupon__collector_match__1_splitter
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lean_alloc_closure
	.type	lean_alloc_closure,@function
lean_alloc_closure:                     # @lean_alloc_closure
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	cmpl	$0, -12(%rbp)
	seta	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	cltq
	cmpq	$0, %rax
	je	.LBB25_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	movl	$664, %esi                      # imm = 0x298
	leaq	.L.str.10(%rip), %rdx
	callq	lean_notify_assert@PLT
.LBB25_2:
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	setb	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	cltq
	cmpq	$0, %rax
	je	.LBB25_4
# %bb.3:
	leaq	.L.str(%rip), %rdi
	movl	$665, %esi                      # imm = 0x299
	leaq	.L.str.11(%rip), %rdx
	callq	lean_notify_assert@PLT
.LBB25_4:
	movl	-16(%rbp), %eax
                                        # kill: def $rax killed $eax
	shlq	$3, %rax
	addq	$24, %rax
	movl	%eax, %edi
	callq	lean_alloc_small_object
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	$245, %esi
	xorl	%edx, %edx
	callq	lean_set_st_header
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, 8(%rax)
	movl	-12(%rbp), %eax
	movw	%ax, %cx
	movq	-24(%rbp), %rax
	movw	%cx, 16(%rax)
	movl	-16(%rbp), %eax
	movw	%ax, %cx
	movq	-24(%rbp), %rax
	movw	%cx, 18(%rax)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end25:
	.size	lean_alloc_closure, .Lfunc_end25-lean_alloc_closure
	.cfi_endproc
                                        # -- End function
	.globl	initialize_SimpleCouponCollector # -- Begin function initialize_SimpleCouponCollector
	.p2align	4, 0x90
	.type	initialize_SimpleCouponCollector,@function
initialize_SimpleCouponCollector:       # @initialize_SimpleCouponCollector
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movb	%dil, %al
	movb	%al, -9(%rbp)
	movq	%rsi, -24(%rbp)
	testb	$1, _G_initialized(%rip)
	je	.LBB26_2
# %bb.1:
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	lean_box
	movq	%rax, %rdi
	callq	lean_io_result_mk_ok
	movq	%rax, -8(%rbp)
	jmp	.LBB26_5
.LBB26_2:
	movb	$1, _G_initialized(%rip)
	movb	-9(%rbp), %al
	movb	%al, -33(%rbp)                  # 1-byte Spill
	callq	lean_io_mk_world
	movq	%rax, %rsi
	movb	-33(%rbp), %al                  # 1-byte Reload
	movzbl	%al, %edi
	callq	initialize_Init@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	lean_io_result_is_error
	testb	$1, %al
	jne	.LBB26_3
	jmp	.LBB26_4
.LBB26_3:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB26_5
.LBB26_4:
	movq	-32(%rbp), %rdi
	callq	lean_dec_ref
	callq	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__1
	movq	%rax, l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__1(%rip)
	movq	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__1(%rip), %rdi
	callq	lean_mark_persistent@PLT
	callq	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__2
	movq	%rax, l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__2(%rip)
	movq	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__2(%rip), %rdi
	callq	lean_mark_persistent@PLT
	callq	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__3
	movq	%rax, l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__3(%rip)
	movq	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__3(%rip), %rdi
	callq	lean_mark_persistent@PLT
	callq	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__4
	movq	%rax, l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__4(%rip)
	movq	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__4(%rip), %rdi
	callq	lean_mark_persistent@PLT
	callq	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__5
	movq	%rax, l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__5(%rip)
	movq	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__5(%rip), %rdi
	callq	lean_mark_persistent@PLT
	callq	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__6
	movq	%rax, l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__6(%rip)
	movq	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__6(%rip), %rdi
	callq	lean_mark_persistent@PLT
	callq	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__7
	movq	%rax, l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__7(%rip)
	movq	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__7(%rip), %rdi
	callq	lean_mark_persistent@PLT
	callq	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__8
	movq	%rax, l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__8(%rip)
	movq	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__8(%rip), %rdi
	callq	lean_mark_persistent@PLT
	callq	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__9
	movq	%rax, l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__9(%rip)
	movq	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__9(%rip), %rdi
	callq	lean_mark_persistent@PLT
	callq	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__10
	movq	%rax, l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__10(%rip)
	movq	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__10(%rip), %rdi
	callq	lean_mark_persistent@PLT
	callq	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__11
	movq	%rax, l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__11(%rip)
	movq	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__11(%rip), %rdi
	callq	lean_mark_persistent@PLT
	callq	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__12
	movq	%rax, l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__12(%rip)
	movq	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__12(%rip), %rdi
	callq	lean_mark_persistent@PLT
	callq	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__13
	movq	%rax, l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__13(%rip)
	movq	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__13(%rip), %rdi
	callq	lean_mark_persistent@PLT
	callq	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__14
	movq	%rax, l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__14(%rip)
	movq	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__14(%rip), %rdi
	callq	lean_mark_persistent@PLT
	callq	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__15
	movq	%rax, l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__15(%rip)
	movq	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__15(%rip), %rdi
	callq	lean_mark_persistent@PLT
	callq	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__16
	movq	%rax, l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__16(%rip)
	movq	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__16(%rip), %rdi
	callq	lean_mark_persistent@PLT
	callq	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__17
	movq	%rax, l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__17(%rip)
	movq	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__17(%rip), %rdi
	callq	lean_mark_persistent@PLT
	callq	_init_l_instReprTag___closed__1
	movq	%rax, l_instReprTag___closed__1(%rip)
	movq	l_instReprTag___closed__1(%rip), %rdi
	callq	lean_mark_persistent@PLT
	callq	_init_l_instReprTag
	movq	%rax, l_instReprTag(%rip)
	movq	l_instReprTag(%rip), %rdi
	callq	lean_mark_persistent@PLT
	callq	_init_l_all__tag__true___closed__1
	movq	%rax, l_all__tag__true___closed__1(%rip)
	movq	l_all__tag__true___closed__1(%rip), %rdi
	callq	lean_mark_persistent@PLT
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	lean_box
	movq	%rax, %rdi
	callq	lean_io_result_mk_ok
	movq	%rax, -8(%rbp)
.LBB26_5:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end26:
	.size	initialize_SimpleCouponCollector, .Lfunc_end26-initialize_SimpleCouponCollector
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lean_io_result_mk_ok
	.type	lean_io_result_mk_ok,@function
lean_io_result_mk_ok:                   # @lean_io_result_mk_ok
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	xorl	%edx, %edx
	movl	$2, %esi
	movl	%edx, %edi
	callq	lean_alloc_ctor
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rdx
	xorl	%esi, %esi
	callq	lean_ctor_set
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	lean_box
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rdx
	movl	$1, %esi
	callq	lean_ctor_set
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end27:
	.size	lean_io_result_mk_ok, .Lfunc_end27-lean_io_result_mk_ok
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lean_io_result_is_error
	.type	lean_io_result_is_error,@function
lean_io_result_is_error:                # @lean_io_result_is_error
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	lean_ptr_tag
	movzbl	%al, %eax
	cmpl	$1, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end28:
	.size	lean_io_result_is_error, .Lfunc_end28-lean_io_result_is_error
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lean_dec_ref
	.type	lean_dec_ref,@function
lean_dec_ref:                           # @lean_dec_ref
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$1, (%rax)
	setg	%al
	andb	$1, %al
	movzbl	%al, %eax
	cltq
	cmpq	$0, %rax
	je	.LBB29_2
# %bb.1:
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	jmp	.LBB29_5
.LBB29_2:
	movq	-8(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB29_4
# %bb.3:
	movq	-8(%rbp), %rdi
	callq	lean_dec_ref_cold@PLT
.LBB29_4:
	jmp	.LBB29_5
.LBB29_5:
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end29:
	.size	lean_dec_ref, .Lfunc_end29-lean_dec_ref
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lean_is_scalar
	.type	lean_is_scalar,@function
lean_is_scalar:                         # @lean_is_scalar
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andq	$1, %rax
	cmpq	$1, %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end30:
	.size	lean_is_scalar, .Lfunc_end30-lean_is_scalar
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lean_unbox
	.type	lean_unbox,@function
lean_unbox:                             # @lean_unbox
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	shrq	%rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end31:
	.size	lean_unbox, .Lfunc_end31-lean_unbox
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lean_string_len
	.type	lean_string_len,@function
lean_string_len:                        # @lean_string_len
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	lean_to_string
	movq	24(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end32:
	.size	lean_string_len, .Lfunc_end32-lean_string_len
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lean_to_string
	.type	lean_to_string,@function
lean_to_string:                         # @lean_to_string
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	lean_is_string
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	cltq
	cmpq	$0, %rax
	je	.LBB33_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	movl	$488, %esi                      # imm = 0x1E8
	leaq	.L.str.1(%rip), %rdx
	callq	lean_notify_assert@PLT
.LBB33_2:
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end33:
	.size	lean_to_string, .Lfunc_end33-lean_to_string
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lean_is_string
	.type	lean_is_string,@function
lean_is_string:                         # @lean_is_string
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	lean_ptr_tag
	movzbl	%al, %eax
	cmpl	$249, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end34:
	.size	lean_is_string, .Lfunc_end34-lean_is_string
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lean_ptr_tag
	.type	lean_ptr_tag,@function
lean_ptr_tag:                           # @lean_ptr_tag
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	shrl	$24, %eax
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end35:
	.size	lean_ptr_tag, .Lfunc_end35-lean_ptr_tag
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lean_usize_to_nat
	.type	lean_usize_to_nat,@function
lean_usize_to_nat:                      # @lean_usize_to_nat
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movabsq	$9223372036854775807, %rax      # imm = 0x7FFFFFFFFFFFFFFF
	cmpq	%rax, -16(%rbp)
	setbe	%al
	andb	$1, %al
	movzbl	%al, %eax
	cltq
	cmpq	$0, %rax
	je	.LBB36_2
# %bb.1:
	movq	-16(%rbp), %rdi
	callq	lean_box
	movq	%rax, -8(%rbp)
	jmp	.LBB36_3
.LBB36_2:
	movq	-16(%rbp), %rdi
	callq	lean_big_usize_to_nat@PLT
	movq	%rax, -8(%rbp)
.LBB36_3:
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end36:
	.size	lean_usize_to_nat, .Lfunc_end36-lean_usize_to_nat
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lean_ctor_num_objs
	.type	lean_ctor_num_objs,@function
lean_ctor_num_objs:                     # @lean_ctor_num_objs
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	lean_is_ctor
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	cltq
	cmpq	$0, %rax
	je	.LBB37_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	movl	$544, %esi                      # imm = 0x220
	leaq	.L.str.3(%rip), %rdx
	callq	lean_notify_assert@PLT
.LBB37_2:
	movq	-8(%rbp), %rdi
	callq	lean_ptr_other
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end37:
	.size	lean_ctor_num_objs, .Lfunc_end37-lean_ctor_num_objs
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lean_ctor_obj_cptr
	.type	lean_ctor_obj_cptr,@function
lean_ctor_obj_cptr:                     # @lean_ctor_obj_cptr
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	lean_is_ctor
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	cltq
	cmpq	$0, %rax
	je	.LBB38_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	movl	$549, %esi                      # imm = 0x225
	leaq	.L.str.3(%rip), %rdx
	callq	lean_notify_assert@PLT
.LBB38_2:
	movq	-8(%rbp), %rdi
	callq	lean_to_ctor
	addq	$8, %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end38:
	.size	lean_ctor_obj_cptr, .Lfunc_end38-lean_ctor_obj_cptr
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lean_is_ctor
	.type	lean_is_ctor,@function
lean_is_ctor:                           # @lean_is_ctor
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	lean_ptr_tag
	movzbl	%al, %eax
	cmpl	$244, %eax
	setle	%al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end39:
	.size	lean_is_ctor, .Lfunc_end39-lean_is_ctor
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lean_ptr_other
	.type	lean_ptr_other,@function
lean_ptr_other:                         # @lean_ptr_other
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	shrl	$16, %eax
	andl	$255, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end40:
	.size	lean_ptr_other, .Lfunc_end40-lean_ptr_other
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lean_to_ctor
	.type	lean_to_ctor,@function
lean_to_ctor:                           # @lean_to_ctor
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	lean_is_ctor
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	cltq
	cmpq	$0, %rax
	je	.LBB41_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	movl	$484, %esi                      # imm = 0x1E4
	leaq	.L.str.3(%rip), %rdx
	callq	lean_notify_assert@PLT
.LBB41_2:
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end41:
	.size	lean_to_ctor, .Lfunc_end41-lean_to_ctor
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lean_alloc_ctor_memory
	.type	lean_alloc_ctor_memory,@function
lean_alloc_ctor_memory:                 # @lean_alloc_ctor_memory
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	movl	$8, %esi
	callq	lean_align
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %edi
	callq	lean_get_slot_idx
	movl	%eax, -12(%rbp)
	cmpl	$4096, -8(%rbp)                 # imm = 0x1000
	setbe	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	cltq
	cmpq	$0, %rax
	je	.LBB42_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	movl	$350, %esi                      # imm = 0x15E
	leaq	.L.str.5(%rip), %rdx
	callq	lean_notify_assert@PLT
.LBB42_2:
	movl	-8(%rbp), %edi
	movl	-12(%rbp), %esi
	callq	lean_alloc_small@PLT
	movq	%rax, -24(%rbp)
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jbe	.LBB42_4
# %bb.3:
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	$0, -8(%rax)
.LBB42_4:
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end42:
	.size	lean_alloc_ctor_memory, .Lfunc_end42-lean_alloc_ctor_memory
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lean_set_st_header
	.type	lean_set_st_header,@function
lean_set_st_header:                     # @lean_set_st_header
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	andl	$255, %edx
	shll	$24, %edx
	andl	$16777215, %ecx                 # imm = 0xFFFFFF
	orl	%edx, %ecx
	movl	%ecx, 4(%rax)
	movl	-16(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	andl	$255, %edx
	shll	$16, %edx
	andl	$-16711681, %ecx                # imm = 0xFF00FFFF
	orl	%edx, %ecx
	movl	%ecx, 4(%rax)
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	andl	$-65536, %ecx                   # imm = 0xFFFF0000
	orl	$0, %ecx
	movl	%ecx, 4(%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end43:
	.size	lean_set_st_header, .Lfunc_end43-lean_set_st_header
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lean_align
	.type	lean_align,@function
lean_align:                             # @lean_align
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-16(%rbp)
	imulq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	divq	-16(%rbp)
	movq	-24(%rbp), %rax                 # 8-byte Reload
	cmpq	$0, %rdx
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %edx
	movslq	%edx, %rdx
	imulq	%rdx, %rcx
	addq	%rcx, %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end44:
	.size	lean_align, .Lfunc_end44-lean_align
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lean_get_slot_idx
	.type	lean_get_slot_idx,@function
lean_get_slot_idx:                      # @lean_get_slot_idx
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	seta	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	cltq
	cmpq	$0, %rax
	je	.LBB45_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	movl	$317, %esi                      # imm = 0x13D
	leaq	.L.str.6(%rip), %rdx
	callq	lean_notify_assert@PLT
.LBB45_2:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	movl	$8, %esi
	callq	lean_align
	movl	-4(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	%rcx, %rax
	sete	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	cltq
	cmpq	$0, %rax
	je	.LBB45_4
# %bb.3:
	leaq	.L.str(%rip), %rdi
	movl	$318, %esi                      # imm = 0x13E
	leaq	.L.str.7(%rip), %rdx
	callq	lean_notify_assert@PLT
.LBB45_4:
	movl	-4(%rbp), %eax
	shrl	$3, %eax
	subl	$1, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end45:
	.size	lean_get_slot_idx, .Lfunc_end45-lean_get_slot_idx
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lean_is_st
	.type	lean_is_st,@function
lean_is_st:                             # @lean_is_st
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, (%rax)
	setg	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end46:
	.size	lean_is_st, .Lfunc_end46-lean_is_st
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lean_inc_ref
	.type	lean_inc_ref,@function
lean_inc_ref:                           # @lean_inc_ref
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	lean_is_st
	testb	$1, %al
	jne	.LBB47_1
	jmp	.LBB47_2
.LBB47_1:
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	jmp	.LBB47_5
.LBB47_2:
	movq	-8(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB47_4
# %bb.3:
	movq	-8(%rbp), %rdi
	callq	lean_inc_ref_cold@PLT
.LBB47_4:
	jmp	.LBB47_5
.LBB47_5:
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end47:
	.size	lean_inc_ref, .Lfunc_end47-lean_inc_ref
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lean_alloc_small_object
	.type	lean_alloc_small_object,@function
lean_alloc_small_object:                # @lean_alloc_small_object
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	movl	$8, %esi
	callq	lean_align
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	lean_get_slot_idx
	movl	%eax, -8(%rbp)
	cmpl	$4096, -4(%rbp)                 # imm = 0x1000
	setbe	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	cltq
	cmpq	$0, %rax
	je	.LBB48_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	movl	$335, %esi                      # imm = 0x14F
	leaq	.L.str.12(%rip), %rdx
	callq	lean_notify_assert@PLT
.LBB48_2:
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	lean_alloc_small@PLT
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end48:
	.size	lean_alloc_small_object, .Lfunc_end48-lean_alloc_small_object
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lean_io_mk_world
	.type	lean_io_mk_world,@function
lean_io_mk_world:                       # @lean_io_mk_world
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	lean_box
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end49:
	.size	lean_io_mk_world, .Lfunc_end49-lean_io_mk_world
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__1
	.type	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__1,@function
_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__1: # @_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__1
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
# %bb.1:
	leaq	.L.str.13(%rip), %rdi
	movl	$3, %edx
	movq	%rdx, %rsi
	callq	lean_mk_string_unchecked@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end50:
	.size	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__1, .Lfunc_end50-_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__1
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__2
	.type	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__2,@function
_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__2: # @_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__2
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
# %bb.1:
	movq	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__1(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$3, %edi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	lean_alloc_ctor
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rdx
	xorl	%esi, %esi
	callq	lean_ctor_set
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end51:
	.size	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__2, .Lfunc_end51-_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__2
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__3
	.type	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__3,@function
_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__3: # @_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__3
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
# %bb.1:
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	lean_box
	movq	%rax, -8(%rbp)
	movq	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__2(%rip), %rax
	movq	%rax, -16(%rbp)
	movl	$5, %edi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	lean_alloc_ctor
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rdx
	xorl	%esi, %esi
	callq	lean_ctor_set
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movl	$1, %esi
	callq	lean_ctor_set
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end52:
	.size	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__3, .Lfunc_end52-_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__3
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__4
	.type	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__4,@function
_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__4: # @_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__4
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
# %bb.1:
	leaq	.L.str.14(%rip), %rdi
	movl	$4, %edx
	movq	%rdx, %rsi
	callq	lean_mk_string_unchecked@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end53:
	.size	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__4, .Lfunc_end53-_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__4
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__5
	.type	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__5,@function
_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__5: # @_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__5
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
# %bb.1:
	movq	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__4(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$3, %edi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	lean_alloc_ctor
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rdx
	xorl	%esi, %esi
	callq	lean_ctor_set
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end54:
	.size	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__5, .Lfunc_end54-_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__5
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__6
	.type	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__6,@function
_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__6: # @_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__6
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
# %bb.1:
	movq	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__3(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__5(%rip), %rax
	movq	%rax, -16(%rbp)
	movl	$5, %edi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	lean_alloc_ctor
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rdx
	xorl	%esi, %esi
	callq	lean_ctor_set
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movl	$1, %esi
	callq	lean_ctor_set
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end55:
	.size	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__6, .Lfunc_end55-_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__6
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__7
	.type	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__7,@function
_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__7: # @_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__7
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
# %bb.1:
	movl	$7, %edi
	callq	lean_unsigned_to_nat
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	lean_nat_to_int
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end56:
	.size	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__7, .Lfunc_end56-_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__7
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lean_unsigned_to_nat
	.type	lean_unsigned_to_nat,@function
lean_unsigned_to_nat:                   # @lean_unsigned_to_nat
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	callq	lean_usize_to_nat
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end57:
	.size	lean_unsigned_to_nat, .Lfunc_end57-lean_unsigned_to_nat
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__8
	.type	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__8,@function
_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__8: # @_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__8
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
# %bb.1:
	leaq	.L.str.15(%rip), %rdi
	movl	$1, %edx
	movq	%rdx, %rsi
	callq	lean_mk_string_unchecked@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end58:
	.size	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__8, .Lfunc_end58-_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__8
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__9
	.type	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__9,@function
_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__9: # @_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__9
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
# %bb.1:
	movq	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__8(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$3, %edi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	lean_alloc_ctor
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rdx
	xorl	%esi, %esi
	callq	lean_ctor_set
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end59:
	.size	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__9, .Lfunc_end59-_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__9
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__10
	.type	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__10,@function
_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__10: # @_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__10
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
# %bb.1:
	leaq	.L.str.16(%rip), %rdi
	movl	$3, %edx
	movq	%rdx, %rsi
	callq	lean_mk_string_unchecked@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end60:
	.size	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__10, .Lfunc_end60-_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__10
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__11
	.type	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__11,@function
_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__11: # @_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__11
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
# %bb.1:
	movq	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__10(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$3, %edi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	lean_alloc_ctor
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rdx
	xorl	%esi, %esi
	callq	lean_ctor_set
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end61:
	.size	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__11, .Lfunc_end61-_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__11
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__12
	.type	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__12,@function
_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__12: # @_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__12
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
# %bb.1:
	leaq	.L.str.17(%rip), %rdi
	movl	$2, %edx
	movq	%rdx, %rsi
	callq	lean_mk_string_unchecked@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end62:
	.size	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__12, .Lfunc_end62-_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__12
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__13
	.type	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__13,@function
_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__13: # @_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__13
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
# %bb.1:
	movq	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__12(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	lean_string_length
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end63:
	.size	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__13, .Lfunc_end63-_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__13
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__14
	.type	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__14,@function
_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__14: # @_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__14
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
# %bb.1:
	movq	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__13(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	lean_nat_to_int
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end64:
	.size	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__14, .Lfunc_end64-_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__14
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__15
	.type	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__15,@function
_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__15: # @_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__15
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
# %bb.1:
	movq	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__12(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$3, %edi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	lean_alloc_ctor
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rdx
	xorl	%esi, %esi
	callq	lean_ctor_set
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end65:
	.size	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__15, .Lfunc_end65-_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__15
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__16
	.type	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__16,@function
_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__16: # @_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__16
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
# %bb.1:
	leaq	.L.str.18(%rip), %rdi
	movl	$2, %edx
	movq	%rdx, %rsi
	callq	lean_mk_string_unchecked@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end66:
	.size	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__16, .Lfunc_end66-_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__16
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__17
	.type	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__17,@function
_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__17: # @_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__17
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
# %bb.1:
	movq	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__16(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$3, %edi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	lean_alloc_ctor
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rdx
	xorl	%esi, %esi
	callq	lean_ctor_set
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end67:
	.size	_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__17, .Lfunc_end67-_init_l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____closed__17
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _init_l_instReprTag___closed__1
	.type	_init_l_instReprTag___closed__1,@function
_init_l_instReprTag___closed__1:        # @_init_l_instReprTag___closed__1
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
# %bb.1:
	leaq	l___private_SimpleCouponCollector_0__reprTag____x40_SimpleCouponCollector___hyg_22____boxed(%rip), %rdi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	lean_alloc_closure
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end68:
	.size	_init_l_instReprTag___closed__1, .Lfunc_end68-_init_l_instReprTag___closed__1
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _init_l_instReprTag
	.type	_init_l_instReprTag,@function
_init_l_instReprTag:                    # @_init_l_instReprTag
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
# %bb.1:
	movq	l_instReprTag___closed__1(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end69:
	.size	_init_l_instReprTag, .Lfunc_end69-_init_l_instReprTag
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _init_l_all__tag__true___closed__1
	.type	_init_l_all__tag__true___closed__1,@function
_init_l_all__tag__true___closed__1:     # @_init_l_all__tag__true___closed__1
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
# %bb.1:
	leaq	l_all__tag__true___lambda__1___boxed(%rip), %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	lean_alloc_closure
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end70:
	.size	_init_l_all__tag__true___closed__1, .Lfunc_end70-_init_l_all__tag__true___closed__1
	.cfi_endproc
                                        # -- End function
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
