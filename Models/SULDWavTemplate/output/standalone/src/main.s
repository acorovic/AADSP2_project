	.public _centralOutput
	.public _distortion_gain
	.public _enable
	.public _hard_clip_threshold
	.public _i
	.public _leftInput
	.public _lfeOutput
	.public _lsOutput
	.public _n_hard_clip_threshold
	.public _n_soft_clip_threshold1
	.public _n_soft_clip_threshold2
	.public _numGain
	.public _outputMode
	.public _rightInput
	.public _rsOutput
	.public _sampleBuffer
	.public _soft_clip_threshold1
	.public _soft_clip_threshold2
	.public _soft_mul
	.public _soft_pow
	.public _type
	.public _x
	.extern _cl_wavread_bits_per_sample
	.extern _cl_wavread_close
	.extern _cl_wavread_frame_rate
	.extern _cl_wavread_getnchannels
	.extern _cl_wavread_number_of_frames
	.extern _cl_wavread_open
	.extern _cl_wavread_recvsample
	.extern _cl_wavwrite_close
	.extern _cl_wavwrite_open
	.extern _cl_wavwrite_sendsample
	.public _distortion
	.public _main
	.extern _memset
	.extern _printf
	.public _processing
	.extern _strcpy
	.extern __mul_sat_laccum
	.extern __int_to_laccum
	.extern __div
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
_centralOutput
	.bss (0x1)
	.xdata_ovly
_distortion_gain
	.dw  (0x40000000)
	.xdata_ovly
_enable
	.dw  (0x1)
	.xdata_ovly
_hard_clip_threshold
	.dw  (0x10000000)
	.xdata_ovly
_i
	.bss (0x1)
	.xdata_ovly
_leftInput
	.bss (0x1)
	.xdata_ovly
_lfeOutput
	.bss (0x1)
	.xdata_ovly
_lsOutput
	.bss (0x1)
	.xdata_ovly
_n_hard_clip_threshold
	.dw  (0xf0000000)
	.xdata_ovly
_n_soft_clip_threshold1
	.dw  (0xf5555555)
	.xdata_ovly
_n_soft_clip_threshold2
	.dw  (0xeaaaaaab)
	.ydata_ovly
_numGain
	.dw  (0x50c335d4)
	.xdata_ovly
_outputMode
	.dw  (0x0)
	.xdata_ovly
_rightInput
	.bss (0x1)
	.xdata_ovly
_rsOutput
	.bss (0x1)
	.xdata_ovly
_sampleBuffer
	.bss (0x80)
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
_string_const_0
	.dw  (0x2e)
	.dw  (0x2e)
	.dw  (0x2f)
	.dw  (0x2e)
	.dw  (0x2e)
	.dw  (0x2f)
	.dw  (0x54)
	.dw  (0x65)
	.dw  (0x73)
	.dw  (0x74)
	.dw  (0x53)
	.dw  (0x74)
	.dw  (0x72)
	.dw  (0x65)
	.dw  (0x61)
	.dw  (0x6d)
	.dw  (0x73)
	.dw  (0x2f)
	.dw  (0x54)
	.dw  (0x6f)
	.dw  (0x6e)
	.dw  (0x65)
	.dw  (0x5f)
	.dw  (0x4c)
	.dw  (0x31)
	.dw  (0x6b)
	.dw  (0x5f)
	.dw  (0x52)
	.dw  (0x33)
	.dw  (0x6b)
	.dw  (0x73)
	.dw  (0x68)
	.dw  (0x6f)
	.dw  (0x72)
	.dw  (0x74)
	.dw  (0x2e)
	.dw  (0x77)
	.dw  (0x61)
	.dw  (0x76)
	.dw  (0x0)
	.xdata_ovly
_string_const_1
	.dw  (0x45)
	.dw  (0x72)
	.dw  (0x72)
	.dw  (0x6f)
	.dw  (0x72)
	.dw  (0x3a)
	.dw  (0x20)
	.dw  (0x43)
	.dw  (0x6f)
	.dw  (0x75)
	.dw  (0x6c)
	.dw  (0x64)
	.dw  (0x20)
	.dw  (0x6e)
	.dw  (0x6f)
	.dw  (0x74)
	.dw  (0x20)
	.dw  (0x6f)
	.dw  (0x70)
	.dw  (0x65)
	.dw  (0x6e)
	.dw  (0x20)
	.dw  (0x77)
	.dw  (0x61)
	.dw  (0x76)
	.dw  (0x65)
	.dw  (0x66)
	.dw  (0x69)
	.dw  (0x6c)
	.dw  (0x65)
	.dw  (0x2e)
	.dw  (0xa)
	.dw  (0x0)
	.xdata_ovly
_string_const_2
	.dw  (0x2e)
	.dw  (0x2e)
	.dw  (0x2f)
	.dw  (0x4f)
	.dw  (0x75)
	.dw  (0x74)
	.dw  (0x53)
	.dw  (0x74)
	.dw  (0x72)
	.dw  (0x65)
	.dw  (0x61)
	.dw  (0x6d)
	.dw  (0x73)
	.dw  (0x2f)
	.dw  (0x63)
	.dw  (0x6d)
	.dw  (0x70)
	.dw  (0x5f)
	.dw  (0x33)
	.dw  (0x2e)
	.dw  (0x77)
	.dw  (0x61)
	.dw  (0x76)
	.dw  (0x0)
	.xdata_ovly
_string_const_3
	.dw  (0x45)
	.dw  (0x72)
	.dw  (0x72)
	.dw  (0x6f)
	.dw  (0x72)
	.dw  (0x3a)
	.dw  (0x20)
	.dw  (0x43)
	.dw  (0x6f)
	.dw  (0x75)
	.dw  (0x6c)
	.dw  (0x64)
	.dw  (0x20)
	.dw  (0x6e)
	.dw  (0x6f)
	.dw  (0x74)
	.dw  (0x20)
	.dw  (0x6f)
	.dw  (0x70)
	.dw  (0x65)
	.dw  (0x6e)
	.dw  (0x20)
	.dw  (0x77)
	.dw  (0x61)
	.dw  (0x76)
	.dw  (0x65)
	.dw  (0x66)
	.dw  (0x69)
	.dw  (0x6c)
	.dw  (0x65)
	.dw  (0x2e)
	.dw  (0xa)
	.dw  (0x0)
	.xdata_ovly
_type
	.dw  (0x1)
	.xdata_ovly
_x
	.bss (0x3)
	.code_ovly



