	.extern _distortion_gain
	.public _hard_clip_threshold
	.extern _input_distortion
	.public _n_hard_clip_threshold
	.public _n_soft_clip_threshold1
	.public _n_soft_clip_threshold2
	.extern _output_distortion
	.public _soft_clip_threshold1
	.public _soft_clip_threshold2
	.public _soft_mul
	.public _soft_pow
	.extern _type
	.public _x
	.public _distortion
	.extern __mul_sat_laccum
	.extern __int_to_laccum
	.xdata_ovly
__extractedConst_0_1
	.dw  (0xaaaaaab)
	.xdata_ovly
__extractedConst_1_0
	.dw  (0x15555555)
	.xdata_ovly
__extractedConst_2_1
	.dw  (0xf5555555)
	.xdata_ovly
__extractedConst_3_0
	.dw  (0xeaaaaaab)
	.xdata_ovly
_hard_clip_threshold
	.dw  (0x10000000)
	.xdata_ovly
_n_hard_clip_threshold
	.dw  (0xf0000000)
	.xdata_ovly
_n_soft_clip_threshold1
	.dw  (0xf5555555)
	.xdata_ovly
_n_soft_clip_threshold2
	.dw  (0xeaaaaaab)
	.xdata_ovly
_soft_clip_threshold1
	.dw  (0xaaaaaab)
	.xdata_ovly
_soft_clip_threshold2
	.dw  (0x15555555)
	.xdata_ovly
_soft_mul
	.bss (0x3)
	.xdata_ovly
_soft_pow
	.bss (0x3)
	.xdata_ovly
_x
	.bss (0x3)
	.code_ovly



switch_0:			/* LN: 29 | CYCLE: 0 | RULES: () */ 
_distortion:			/* LN: 25 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_type + 0]			# LN: 29 | 
	a0 & a0			# LN: 29 | 
	if (a == 0) jmp (case_0)			# LN: 29 | 
	a0 = xmem[_type + 0]			# LN: 29 | 
	uhalfword(a1) = (0x1)			# LN: 29 | 
	a0 - a1			# LN: 29 | 
	if (a == 0) jmp (case_1)			# LN: 29 | 
	a0 = xmem[_type + 0]			# LN: 29 | 
	uhalfword(a1) = (0x2)			# LN: 29 | 
	a0 - a1			# LN: 29 | 
	if (a == 0) jmp (case_2)			# LN: 29 | 
	a0 = xmem[_type + 0]			# LN: 29 | 
	uhalfword(a1) = (0x3)			# LN: 29 | 
	a0 - a1			# LN: 29 | 
	if (a == 0) jmp (case_3)			# LN: 29 | 
	jmp (__epilogue_104)			# LN: 136 | 
case_0:			/* LN: 30 | CYCLE: 0 | RULES: () */ 
	do (0x10), label_end_92			# LN: 32 | 
