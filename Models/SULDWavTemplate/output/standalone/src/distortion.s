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



switch_0:			/* LN: 32 | CYCLE: 0 | RULES: () */ 
_distortion:			/* LN: 25 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_type + 0]			# LN: 32 | 
	a0 & a0			# LN: 32 | 
	if (a == 0) jmp (case_0)			# LN: 32 | 
	a0 = xmem[_type + 0]			# LN: 32 | 
	uhalfword(a1) = (0x1)			# LN: 32 | 
	a0 - a1			# LN: 32 | 
	if (a == 0) jmp (case_1)			# LN: 32 | 
	a0 = xmem[_type + 0]			# LN: 32 | 
	uhalfword(a1) = (0x2)			# LN: 32 | 
	a0 - a1			# LN: 32 | 
	if (a == 0) jmp (case_2)			# LN: 32 | 
	a0 = xmem[_type + 0]			# LN: 32 | 
	uhalfword(a1) = (0x3)			# LN: 32 | 
	a0 - a1			# LN: 32 | 
	if (a == 0) jmp (case_3)			# LN: 32 | 
	jmp (__epilogue_104)			# LN: 139 | 
case_0:			/* LN: 33 | CYCLE: 0 | RULES: () */ 
	do (0x10), label_end_92			# LN: 35 | 
label_begin_92:			/* LN: 35 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_input_distortion + 0]			# LN: 37 | 
	x0 = (0x4000)			# LN: 37 | 
	x1 = xmem[i0]			# LN: 37 | 
	i0 = (0) + (_output_distortion)			# LN: 37 | 
	i0 = xmem[i0]			# LN: 37 | 
	a0 = x1 * x0			# LN: 37 | 
	xmem[i0] = a0			# LN: 37 | 
	i0 = xmem[_output_distortion + 0]			# LN: 38 | 
	a0 = (0x1000)			# LN: 38 | 
	a1 = xmem[i0]			# LN: 38 | 
	a1 - a0			# LN: 38 | 
	if (a <= 0) jmp (else_0)			# LN: 38 | 
	i0 = (0) + (_output_distortion)			# LN: 40 | 
	i0 = xmem[i0]			# LN: 40 | 
	a0 = (0x1000)			# LN: 40 | 
	xmem[i0] = a0h			# LN: 40 | 
	jmp (endif_0)			# LN: 40 | 
else_0:			/* LN: 38 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 42 | 
	a0 = (0xf000)			# LN: 42 | 
	a1 = xmem[i0]			# LN: 42 | 
	a1 - a0			# LN: 42 | 
	if (a >= 0) jmp (else_1)			# LN: 42 | 
	i0 = (0) + (_output_distortion)			# LN: 44 | 
	i0 = xmem[i0]			# LN: 44 | 
	a0 = (0xf000)			# LN: 44 | 
	xmem[i0] = a0h			# LN: 44 | 
endif_0:			/* LN: 38 | CYCLE: 0 | RULES: () */ 
endif_1:			/* LN: 42 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 42 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 46 | 
	i1 = (0) + (_output_distortion)			# LN: 46 | 
	a0 = xmem[i0]			# LN: 46 | 
	a0 = a0 << 1			# LN: 46 | 
	i0 = xmem[i1]			# LN: 46 | 
	a0 = a0 << 1			# LN: 46 | 
	xmem[i0] = a0h			# LN: 46 | 
	i0 = xmem[_output_distortion + 0]			# LN: 47 | 
	nop #empty cycle
	i0 += 1			# LN: 47 | 
	xmem[_output_distortion + 0] = i0			# LN: 47 | 
	i0 = xmem[_input_distortion + 0]			# LN: 48 | 
	nop #empty cycle
	i0 += 1			# LN: 48 | 
label_end_92:			# LN: 35 | CYCLE: 14 | RULES: ()
	xmem[_input_distortion + 0] = i0			# LN: 48 | 
for_end_0:			/* LN: 35 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_104)			# LN: 50 | 
case_1:			/* LN: 52 | CYCLE: 0 | RULES: () */ 
	do (0x10), label_end_93			# LN: 54 | 