_distortion:			/* LN: 50 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 50 | 
	i7 += 1			# LN: 50 | 
	i7 = i7 + (0x2)			# LN: 50 | 
	i4 = i7 - (0x1)			# LN: 50 | 
	xmem[i4] = i0			# LN: 50 | 
	i0 = i7 - (0x2)			# LN: 50 | 
	xmem[i0] = i1			# LN: 50 | 
cline_50_0:			/* LN: 53 | CYCLE: 0 | RULES: () */ 
switch_0:			/* LN: 53 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_type + 0]			# LN: 53 | 
	a0 & a0			# LN: 53 | 
	if (a == 0) jmp (case_0)			# LN: 53 | 
	a0 = xmem[_type + 0]			# LN: 53 | 
	uhalfword(a1) = (0x1)			# LN: 53 | 
	a0 - a1			# LN: 53 | 
	if (a == 0) jmp (case_1)			# LN: 53 | 
	a0 = xmem[_type + 0]			# LN: 53 | 
	uhalfword(a1) = (0x2)			# LN: 53 | 
	a0 - a1			# LN: 53 | 
	if (a == 0) jmp (case_2)			# LN: 53 | 
	a0 = xmem[_type + 0]			# LN: 53 | 
	uhalfword(a1) = (0x3)			# LN: 53 | 
	a0 - a1			# LN: 53 | 
	if (a == 0) jmp (case_3)			# LN: 53 | 
	jmp (default_0)			# LN: 53 | 
cline_53_0:			/* LN: 56 | CYCLE: 0 | RULES: () */ 
case_0:			/* LN: 54 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 56 | 
	xmem[_i + 0] = a0h			# LN: 56 | 
for_0:			/* LN: 56 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_i + 0]			# LN: 56 | 
	uhalfword(a1) = (0x10)			# LN: 56 | 
	a0 - a1			# LN: 56 | 
	if (a >= 0) jmp (for_end_0)			# LN: 56 | 
cline_56_0:			/* LN: 58 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 58 | 
	i0 = xmem[i0]			# LN: 58 | 
	x0 = xmem[_distortion_gain + 0]			# LN: 58 | 
	x1 = xmem[i0]			# LN: 58 | 
	i0 = i7 - (0x2)			# LN: 58 | 
	i0 = xmem[i0]			# LN: 58 | 
	a0 = x1 * x0			# LN: 58 | 
	xmem[i0] = a0			# LN: 58 | 
cline_58_0:			/* LN: 59 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 59 | 
	i0 = xmem[i0]			# LN: 59 | 
	a0 = (0x1000)			# LN: 59 | 
	a1 = xmem[i0]			# LN: 59 | 
	a1 - a0			# LN: 59 | 
	if (a <= 0) jmp (else_0)			# LN: 59 | 
cline_59_0:			/* LN: 61 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 61 | 
	i0 = xmem[i0]			# LN: 61 | 
	a0 = (0x1000)			# LN: 61 | 
	xmem[i0] = a0h			# LN: 61 | 
	jmp (endif_0)			# LN: 61 | 
cline_61_0:			/* LN: 63 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 59 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 63 | 
	i0 = xmem[i0]			# LN: 63 | 
	a0 = (0xf000)			# LN: 63 | 
	a1 = xmem[i0]			# LN: 63 | 
	a1 - a0			# LN: 63 | 
	if (a >= 0) jmp (else_1)			# LN: 63 | 
cline_63_0:			/* LN: 65 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 65 | 
	i0 = xmem[i0]			# LN: 65 | 
	a0 = (0xf000)			# LN: 65 | 
	xmem[i0] = a0h			# LN: 65 | 
	jmp (endif_1)			# LN: 65 | 
cline_65_0:			/* LN: 67 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 59 | CYCLE: 0 | RULES: () */ 
endif_1:			/* LN: 63 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 63 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 67 | 
	i0 = xmem[i0]			# LN: 67 | 
	i1 = i7 - (0x2)			# LN: 67 | 
	a0 = xmem[i0]			# LN: 67 | 
	a0 = a0 << 1			# LN: 67 | 
	i0 = xmem[i1]			# LN: 67 | 
	a0 = a0 << 1			# LN: 67 | 
	xmem[i0] = a0h			# LN: 67 | 
cline_67_0:			/* LN: 68 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 68 | 
	i0 = xmem[i0]			# LN: 68 | 
	i1 = i7 - (0x2)			# LN: 68 | 
	i0 += 1			# LN: 68 | 
	xmem[i1] = i0			# LN: 68 | 
cline_68_0:			/* LN: 69 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 69 | 
	i0 = xmem[i0]			# LN: 69 | 
	i1 = i7 - (0x1)			# LN: 69 | 
	i0 += 1			# LN: 69 | 
	xmem[i1] = i0			# LN: 69 | 
cline_69_0:			/* LN: 56 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 70 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_i + 0]			# LN: 56 | 
	uhalfword(a1) = (0x1)			# LN: 56 | 
	a0 = a0 + a1			# LN: 56 | 
	xmem[_i + 0] = a0h			# LN: 56 | 
	jmp (for_0)			# LN: 56 | 
cline_56_1:			/* LN: 71 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 56 | CYCLE: 0 | RULES: () */ 
	jmp (_882B50)			# LN: 71 | 
cline_53_1:			/* LN: 75 | CYCLE: 0 | RULES: () */ 
case_1:			/* LN: 73 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 75 | 
	xmem[_i + 0] = a0h			# LN: 75 | 
for_1:			/* LN: 75 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_i + 0]			# LN: 75 | 
	uhalfword(a1) = (0x10)			# LN: 75 | 
	a0 - a1			# LN: 75 | 
	if (a >= 0) jmp (for_end_1)			# LN: 75 | 
cline_75_0:			/* LN: 77 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 77 | 
	i0 = xmem[i0]			# LN: 77 | 
	x0 = xmem[_distortion_gain + 0]			# LN: 77 | 
	x1 = xmem[i0]			# LN: 77 | 
	i0 = i7 - (0x2)			# LN: 77 | 
	i0 = xmem[i0]			# LN: 77 | 
	a0 = x1 * x0			# LN: 77 | 
	xmem[i0] = a0			# LN: 77 | 
cline_77_0:			/* LN: 78 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 78 | 
	i0 = xmem[i0]			# LN: 78 | 
	a0 = xmem[__extractedConst_0_1 + 0]			# LN: 78 | 
	a1 = xmem[i0]			# LN: 78 | 
	a1 - a0			# LN: 78 | 
	if (a <= 0) jmp (else_2)			# LN: 78 | 
cline_78_0:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 80 | 
	i0 = xmem[i0]			# LN: 80 | 
	a0 = xmem[__extractedConst_1_0 + 0]			# LN: 80 | 
	a1 = xmem[i0]			# LN: 80 | 
	a1 - a0			# LN: 80 | 
	if (a <= 0) jmp (else_3)			# LN: 80 | 
cline_80_0:			/* LN: 83 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 83 | 
	i0 = xmem[i0]			# LN: 83 | 
	a0 = (0x1000)			# LN: 83 | 
	xmem[i0] = a0h			# LN: 83 | 
	jmp (endif_3)			# LN: 83 | 
cline_83_0:			/* LN: 87 | CYCLE: 0 | RULES: () */ 
else_3:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 87 | 
	i0 = xmem[i0]			# LN: 87 | 
	i1 = i7 - (0x2)			# LN: 87 | 
	i1 = xmem[i1]			# LN: 87 | 
	a0 = xmem[i0]			# LN: 87 | 
	b0 = xmem[i1]			# LN: 87 | 
	a1 =+ b0			# LN: 87 | 
	call (__mul_sat_laccum)			# LN: 87 | 
	xmem[_soft_pow + 0] = a0g			# LN: 87 | 
	xmem[_soft_pow + 1] = a0h			# LN: 87 | 
	xmem[_soft_pow + 2] = a0l			# LN: 87 | 
cline_87_0:			/* LN: 88 | CYCLE: 0 | RULES: () */ 
	b0g = xmem[_soft_pow + 0]			# LN: 88 | 
	b0h = xmem[_soft_pow + 1]			# LN: 88 | 
	uhalfword(a0) = (0xc)			# LN: 88 | 
	b0l = xmem[_soft_pow + 2]			# LN: 88 | 
	call (__int_to_laccum)			# LN: 88 | 
	a1 =+ b0; b1 =+ a0			# LN: 88, 88 | 
	a0 =+ b1			# LN: 88 | 
	call (__mul_sat_laccum)			# LN: 88 | 
	xmem[_soft_pow + 0] = a0g			# LN: 88 | 
	xmem[_soft_pow + 1] = a0h			# LN: 88 | 
	xmem[_soft_pow + 2] = a0l			# LN: 88 | 
cline_88_0:			/* LN: 89 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 89 | 
	i0 = xmem[i0]			# LN: 89 | 
	nop #empty cycle
	a0 = xmem[i0]			# LN: 89 | 
	a0 = a0 << 1			# LN: 89 | 
	a0 = a0 << 1			# LN: 89 | 
	xmem[_soft_mul + 0] = a0g			# LN: 89 | 
	xmem[_soft_mul + 1] = a0h			# LN: 89 | 
	xmem[_soft_mul + 2] = a0l			# LN: 89 | 
cline_89_0:			/* LN: 90 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_2_1 + 0]			# LN: 90 | 
	a1g = xmem[_soft_mul + 0]			# LN: 90 | 
	a1h = xmem[_soft_mul + 1]			# LN: 90 | 
	a1l = xmem[_soft_mul + 2]			# LN: 90 | 
	a0 = a0 + a1			# LN: 90 | 
	a1g = xmem[_soft_pow + 0]			# LN: 90 | 
	a1h = xmem[_soft_pow + 1]			# LN: 90 | 
	a1l = xmem[_soft_pow + 2]			# LN: 90 | 
	i0 = i7 - (0x2)			# LN: 90 | 
	i0 = xmem[i0]			# LN: 90 | 
	a0 = a0 - a1			# LN: 90 | 
	xmem[i0] = a0			# LN: 90 | 
cline_90_0:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
endif_3:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
	jmp (endif_2)			# LN: 80 | 
cline_80_1:			/* LN: 96 | CYCLE: 0 | RULES: () */ 
else_2:			/* LN: 78 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 96 | 
	i0 = xmem[i0]			# LN: 96 | 
	a0 = xmem[__extractedConst_2_1 + 0]			# LN: 96 | 
	a1 = xmem[i0]			# LN: 96 | 
	a1 - a0			# LN: 96 | 
	if (a >= 0) jmp (else_4)			# LN: 96 | 
cline_96_0:			/* LN: 98 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 98 | 
	i0 = xmem[i0]			# LN: 98 | 
	a0 = xmem[__extractedConst_3_0 + 0]			# LN: 98 | 
	a1 = xmem[i0]			# LN: 98 | 
	a1 - a0			# LN: 98 | 
	if (a >= 0) jmp (else_5)			# LN: 98 | 
cline_98_0:			/* LN: 101 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 101 | 
	i0 = xmem[i0]			# LN: 101 | 
	a0 = (0xf000)			# LN: 101 | 
	xmem[i0] = a0h			# LN: 101 | 
	jmp (endif_5)			# LN: 101 | 
cline_101_0:			/* LN: 105 | CYCLE: 0 | RULES: () */ 
else_5:			/* LN: 98 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 105 | 
	i0 = xmem[i0]			# LN: 105 | 
	i1 = i7 - (0x2)			# LN: 105 | 
	i1 = xmem[i1]			# LN: 105 | 
	a0 = xmem[i0]			# LN: 105 | 
	b0 = xmem[i1]			# LN: 105 | 
	a1 =+ b0			# LN: 105 | 
	call (__mul_sat_laccum)			# LN: 105 | 
	xmem[_soft_pow + 0] = a0g			# LN: 105 | 
	xmem[_soft_pow + 1] = a0h			# LN: 105 | 
	xmem[_soft_pow + 2] = a0l			# LN: 105 | 
cline_105_0:			/* LN: 106 | CYCLE: 0 | RULES: () */ 
	b0g = xmem[_soft_pow + 0]			# LN: 106 | 
	b0h = xmem[_soft_pow + 1]			# LN: 106 | 
	uhalfword(a0) = (0xc)			# LN: 106 | 
	b0l = xmem[_soft_pow + 2]			# LN: 106 | 
	call (__int_to_laccum)			# LN: 106 | 
	a1 =+ b0; b1 =+ a0			# LN: 106, 106 | 
	a0 =+ b1			# LN: 106 | 
	call (__mul_sat_laccum)			# LN: 106 | 
	xmem[_soft_pow + 0] = a0g			# LN: 106 | 
	xmem[_soft_pow + 1] = a0h			# LN: 106 | 
	xmem[_soft_pow + 2] = a0l			# LN: 106 | 
cline_106_0:			/* LN: 107 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 107 | 
	i0 = xmem[i0]			# LN: 107 | 
	nop #empty cycle
	a0 = xmem[i0]			# LN: 107 | 
	a0 = a0 << 1			# LN: 107 | 
	a0 = a0 << 1			# LN: 107 | 
	xmem[_soft_mul + 0] = a0g			# LN: 107 | 
	xmem[_soft_mul + 1] = a0h			# LN: 107 | 
	xmem[_soft_mul + 2] = a0l			# LN: 107 | 
cline_107_0:			/* LN: 108 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_0_1 + 0]			# LN: 108 | 
	a1g = xmem[_soft_mul + 0]			# LN: 108 | 
	a1h = xmem[_soft_mul + 1]			# LN: 108 | 
	a1l = xmem[_soft_mul + 2]			# LN: 108 | 
	a0 = a0 + a1			# LN: 108 | 
	a1g = xmem[_soft_pow + 0]			# LN: 108 | 
	a1h = xmem[_soft_pow + 1]			# LN: 108 | 
	a1l = xmem[_soft_pow + 2]			# LN: 108 | 
	i0 = i7 - (0x2)			# LN: 108 | 
	i0 = xmem[i0]			# LN: 108 | 
	a0 = a0 + a1			# LN: 108 | 
	xmem[i0] = a0			# LN: 108 | 
cline_108_0:			/* LN: 98 | CYCLE: 0 | RULES: () */ 
endif_5:			/* LN: 98 | CYCLE: 0 | RULES: () */ 
	jmp (endif_4)			# LN: 98 | 
cline_98_1:			/* LN: 114 | CYCLE: 0 | RULES: () */ 
else_4:			/* LN: 96 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 114 | 
	i0 = xmem[i0]			# LN: 114 | 
	i1 = i7 - (0x2)			# LN: 114 | 
	a0 = xmem[i0]			# LN: 114 | 
	i0 = xmem[i1]			# LN: 114 | 
	a0 = a0 << 1			# LN: 114 | 
	xmem[i0] = a0h			# LN: 114 | 
cline_114_0:			/* LN: 117 | CYCLE: 0 | RULES: () */ 
endif_2:			/* LN: 78 | CYCLE: 0 | RULES: () */ 
endif_4:			/* LN: 96 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 117 | 
	i0 = xmem[i0]			# LN: 117 | 
	i1 = i7 - (0x2)			# LN: 117 | 
	a0 = xmem[i0]			# LN: 117 | 
	i0 = xmem[i1]			# LN: 117 | 
	a0 = a0 >> 1			# LN: 117 | 
	xmem[i0] = a0h			# LN: 117 | 
cline_117_0:			/* LN: 119 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 119 | 
	i0 = xmem[i0]			# LN: 119 | 
	i1 = i7 - (0x2)			# LN: 119 | 
	a0 = xmem[i0]			# LN: 119 | 
	a0 = a0 << 1			# LN: 119 | 
	i0 = xmem[i1]			# LN: 119 | 
	a0 = a0 << 1			# LN: 119 | 
	xmem[i0] = a0h			# LN: 119 | 
cline_119_0:			/* LN: 120 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 120 | 
	i0 = xmem[i0]			# LN: 120 | 
	i1 = i7 - (0x2)			# LN: 120 | 
	i0 += 1			# LN: 120 | 
	xmem[i1] = i0			# LN: 120 | 
cline_120_0:			/* LN: 121 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 121 | 
	i0 = xmem[i0]			# LN: 121 | 
	i1 = i7 - (0x1)			# LN: 121 | 
	i0 += 1			# LN: 121 | 
	xmem[i1] = i0			# LN: 121 | 
cline_121_0:			/* LN: 75 | CYCLE: 0 | RULES: () */ 
init_latch_label_1:			/* LN: 122 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_i + 0]			# LN: 75 | 
	uhalfword(a1) = (0x1)			# LN: 75 | 
	a0 = a0 + a1			# LN: 75 | 
	xmem[_i + 0] = a0h			# LN: 75 | 
	jmp (for_1)			# LN: 75 | 
cline_75_1:			/* LN: 123 | CYCLE: 0 | RULES: () */ 
for_end_1:			/* LN: 75 | CYCLE: 0 | RULES: () */ 
	jmp (_882B50)			# LN: 123 | 