label_begin_92:			/* LN: 32 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_input_distortion + 0]			# LN: 34 | 
	x0 = ymem[_distortion_gain + 0]			# LN: 34 | 
	x1 = xmem[i0]			# LN: 34 | 
	i0 = (0) + (_output_distortion)			# LN: 34 | 
	i0 = xmem[i0]			# LN: 34 | 
	a0 = x1 * x0			# LN: 34 | 
	xmem[i0] = a0			# LN: 34 | 
	i0 = xmem[_output_distortion + 0]			# LN: 35 | 
	a0 = (0x1000)			# LN: 35 | 
	a1 = xmem[i0]			# LN: 35 | 
	a1 - a0			# LN: 35 | 
	if (a <= 0) jmp (else_0)			# LN: 35 | 
	i0 = (0) + (_output_distortion)			# LN: 37 | 
	i0 = xmem[i0]			# LN: 37 | 
	a0 = (0x1000)			# LN: 37 | 
	xmem[i0] = a0h			# LN: 37 | 
	jmp (endif_0)			# LN: 37 | 
else_0:			/* LN: 35 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 39 | 
	a0 = (0xf000)			# LN: 39 | 
	a1 = xmem[i0]			# LN: 39 | 
	a1 - a0			# LN: 39 | 
	if (a >= 0) jmp (else_1)			# LN: 39 | 
	i0 = (0) + (_output_distortion)			# LN: 41 | 
	i0 = xmem[i0]			# LN: 41 | 
	a0 = (0xf000)			# LN: 41 | 
	xmem[i0] = a0h			# LN: 41 | 
endif_0:			/* LN: 35 | CYCLE: 0 | RULES: () */ 
endif_1:			/* LN: 39 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 39 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 43 | 
	i1 = (0) + (_output_distortion)			# LN: 43 | 
	a0 = xmem[i0]			# LN: 43 | 
	a0 = a0 << 1			# LN: 43 | 
	i0 = xmem[i1]			# LN: 43 | 
	a0 = a0 << 1			# LN: 43 | 
	xmem[i0] = a0h			# LN: 43 | 
	i0 = xmem[_output_distortion + 0]			# LN: 44 | 
	nop #empty cycle
	i0 += 1			# LN: 44 | 
	xmem[_output_distortion + 0] = i0			# LN: 44 | 
	i0 = xmem[_input_distortion + 0]			# LN: 45 | 
	nop #empty cycle
	i0 += 1			# LN: 45 | 
label_end_92:			# LN: 32 | CYCLE: 14 | RULES: ()
	xmem[_input_distortion + 0] = i0			# LN: 45 | 
for_end_0:			/* LN: 32 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_104)			# LN: 47 | 
case_1:			/* LN: 49 | CYCLE: 0 | RULES: () */ 
	do (0x10), label_end_93			# LN: 51 | 
label_begin_93:			/* LN: 51 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_input_distortion + 0]			# LN: 53 | 
	x0 = ymem[_distortion_gain + 0]			# LN: 53 | 
	x1 = xmem[i0]			# LN: 53 | 
	i0 = (0) + (_output_distortion)			# LN: 53 | 
	i0 = xmem[i0]			# LN: 53 | 
	a0 = x1 * x0			# LN: 53 | 
	xmem[i0] = a0			# LN: 53 | 
	i0 = xmem[_output_distortion + 0]			# LN: 54 | 
	a0 = xmem[__extractedConst_0_1 + 0]			# LN: 54 | 
	a1 = xmem[i0]			# LN: 54 | 
	a1 - a0			# LN: 54 | 
	if (a <= 0) jmp (else_2)			# LN: 54 | 
	i0 = xmem[_output_distortion + 0]			# LN: 56 | 
	a0 = xmem[__extractedConst_1_0 + 0]			# LN: 56 | 
	a1 = xmem[i0]			# LN: 56 | 
	a1 - a0			# LN: 56 | 
	if (a <= 0) jmp (else_3)			# LN: 56 | 
	i0 = (0) + (_output_distortion)			# LN: 59 | 
	i0 = xmem[i0]			# LN: 59 | 
	a0 = (0x1000)			# LN: 59 | 
	xmem[i0] = a0h			# LN: 59 | 
	jmp (endif_4)			# LN: 59 | 
else_3:			/* LN: 56 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 63 | 
	i1 = xmem[_output_distortion + 0]			# LN: 63 | 
	a0 = xmem[i0]			# LN: 63 | 
	b0 = xmem[i1]			# LN: 63 | 
	a1 =+ b0			# LN: 63 | 
	call (__mul_sat_laccum)			# LN: 63 | 
	xmem[_soft_pow + 0] = a0g			# LN: 63 | 
	xmem[_soft_pow + 1] = a0h			# LN: 63 | 
	xmem[_soft_pow + 2] = a0l			# LN: 63 | 
	b0g = xmem[_soft_pow + 0]			# LN: 64 | 
	b0h = xmem[_soft_pow + 1]			# LN: 64 | 
	uhalfword(a0) = (0xc)			# LN: 64 | 
	b0l = xmem[_soft_pow + 2]			# LN: 64 | 
	call (__int_to_laccum)			# LN: 64 | 
	a1 =+ b0; b1 =+ a0			# LN: 64, 64 | 
	a0 =+ b1			# LN: 64 | 
	call (__mul_sat_laccum)			# LN: 64 | 
	xmem[_soft_pow + 0] = a0g			# LN: 64 | 
	xmem[_soft_pow + 1] = a0h			# LN: 64 | 
	xmem[_soft_pow + 2] = a0l			# LN: 64 | 
	i0 = xmem[_output_distortion + 0]			# LN: 65 | 
	i1 = (0) + (_output_distortion)			# LN: 66 | 
	a0 = xmem[i0]			# LN: 65 | 
	a0 = a0 << 1			# LN: 65 | 
	a0 = a0 << 1			# LN: 65 | 
	xmem[_soft_mul + 0] = a0g			# LN: 65 | 
	xmem[_soft_mul + 1] = a0h			# LN: 65 | 
	xmem[_soft_mul + 2] = a0l			# LN: 65 | 
	a0 = xmem[__extractedConst_2_1 + 0]			# LN: 66 | 
	a1g = xmem[_soft_mul + 0]			# LN: 66 | 
	a1h = xmem[_soft_mul + 1]			# LN: 66 | 
	a1l = xmem[_soft_mul + 2]			# LN: 66 | 
	a0 = a0 + a1			# LN: 66 | 
	a1g = xmem[_soft_pow + 0]			# LN: 66 | 
	a1h = xmem[_soft_pow + 1]			# LN: 66 | 
	a1l = xmem[_soft_pow + 2]			# LN: 66 | 
	i0 = xmem[i1]			# LN: 66 | 
	a0 = a0 - a1			# LN: 66 | 
	xmem[i0] = a0			# LN: 66 | 
	jmp (endif_4)			# LN: 66 | 
else_2:			/* LN: 54 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 72 | 
	a0 = xmem[__extractedConst_2_1 + 0]			# LN: 72 | 
	a1 = xmem[i0]			# LN: 72 | 
	a1 - a0			# LN: 72 | 
	if (a >= 0) jmp (else_4)			# LN: 72 | 
	i0 = xmem[_output_distortion + 0]			# LN: 74 | 
	a0 = xmem[__extractedConst_3_0 + 0]			# LN: 74 | 
	a1 = xmem[i0]			# LN: 74 | 
	a1 - a0			# LN: 74 | 
	if (a >= 0) jmp (else_5)			# LN: 74 | 
	i0 = (0) + (_output_distortion)			# LN: 77 | 
	i0 = xmem[i0]			# LN: 77 | 
	a0 = (0xf000)			# LN: 77 | 
	xmem[i0] = a0h			# LN: 77 | 
	jmp (endif_4)			# LN: 77 | 
else_5:			/* LN: 74 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 81 | 
	i1 = xmem[_output_distortion + 0]			# LN: 81 | 
	a0 = xmem[i0]			# LN: 81 | 
	b0 = xmem[i1]			# LN: 81 | 
	a1 =+ b0			# LN: 81 | 
	call (__mul_sat_laccum)			# LN: 81 | 
	xmem[_soft_pow + 0] = a0g			# LN: 81 | 
	xmem[_soft_pow + 1] = a0h			# LN: 81 | 
	xmem[_soft_pow + 2] = a0l			# LN: 81 | 
	b0g = xmem[_soft_pow + 0]			# LN: 82 | 
	b0h = xmem[_soft_pow + 1]			# LN: 82 | 
	uhalfword(a0) = (0xc)			# LN: 82 | 
	b0l = xmem[_soft_pow + 2]			# LN: 82 | 
	call (__int_to_laccum)			# LN: 82 | 
	a1 =+ b0; b1 =+ a0			# LN: 82, 82 | 
	a0 =+ b1			# LN: 82 | 
	call (__mul_sat_laccum)			# LN: 82 | 
	xmem[_soft_pow + 0] = a0g			# LN: 82 | 
	xmem[_soft_pow + 1] = a0h			# LN: 82 | 
	xmem[_soft_pow + 2] = a0l			# LN: 82 | 
	i0 = xmem[_output_distortion + 0]			# LN: 83 | 
	i1 = (0) + (_output_distortion)			# LN: 84 | 
	a0 = xmem[i0]			# LN: 83 | 
	a0 = a0 << 1			# LN: 83 | 
	a0 = a0 << 1			# LN: 83 | 
	xmem[_soft_mul + 0] = a0g			# LN: 83 | 
	xmem[_soft_mul + 1] = a0h			# LN: 83 | 
	xmem[_soft_mul + 2] = a0l			# LN: 83 | 
	a0 = xmem[__extractedConst_0_1 + 0]			# LN: 84 | 
	a1g = xmem[_soft_mul + 0]			# LN: 84 | 
	a1h = xmem[_soft_mul + 1]			# LN: 84 | 
	a1l = xmem[_soft_mul + 2]			# LN: 84 | 
	a0 = a0 + a1			# LN: 84 | 
	a1g = xmem[_soft_pow + 0]			# LN: 84 | 
	a1h = xmem[_soft_pow + 1]			# LN: 84 | 
	a1l = xmem[_soft_pow + 2]			# LN: 84 | 
	i0 = xmem[i1]			# LN: 84 | 
	a0 = a0 + a1			# LN: 84 | 
	xmem[i0] = a0			# LN: 84 | 
	jmp (endif_4)			# LN: 84 | 
else_4:			/* LN: 72 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 90 | 
	i1 = (0) + (_output_distortion)			# LN: 90 | 
	a0 = xmem[i0]			# LN: 90 | 
	i0 = xmem[i1]			# LN: 90 | 
	a0 = a0 << 1			# LN: 90 | 
	xmem[i0] = a0h			# LN: 90 | 
endif_2:			/* LN: 54 | CYCLE: 0 | RULES: () */ 
endif_4:			/* LN: 72 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 93 | 
	i1 = (0) + (_output_distortion)			# LN: 93 | 
	a0 = xmem[i0]			# LN: 93 | 
	i0 = xmem[i1]			# LN: 93 | 
	a0 = a0 >> 1			# LN: 93 | 
	xmem[i0] = a0h			# LN: 93 | 
	i0 = xmem[_output_distortion + 0]			# LN: 95 | 
	i1 = (0) + (_output_distortion)			# LN: 95 | 
	a0 = xmem[i0]			# LN: 95 | 
	a0 = a0 << 1			# LN: 95 | 
	i0 = xmem[i1]			# LN: 95 | 
	a0 = a0 << 1			# LN: 95 | 
	xmem[i0] = a0h			# LN: 95 | 
	i0 = xmem[_output_distortion + 0]			# LN: 96 | 
	nop #empty cycle
	i0 += 1			# LN: 96 | 
	xmem[_output_distortion + 0] = i0			# LN: 96 | 
	i0 = xmem[_input_distortion + 0]			# LN: 97 | 
	nop #empty cycle
	i0 += 1			# LN: 97 | 
label_end_93:			# LN: 51 | CYCLE: 20 | RULES: ()
	xmem[_input_distortion + 0] = i0			# LN: 97 | 
for_end_1:			/* LN: 51 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_104)			# LN: 99 | 
case_2:			/* LN: 101 | CYCLE: 0 | RULES: () */ 
	do (0x10), label_end_94			# LN: 103 | 
label_begin_94:			/* LN: 103 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_input_distortion + 0]			# LN: 105 | 
	x0 = ymem[_distortion_gain + 0]			# LN: 105 | 
	x1 = xmem[i0]			# LN: 105 | 
	i0 = (0) + (_output_distortion)			# LN: 105 | 
	i0 = xmem[i0]			# LN: 105 | 
	a0 = x1 * x0			# LN: 105 | 
	xmem[i0] = a0			# LN: 105 | 
	i0 = xmem[_output_distortion + 0]			# LN: 106 | 
	nop #empty cycle
	a0 = xmem[i0]			# LN: 106 | 
	a0 & a0			# LN: 106 | 
	if (a >= 0) jmp (else_6)			# LN: 106 | 
	i0 = xmem[_output_distortion + 0]			# LN: 108 | 
	i1 = (0) + (_output_distortion)			# LN: 108 | 
	a0 = xmem[i0]			# LN: 108 | 
	i0 = xmem[i1]			# LN: 108 | 
	a0 =- a0			# LN: 108 | 
	xmem[i0] = a0h			# LN: 108 | 
endif_6:			/* LN: 106 | CYCLE: 0 | RULES: () */ 
else_6:			/* LN: 106 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 111 | 
	i1 = (0) + (_output_distortion)			# LN: 111 | 
	a0 = xmem[i0]			# LN: 111 | 
	a0 = a0 << 1			# LN: 111 | 
	i0 = xmem[i1]			# LN: 111 | 
	a0 = a0 << 1			# LN: 111 | 
	xmem[i0] = a0h			# LN: 111 | 
	i0 = xmem[_output_distortion + 0]			# LN: 112 | 
	nop #empty cycle
	i0 += 1			# LN: 112 | 
	xmem[_output_distortion + 0] = i0			# LN: 112 | 
	i0 = xmem[_input_distortion + 0]			# LN: 113 | 
	nop #empty cycle
	i0 += 1			# LN: 113 | 
label_end_94:			# LN: 103 | CYCLE: 14 | RULES: ()
	xmem[_input_distortion + 0] = i0			# LN: 113 | 
for_end_2:			/* LN: 103 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_104)			# LN: 115 | 
case_3:			/* LN: 117 | CYCLE: 0 | RULES: () */ 
	do (0x10), label_end_95			# LN: 119 | 
