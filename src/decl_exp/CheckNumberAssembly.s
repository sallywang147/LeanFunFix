	.text
	.file	"CheckNumber.c"
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
.Lfunc_end0:
	.size	lean_uint8_dec_eq, .Lfunc_end0-lean_uint8_dec_eq
	.cfi_endproc
                                        # -- End function
	.globl	l_checkNumber                   # -- Begin function l_checkNumber
	.p2align	4, 0x90
	.type	l_checkNumber,@function
l_checkNumber:                          # @l_checkNumber
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
# %bb.1:
	movb	$42, -2(%rbp)
	movb	-1(%rbp), %al
	movzbl	%al, %edi
	movzbl	-2(%rbp), %esi
	callq	lean_uint8_dec_eq
	movb	%al, -3(%rbp)
	movzbl	-3(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	l_checkNumber, .Lfunc_end1-l_checkNumber
	.cfi_endproc
                                        # -- End function
	.globl	l_checkNumber___boxed           # -- Begin function l_checkNumber___boxed
	.p2align	4, 0x90
	.type	l_checkNumber___boxed,@function
l_checkNumber___boxed:                  # @l_checkNumber___boxed
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
	callq	lean_unbox
                                        # kill: def $al killed $al killed $rax
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	callq	lean_dec
	movzbl	-9(%rbp), %edi
	callq	l_checkNumber
	movb	%al, -10(%rbp)
	movzbl	-10(%rbp), %eax
	movl	%eax, %edi
	callq	lean_box
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	l_checkNumber___boxed, .Lfunc_end2-l_checkNumber___boxed
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
.Lfunc_end3:
	.size	lean_unbox, .Lfunc_end3-lean_unbox
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
	jne	.LBB4_2
# %bb.1:
	movq	-8(%rbp), %rdi
	callq	lean_dec_ref
.LBB4_2:
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	lean_dec, .Lfunc_end4-lean_dec
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
.Lfunc_end5:
	.size	lean_box, .Lfunc_end5-lean_box
	.cfi_endproc
                                        # -- End function
	.globl	l_IO_println___at_main___spec__1 # -- Begin function l_IO_println___at_main___spec__1
	.p2align	4, 0x90
	.type	l_IO_println___at_main___spec__1,@function
l_IO_println___at_main___spec__1:       # @l_IO_println___at_main___spec__1
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# %bb.1:
	movl	$10, -20(%rbp)
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	lean_string_push@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	l_IO_print___at_IO_println___spec__1@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	l_IO_println___at_main___spec__1, .Lfunc_end6-l_IO_println___at_main___spec__1
	.cfi_endproc
                                        # -- End function
	.globl	_lean_main                      # -- Begin function _lean_main
	.p2align	4, 0x90
	.type	_lean_main,@function
_lean_main:                             # @_lean_main
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
	movq	l_main___closed__1(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	l_IO_println___at_main___spec__1
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	_lean_main, .Lfunc_end7-_lean_main
	.cfi_endproc
                                        # -- End function
	.globl	initialize_example              # -- Begin function initialize_example
	.p2align	4, 0x90
	.type	initialize_example,@function
initialize_example:                     # @initialize_example
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
	je	.LBB8_2
# %bb.1:
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	lean_box
	movq	%rax, %rdi
	callq	lean_io_result_mk_ok
	movq	%rax, -8(%rbp)
	jmp	.LBB8_5
.LBB8_2:
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
	jne	.LBB8_3
	jmp	.LBB8_4
.LBB8_3:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB8_5
.LBB8_4:
	movq	-32(%rbp), %rdi
	callq	lean_dec_ref
	callq	_init_l_main___closed__1
	movq	%rax, l_main___closed__1(%rip)
	movq	l_main___closed__1(%rip), %rdi
	callq	lean_mark_persistent@PLT
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	lean_box
	movq	%rax, %rdi
	callq	lean_io_result_mk_ok
	movq	%rax, -8(%rbp)
.LBB8_5:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end8:
	.size	initialize_example, .Lfunc_end8-initialize_example
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
.Lfunc_end9:
	.size	lean_io_result_mk_ok, .Lfunc_end9-lean_io_result_mk_ok
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
.Lfunc_end10:
	.size	lean_io_result_is_error, .Lfunc_end10-lean_io_result_is_error
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
	je	.LBB11_2
# %bb.1:
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	jmp	.LBB11_5
.LBB11_2:
	movq	-8(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB11_4
# %bb.3:
	movq	-8(%rbp), %rdi
	callq	lean_dec_ref_cold@PLT
.LBB11_4:
	jmp	.LBB11_5
.LBB11_5:
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end11:
	.size	lean_dec_ref, .Lfunc_end11-lean_dec_ref
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
.Lfunc_end12:
	.size	lean_is_scalar, .Lfunc_end12-lean_is_scalar
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
	ja	.LBB13_3
# %bb.1:
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$256, -8(%rbp)                  # imm = 0x100
	movb	%al, -25(%rbp)                  # 1-byte Spill
	jae	.LBB13_3
# %bb.2:
	cmpl	$1024, -12(%rbp)                # imm = 0x400
	setb	%al
	movb	%al, -25(%rbp)                  # 1-byte Spill
.LBB13_3:
	movb	-25(%rbp), %al                  # 1-byte Reload
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	cltq
	cmpq	$0, %rax
	je	.LBB13_5
# %bb.4:
	leaq	.L.str(%rip), %rdi
	movl	$559, %esi                      # imm = 0x22F
	leaq	.L.str.1(%rip), %rdx
	callq	lean_notify_assert@PLT
.LBB13_5:
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
.Lfunc_end13:
	.size	lean_alloc_ctor, .Lfunc_end13-lean_alloc_ctor
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
	je	.LBB14_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	movl	$571, %esi                      # imm = 0x23B
	leaq	.L.str.5(%rip), %rdx
	callq	lean_notify_assert@PLT
.LBB14_2:
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
.Lfunc_end14:
	.size	lean_ctor_set, .Lfunc_end14-lean_ctor_set
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
	je	.LBB15_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	movl	$350, %esi                      # imm = 0x15E
	leaq	.L.str.2(%rip), %rdx
	callq	lean_notify_assert@PLT
.LBB15_2:
	movl	-8(%rbp), %edi
	movl	-12(%rbp), %esi
	callq	lean_alloc_small@PLT
	movq	%rax, -24(%rbp)
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jbe	.LBB15_4
# %bb.3:
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	$0, -8(%rax)
.LBB15_4:
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end15:
	.size	lean_alloc_ctor_memory, .Lfunc_end15-lean_alloc_ctor_memory
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
.Lfunc_end16:
	.size	lean_set_st_header, .Lfunc_end16-lean_set_st_header
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
.Lfunc_end17:
	.size	lean_align, .Lfunc_end17-lean_align
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
	je	.LBB18_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	movl	$317, %esi                      # imm = 0x13D
	leaq	.L.str.3(%rip), %rdx
	callq	lean_notify_assert@PLT
.LBB18_2:
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
	je	.LBB18_4
# %bb.3:
	leaq	.L.str(%rip), %rdi
	movl	$318, %esi                      # imm = 0x13E
	leaq	.L.str.4(%rip), %rdx
	callq	lean_notify_assert@PLT
.LBB18_4:
	movl	-4(%rbp), %eax
	shrl	$3, %eax
	subl	$1, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end18:
	.size	lean_get_slot_idx, .Lfunc_end18-lean_get_slot_idx
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
	je	.LBB19_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	movl	$544, %esi                      # imm = 0x220
	leaq	.L.str.6(%rip), %rdx
	callq	lean_notify_assert@PLT
.LBB19_2:
	movq	-8(%rbp), %rdi
	callq	lean_ptr_other
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end19:
	.size	lean_ctor_num_objs, .Lfunc_end19-lean_ctor_num_objs
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
	je	.LBB20_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	movl	$549, %esi                      # imm = 0x225
	leaq	.L.str.6(%rip), %rdx
	callq	lean_notify_assert@PLT
.LBB20_2:
	movq	-8(%rbp), %rdi
	callq	lean_to_ctor
	addq	$8, %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end20:
	.size	lean_ctor_obj_cptr, .Lfunc_end20-lean_ctor_obj_cptr
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
.Lfunc_end21:
	.size	lean_is_ctor, .Lfunc_end21-lean_is_ctor
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
.Lfunc_end22:
	.size	lean_ptr_other, .Lfunc_end22-lean_ptr_other
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
.Lfunc_end23:
	.size	lean_ptr_tag, .Lfunc_end23-lean_ptr_tag
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
	je	.LBB24_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	movl	$484, %esi                      # imm = 0x1E4
	leaq	.L.str.6(%rip), %rdx
	callq	lean_notify_assert@PLT
.LBB24_2:
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end24:
	.size	lean_to_ctor, .Lfunc_end24-lean_to_ctor
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
.Lfunc_end25:
	.size	lean_io_mk_world, .Lfunc_end25-lean_io_mk_world
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _init_l_main___closed__1
	.type	_init_l_main___closed__1,@function
_init_l_main___closed__1:               # @_init_l_main___closed__1
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
# %bb.1:
	leaq	.L.str.7(%rip), %rdi
	movl	$5, %edx
	movq	%rdx, %rsi
	callq	lean_mk_string_unchecked@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end26:
	.size	_init_l_main___closed__1, .Lfunc_end26-_init_l_main___closed__1
	.cfi_endproc
                                        # -- End function
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