label_begin_93:			/* LN: 54 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_input_distortion + 0]			# LN: 56 | 
	x0 = (0x4000)			# LN: 56 | 
	x1 = xmem[i0]			# LN: 56 | 
	i0 = (0) + (_output_distortion)			# LN: 56 | 
	i0 = xmem[i0]			# LN: 56 | 
	a0 = x1 * x0			# LN: 56 | 
	xmem[i0] = a0			# LN: 56 | 
	i0 = xmem[_output_distortion + 0]			# LN: 57 | 
	a0 = xmem[__extractedConst_0_1 + 0]			# LN: 57 | 
	a1 = xmem[i0]			# LN: 57 | 
	a1 - a0			# LN: 57 | 
	if (a <= 0) jmp (else_2)			# LN: 57 | 
	i0 = xmem[_output_distortion + 0]			# LN: 59 | 
	a0 = xmem[__extractedConst_1_0 + 0]			# LN: 59 | 
	a1 = xmem[i0]			# LN: 59 | 
	a1 - a0			# LN: 59 | 
	if (a <= 0) jmp (else_3)			# LN: 59 | 
	i0 = (0) + (_output_distortion)			# LN: 62 | 
	i0 = xmem[i0]			# LN: 62 | 
	a0 = (0x1000)			# LN: 62 | 
	xmem[i0] = a0h			# LN: 62 | 
	jmp (endif_4)			# LN: 62 | 
else_3:			/* LN: 59 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 66 | 
	i1 = xmem[_output_distortion + 0]			# LN: 66 | 
	a0 = xmem[i0]			# LN: 66 | 
	b0 = xmem[i1]			# LN: 66 | 
	a1 =+ b0			# LN: 66 | 
	call (__mul_sat_laccum)			# LN: 66 | 
	xmem[_soft_pow + 0] = a0g			# LN: 66 | 
	xmem[_soft_pow + 1] = a0h			# LN: 66 | 
	xmem[_soft_pow + 2] = a0l			# LN: 66 | 
	b0g = xmem[_soft_pow + 0]			# LN: 67 | 
	b0h = xmem[_soft_pow + 1]			# LN: 67 | 
	uhalfword(a0) = (0xc)			# LN: 67 | 
	b0l = xmem[_soft_pow + 2]			# LN: 67 | 
	call (__int_to_laccum)			# LN: 67 | 
	a1 =+ b0; b1 =+ a0			# LN: 67, 67 | 
	a0 =+ b1			# LN: 67 | 
	call (__mul_sat_laccum)			# LN: 67 | 
	xmem[_soft_pow + 0] = a0g			# LN: 67 | 
	xmem[_soft_pow + 1] = a0h			# LN: 67 | 
	xmem[_soft_pow + 2] = a0l			# LN: 67 | 
	i0 = xmem[_output_distortion + 0]			# LN: 68 | 
	i1 = (0) + (_output_distortion)			# LN: 69 | 
	a0 = xmem[i0]			# LN: 68 | 
	a0 = a0 << 1			# LN: 68 | 
	a0 = a0 << 1			# LN: 68 | 
	xmem[_soft_mul + 0] = a0g			# LN: 68 | 
	xmem[_soft_mul + 1] = a0h			# LN: 68 | 
	xmem[_soft_mul + 2] = a0l			# LN: 68 | 
	a0 = xmem[__extractedConst_2_1 + 0]			# LN: 69 | 
	a1g = xmem[_soft_mul + 0]			# LN: 69 | 
	a1h = xmem[_soft_mul + 1]			# LN: 69 | 
	a1l = xmem[_soft_mul + 2]			# LN: 69 | 
	a0 = a0 + a1			# LN: 69 | 
	a1g = xmem[_soft_pow + 0]			# LN: 69 | 
	a1h = xmem[_soft_pow + 1]			# LN: 69 | 
	a1l = xmem[_soft_pow + 2]			# LN: 69 | 
	i0 = xmem[i1]			# LN: 69 | 
	a0 = a0 - a1			# LN: 69 | 
	xmem[i0] = a0			# LN: 69 | 
	jmp (endif_4)			# LN: 69 | 
else_2:			/* LN: 57 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 75 | 
	a0 = xmem[__extractedConst_2_1 + 0]			# LN: 75 | 
	a1 = xmem[i0]			# LN: 75 | 
	a1 - a0			# LN: 75 | 
	if (a >= 0) jmp (else_4)			# LN: 75 | 
	i0 = xmem[_output_distortion + 0]			# LN: 77 | 
	a0 = xmem[__extractedConst_3_0 + 0]			# LN: 77 | 
	a1 = xmem[i0]			# LN: 77 | 
	a1 - a0			# LN: 77 | 
	if (a >= 0) jmp (else_5)			# LN: 77 | 
	i0 = (0) + (_output_distortion)			# LN: 80 | 
	i0 = xmem[i0]			# LN: 80 | 
	a0 = (0xf000)			# LN: 80 | 
	xmem[i0] = a0h			# LN: 80 | 
	jmp (endif_4)			# LN: 80 | 
else_5:			/* LN: 77 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 84 | 
	i1 = xmem[_output_distortion + 0]			# LN: 84 | 
	a0 = xmem[i0]			# LN: 84 | 
	b0 = xmem[i1]			# LN: 84 | 
	a1 =+ b0			# LN: 84 | 
	call (__mul_sat_laccum)			# LN: 84 | 
	xmem[_soft_pow + 0] = a0g			# LN: 84 | 
	xmem[_soft_pow + 1] = a0h			# LN: 84 | 
	xmem[_soft_pow + 2] = a0l			# LN: 84 | 
	b0g = xmem[_soft_pow + 0]			# LN: 85 | 
	b0h = xmem[_soft_pow + 1]			# LN: 85 | 
	uhalfword(a0) = (0xc)			# LN: 85 | 
	b0l = xmem[_soft_pow + 2]			# LN: 85 | 
	call (__int_to_laccum)			# LN: 85 | 
	a1 =+ b0; b1 =+ a0			# LN: 85, 85 | 
	a0 =+ b1			# LN: 85 | 
	call (__mul_sat_laccum)			# LN: 85 | 
	xmem[_soft_pow + 0] = a0g			# LN: 85 | 
	xmem[_soft_pow + 1] = a0h			# LN: 85 | 
	xmem[_soft_pow + 2] = a0l			# LN: 85 | 
	i0 = xmem[_output_distortion + 0]			# LN: 86 | 
	i1 = (0) + (_output_distortion)			# LN: 87 | 
	a0 = xmem[i0]			# LN: 86 | 
	a0 = a0 << 1			# LN: 86 | 
	a0 = a0 << 1			# LN: 86 | 
	xmem[_soft_mul + 0] = a0g			# LN: 86 | 
	xmem[_soft_mul + 1] = a0h			# LN: 86 | 
	xmem[_soft_mul + 2] = a0l			# LN: 86 | 
	a0 = xmem[__extractedConst_0_1 + 0]			# LN: 87 | 
	a1g = xmem[_soft_mul + 0]			# LN: 87 | 
	a1h = xmem[_soft_mul + 1]			# LN: 87 | 
	a1l = xmem[_soft_mul + 2]			# LN: 87 | 
	a0 = a0 + a1			# LN: 87 | 
	a1g = xmem[_soft_pow + 0]			# LN: 87 | 
	a1h = xmem[_soft_pow + 1]			# LN: 87 | 
	a1l = xmem[_soft_pow + 2]			# LN: 87 | 
	i0 = xmem[i1]			# LN: 87 | 
	a0 = a0 + a1			# LN: 87 | 
	xmem[i0] = a0			# LN: 87 | 
	jmp (endif_4)			# LN: 87 | 
else_4:			/* LN: 75 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 93 | 
	i1 = (0) + (_output_distortion)			# LN: 93 | 
	a0 = xmem[i0]			# LN: 93 | 
	i0 = xmem[i1]			# LN: 93 | 
	a0 = a0 << 1			# LN: 93 | 
	xmem[i0] = a0h			# LN: 93 | 
endif_2:			/* LN: 57 | CYCLE: 0 | RULES: () */ 
endif_4:			/* LN: 75 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 96 | 
	i1 = (0) + (_output_distortion)			# LN: 96 | 
	a0 = xmem[i0]			# LN: 96 | 
	i0 = xmem[i1]			# LN: 96 | 
	a0 = a0 >> 1			# LN: 96 | 
	xmem[i0] = a0h			# LN: 96 | 
	i0 = xmem[_output_distortion + 0]			# LN: 98 | 
	i1 = (0) + (_output_distortion)			# LN: 98 | 
	a0 = xmem[i0]			# LN: 98 | 
	a0 = a0 << 1			# LN: 98 | 
	i0 = xmem[i1]			# LN: 98 | 
	a0 = a0 << 1			# LN: 98 | 
	xmem[i0] = a0h			# LN: 98 | 
	i0 = xmem[_output_distortion + 0]			# LN: 99 | 
	nop #empty cycle
	i0 += 1			# LN: 99 | 
	xmem[_output_distortion + 0] = i0			# LN: 99 | 
	i0 = xmem[_input_distortion + 0]			# LN: 100 | 
	nop #empty cycle
	i0 += 1			# LN: 100 | 
label_end_93:			# LN: 54 | CYCLE: 20 | RULES: ()
	xmem[_input_distortion + 0] = i0			# LN: 100 | 
for_end_1:			/* LN: 54 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_104)			# LN: 102 | 
case_2:			/* LN: 104 | CYCLE: 0 | RULES: () */ 
	do (0x10), label_end_94			# LN: 106 | 
