	.text
	.attribute	4, 16
	.globl	measure                    # -- Begin function measure
	.p2align	1
	.type	measure,@function
measure:                           # @measure
    li a1, 160
    vsetvli	a2, zero, PARAM_SEW, PARAM_LMUL, ta, ma
    .rept   200
    vlsPARAM_SEW.v v0, (a0), a1
    vlsPARAM_SEW.v v8, (a0), a1
    vlsPARAM_SEW.v v16, (a0), a1
    vlsPARAM_SEW.v v24, (a0), a1
    .endr
	ret
.Lfunc_end0:
	.size	measure, .Lfunc_end0-measure
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig