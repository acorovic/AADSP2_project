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
X__extractedConst_0_1	.xdata_ovly
__extractedConst_0_1
	.dw  (0xaaaaaab)
X__extractedConst_1_0	.xdata_ovly
__extractedConst_1_0
	.dw  (0x15555555)
X__extractedConst_2_1	.xdata_ovly
__extractedConst_2_1
	.dw  (0xf5555555)
X__extractedConst_3_0	.xdata_ovly
__extractedConst_3_0
	.dw  (0xeaaaaaab)
X_hard_clip_threshold	.xdata_ovly
_hard_clip_threshold
	.dw  (0x10000000)
X_n_hard_clip_threshold	.xdata_ovly
_n_hard_clip_threshold
	.dw  (0xf0000000)
X_n_soft_clip_threshold1	.xdata_ovly
_n_soft_clip_threshold1
	.dw  (0xf5555555)
X_n_soft_clip_threshold2	.xdata_ovly
_n_soft_clip_threshold2
	.dw  (0xeaaaaaab)
X_soft_clip_threshold1	.xdata_ovly
_soft_clip_threshold1
	.dw  (0xaaaaaab)
X_soft_clip_threshold2	.xdata_ovly
_soft_clip_threshold2
	.dw  (0x15555555)
X_soft_mul	.xdata_ovly
_soft_mul
	.bss (0x3)
X_soft_pow	.xdata_ovly
_soft_pow
	.bss (0x3)
X_x	.xdata_ovly
_x
	.bss (0x3)
	.code_ovly



_distortion:			/* LN: 25 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 25 | 
	i7 += 1			# LN: 25 | 
	i7 = i7 + (0x2)			# LN: 25 | 
cline_25_0:			/* LN: 29 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 29 | 
	a0 = (0x4000)			# LN: 29 | 
	xmem[i0] = a0h			# LN: 29 | 
cline_29_0:			/* LN: 32 | CYCLE: 0 | RULES: () */ 
switch_0:			/* LN: 32 | CYCLE: 0 | RULES: () */ 
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
	jmp (default_0)			# LN: 32 | 
cline_32_0:			/* LN: 35 | CYCLE: 0 | RULES: () */ 
case_0:			/* LN: 33 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 35 | 
	a0 = 0			# LN: 35 | 
	xmem[i0] = a0h			# LN: 35 | 
	do (0x10), label_end_92			# LN: 35 | 
cline_35_0:			/* LN: 37 | CYCLE: 0 | RULES: () */ 
label_begin_92:			/* LN: 35 | CYCLE: 0 | RULES: () */ 
	i4 = xmem[_input_distortion + 0]			# LN: 37 | 
	i0 = i7 - (0x1)			# LN: 37 | 
	x0 = xmem[i0]; y0 = ymem[i4]			# LN: 37, 37 | 
	i0 = (0) + (_output_distortion)			# LN: 37 | 
	i0 = xmem[i0]			# LN: 37 | 
	a0 = y0 * x0			# LN: 37 | 
	ymem[i0] = a0			# LN: 37 | 