label_begin_94:			/* LN: 106 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_input_distortion + 0]			# LN: 108 | 
	x0 = (0x4000)			# LN: 108 | 
	x1 = xmem[i0]			# LN: 108 | 
	i0 = (0) + (_output_distortion)			# LN: 108 | 
	i0 = xmem[i0]			# LN: 108 | 
	a0 = x1 * x0			# LN: 108 | 
	xmem[i0] = a0			# LN: 108 | 
	i0 = xmem[_output_distortion + 0]			# LN: 109 | 
	nop #empty cycle
	a0 = xmem[i0]			# LN: 109 | 
	a0 & a0			# LN: 109 | 
	if (a >= 0) jmp (else_6)			# LN: 109 | 
	i0 = xmem[_output_distortion + 0]			# LN: 111 | 
	i1 = (0) + (_output_distortion)			# LN: 111 | 
	a0 = xmem[i0]			# LN: 111 | 
	i0 = xmem[i1]			# LN: 111 | 
	a0 =- a0			# LN: 111 | 
	xmem[i0] = a0h			# LN: 111 | 
endif_6:			/* LN: 109 | CYCLE: 0 | RULES: () */ 
else_6:			/* LN: 109 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 114 | 
	i1 = (0) + (_output_distortion)			# LN: 114 | 
	a0 = xmem[i0]			# LN: 114 | 
	a0 = a0 << 1			# LN: 114 | 
	i0 = xmem[i1]			# LN: 114 | 
	a0 = a0 << 1			# LN: 114 | 
	xmem[i0] = a0h			# LN: 114 | 
	i0 = xmem[_output_distortion + 0]			# LN: 115 | 
	nop #empty cycle
	i0 += 1			# LN: 115 | 
	xmem[_output_distortion + 0] = i0			# LN: 115 | 
	i0 = xmem[_input_distortion + 0]			# LN: 116 | 
	nop #empty cycle
	i0 += 1			# LN: 116 | 
label_end_94:			# LN: 106 | CYCLE: 14 | RULES: ()
	xmem[_input_distortion + 0] = i0			# LN: 116 | 
for_end_2:			/* LN: 106 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_104)			# LN: 118 | 
case_3:			/* LN: 120 | CYCLE: 0 | RULES: () */ 
	do (0x10), label_end_95			# LN: 122 | 