cline_53_2:			/* LN: 127 | CYCLE: 0 | RULES: () */ 
case_2:			/* LN: 125 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 127 | 
	xmem[_i + 0] = a0h			# LN: 127 | 
for_2:			/* LN: 127 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_i + 0]			# LN: 127 | 
	uhalfword(a1) = (0x10)			# LN: 127 | 
	a0 - a1			# LN: 127 | 
	if (a >= 0) jmp (for_end_2)			# LN: 127 | 
cline_127_0:			/* LN: 129 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 129 | 
	i0 = xmem[i0]			# LN: 129 | 
	x0 = xmem[_distortion_gain + 0]			# LN: 129 | 
	x1 = xmem[i0]			# LN: 129 | 
	i0 = i7 - (0x2)			# LN: 129 | 
	i0 = xmem[i0]			# LN: 129 | 
	a0 = x1 * x0			# LN: 129 | 
	xmem[i0] = a0			# LN: 129 | 
cline_129_0:			/* LN: 130 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 130 | 
	i0 = xmem[i0]			# LN: 130 | 
	nop #empty cycle
	a0 = xmem[i0]			# LN: 130 | 
	a0 & a0			# LN: 130 | 
	if (a >= 0) jmp (else_6)			# LN: 130 | 
cline_130_0:			/* LN: 132 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 132 | 
	i0 = xmem[i0]			# LN: 132 | 
	i1 = i7 - (0x2)			# LN: 132 | 
	a0 = xmem[i0]			# LN: 132 | 
	i0 = xmem[i1]			# LN: 132 | 
	a0 =- a0			# LN: 132 | 
	xmem[i0] = a0h			# LN: 132 | 
	jmp (endif_6)			# LN: 132 | 
cline_132_0:			/* LN: 135 | CYCLE: 0 | RULES: () */ 
endif_6:			/* LN: 130 | CYCLE: 0 | RULES: () */ 
else_6:			/* LN: 130 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 135 | 
	i0 = xmem[i0]			# LN: 135 | 
	i1 = i7 - (0x2)			# LN: 135 | 
	a0 = xmem[i0]			# LN: 135 | 
	a0 = a0 << 1			# LN: 135 | 
	i0 = xmem[i1]			# LN: 135 | 
	a0 = a0 << 1			# LN: 135 | 
	xmem[i0] = a0h			# LN: 135 | 
cline_135_0:			/* LN: 136 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 136 | 
	i0 = xmem[i0]			# LN: 136 | 
	i1 = i7 - (0x2)			# LN: 136 | 
	i0 += 1			# LN: 136 | 
	xmem[i1] = i0			# LN: 136 | 
cline_136_0:			/* LN: 137 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 137 | 
	i0 = xmem[i0]			# LN: 137 | 
	i1 = i7 - (0x1)			# LN: 137 | 
	i0 += 1			# LN: 137 | 
	xmem[i1] = i0			# LN: 137 | 
cline_137_0:			/* LN: 127 | CYCLE: 0 | RULES: () */ 
init_latch_label_2:			/* LN: 138 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_i + 0]			# LN: 127 | 
	uhalfword(a1) = (0x1)			# LN: 127 | 
	a0 = a0 + a1			# LN: 127 | 
	xmem[_i + 0] = a0h			# LN: 127 | 
	jmp (for_2)			# LN: 127 | 
cline_127_1:			/* LN: 139 | CYCLE: 0 | RULES: () */ 
for_end_2:			/* LN: 127 | CYCLE: 0 | RULES: () */ 
	jmp (_882B50)			# LN: 139 | 
cline_53_3:			/* LN: 143 | CYCLE: 0 | RULES: () */ 
case_3:			/* LN: 141 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 143 | 
	xmem[_i + 0] = a0h			# LN: 143 | 
for_3:			/* LN: 143 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_i + 0]			# LN: 143 | 
	uhalfword(a1) = (0x10)			# LN: 143 | 
	a0 - a1			# LN: 143 | 
	if (a >= 0) jmp (for_end_3)			# LN: 143 | 
cline_143_0:			/* LN: 145 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 145 | 
	i0 = xmem[i0]			# LN: 145 | 
	x0 = xmem[_distortion_gain + 0]			# LN: 145 | 
	x1 = xmem[i0]			# LN: 145 | 
	i0 = i7 - (0x2)			# LN: 145 | 
	i0 = xmem[i0]			# LN: 145 | 
	a0 = x1 * x0			# LN: 145 | 
	xmem[i0] = a0			# LN: 145 | 
cline_145_0:			/* LN: 146 | CYCLE: 0 | RULES: () */ 
	a0g = xmem[_x + 0]			# LN: 146 | 
	a0h = xmem[_x + 1]			# LN: 146 | 
	a0l = xmem[_x + 2]			# LN: 146 | 
	a0 & a0			# LN: 146 | 
	if (a >= 0) jmp (else_7)			# LN: 146 | 
cline_146_0:			/* LN: 147 | CYCLE: 0 | RULES: () */ 
	a0g = xmem[_x + 0]			# LN: 147 | 
	a0h = xmem[_x + 1]			# LN: 147 | 
	a0l = xmem[_x + 2]			# LN: 147 | 
	a0 =- a0			# LN: 147 | 
	xmem[_x + 0] = a0g			# LN: 147 | 
	xmem[_x + 1] = a0h			# LN: 147 | 
	xmem[_x + 2] = a0l			# LN: 147 | 
	jmp (endif_7)			# LN: 147 | 
cline_147_0:			/* LN: 150 | CYCLE: 0 | RULES: () */ 
endif_7:			/* LN: 146 | CYCLE: 0 | RULES: () */ 
else_7:			/* LN: 146 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 150 | 
	i0 = xmem[i0]			# LN: 150 | 
	a0g = xmem[_x + 0]			# LN: 150 | 
	a1 = xmem[i0]			# LN: 150 | 
	a0h = xmem[_x + 1]			# LN: 150 | 
	a0l = xmem[_x + 2]			# LN: 150 | 
	a0 = a0 + a1			# LN: 150 | 
	xmem[_x + 0] = a0g			# LN: 150 | 
	xmem[_x + 1] = a0h			# LN: 150 | 
	xmem[_x + 2] = a0l			# LN: 150 | 
cline_150_0:			/* LN: 151 | CYCLE: 0 | RULES: () */ 
	a0g = xmem[_x + 0]			# LN: 151 | 
	a0h = xmem[_x + 1]			# LN: 151 | 
	i0 = i7 - (0x2)			# LN: 151 | 
	i0 = xmem[i0]			# LN: 151 | 
	a0l = xmem[_x + 2]			# LN: 151 | 
	xmem[i0] = a0			# LN: 151 | 
cline_151_0:			/* LN: 152 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 152 | 
	i0 = xmem[i0]			# LN: 152 | 
	i1 = i7 - (0x2)			# LN: 152 | 
	a0 = xmem[i0]			# LN: 152 | 
	i0 = xmem[i1]			# LN: 152 | 
	a0 = a0 << 1			# LN: 152 | 
	xmem[i0] = a0h			# LN: 152 | 
cline_152_0:			/* LN: 154 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 154 | 
	i0 = xmem[i0]			# LN: 154 | 
	i1 = i7 - (0x2)			# LN: 154 | 
	i0 += 1			# LN: 154 | 
	xmem[i1] = i0			# LN: 154 | 
cline_154_0:			/* LN: 155 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 155 | 
	i0 = xmem[i0]			# LN: 155 | 
	i1 = i7 - (0x1)			# LN: 155 | 
	i0 += 1			# LN: 155 | 
	xmem[i1] = i0			# LN: 155 | 
cline_155_0:			/* LN: 143 | CYCLE: 0 | RULES: () */ 
init_latch_label_3:			/* LN: 156 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_i + 0]			# LN: 143 | 
	uhalfword(a1) = (0x1)			# LN: 143 | 
	a0 = a0 + a1			# LN: 143 | 
	xmem[_i + 0] = a0h			# LN: 143 | 
	jmp (for_3)			# LN: 143 | 
cline_143_1:			/* LN: 157 | CYCLE: 0 | RULES: () */ 
for_end_3:			/* LN: 143 | CYCLE: 0 | RULES: () */ 
	jmp (_882B50)			# LN: 157 | 