cline_37_0:			/* LN: 38 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 38 | 
	a0 = (0x1000)			# LN: 38 | 
	a1 = ymem[i0]			# LN: 38 | 
	a1 - a0			# LN: 38 | 
	if (a <= 0) jmp (else_0)			# LN: 38 | 
cline_38_0:			/* LN: 40 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_output_distortion)			# LN: 40 | 
	i0 = xmem[i0]			# LN: 40 | 
	a0 = (0x1000)			# LN: 40 | 
	ymem[i0] = a0h			# LN: 40 | 
	jmp (endif_0)			# LN: 40 | 
cline_40_0:			/* LN: 42 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 38 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 42 | 
	a0 = (0xf000)			# LN: 42 | 
	a1 = ymem[i0]			# LN: 42 | 
	a1 - a0			# LN: 42 | 
	if (a >= 0) jmp (else_1)			# LN: 42 | 
cline_42_0:			/* LN: 44 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_output_distortion)			# LN: 44 | 
	i0 = xmem[i0]			# LN: 44 | 
	a0 = (0xf000)			# LN: 44 | 
	ymem[i0] = a0h			# LN: 44 | 
	jmp (endif_1)			# LN: 44 | 
cline_44_0:			/* LN: 46 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 38 | CYCLE: 0 | RULES: () */ 
endif_1:			/* LN: 42 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 42 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 46 | 
	i1 = (0) + (_output_distortion)			# LN: 46 | 
	a0 = ymem[i0]			# LN: 46 | 
	a0 = a0 << 1			# LN: 46 | 
	i0 = xmem[i1]			# LN: 46 | 
	a0 = a0 << 1			# LN: 46 | 
	ymem[i0] = a0h			# LN: 46 | 
cline_46_0:			/* LN: 47 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 47 | 
	nop #empty cycle
	i0 += 1			# LN: 47 | 
	xmem[_output_distortion + 0] = i0			# LN: 47 | 
cline_47_0:			/* LN: 48 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_input_distortion + 0]			# LN: 48 | 
	nop #empty cycle
	i0 += 1			# LN: 48 | 
	xmem[_input_distortion + 0] = i0			# LN: 48 | 
cline_48_0:			/* LN: 35 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 49 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 35 | 
	a0 = xmem[i0]			# LN: 35 | 
	uhalfword(a1) = (0x1)			# LN: 35 | 
	a0 = a0 + a1			# LN: 35 | 
	i0 = i7 - (0x2)			# LN: 35 | 
label_end_92:			# LN: 35 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 35 | 
cline_35_1:			/* LN: 50 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 35 | CYCLE: 0 | RULES: () */ 
	jmp (_8A0BA8)			# LN: 50 | 
cline_32_1:			/* LN: 54 | CYCLE: 0 | RULES: () */ 
case_1:			/* LN: 52 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 54 | 
	a0 = 0			# LN: 54 | 
	xmem[i0] = a0h			# LN: 54 | 
	do (0x10), label_end_93			# LN: 54 | 
cline_54_0:			/* LN: 56 | CYCLE: 0 | RULES: () */ 
label_begin_93:			/* LN: 54 | CYCLE: 0 | RULES: () */ 
	i4 = xmem[_input_distortion + 0]			# LN: 56 | 
	i0 = i7 - (0x1)			# LN: 56 | 
	x0 = xmem[i0]; y0 = ymem[i4]			# LN: 56, 56 | 
	i0 = (0) + (_output_distortion)			# LN: 56 | 
	i0 = xmem[i0]			# LN: 56 | 
	a0 = y0 * x0			# LN: 56 | 
	ymem[i0] = a0			# LN: 56 | 
cline_56_0:			/* LN: 57 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 57 | 
	a0 = xmem[__extractedConst_0_1 + 0]			# LN: 57 | 
	a1 = ymem[i0]			# LN: 57 | 
	a1 - a0			# LN: 57 | 
	if (a <= 0) jmp (else_2)			# LN: 57 | 
cline_57_0:			/* LN: 59 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 59 | 
	a0 = xmem[__extractedConst_1_0 + 0]			# LN: 59 | 
	a1 = ymem[i0]			# LN: 59 | 
	a1 - a0			# LN: 59 | 
	if (a <= 0) jmp (else_3)			# LN: 59 | 
cline_59_0:			/* LN: 62 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_output_distortion)			# LN: 62 | 
	i0 = xmem[i0]			# LN: 62 | 
	a0 = (0x1000)			# LN: 62 | 
	ymem[i0] = a0h			# LN: 62 | 
	jmp (endif_3)			# LN: 62 | 
cline_62_0:			/* LN: 66 | CYCLE: 0 | RULES: () */ 
else_3:			/* LN: 59 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 66 | 
	i1 = xmem[_output_distortion + 0]			# LN: 66 | 
	a0 = ymem[i0]			# LN: 66 | 
	b0 = ymem[i1]			# LN: 66 | 
	a1 =+ b0			# LN: 66 | 
	call (__mul_sat_laccum)			# LN: 66 | 
	xmem[_soft_pow + 0] = a0g			# LN: 66 | 
	xmem[_soft_pow + 1] = a0h			# LN: 66 | 
	xmem[_soft_pow + 2] = a0l			# LN: 66 | 
cline_66_0:			/* LN: 67 | CYCLE: 0 | RULES: () */ 
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
cline_67_0:			/* LN: 68 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 68 | 
	nop #empty cycle
	a0 = ymem[i0]			# LN: 68 | 
	a0 = a0 << 1			# LN: 68 | 
	a0 = a0 << 1			# LN: 68 | 
	xmem[_soft_mul + 0] = a0g			# LN: 68 | 
	xmem[_soft_mul + 1] = a0h			# LN: 68 | 
	xmem[_soft_mul + 2] = a0l			# LN: 68 | 
cline_68_0:			/* LN: 69 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_2_1 + 0]			# LN: 69 | 
	a1g = xmem[_soft_mul + 0]			# LN: 69 | 
	a1h = xmem[_soft_mul + 1]			# LN: 69 | 
	a1l = xmem[_soft_mul + 2]			# LN: 69 | 
	a0 = a0 + a1			# LN: 69 | 
	a1g = xmem[_soft_pow + 0]			# LN: 69 | 
	a1h = xmem[_soft_pow + 1]			# LN: 69 | 
	a1l = xmem[_soft_pow + 2]			# LN: 69 | 
	i0 = (0) + (_output_distortion)			# LN: 69 | 
	i0 = xmem[i0]			# LN: 69 | 
	a0 = a0 - a1			# LN: 69 | 
	ymem[i0] = a0			# LN: 69 | 
cline_69_0:			/* LN: 59 | CYCLE: 0 | RULES: () */ 
endif_3:			/* LN: 59 | CYCLE: 0 | RULES: () */ 
	jmp (endif_2)			# LN: 59 | 
cline_59_1:			/* LN: 75 | CYCLE: 0 | RULES: () */ 
else_2:			/* LN: 57 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 75 | 
	a0 = xmem[__extractedConst_2_1 + 0]			# LN: 75 | 
	a1 = ymem[i0]			# LN: 75 | 
	a1 - a0			# LN: 75 | 
	if (a >= 0) jmp (else_4)			# LN: 75 | 
cline_75_0:			/* LN: 77 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 77 | 
	a0 = xmem[__extractedConst_3_0 + 0]			# LN: 77 | 
	a1 = ymem[i0]			# LN: 77 | 
	a1 - a0			# LN: 77 | 
	if (a >= 0) jmp (else_5)			# LN: 77 | 
cline_77_0:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_output_distortion)			# LN: 80 | 
	i0 = xmem[i0]			# LN: 80 | 
	a0 = (0xf000)			# LN: 80 | 
	ymem[i0] = a0h			# LN: 80 | 
	jmp (endif_5)			# LN: 80 | 
cline_80_0:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
else_5:			/* LN: 77 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 84 | 
	i1 = xmem[_output_distortion + 0]			# LN: 84 | 
	a0 = ymem[i0]			# LN: 84 | 
	b0 = ymem[i1]			# LN: 84 | 
	a1 =+ b0			# LN: 84 | 
	call (__mul_sat_laccum)			# LN: 84 | 
	xmem[_soft_pow + 0] = a0g			# LN: 84 | 
	xmem[_soft_pow + 1] = a0h			# LN: 84 | 
	xmem[_soft_pow + 2] = a0l			# LN: 84 | 
cline_84_0:			/* LN: 85 | CYCLE: 0 | RULES: () */ 
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
cline_85_0:			/* LN: 86 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 86 | 
	nop #empty cycle
	a0 = ymem[i0]			# LN: 86 | 
	a0 = a0 << 1			# LN: 86 | 
	a0 = a0 << 1			# LN: 86 | 
	xmem[_soft_mul + 0] = a0g			# LN: 86 | 
	xmem[_soft_mul + 1] = a0h			# LN: 86 | 
	xmem[_soft_mul + 2] = a0l			# LN: 86 | 
cline_86_0:			/* LN: 87 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_0_1 + 0]			# LN: 87 | 
	a1g = xmem[_soft_mul + 0]			# LN: 87 | 
	a1h = xmem[_soft_mul + 1]			# LN: 87 | 
	a1l = xmem[_soft_mul + 2]			# LN: 87 | 
	a0 = a0 + a1			# LN: 87 | 
	a1g = xmem[_soft_pow + 0]			# LN: 87 | 
	a1h = xmem[_soft_pow + 1]			# LN: 87 | 
	a1l = xmem[_soft_pow + 2]			# LN: 87 | 
	i0 = (0) + (_output_distortion)			# LN: 87 | 
	i0 = xmem[i0]			# LN: 87 | 
	a0 = a0 + a1			# LN: 87 | 
	ymem[i0] = a0			# LN: 87 | 
cline_87_0:			/* LN: 77 | CYCLE: 0 | RULES: () */ 
endif_5:			/* LN: 77 | CYCLE: 0 | RULES: () */ 
	jmp (endif_4)			# LN: 77 | 