label_begin_95:			/* LN: 119 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_input_distortion + 0]			# LN: 121 | 
	x0 = ymem[_distortion_gain + 0]			# LN: 121 | 
	x1 = xmem[i0]			# LN: 121 | 
	i0 = (0) + (_output_distortion)			# LN: 121 | 
	i0 = xmem[i0]			# LN: 121 | 
	a0 = x1 * x0			# LN: 121 | 
	xmem[i0] = a0			# LN: 121 | 
	a0g = xmem[_x + 0]			# LN: 122 | 
	a0h = xmem[_x + 1]			# LN: 122 | 
	a0l = xmem[_x + 2]			# LN: 122 | 
	a0 & a0			# LN: 122 | 
	if (a >= 0) jmp (else_7)			# LN: 122 | 
	a0g = xmem[_x + 0]			# LN: 123 | 
	a0h = xmem[_x + 1]			# LN: 123 | 
	a0l = xmem[_x + 2]			# LN: 123 | 
	a0 =- a0			# LN: 123 | 
	xmem[_x + 0] = a0g			# LN: 123 | 
	xmem[_x + 1] = a0h			# LN: 123 | 
	xmem[_x + 2] = a0l			# LN: 123 | 
endif_7:			/* LN: 122 | CYCLE: 0 | RULES: () */ 
else_7:			/* LN: 122 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 126 | 
	a0g = xmem[_x + 0]			# LN: 126 | 
	a1 = xmem[i0]			# LN: 126 | 
	a0h = xmem[_x + 1]			# LN: 126 | 
	a0l = xmem[_x + 2]			# LN: 126 | 
	a0 = a0 + a1			# LN: 126 | 
	xmem[_x + 0] = a0g			# LN: 126 | 
	xmem[_x + 1] = a0h			# LN: 126 | 
	xmem[_x + 2] = a0l			# LN: 126 | 
	a0g = xmem[_x + 0]			# LN: 127 | 
	a0h = xmem[_x + 1]			# LN: 127 | 
	i0 = (0) + (_output_distortion)			# LN: 127 | 
	i0 = xmem[i0]			# LN: 127 | 
	a0l = xmem[_x + 2]			# LN: 127 | 
	xmem[i0] = a0			# LN: 127 | 
	i0 = xmem[_output_distortion + 0]			# LN: 128 | 
	i1 = (0) + (_output_distortion)			# LN: 128 | 
	a0 = xmem[i0]			# LN: 128 | 
	i0 = xmem[i1]			# LN: 128 | 
	a0 = a0 << 1			# LN: 128 | 
	xmem[i0] = a0h			# LN: 128 | 
	i0 = xmem[_output_distortion + 0]			# LN: 130 | 
	nop #empty cycle
	i0 += 1			# LN: 130 | 
	xmem[_output_distortion + 0] = i0			# LN: 130 | 
	i0 = xmem[_input_distortion + 0]			# LN: 131 | 
	nop #empty cycle
	i0 += 1			# LN: 131 | 
label_end_95:			# LN: 119 | CYCLE: 28 | RULES: ()
	xmem[_input_distortion + 0] = i0			# LN: 131 | 
__epilogue_104:			/* LN: 138 | CYCLE: 0 | RULES: () */ 
for_end_3:			/* LN: 119 | CYCLE: 0 | RULES: () */ 
	ret			# LN: 138 | 