cline_53_4:			/* LN: 160 | CYCLE: 0 | RULES: () */ 
default_0:			/* LN: 159 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_0)			# LN: 160 | 
cline_160_0:			/* LN: 162 | CYCLE: 0 | RULES: () */ 
_882B50:			/* LN: 162 | CYCLE: 0 | RULES: () */ 
switch_end_0:			/* LN: 53 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_220)			# LN: 162 | 
__epilogue_220:			/* LN: 162 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x2)			# LN: 162 | 
	i7 -= 1			# LN: 162 | 
	ret			# LN: 162 | 



	# This construction should ensure linking of crt0 in case when target is a standalone program without the OS
	.if defined(_OVLY_)
		.if .strcmp('standalone',_OVLY_)=0
		.if .strcmp('crystal32',_TARGET_FAMILY_)=0
			.extern __start         # dummy use of __start to force linkage of crt0
dummy		.equ(__start)
		.else
			.extern __intvec         # dummy use of __intvec to force linkage of intvec
dummy		.equ(__intvec)
		.endif
		.endif
	.endif

_main:			/* LN: 238 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 238 | 
	i7 += 1			# LN: 238 | 
	i7 = i7 + (0x20f)			# LN: 238 | 
	i1 = i7 - (0x1)			# LN: 238 | 
	xmem[i1] = a0h			# LN: 238 | 
	i1 = i7 - (0x2)			# LN: 238 | 
	xmem[i1] = i0			# LN: 238 | 
cline_238_0:			/* LN: 252 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 252 | 
	uhalfword(a0) = (0x32)			# LN: 252 | 
	xmem[i0] = a0h			# LN: 252 | 
cline_252_0:			/* LN: 255 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 255 | 
	a0 = 0			# LN: 255 | 
	xmem[i0] = a0h			# LN: 255 | 
	do (0x8), label_end_92			# LN: 255 | 
cline_255_0:			/* LN: 256 | CYCLE: 0 | RULES: () */ 
label_begin_92:			/* LN: 255 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 256 | 
	a1 = xmem[i0]; a0 = 0			# LN: 256, 256 | 
	a1 = a1 << 4			# LN: 256 | 
	i0 = a1			# LN: 256 | 
	uhalfword(a1) = (0x10)			# LN: 256 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 256 | 
	call (_memset)			# LN: 256 | 
cline_256_0:			/* LN: 255 | CYCLE: 0 | RULES: () */ 
init_latch_label_8:			/* LN: 256 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 255 | 
	a0 = xmem[i0]			# LN: 255 | 
	uhalfword(a1) = (0x1)			# LN: 255 | 
	a0 = a0 + a1			# LN: 255 | 
	i0 = i7 - (0x4)			# LN: 255 | 
label_end_92:			# LN: 255 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 255 | 
cline_255_1:			/* LN: 260 | CYCLE: 0 | RULES: () */ 
for_end_8:			/* LN: 255 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (260 - 0)			# LN: 260 | 
	i1 = (0) + (_string_const_0)			# LN: 260 | 
	call (_strcpy)			# LN: 260 | 
cline_260_0:			/* LN: 261 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (260 - 0)			# LN: 261 | 
	call (_cl_wavread_open)			# LN: 261 | 
	AnyReg(i0, a0h)			# LN: 261 | 
	i1 = i7 - (0x105)			# LN: 261 | 
	xmem[i1] = i0			# LN: 261 | 
cline_261_0:			/* LN: 262 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 262 | 
	a0 = xmem[i0]			# LN: 262 | 
	a0 & a0			# LN: 262 | 
	if (a != 0) jmp (else_8)			# LN: 262 | 
cline_262_0:			/* LN: 264 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_1)			# LN: 264 | 
	call (_printf)			# LN: 264 | 
cline_264_0:			/* LN: 265 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 265 | 
	jmp (__epilogue_224)			# LN: 265 | 
cline_265_0:			/* LN: 271 | CYCLE: 0 | RULES: () */ 
endif_8:			/* LN: 262 | CYCLE: 0 | RULES: () */ 
else_8:			/* LN: 262 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 271 | 
	i0 = xmem[i0]			# LN: 271 | 
	call (_cl_wavread_getnchannels)			# LN: 271 | 
	i0 = i7 - (0x106)			# LN: 271 | 
	xmem[i0] = a0h			# LN: 271 | 
cline_271_0:			/* LN: 272 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 272 | 
	i0 = xmem[i0]			# LN: 272 | 
	call (_cl_wavread_bits_per_sample)			# LN: 272 | 
	i0 = i7 - (0x107)			# LN: 272 | 
	xmem[i0] = a0h			# LN: 272 | 
cline_272_0:			/* LN: 273 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 273 | 
	i0 = xmem[i0]			# LN: 273 | 
	call (_cl_wavread_frame_rate)			# LN: 273 | 
	i0 = i7 - (0x108)			# LN: 273 | 
	xmem[i0] = a0h			# LN: 273 | 
cline_273_0:			/* LN: 274 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 274 | 
	i0 = xmem[i0]			# LN: 274 | 
	call (_cl_wavread_number_of_frames)			# LN: 274 | 
	i0 = i7 - (0x109)			# LN: 274 | 
	xmem[i0] = a0h			# LN: 274 | 
cline_274_0:			/* LN: 277 | CYCLE: 0 | RULES: () */ 
switch_2:			/* LN: 277 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 277 | 
	a0 = xmem[i0]			# LN: 277 | 
	uhalfword(a1) = (0x30)			# LN: 277 | 
	a0g = (0x0)			# LN: 277 | 
	a1g = (0x0)			# LN: 277 | 
	a0 - a1			# LN: 277 | 
	if (a == 0) jmp (case_7)			# LN: 277 | 
	i0 = i7 - (0x3)			# LN: 277 | 
	a0 = xmem[i0]			# LN: 277 | 
	uhalfword(a1) = (0x31)			# LN: 277 | 
	a0g = (0x0)			# LN: 277 | 
	a1g = (0x0)			# LN: 277 | 
	a0 - a1			# LN: 277 | 
	if (a == 0) jmp (case_8)			# LN: 277 | 
	i0 = i7 - (0x3)			# LN: 277 | 
	a0 = xmem[i0]			# LN: 277 | 
	uhalfword(a1) = (0x32)			# LN: 277 | 
	a0g = (0x0)			# LN: 277 | 
	a1g = (0x0)			# LN: 277 | 
	a0 - a1			# LN: 277 | 
	if (a == 0) jmp (case_9)			# LN: 277 | 
	jmp (switch_end_2)			# LN: 277 | 
cline_277_0:			/* LN: 280 | CYCLE: 0 | RULES: () */ 
case_7:			/* LN: 279 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x10a)			# LN: 280 | 
	uhalfword(a0) = (0x2)			# LN: 280 | 
	xmem[i0] = a0h			# LN: 280 | 
cline_280_0:			/* LN: 281 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 281 | 
	xmem[_outputMode + 0] = a0h			# LN: 281 | 
cline_281_0:			/* LN: 282 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_2)			# LN: 282 | 
cline_282_0:			/* LN: 284 | CYCLE: 0 | RULES: () */ 
case_8:			/* LN: 283 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x10a)			# LN: 284 | 
	uhalfword(a0) = (0x4)			# LN: 284 | 
	xmem[i0] = a0h			# LN: 284 | 
cline_284_0:			/* LN: 285 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x1)			# LN: 285 | 
	xmem[_outputMode + 0] = a0h			# LN: 285 | 
cline_285_0:			/* LN: 286 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_2)			# LN: 286 | 
cline_286_0:			/* LN: 288 | CYCLE: 0 | RULES: () */ 
case_9:			/* LN: 287 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x10a)			# LN: 288 | 
	uhalfword(a0) = (0x6)			# LN: 288 | 
	xmem[i0] = a0h			# LN: 288 | 
cline_288_0:			/* LN: 289 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x2)			# LN: 289 | 
	xmem[_outputMode + 0] = a0h			# LN: 289 | 
cline_289_0:			/* LN: 290 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_2)			# LN: 290 | 
cline_290_0:			/* LN: 295 | CYCLE: 0 | RULES: () */ 
switch_end_2:			/* LN: 277 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (522 - 0)			# LN: 295 | 
	i1 = (0) + (_string_const_2)			# LN: 295 | 
	call (_strcpy)			# LN: 295 | 
cline_295_0:			/* LN: 296 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (522 - 0)			# LN: 296 | 
	i1 = i7 - (0x107)			# LN: 296 | 
	a0 = xmem[i1]			# LN: 296 | 
	i1 = i7 - (0x10a)			# LN: 296 | 
	a1 = xmem[i1]			# LN: 296 | 
	i1 = i7 - (0x108)			# LN: 296 | 
	b0 = xmem[i1]			# LN: 296 | 
	call (_cl_wavwrite_open)			# LN: 296 | 
	AnyReg(i0, a0h)			# LN: 296 | 
	i1 = i7 - (0x20b)			# LN: 296 | 
	xmem[i1] = i0			# LN: 296 | 
cline_296_0:			/* LN: 297 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 297 | 
	a0 = xmem[i0]			# LN: 297 | 
	a0 & a0			# LN: 297 | 
	if (a != 0) jmp (else_9)			# LN: 297 | 
cline_297_0:			/* LN: 299 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_3)			# LN: 299 | 
	call (_printf)			# LN: 299 | 
cline_299_0:			/* LN: 300 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 300 | 
	jmp (__epilogue_224)			# LN: 300 | 
cline_300_0:			/* LN: 313 | CYCLE: 0 | RULES: () */ 
endif_9:			/* LN: 297 | CYCLE: 0 | RULES: () */ 
else_9:			/* LN: 297 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 313 | 
	a0 = 0			# LN: 313 | 
	xmem[i0] = a0h			# LN: 313 | 
for_9:			/* LN: 313 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x109)			# LN: 313 | 
	a0 = xmem[i0]			# LN: 313 | 
	uhalfword(a1) = (0x10)			# LN: 313 | 
	call (__div)			# LN: 313 | 
	i0 = i7 - (0x20c)			# LN: 313 | 
	a1 = xmem[i0]			# LN: 313 | 
	a1 - a0			# LN: 313 | 
	if (a >= 0) jmp (for_end_9)			# LN: 313 | 
cline_313_0:			/* LN: 315 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 315 | 
	a0 = 0			# LN: 315 | 
	xmem[i0] = a0h			# LN: 315 | 
	do (0x10), label_end_93			# LN: 315 | 
cline_315_0:			/* LN: 317 | CYCLE: 0 | RULES: () */ 
label_begin_93:			/* LN: 315 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20e)			# LN: 317 | 
	a0 = 0			# LN: 317 | 
	xmem[i0] = a0h			# LN: 317 | 
for_11:			/* LN: 317 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20e)			# LN: 317 | 
	a0 = xmem[i0]			# LN: 317 | 
	i0 = i7 - (0x106)			# LN: 317 | 
	a1 = xmem[i0]			# LN: 317 | 
	a0 - a1			# LN: 317 | 
	if (a >= 0) jmp (for_end_11)			# LN: 317 | 
cline_317_0:			/* LN: 319 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 319 | 
	i0 = xmem[i0]			# LN: 319 | 
	call (_cl_wavread_recvsample)			# LN: 319 | 
	i0 = i7 - (0x20f)			# LN: 319 | 
	xmem[i0] = a0h			# LN: 319 | 
cline_319_0:			/* LN: 320 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20e)			# LN: 320 | 
	a0 = xmem[i0]			# LN: 320 | 
	a0 = a0 << 4			# LN: 320 | 
	i0 = a0			# LN: 320 | 
	i1 = i7 - (0x20d)			# LN: 320 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 320 | 
	a0 = xmem[i1]			# LN: 320 | 
	a1 = i0			# LN: 320 | 
	a0 = a1 + a0			# LN: 320 | 
	AnyReg(i0, a0h)			# LN: 320 | 
	i1 = i7 - (0x20f)			# LN: 320 | 
	a0 = xmem[i1]			# LN: 320 | 
	xmem[i0] = a0h			# LN: 320 | 
cline_320_0:			/* LN: 317 | CYCLE: 0 | RULES: () */ 
init_latch_label_9:			/* LN: 321 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20e)			# LN: 317 | 
	a0 = xmem[i0]			# LN: 317 | 
	uhalfword(a1) = (0x1)			# LN: 317 | 
	a0 = a0 + a1			# LN: 317 | 
	i0 = i7 - (0x20e)			# LN: 317 | 
	xmem[i0] = a0h			# LN: 317 | 
	jmp (for_11)			# LN: 317 | 
cline_317_1:			/* LN: 315 | CYCLE: 0 | RULES: () */ 
init_latch_label_10:			/* LN: 322 | CYCLE: 0 | RULES: () */ 
for_end_11:			/* LN: 317 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 315 | 
	a0 = xmem[i0]			# LN: 315 | 
	uhalfword(a1) = (0x1)			# LN: 315 | 
	a0 = a0 + a1			# LN: 315 | 
	i0 = i7 - (0x20d)			# LN: 315 | 
label_end_93:			# LN: 315 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 315 | 
cline_315_1:			/* LN: 324 | CYCLE: 0 | RULES: () */ 
for_end_10:			/* LN: 315 | CYCLE: 0 | RULES: () */ 
	call (_processing)			# LN: 324 | 