cline_77_1:			/* LN: 93 | CYCLE: 0 | RULES: () */ 
else_4:			/* LN: 75 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 93 | 
	i1 = (0) + (_output_distortion)			# LN: 93 | 
	a0 = ymem[i0]			# LN: 93 | 
	i0 = xmem[i1]			# LN: 93 | 
	a0 = a0 << 1			# LN: 93 | 
	ymem[i0] = a0h			# LN: 93 | 
cline_93_0:			/* LN: 96 | CYCLE: 0 | RULES: () */ 
endif_2:			/* LN: 57 | CYCLE: 0 | RULES: () */ 
endif_4:			/* LN: 75 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 96 | 
	i1 = (0) + (_output_distortion)			# LN: 96 | 
	a0 = ymem[i0]			# LN: 96 | 
	i0 = xmem[i1]			# LN: 96 | 
	a0 = a0 >> 1			# LN: 96 | 
	ymem[i0] = a0h			# LN: 96 | 
cline_96_0:			/* LN: 98 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 98 | 
	i1 = (0) + (_output_distortion)			# LN: 98 | 
	a0 = ymem[i0]			# LN: 98 | 
	a0 = a0 << 1			# LN: 98 | 
	i0 = xmem[i1]			# LN: 98 | 
	a0 = a0 << 1			# LN: 98 | 
	ymem[i0] = a0h			# LN: 98 | 
cline_98_0:			/* LN: 99 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 99 | 
	nop #empty cycle
	i0 += 1			# LN: 99 | 
	xmem[_output_distortion + 0] = i0			# LN: 99 | 
cline_99_0:			/* LN: 100 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_input_distortion + 0]			# LN: 100 | 
	nop #empty cycle
	i0 += 1			# LN: 100 | 
	xmem[_input_distortion + 0] = i0			# LN: 100 | 
cline_100_0:			/* LN: 54 | CYCLE: 0 | RULES: () */ 
init_latch_label_1:			/* LN: 101 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 54 | 
	a0 = xmem[i0]			# LN: 54 | 
	uhalfword(a1) = (0x1)			# LN: 54 | 
	a0 = a0 + a1			# LN: 54 | 
	i0 = i7 - (0x2)			# LN: 54 | 
label_end_93:			# LN: 54 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 54 | 
cline_54_1:			/* LN: 102 | CYCLE: 0 | RULES: () */ 
for_end_1:			/* LN: 54 | CYCLE: 0 | RULES: () */ 
	jmp (_8A0BA8)			# LN: 102 | 
cline_32_2:			/* LN: 106 | CYCLE: 0 | RULES: () */ 
case_2:			/* LN: 104 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 106 | 
	a0 = 0			# LN: 106 | 
	xmem[i0] = a0h			# LN: 106 | 
	do (0x10), label_end_94			# LN: 106 | 
cline_106_0:			/* LN: 108 | CYCLE: 0 | RULES: () */ 
label_begin_94:			/* LN: 106 | CYCLE: 0 | RULES: () */ 
	i4 = xmem[_input_distortion + 0]			# LN: 108 | 
	i0 = i7 - (0x1)			# LN: 108 | 
	x0 = xmem[i0]; y0 = ymem[i4]			# LN: 108, 108 | 
	i0 = (0) + (_output_distortion)			# LN: 108 | 
	i0 = xmem[i0]			# LN: 108 | 
	a0 = y0 * x0			# LN: 108 | 
	ymem[i0] = a0			# LN: 108 | 