label_begin_95:			/* LN: 122 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_input_distortion + 0]			# LN: 124 | 
	x0 = (0x4000)			# LN: 124 | 
	x1 = xmem[i0]			# LN: 124 | 
	i0 = (0) + (_output_distortion)			# LN: 124 | 
	i0 = xmem[i0]			# LN: 124 | 
	a0 = x1 * x0			# LN: 124 | 
	xmem[i0] = a0			# LN: 124 | 
	a0g = xmem[_x + 0]			# LN: 125 | 
	a0h = xmem[_x + 1]			# LN: 125 | 
	a0l = xmem[_x + 2]			# LN: 125 | 
	a0 & a0			# LN: 125 | 
	if (a >= 0) jmp (else_7)			# LN: 125 | 
	a0g = xmem[_x + 0]			# LN: 126 | 
	a0h = xmem[_x + 1]			# LN: 126 | 
	a0l = xmem[_x + 2]			# LN: 126 | 
	a0 =- a0			# LN: 126 | 
	xmem[_x + 0] = a0g			# LN: 126 | 
	xmem[_x + 1] = a0h			# LN: 126 | 
	xmem[_x + 2] = a0l			# LN: 126 | 
endif_7:			/* LN: 125 | CYCLE: 0 | RULES: () */ 
else_7:			/* LN: 125 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 129 | 
	a0g = xmem[_x + 0]			# LN: 129 | 
	a1 = xmem[i0]			# LN: 129 | 
	a0h = xmem[_x + 1]			# LN: 129 | 
	a0l = xmem[_x + 2]			# LN: 129 | 
	a0 = a0 + a1			# LN: 129 | 
	xmem[_x + 0] = a0g			# LN: 129 | 
	xmem[_x + 1] = a0h			# LN: 129 | 
	xmem[_x + 2] = a0l			# LN: 129 | 
	a0g = xmem[_x + 0]			# LN: 130 | 
	a0h = xmem[_x + 1]			# LN: 130 | 
	i0 = (0) + (_output_distortion)			# LN: 130 | 
	i0 = xmem[i0]			# LN: 130 | 
	a0l = xmem[_x + 2]			# LN: 130 | 
	xmem[i0] = a0			# LN: 130 | 
	i0 = xmem[_output_distortion + 0]			# LN: 131 | 
	i1 = (0) + (_output_distortion)			# LN: 131 | 
	a0 = xmem[i0]			# LN: 131 | 
	i0 = xmem[i1]			# LN: 131 | 
	a0 = a0 << 1			# LN: 131 | 
	xmem[i0] = a0h			# LN: 131 | 
	i0 = xmem[_output_distortion + 0]			# LN: 133 | 
	nop #empty cycle
	i0 += 1			# LN: 133 | 
	xmem[_output_distortion + 0] = i0			# LN: 133 | 
	i0 = xmem[_input_distortion + 0]			# LN: 134 | 
	nop #empty cycle
	i0 += 1			# LN: 134 | 
label_end_95:			# LN: 122 | CYCLE: 28 | RULES: ()
	xmem[_input_distortion + 0] = i0			# LN: 134 | 
__epilogue_104:			/* LN: 141 | CYCLE: 0 | RULES: () */ 
for_end_3:			/* LN: 122 | CYCLE: 0 | RULES: () */ 
	ret			# LN: 141 | 