cline_324_0:			/* LN: 326 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 326 | 
	a0 = 0			# LN: 326 | 
	xmem[i0] = a0h			# LN: 326 | 
	do (0x10), label_end_94			# LN: 326 | 
cline_326_0:			/* LN: 328 | CYCLE: 0 | RULES: () */ 
label_begin_94:			/* LN: 326 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20e)			# LN: 328 | 
	a0 = 0			# LN: 328 | 
	xmem[i0] = a0h			# LN: 328 | 
for_13:			/* LN: 328 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20e)			# LN: 328 | 
	a0 = xmem[i0]			# LN: 328 | 
	i0 = i7 - (0x10a)			# LN: 328 | 
	a1 = xmem[i0]			# LN: 328 | 
	a0 - a1			# LN: 328 | 
	if (a >= 0) jmp (for_end_13)			# LN: 328 | 
cline_328_0:			/* LN: 330 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20e)			# LN: 330 | 
	a0 = xmem[i0]			# LN: 330 | 
	a0 = a0 << 4			# LN: 330 | 
	i0 = a0			# LN: 330 | 
	i1 = i7 - (0x20d)			# LN: 330 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 330 | 
	a0 = xmem[i1]			# LN: 330 | 
	a1 = i0			# LN: 330 | 
	a0 = a1 + a0			# LN: 330 | 
	AnyReg(i0, a0h)			# LN: 330 | 
	i1 = i7 - (0x20f)			# LN: 330 | 
	a0 = xmem[i0]			# LN: 330 | 
	xmem[i1] = a0h			# LN: 330 | 
cline_330_0:			/* LN: 331 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 331 | 
	i1 = i7 - (0x20f)			# LN: 331 | 
	a0 = xmem[i1]			# LN: 331 | 
	i0 = xmem[i0]			# LN: 331 | 
	call (_cl_wavwrite_sendsample)			# LN: 331 | 
cline_331_0:			/* LN: 328 | CYCLE: 0 | RULES: () */ 
init_latch_label_11:			/* LN: 332 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20e)			# LN: 328 | 
	a0 = xmem[i0]			# LN: 328 | 
	uhalfword(a1) = (0x1)			# LN: 328 | 
	a0 = a0 + a1			# LN: 328 | 
	i0 = i7 - (0x20e)			# LN: 328 | 
	xmem[i0] = a0h			# LN: 328 | 
	jmp (for_13)			# LN: 328 | 
cline_328_1:			/* LN: 326 | CYCLE: 0 | RULES: () */ 
init_latch_label_12:			/* LN: 333 | CYCLE: 0 | RULES: () */ 
for_end_13:			/* LN: 328 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 326 | 
	a0 = xmem[i0]			# LN: 326 | 
	uhalfword(a1) = (0x1)			# LN: 326 | 
	a0 = a0 + a1			# LN: 326 | 
	i0 = i7 - (0x20d)			# LN: 326 | 
label_end_94:			# LN: 326 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 326 | 
cline_326_1:			/* LN: 313 | CYCLE: 0 | RULES: () */ 
init_latch_label_13:			/* LN: 334 | CYCLE: 0 | RULES: () */ 
for_end_12:			/* LN: 326 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 313 | 
	a0 = xmem[i0]			# LN: 313 | 
	uhalfword(a1) = (0x1)			# LN: 313 | 
	a0 = a0 + a1			# LN: 313 | 
	i0 = i7 - (0x20c)			# LN: 313 | 
	xmem[i0] = a0h			# LN: 313 | 
	jmp (for_9)			# LN: 313 | 
cline_313_1:			/* LN: 339 | CYCLE: 0 | RULES: () */ 
for_end_9:			/* LN: 313 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 339 | 
	i0 = xmem[i0]			# LN: 339 | 
	call (_cl_wavread_close)			# LN: 339 | 
cline_339_0:			/* LN: 340 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 340 | 
	i0 = xmem[i0]			# LN: 340 | 
	call (_cl_wavwrite_close)			# LN: 340 | 
cline_340_0:			/* LN: 343 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 343 | 
	jmp (__epilogue_224)			# LN: 343 | 
cline_343_0:			/* LN: 344 | CYCLE: 0 | RULES: () */ 
__epilogue_224:			/* LN: 344 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x20f)			# LN: 344 | 
	i7 -= 1			# LN: 344 | 
	ret			# LN: 344 | 



_processing:			/* LN: 164 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 164 | 
	i7 += 1			# LN: 164 | 
cline_164_0:			/* LN: 166 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 0)			# LN: 166 | 
	xmem[_leftInput + 0] = i0			# LN: 166 | 
cline_166_0:			/* LN: 167 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 16)			# LN: 167 | 
	xmem[_rightInput + 0] = i0			# LN: 167 | 
cline_167_0:			/* LN: 169 | CYCLE: 0 | RULES: () */ 
switch_1:			/* LN: 169 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_outputMode + 0]			# LN: 169 | 
	a0 & a0			# LN: 169 | 
	if (a == 0) jmp (case_4)			# LN: 169 | 
	a0 = xmem[_outputMode + 0]			# LN: 169 | 
	uhalfword(a1) = (0x1)			# LN: 169 | 
	a0 - a1			# LN: 169 | 
	if (a == 0) jmp (case_5)			# LN: 169 | 
	a0 = xmem[_outputMode + 0]			# LN: 169 | 
	uhalfword(a1) = (0x2)			# LN: 169 | 
	a0 - a1			# LN: 169 | 
	if (a == 0) jmp (case_6)			# LN: 169 | 
	jmp (switch_end_1)			# LN: 169 | 
cline_169_0:			/* LN: 172 | CYCLE: 0 | RULES: () */ 
case_4:			/* LN: 171 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 172 | 
	xmem[_i + 0] = a0h			# LN: 172 | 
for_4:			/* LN: 172 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_i + 0]			# LN: 172 | 
	uhalfword(a1) = (0x10)			# LN: 172 | 
	a0 - a1			# LN: 172 | 
	if (a >= 0) jmp (for_end_4)			# LN: 172 | 
cline_172_0:			/* LN: 174 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_leftInput + 0]			# LN: 174 | 
	x0 = ymem[_numGain + 0]			# LN: 174 | 
	x1 = xmem[i0]			# LN: 174 | 
	i0 = (0) + (_leftInput)			# LN: 174 | 
	i0 = xmem[i0]			# LN: 174 | 
	a0 = x1 * x0			# LN: 174 | 
	xmem[i0] = a0			# LN: 174 | 
cline_174_0:			/* LN: 175 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_rightInput + 0]			# LN: 175 | 
	x0 = ymem[_numGain + 0]			# LN: 175 | 
	x1 = xmem[i0]			# LN: 175 | 
	i0 = (0) + (_rightInput)			# LN: 175 | 
	i0 = xmem[i0]			# LN: 175 | 
	a0 = x1 * x0			# LN: 175 | 
	xmem[i0] = a0			# LN: 175 | 
cline_175_0:			/* LN: 176 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_leftInput + 0]			# LN: 176 | 
	nop #empty cycle
	i0 += 1			# LN: 176 | 
	xmem[_leftInput + 0] = i0			# LN: 176 | 
cline_176_0:			/* LN: 177 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_rightInput + 0]			# LN: 177 | 
	nop #empty cycle
	i0 += 1			# LN: 177 | 
	xmem[_rightInput + 0] = i0			# LN: 177 | 
cline_177_0:			/* LN: 172 | CYCLE: 0 | RULES: () */ 
init_latch_label_4:			/* LN: 178 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_i + 0]			# LN: 172 | 
	uhalfword(a1) = (0x1)			# LN: 172 | 
	a0 = a0 + a1			# LN: 172 | 
	xmem[_i + 0] = a0h			# LN: 172 | 
	jmp (for_4)			# LN: 172 | 
cline_172_1:			/* LN: 179 | CYCLE: 0 | RULES: () */ 
for_end_4:			/* LN: 172 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_1)			# LN: 179 | 
cline_179_0:			/* LN: 182 | CYCLE: 0 | RULES: () */ 
case_5:			/* LN: 180 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 32)			# LN: 182 | 
	xmem[_lsOutput + 0] = i0			# LN: 182 | 
cline_182_0:			/* LN: 183 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 48)			# LN: 183 | 
	xmem[_rsOutput + 0] = i0			# LN: 183 | 
cline_183_0:			/* LN: 185 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 185 | 
	xmem[_i + 0] = a0h			# LN: 185 | 
for_5:			/* LN: 185 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_i + 0]			# LN: 185 | 
	uhalfword(a1) = (0x10)			# LN: 185 | 
	a0 - a1			# LN: 185 | 
	if (a >= 0) jmp (for_end_5)			# LN: 185 | 
cline_185_0:			/* LN: 187 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_leftInput + 0]			# LN: 187 | 
	x0 = ymem[_numGain + 0]			# LN: 187 | 
	x1 = xmem[i0]			# LN: 187 | 
	i0 = (0) + (_leftInput)			# LN: 187 | 
	i0 = xmem[i0]			# LN: 187 | 
	a0 = x1 * x0			# LN: 187 | 
	xmem[i0] = a0			# LN: 187 | 
cline_187_0:			/* LN: 188 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_rightInput + 0]			# LN: 188 | 
	x0 = ymem[_numGain + 0]			# LN: 188 | 
	x1 = xmem[i0]			# LN: 188 | 
	i0 = (0) + (_rightInput)			# LN: 188 | 
	i0 = xmem[i0]			# LN: 188 | 
	a0 = x1 * x0			# LN: 188 | 
	xmem[i0] = a0			# LN: 188 | 
cline_188_0:			/* LN: 189 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_leftInput + 0]			# LN: 189 | 
	nop #empty cycle
	i0 += 1			# LN: 189 | 
	xmem[_leftInput + 0] = i0			# LN: 189 | 
cline_189_0:			/* LN: 190 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_rightInput + 0]			# LN: 190 | 
	nop #empty cycle
	i0 += 1			# LN: 190 | 
	xmem[_rightInput + 0] = i0			# LN: 190 | 
cline_190_0:			/* LN: 185 | CYCLE: 0 | RULES: () */ 
init_latch_label_5:			/* LN: 191 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_i + 0]			# LN: 185 | 
	uhalfword(a1) = (0x1)			# LN: 185 | 
	a0 = a0 + a1			# LN: 185 | 
	xmem[_i + 0] = a0h			# LN: 185 | 
	jmp (for_5)			# LN: 185 | 
cline_185_1:			/* LN: 193 | CYCLE: 0 | RULES: () */ 
for_end_5:			/* LN: 185 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 0)			# LN: 193 | 
	xmem[_leftInput + 0] = i0			# LN: 193 | 
cline_193_0:			/* LN: 194 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 16)			# LN: 194 | 
	xmem[_rightInput + 0] = i0			# LN: 194 | 
cline_194_0:			/* LN: 196 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_leftInput + 0]			# LN: 196 | 
	i1 = xmem[_lsOutput + 0]			# LN: 196 | 
	call (_distortion)			# LN: 196 | 
cline_196_0:			/* LN: 197 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_rightInput + 0]			# LN: 197 | 
	i1 = xmem[_rsOutput + 0]			# LN: 197 | 
	call (_distortion)			# LN: 197 | 
cline_197_0:			/* LN: 199 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_1)			# LN: 199 | 
cline_199_0:			/* LN: 202 | CYCLE: 0 | RULES: () */ 
case_6:			/* LN: 200 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 32)			# LN: 202 | 
	xmem[_lsOutput + 0] = i0			# LN: 202 | 
cline_202_0:			/* LN: 203 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 48)			# LN: 203 | 
	xmem[_rsOutput + 0] = i0			# LN: 203 | 
cline_203_0:			/* LN: 204 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 64)			# LN: 204 | 
	xmem[_centralOutput + 0] = i0			# LN: 204 | 
cline_204_0:			/* LN: 205 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 80)			# LN: 205 | 
	xmem[_lfeOutput + 0] = i0			# LN: 205 | 
cline_205_0:			/* LN: 207 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 207 | 
	xmem[_i + 0] = a0h			# LN: 207 | 
for_6:			/* LN: 207 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_i + 0]			# LN: 207 | 
	uhalfword(a1) = (0x10)			# LN: 207 | 
	a0 - a1			# LN: 207 | 
	if (a >= 0) jmp (for_end_6)			# LN: 207 | 
cline_207_0:			/* LN: 209 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_leftInput + 0]			# LN: 209 | 
	x0 = ymem[_numGain + 0]			# LN: 209 | 
	x1 = xmem[i0]			# LN: 209 | 
	i0 = (0) + (_leftInput)			# LN: 209 | 
	i0 = xmem[i0]			# LN: 209 | 
	a0 = x1 * x0			# LN: 209 | 
	xmem[i0] = a0			# LN: 209 | 
cline_209_0:			/* LN: 210 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_rightInput + 0]			# LN: 210 | 
	x0 = ymem[_numGain + 0]			# LN: 210 | 
	x1 = xmem[i0]			# LN: 210 | 
	i0 = (0) + (_rightInput)			# LN: 210 | 
	i0 = xmem[i0]			# LN: 210 | 
	a0 = x1 * x0			# LN: 210 | 
	xmem[i0] = a0			# LN: 210 | 
cline_210_0:			/* LN: 211 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_rightInput + 0]			# LN: 211 | 
	i1 = xmem[_leftInput + 0]			# LN: 211 | 
	a0 = xmem[i0]			# LN: 211 | 
	a1 = xmem[i1]			# LN: 211 | 
	i0 = (0) + (_centralOutput)			# LN: 211 | 
	i0 = xmem[i0]			# LN: 211 | 
	a0 = a0 + a1			# LN: 211 | 
	xmem[i0] = a0h			# LN: 211 | 
cline_211_0:			/* LN: 212 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_centralOutput + 0]			# LN: 212 | 
	nop #empty cycle
	i0 += 1			# LN: 212 | 
	xmem[_centralOutput + 0] = i0			# LN: 212 | 
cline_212_0:			/* LN: 213 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_leftInput + 0]			# LN: 213 | 
	nop #empty cycle
	i0 += 1			# LN: 213 | 
	xmem[_leftInput + 0] = i0			# LN: 213 | 
cline_213_0:			/* LN: 214 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_rightInput + 0]			# LN: 214 | 
	nop #empty cycle
	i0 += 1			# LN: 214 | 
	xmem[_rightInput + 0] = i0			# LN: 214 | 
cline_214_0:			/* LN: 207 | CYCLE: 0 | RULES: () */ 
init_latch_label_6:			/* LN: 215 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_i + 0]			# LN: 207 | 
	uhalfword(a1) = (0x1)			# LN: 207 | 
	a0 = a0 + a1			# LN: 207 | 
	xmem[_i + 0] = a0h			# LN: 207 | 
	jmp (for_6)			# LN: 207 | 
cline_207_1:			/* LN: 217 | CYCLE: 0 | RULES: () */ 
for_end_6:			/* LN: 207 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 0)			# LN: 217 | 
	xmem[_leftInput + 0] = i0			# LN: 217 | 
cline_217_0:			/* LN: 218 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 16)			# LN: 218 | 
	xmem[_rightInput + 0] = i0			# LN: 218 | 
cline_218_0:			/* LN: 220 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_leftInput + 0]			# LN: 220 | 
	i1 = xmem[_lsOutput + 0]			# LN: 220 | 
	call (_distortion)			# LN: 220 | 
cline_220_0:			/* LN: 221 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_rightInput + 0]			# LN: 221 | 
	i1 = xmem[_rsOutput + 0]			# LN: 221 | 
	call (_distortion)			# LN: 221 | 
cline_221_0:			/* LN: 223 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 223 | 
	xmem[_i + 0] = a0h			# LN: 223 | 
for_7:			/* LN: 223 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_i + 0]			# LN: 223 | 
	uhalfword(a1) = (0x10)			# LN: 223 | 
	a0 - a1			# LN: 223 | 
	if (a >= 0) jmp (for_end_7)			# LN: 223 | 
cline_223_0:			/* LN: 225 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_lsOutput + 0]			# LN: 225 | 
	i1 = xmem[_rsOutput + 0]			# LN: 225 | 
	a0 = xmem[i0]			# LN: 225 | 
	a1 = xmem[i1]			# LN: 225 | 
	i0 = (0) + (_lfeOutput)			# LN: 225 | 
	i0 = xmem[i0]			# LN: 225 | 
	a0 = a0 + a1			# LN: 225 | 
	xmem[i0] = a0h			# LN: 225 | 
cline_225_0:			/* LN: 226 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_lfeOutput + 0]			# LN: 226 | 
	nop #empty cycle
	i0 += 1			# LN: 226 | 
	xmem[_lfeOutput + 0] = i0			# LN: 226 | 
cline_226_0:			/* LN: 227 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_lsOutput + 0]			# LN: 227 | 
	nop #empty cycle
	i0 += 1			# LN: 227 | 
	xmem[_lsOutput + 0] = i0			# LN: 227 | 
cline_227_0:			/* LN: 228 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_rsOutput + 0]			# LN: 228 | 
	nop #empty cycle
	i0 += 1			# LN: 228 | 
	xmem[_rsOutput + 0] = i0			# LN: 228 | 
cline_228_0:			/* LN: 223 | CYCLE: 0 | RULES: () */ 
init_latch_label_7:			/* LN: 229 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_i + 0]			# LN: 223 | 
	uhalfword(a1) = (0x1)			# LN: 223 | 
	a0 = a0 + a1			# LN: 223 | 
	xmem[_i + 0] = a0h			# LN: 223 | 
	jmp (for_7)			# LN: 223 | 
cline_223_1:			/* LN: 231 | CYCLE: 0 | RULES: () */ 
for_end_7:			/* LN: 223 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_1)			# LN: 231 | 
cline_231_0:			/* LN: 234 | CYCLE: 0 | RULES: () */ 
switch_end_1:			/* LN: 169 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_222)			# LN: 234 | 
cline_234_0:			/* LN: 235 | CYCLE: 0 | RULES: () */ 
__epilogue_222:			/* LN: 235 | CYCLE: 0 | RULES: () */ 
	i7 -= 1			# LN: 235 | 
	ret			# LN: 235 | 