cline_108_0:			/* LN: 109 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 109 | 
	nop #empty cycle
	a0 = ymem[i0]			# LN: 109 | 
	a0 & a0			# LN: 109 | 
	if (a >= 0) jmp (else_6)			# LN: 109 | 
cline_109_0:			/* LN: 111 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 111 | 
	i1 = (0) + (_output_distortion)			# LN: 111 | 
	a0 = ymem[i0]			# LN: 111 | 
	i0 = xmem[i1]			# LN: 111 | 
	a0 =- a0			# LN: 111 | 
	ymem[i0] = a0h			# LN: 111 | 
	jmp (endif_6)			# LN: 111 | 
cline_111_0:			/* LN: 114 | CYCLE: 0 | RULES: () */ 
endif_6:			/* LN: 109 | CYCLE: 0 | RULES: () */ 
else_6:			/* LN: 109 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 114 | 
	i1 = (0) + (_output_distortion)			# LN: 114 | 
	a0 = ymem[i0]			# LN: 114 | 
	a0 = a0 << 1			# LN: 114 | 
	i0 = xmem[i1]			# LN: 114 | 
	a0 = a0 << 1			# LN: 114 | 
	ymem[i0] = a0h			# LN: 114 | 
cline_114_0:			/* LN: 115 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 115 | 
	nop #empty cycle
	i0 += 1			# LN: 115 | 
	xmem[_output_distortion + 0] = i0			# LN: 115 | 
cline_115_0:			/* LN: 116 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_input_distortion + 0]			# LN: 116 | 
	nop #empty cycle
	i0 += 1			# LN: 116 | 
	xmem[_input_distortion + 0] = i0			# LN: 116 | 
cline_116_0:			/* LN: 106 | CYCLE: 0 | RULES: () */ 
init_latch_label_2:			/* LN: 117 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 106 | 
	a0 = xmem[i0]			# LN: 106 | 
	uhalfword(a1) = (0x1)			# LN: 106 | 
	a0 = a0 + a1			# LN: 106 | 
	i0 = i7 - (0x2)			# LN: 106 | 
label_end_94:			# LN: 106 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 106 | 
cline_106_1:			/* LN: 118 | CYCLE: 0 | RULES: () */ 
for_end_2:			/* LN: 106 | CYCLE: 0 | RULES: () */ 
	jmp (_8A0BA8)			# LN: 118 | 
cline_32_3:			/* LN: 122 | CYCLE: 0 | RULES: () */ 
case_3:			/* LN: 120 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 122 | 
	a0 = 0			# LN: 122 | 
	xmem[i0] = a0h			# LN: 122 | 
	do (0x10), label_end_95			# LN: 122 | 
cline_122_0:			/* LN: 124 | CYCLE: 0 | RULES: () */ 
label_begin_95:			/* LN: 122 | CYCLE: 0 | RULES: () */ 
	i4 = xmem[_input_distortion + 0]			# LN: 124 | 
	i0 = i7 - (0x1)			# LN: 124 | 
	x0 = xmem[i0]; y0 = ymem[i4]			# LN: 124, 124 | 
	i0 = (0) + (_output_distortion)			# LN: 124 | 
	i0 = xmem[i0]			# LN: 124 | 
	a0 = y0 * x0			# LN: 124 | 
	ymem[i0] = a0			# LN: 124 | 
cline_124_0:			/* LN: 125 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 125 | 
	nop #empty cycle
	a0 = ymem[i0]			# LN: 125 | 
	xmem[_x + 0] = a0g			# LN: 125 | 
	xmem[_x + 1] = a0h			# LN: 125 | 
	xmem[_x + 2] = a0l			# LN: 125 | 
cline_125_0:			/* LN: 126 | CYCLE: 0 | RULES: () */ 
	a0g = xmem[_x + 0]			# LN: 126 | 
	a0h = xmem[_x + 1]			# LN: 126 | 
	a0l = xmem[_x + 2]			# LN: 126 | 
	a0 & a0			# LN: 126 | 
	if (a >= 0) jmp (else_7)			# LN: 126 | 
cline_126_0:			/* LN: 127 | CYCLE: 0 | RULES: () */ 
	a0g = xmem[_x + 0]			# LN: 127 | 
	a0h = xmem[_x + 1]			# LN: 127 | 
	a0l = xmem[_x + 2]			# LN: 127 | 
	a0 =- a0			# LN: 127 | 
	xmem[_x + 0] = a0g			# LN: 127 | 
	xmem[_x + 1] = a0h			# LN: 127 | 
	xmem[_x + 2] = a0l			# LN: 127 | 
	jmp (endif_7)			# LN: 127 | 
cline_127_0:			/* LN: 130 | CYCLE: 0 | RULES: () */ 
endif_7:			/* LN: 126 | CYCLE: 0 | RULES: () */ 
else_7:			/* LN: 126 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 130 | 
	a0g = xmem[_x + 0]			# LN: 130 | 
	a1 = ymem[i0]			# LN: 130 | 
	a0h = xmem[_x + 1]			# LN: 130 | 
	a0l = xmem[_x + 2]			# LN: 130 | 
	a0 = a0 + a1			# LN: 130 | 
	xmem[_x + 0] = a0g			# LN: 130 | 
	xmem[_x + 1] = a0h			# LN: 130 | 
	xmem[_x + 2] = a0l			# LN: 130 | 
cline_130_0:			/* LN: 131 | CYCLE: 0 | RULES: () */ 
	a0g = xmem[_x + 0]			# LN: 131 | 
	a0h = xmem[_x + 1]			# LN: 131 | 
	i0 = (0) + (_output_distortion)			# LN: 131 | 
	i0 = xmem[i0]			# LN: 131 | 
	a0l = xmem[_x + 2]			# LN: 131 | 
	ymem[i0] = a0			# LN: 131 | 
cline_131_0:			/* LN: 132 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 132 | 
	i1 = (0) + (_output_distortion)			# LN: 132 | 
	a0 = ymem[i0]			# LN: 132 | 
	i0 = xmem[i1]			# LN: 132 | 
	a0 = a0 << 1			# LN: 132 | 
	ymem[i0] = a0h			# LN: 132 | 
cline_132_0:			/* LN: 134 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 134 | 
	nop #empty cycle
	i0 += 1			# LN: 134 | 
	xmem[_output_distortion + 0] = i0			# LN: 134 | 
cline_134_0:			/* LN: 135 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_input_distortion + 0]			# LN: 135 | 
	nop #empty cycle
	i0 += 1			# LN: 135 | 
	xmem[_input_distortion + 0] = i0			# LN: 135 | 
cline_135_0:			/* LN: 122 | CYCLE: 0 | RULES: () */ 
init_latch_label_3:			/* LN: 136 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 122 | 
	a0 = xmem[i0]			# LN: 122 | 
	uhalfword(a1) = (0x1)			# LN: 122 | 
	a0 = a0 + a1			# LN: 122 | 
	i0 = i7 - (0x2)			# LN: 122 | 
label_end_95:			# LN: 122 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 122 | 
cline_122_1:			/* LN: 137 | CYCLE: 0 | RULES: () */ 
for_end_3:			/* LN: 122 | CYCLE: 0 | RULES: () */ 
	jmp (_8A0BA8)			# LN: 137 | 
cline_32_4:			/* LN: 140 | CYCLE: 0 | RULES: () */ 
default_0:			/* LN: 139 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_0)			# LN: 140 | 
cline_140_0:			/* LN: 142 | CYCLE: 0 | RULES: () */ 
_8A0BA8:			/* LN: 142 | CYCLE: 0 | RULES: () */ 
switch_end_0:			/* LN: 32 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_104)			# LN: 142 | 
__epilogue_104:			/* LN: 142 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x2)			# LN: 142 | 
	i7 -= 1			# LN: 142 | 
	ret			# LN: 142 | 
