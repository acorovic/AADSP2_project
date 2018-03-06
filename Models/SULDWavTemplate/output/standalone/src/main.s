	.public _centralOutput
	.public _distortion_gain
	.public _enable
	.public _hard_clip_threshold
	.public _i
	.public _leftInput
	.public _lfeOutput
	.public _lsOutput
	.public _n_hard_clip_threshold
	.public _numGain
	.public _outputMode
	.public _rightInput
	.public _rsOutput
	.public _sampleBuffer
	.public _soft_clip_threshold1
	.public _soft_clip_threshold2
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
	.extern __div
	.xdata_ovly
__extractedConst_0_0
	.dw  (0xaaaaaab)
	.xdata_ovly
__extractedConst_1_0
	.dw  (0x15555555)
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
	.dw  (0x0)
	.xdata_ovly
_x
	.bss (0x3)
	.code_ovly



_distortion:			/* LN: 45 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 45 | 
	i7 += 1			# LN: 45 | 
	i7 = i7 + (0x2)			# LN: 45 | 
	i4 = i7 - (0x1)			# LN: 45 | 
	xmem[i4] = i0			# LN: 45 | 
	i0 = i7 - (0x2)			# LN: 45 | 
	xmem[i0] = i1			# LN: 45 | 
cline_45_0:			/* LN: 48 | CYCLE: 0 | RULES: () */ 
switch_0:			/* LN: 48 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_type + 0]			# LN: 48 | 
	a0 & a0			# LN: 48 | 
	if (a == 0) jmp (case_0)			# LN: 48 | 
	a0 = xmem[_type + 0]			# LN: 48 | 
	uhalfword(a1) = (0x1)			# LN: 48 | 
	a0 - a1			# LN: 48 | 
	if (a == 0) jmp (case_1)			# LN: 48 | 
	a0 = xmem[_type + 0]			# LN: 48 | 
	uhalfword(a1) = (0x2)			# LN: 48 | 
	a0 - a1			# LN: 48 | 
	if (a == 0) jmp (case_2)			# LN: 48 | 
	a0 = xmem[_type + 0]			# LN: 48 | 
	uhalfword(a1) = (0x3)			# LN: 48 | 
	a0 - a1			# LN: 48 | 
	if (a == 0) jmp (case_3)			# LN: 48 | 
	jmp (default_0)			# LN: 48 | 
cline_48_0:			/* LN: 51 | CYCLE: 0 | RULES: () */ 
case_0:			/* LN: 49 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 51 | 
	xmem[_i + 0] = a0h			# LN: 51 | 
for_0:			/* LN: 51 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_i + 0]			# LN: 51 | 
	uhalfword(a1) = (0x10)			# LN: 51 | 
	a0 - a1			# LN: 51 | 
	if (a >= 0) jmp (for_end_0)			# LN: 51 | 
cline_51_0:			/* LN: 53 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 53 | 
	i0 = xmem[i0]			# LN: 53 | 
	x0 = xmem[_distortion_gain + 0]			# LN: 53 | 
	x1 = xmem[i0]			# LN: 53 | 
	i0 = i7 - (0x2)			# LN: 53 | 
	i0 = xmem[i0]			# LN: 53 | 
	a0 = x1 * x0			# LN: 53 | 
	xmem[i0] = a0			# LN: 53 | 
cline_53_0:			/* LN: 54 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 54 | 
	i0 = xmem[i0]			# LN: 54 | 
	a0 = (0x1000)			# LN: 54 | 
	a1 = xmem[i0]			# LN: 54 | 
	a1 - a0			# LN: 54 | 
	if (a <= 0) jmp (else_0)			# LN: 54 | 
cline_54_0:			/* LN: 56 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 56 | 
	i0 = xmem[i0]			# LN: 56 | 
	a0 = (0x1000)			# LN: 56 | 
	xmem[i0] = a0h			# LN: 56 | 
	jmp (endif_0)			# LN: 56 | 
cline_56_0:			/* LN: 58 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 54 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 58 | 
	i0 = xmem[i0]			# LN: 58 | 
	a0 = (0xf000)			# LN: 58 | 
	a1 = xmem[i0]			# LN: 58 | 
	a1 - a0			# LN: 58 | 
	if (a >= 0) jmp (else_1)			# LN: 58 | 
cline_58_0:			/* LN: 60 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 60 | 
	i0 = xmem[i0]			# LN: 60 | 
	a0 = (0xf000)			# LN: 60 | 
	xmem[i0] = a0h			# LN: 60 | 
	jmp (endif_1)			# LN: 60 | 
cline_60_0:			/* LN: 62 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 54 | CYCLE: 0 | RULES: () */ 
endif_1:			/* LN: 58 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 58 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 62 | 
	i0 = xmem[i0]			# LN: 62 | 
	i1 = i7 - (0x2)			# LN: 62 | 
	a0 = xmem[i0]			# LN: 62 | 
	a0 = a0 << 1			# LN: 62 | 
	i0 = xmem[i1]			# LN: 62 | 
	a0 = a0 << 1			# LN: 62 | 
	xmem[i0] = a0h			# LN: 62 | 
cline_62_0:			/* LN: 63 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 63 | 
	i0 = xmem[i0]			# LN: 63 | 
	i1 = i7 - (0x2)			# LN: 63 | 
	i0 += 1			# LN: 63 | 
	xmem[i1] = i0			# LN: 63 | 
cline_63_0:			/* LN: 64 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 64 | 
	i0 = xmem[i0]			# LN: 64 | 
	i1 = i7 - (0x1)			# LN: 64 | 
	i0 += 1			# LN: 64 | 
	xmem[i1] = i0			# LN: 64 | 
cline_64_0:			/* LN: 51 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 65 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_i + 0]			# LN: 51 | 
	uhalfword(a1) = (0x1)			# LN: 51 | 
	a0 = a0 + a1			# LN: 51 | 
	xmem[_i + 0] = a0h			# LN: 51 | 
	jmp (for_0)			# LN: 51 | 
cline_51_1:			/* LN: 66 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 51 | CYCLE: 0 | RULES: () */ 
	jmp (_6F2B50)			# LN: 66 | 
cline_48_1:			/* LN: 70 | CYCLE: 0 | RULES: () */ 
case_1:			/* LN: 68 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 70 | 
	xmem[_i + 0] = a0h			# LN: 70 | 
for_1:			/* LN: 70 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_i + 0]			# LN: 70 | 
	uhalfword(a1) = (0x10)			# LN: 70 | 
	a0 - a1			# LN: 70 | 
	if (a >= 0) jmp (for_end_1)			# LN: 70 | 
cline_70_0:			/* LN: 72 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 72 | 
	i0 = xmem[i0]			# LN: 72 | 
	x0 = xmem[_distortion_gain + 0]			# LN: 72 | 
	x1 = xmem[i0]			# LN: 72 | 
	i0 = i7 - (0x2)			# LN: 72 | 
	i0 = xmem[i0]			# LN: 72 | 
	a0 = x1 * x0			# LN: 72 | 
	xmem[i0] = a0			# LN: 72 | 
cline_72_0:			/* LN: 73 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 73 | 
	i0 = xmem[i0]			# LN: 73 | 
	a0 = xmem[__extractedConst_0_0 + 0]			# LN: 73 | 
	a1 = xmem[i0]			# LN: 73 | 
	a1 - a0			# LN: 73 | 
	if (a <= 0) jmp (else_2)			# LN: 73 | 
cline_73_0:			/* LN: 75 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 75 | 
	i0 = xmem[i0]			# LN: 75 | 
	a0 = xmem[__extractedConst_1_0 + 0]			# LN: 75 | 
	a1 = xmem[i0]			# LN: 75 | 
	a1 - a0			# LN: 75 | 
	if (a <= 0) jmp (else_3)			# LN: 75 | 
cline_75_0:			/* LN: 78 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 78 | 
	i0 = xmem[i0]			# LN: 78 | 
	a0 = (0x1000)			# LN: 78 | 
	xmem[i0] = a0h			# LN: 78 | 
	jmp (endif_3)			# LN: 78 | 
cline_78_0:			/* LN: 75 | CYCLE: 0 | RULES: () */ 
endif_3:			/* LN: 75 | CYCLE: 0 | RULES: () */ 
else_3:			/* LN: 75 | CYCLE: 0 | RULES: () */ 
	jmp (endif_2)			# LN: 75 | 
cline_75_1:			/* LN: 88 | CYCLE: 0 | RULES: () */ 
else_2:			/* LN: 73 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_0_0 + 0]			# LN: 88 | 
	a0 =- a0			# LN: 88 | 
	i0 = i7 - (0x2)			# LN: 88 | 
	i0 = xmem[i0]			# LN: 88 | 
	nop #empty cycle
	a1 = xmem[i0]			# LN: 88 | 
	a1 - a0			# LN: 88 | 
	if (a >= 0) jmp (else_4)			# LN: 88 | 
cline_88_0:			/* LN: 90 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_1_0 + 0]			# LN: 90 | 
	a0 =- a0			# LN: 90 | 
	i0 = i7 - (0x2)			# LN: 90 | 
	i0 = xmem[i0]			# LN: 90 | 
	nop #empty cycle
	a1 = xmem[i0]			# LN: 90 | 
	a1 - a0			# LN: 90 | 
	if (a >= 0) jmp (else_5)			# LN: 90 | 
cline_90_0:			/* LN: 93 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 93 | 
	i0 = xmem[i0]			# LN: 93 | 
	a0 = (0xf000)			# LN: 93 | 
	xmem[i0] = a0h			# LN: 93 | 
	jmp (endif_5)			# LN: 93 | 
cline_93_0:			/* LN: 90 | CYCLE: 0 | RULES: () */ 
endif_5:			/* LN: 90 | CYCLE: 0 | RULES: () */ 
else_5:			/* LN: 90 | CYCLE: 0 | RULES: () */ 
	jmp (endif_4)			# LN: 90 | 
cline_90_1:			/* LN: 102 | CYCLE: 0 | RULES: () */ 
else_4:			/* LN: 88 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 102 | 
	i0 = xmem[i0]			# LN: 102 | 
	i1 = i7 - (0x2)			# LN: 102 | 
	a0 = xmem[i0]			# LN: 102 | 
	i0 = xmem[i1]			# LN: 102 | 
	a0 = a0 << 1			# LN: 102 | 
	xmem[i0] = a0h			# LN: 102 | 
cline_102_0:			/* LN: 105 | CYCLE: 0 | RULES: () */ 
endif_2:			/* LN: 73 | CYCLE: 0 | RULES: () */ 
endif_4:			/* LN: 88 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 105 | 
	i0 = xmem[i0]			# LN: 105 | 
	i1 = i7 - (0x2)			# LN: 105 | 
	a0 = xmem[i0]			# LN: 105 | 
	i0 = xmem[i1]			# LN: 105 | 
	a0 = a0 >> 1			# LN: 105 | 
	xmem[i0] = a0h			# LN: 105 | 
cline_105_0:			/* LN: 107 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 107 | 
	i0 = xmem[i0]			# LN: 107 | 
	i1 = i7 - (0x2)			# LN: 107 | 
	a0 = xmem[i0]			# LN: 107 | 
	a0 = a0 << 1			# LN: 107 | 
	i0 = xmem[i1]			# LN: 107 | 
	a0 = a0 << 1			# LN: 107 | 
	xmem[i0] = a0h			# LN: 107 | 
cline_107_0:			/* LN: 108 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 108 | 
	i0 = xmem[i0]			# LN: 108 | 
	i1 = i7 - (0x2)			# LN: 108 | 
	i0 += 1			# LN: 108 | 
	xmem[i1] = i0			# LN: 108 | 
cline_108_0:			/* LN: 109 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 109 | 
	i0 = xmem[i0]			# LN: 109 | 
	i1 = i7 - (0x1)			# LN: 109 | 
	i0 += 1			# LN: 109 | 
	xmem[i1] = i0			# LN: 109 | 
cline_109_0:			/* LN: 70 | CYCLE: 0 | RULES: () */ 
init_latch_label_1:			/* LN: 110 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_i + 0]			# LN: 70 | 
	uhalfword(a1) = (0x1)			# LN: 70 | 
	a0 = a0 + a1			# LN: 70 | 
	xmem[_i + 0] = a0h			# LN: 70 | 
	jmp (for_1)			# LN: 70 | 
cline_70_1:			/* LN: 111 | CYCLE: 0 | RULES: () */ 
for_end_1:			/* LN: 70 | CYCLE: 0 | RULES: () */ 
	jmp (_6F2B50)			# LN: 111 | 
cline_48_2:			/* LN: 115 | CYCLE: 0 | RULES: () */ 
case_2:			/* LN: 113 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 115 | 
	xmem[_i + 0] = a0h			# LN: 115 | 
for_2:			/* LN: 115 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_i + 0]			# LN: 115 | 
	uhalfword(a1) = (0x10)			# LN: 115 | 
	a0 - a1			# LN: 115 | 
	if (a >= 0) jmp (for_end_2)			# LN: 115 | 
cline_115_0:			/* LN: 117 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 117 | 
	i0 = xmem[i0]			# LN: 117 | 
	x0 = xmem[_distortion_gain + 0]			# LN: 117 | 
	x1 = xmem[i0]			# LN: 117 | 
	i0 = i7 - (0x2)			# LN: 117 | 
	i0 = xmem[i0]			# LN: 117 | 
	a0 = x1 * x0			# LN: 117 | 
	xmem[i0] = a0			# LN: 117 | 
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
cline_121_0:			/* LN: 115 | CYCLE: 0 | RULES: () */ 
init_latch_label_2:			/* LN: 122 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_i + 0]			# LN: 115 | 
	uhalfword(a1) = (0x1)			# LN: 115 | 
	a0 = a0 + a1			# LN: 115 | 
	xmem[_i + 0] = a0h			# LN: 115 | 
	jmp (for_2)			# LN: 115 | 
cline_115_1:			/* LN: 123 | CYCLE: 0 | RULES: () */ 
for_end_2:			/* LN: 115 | CYCLE: 0 | RULES: () */ 
	jmp (_6F2B50)			# LN: 123 | 
cline_48_3:			/* LN: 127 | CYCLE: 0 | RULES: () */ 
case_3:			/* LN: 125 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 127 | 
	xmem[_i + 0] = a0h			# LN: 127 | 
for_3:			/* LN: 127 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_i + 0]			# LN: 127 | 
	uhalfword(a1) = (0x10)			# LN: 127 | 
	a0 - a1			# LN: 127 | 
	if (a >= 0) jmp (for_end_3)			# LN: 127 | 
cline_127_0:			/* LN: 129 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 129 | 
	i0 = xmem[i0]			# LN: 129 | 
	x0 = xmem[_distortion_gain + 0]			# LN: 129 | 
	x1 = xmem[i0]			# LN: 129 | 
	i0 = i7 - (0x2)			# LN: 129 | 
	i0 = xmem[i0]			# LN: 129 | 
	a0 = x1 * x0			# LN: 129 | 
	xmem[i0] = a0			# LN: 129 | 
cline_129_0:			/* LN: 131 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 131 | 
	i0 = xmem[i0]			# LN: 131 | 
	a0g = xmem[_x + 0]			# LN: 131 | 
	a1 = xmem[i0]			# LN: 131 | 
	a0h = xmem[_x + 1]			# LN: 131 | 
	a0l = xmem[_x + 2]			# LN: 131 | 
	a0 = a0 + a1			# LN: 131 | 
	xmem[_x + 0] = a0g			# LN: 131 | 
	xmem[_x + 1] = a0h			# LN: 131 | 
	xmem[_x + 2] = a0l			# LN: 131 | 
cline_131_0:			/* LN: 132 | CYCLE: 0 | RULES: () */ 
	a0g = xmem[_x + 0]			# LN: 132 | 
	a0h = xmem[_x + 1]			# LN: 132 | 
	i0 = i7 - (0x2)			# LN: 132 | 
	i0 = xmem[i0]			# LN: 132 | 
	a0l = xmem[_x + 2]			# LN: 132 | 
	xmem[i0] = a0			# LN: 132 | 
cline_132_0:			/* LN: 133 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 133 | 
	i0 = xmem[i0]			# LN: 133 | 
	i1 = i7 - (0x2)			# LN: 133 | 
	a0 = xmem[i0]			# LN: 133 | 
	i0 = xmem[i1]			# LN: 133 | 
	a0 = a0 << 1			# LN: 133 | 
	xmem[i0] = a0h			# LN: 133 | 
cline_133_0:			/* LN: 135 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 135 | 
	i0 = xmem[i0]			# LN: 135 | 
	i1 = i7 - (0x2)			# LN: 135 | 
	i0 += 1			# LN: 135 | 
	xmem[i1] = i0			# LN: 135 | 
cline_135_0:			/* LN: 136 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 136 | 
	i0 = xmem[i0]			# LN: 136 | 
	i1 = i7 - (0x1)			# LN: 136 | 
	i0 += 1			# LN: 136 | 
	xmem[i1] = i0			# LN: 136 | 
cline_136_0:			/* LN: 127 | CYCLE: 0 | RULES: () */ 
init_latch_label_3:			/* LN: 137 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_i + 0]			# LN: 127 | 
	uhalfword(a1) = (0x1)			# LN: 127 | 
	a0 = a0 + a1			# LN: 127 | 
	xmem[_i + 0] = a0h			# LN: 127 | 
	jmp (for_3)			# LN: 127 | 
cline_127_1:			/* LN: 138 | CYCLE: 0 | RULES: () */ 
for_end_3:			/* LN: 127 | CYCLE: 0 | RULES: () */ 
	jmp (_6F2B50)			# LN: 138 | 
cline_48_4:			/* LN: 141 | CYCLE: 0 | RULES: () */ 
default_0:			/* LN: 140 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_0)			# LN: 141 | 
cline_141_0:			/* LN: 143 | CYCLE: 0 | RULES: () */ 
_6F2B50:			/* LN: 143 | CYCLE: 0 | RULES: () */ 
switch_end_0:			/* LN: 48 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_220)			# LN: 143 | 
__epilogue_220:			/* LN: 143 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x2)			# LN: 143 | 
	i7 -= 1			# LN: 143 | 
	ret			# LN: 143 | 



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

_main:			/* LN: 219 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 219 | 
	i7 += 1			# LN: 219 | 
	i7 = i7 + (0x20f)			# LN: 219 | 
	i1 = i7 - (0x1)			# LN: 219 | 
	xmem[i1] = a0h			# LN: 219 | 
	i1 = i7 - (0x2)			# LN: 219 | 
	xmem[i1] = i0			# LN: 219 | 
cline_219_0:			/* LN: 233 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 233 | 
	uhalfword(a0) = (0x31)			# LN: 233 | 
	xmem[i0] = a0h			# LN: 233 | 
cline_233_0:			/* LN: 236 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 236 | 
	a0 = 0			# LN: 236 | 
	xmem[i0] = a0h			# LN: 236 | 
	do (0x8), label_end_92			# LN: 236 | 
cline_236_0:			/* LN: 237 | CYCLE: 0 | RULES: () */ 
label_begin_92:			/* LN: 236 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 237 | 
	a1 = xmem[i0]; a0 = 0			# LN: 237, 237 | 
	a1 = a1 << 4			# LN: 237 | 
	i0 = a1			# LN: 237 | 
	uhalfword(a1) = (0x10)			# LN: 237 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 237 | 
	call (_memset)			# LN: 237 | 
cline_237_0:			/* LN: 236 | CYCLE: 0 | RULES: () */ 
init_latch_label_8:			/* LN: 237 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 236 | 
	a0 = xmem[i0]			# LN: 236 | 
	uhalfword(a1) = (0x1)			# LN: 236 | 
	a0 = a0 + a1			# LN: 236 | 
	i0 = i7 - (0x4)			# LN: 236 | 
label_end_92:			# LN: 236 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 236 | 
cline_236_1:			/* LN: 241 | CYCLE: 0 | RULES: () */ 
for_end_8:			/* LN: 236 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (260 - 0)			# LN: 241 | 
	i1 = (0) + (_string_const_0)			# LN: 241 | 
	call (_strcpy)			# LN: 241 | 
cline_241_0:			/* LN: 242 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (260 - 0)			# LN: 242 | 
	call (_cl_wavread_open)			# LN: 242 | 
	AnyReg(i0, a0h)			# LN: 242 | 
	i1 = i7 - (0x105)			# LN: 242 | 
	xmem[i1] = i0			# LN: 242 | 
cline_242_0:			/* LN: 243 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 243 | 
	a0 = xmem[i0]			# LN: 243 | 
	a0 & a0			# LN: 243 | 
	if (a != 0) jmp (else_6)			# LN: 243 | 
cline_243_0:			/* LN: 245 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_1)			# LN: 245 | 
	call (_printf)			# LN: 245 | 
cline_245_0:			/* LN: 246 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 246 | 
	jmp (__epilogue_224)			# LN: 246 | 
cline_246_0:			/* LN: 252 | CYCLE: 0 | RULES: () */ 
endif_6:			/* LN: 243 | CYCLE: 0 | RULES: () */ 
else_6:			/* LN: 243 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 252 | 
	i0 = xmem[i0]			# LN: 252 | 
	call (_cl_wavread_getnchannels)			# LN: 252 | 
	i0 = i7 - (0x106)			# LN: 252 | 
	xmem[i0] = a0h			# LN: 252 | 
cline_252_0:			/* LN: 253 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 253 | 
	i0 = xmem[i0]			# LN: 253 | 
	call (_cl_wavread_bits_per_sample)			# LN: 253 | 
	i0 = i7 - (0x107)			# LN: 253 | 
	xmem[i0] = a0h			# LN: 253 | 
cline_253_0:			/* LN: 254 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 254 | 
	i0 = xmem[i0]			# LN: 254 | 
	call (_cl_wavread_frame_rate)			# LN: 254 | 
	i0 = i7 - (0x108)			# LN: 254 | 
	xmem[i0] = a0h			# LN: 254 | 
cline_254_0:			/* LN: 255 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 255 | 
	i0 = xmem[i0]			# LN: 255 | 
	call (_cl_wavread_number_of_frames)			# LN: 255 | 
	i0 = i7 - (0x109)			# LN: 255 | 
	xmem[i0] = a0h			# LN: 255 | 
cline_255_0:			/* LN: 258 | CYCLE: 0 | RULES: () */ 
switch_2:			/* LN: 258 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 258 | 
	a0 = xmem[i0]			# LN: 258 | 
	uhalfword(a1) = (0x30)			# LN: 258 | 
	a0g = (0x0)			# LN: 258 | 
	a1g = (0x0)			# LN: 258 | 
	a0 - a1			# LN: 258 | 
	if (a == 0) jmp (case_7)			# LN: 258 | 
	i0 = i7 - (0x3)			# LN: 258 | 
	a0 = xmem[i0]			# LN: 258 | 
	uhalfword(a1) = (0x31)			# LN: 258 | 
	a0g = (0x0)			# LN: 258 | 
	a1g = (0x0)			# LN: 258 | 
	a0 - a1			# LN: 258 | 
	if (a == 0) jmp (case_8)			# LN: 258 | 
	i0 = i7 - (0x3)			# LN: 258 | 
	a0 = xmem[i0]			# LN: 258 | 
	uhalfword(a1) = (0x32)			# LN: 258 | 
	a0g = (0x0)			# LN: 258 | 
	a1g = (0x0)			# LN: 258 | 
	a0 - a1			# LN: 258 | 
	if (a == 0) jmp (case_9)			# LN: 258 | 
	jmp (switch_end_2)			# LN: 258 | 
cline_258_0:			/* LN: 261 | CYCLE: 0 | RULES: () */ 
case_7:			/* LN: 260 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x10a)			# LN: 261 | 
	uhalfword(a0) = (0x2)			# LN: 261 | 
	xmem[i0] = a0h			# LN: 261 | 
cline_261_0:			/* LN: 262 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 262 | 
	xmem[_outputMode + 0] = a0h			# LN: 262 | 
cline_262_0:			/* LN: 263 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_2)			# LN: 263 | 
cline_263_0:			/* LN: 265 | CYCLE: 0 | RULES: () */ 
case_8:			/* LN: 264 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x10a)			# LN: 265 | 
	uhalfword(a0) = (0x4)			# LN: 265 | 
	xmem[i0] = a0h			# LN: 265 | 
cline_265_0:			/* LN: 266 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x1)			# LN: 266 | 
	xmem[_outputMode + 0] = a0h			# LN: 266 | 
cline_266_0:			/* LN: 267 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_2)			# LN: 267 | 
cline_267_0:			/* LN: 269 | CYCLE: 0 | RULES: () */ 
case_9:			/* LN: 268 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x10a)			# LN: 269 | 
	uhalfword(a0) = (0x6)			# LN: 269 | 
	xmem[i0] = a0h			# LN: 269 | 
cline_269_0:			/* LN: 270 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x2)			# LN: 270 | 
	xmem[_outputMode + 0] = a0h			# LN: 270 | 
cline_270_0:			/* LN: 271 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_2)			# LN: 271 | 
cline_271_0:			/* LN: 276 | CYCLE: 0 | RULES: () */ 
switch_end_2:			/* LN: 258 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (522 - 0)			# LN: 276 | 
	i1 = (0) + (_string_const_2)			# LN: 276 | 
	call (_strcpy)			# LN: 276 | 
cline_276_0:			/* LN: 277 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (522 - 0)			# LN: 277 | 
	i1 = i7 - (0x107)			# LN: 277 | 
	a0 = xmem[i1]			# LN: 277 | 
	i1 = i7 - (0x10a)			# LN: 277 | 
	a1 = xmem[i1]			# LN: 277 | 
	i1 = i7 - (0x108)			# LN: 277 | 
	b0 = xmem[i1]			# LN: 277 | 
	call (_cl_wavwrite_open)			# LN: 277 | 
	AnyReg(i0, a0h)			# LN: 277 | 
	i1 = i7 - (0x20b)			# LN: 277 | 
	xmem[i1] = i0			# LN: 277 | 
cline_277_0:			/* LN: 278 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 278 | 
	a0 = xmem[i0]			# LN: 278 | 
	a0 & a0			# LN: 278 | 
	if (a != 0) jmp (else_7)			# LN: 278 | 
cline_278_0:			/* LN: 280 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_3)			# LN: 280 | 
	call (_printf)			# LN: 280 | 
cline_280_0:			/* LN: 281 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 281 | 
	jmp (__epilogue_224)			# LN: 281 | 
cline_281_0:			/* LN: 294 | CYCLE: 0 | RULES: () */ 
endif_7:			/* LN: 278 | CYCLE: 0 | RULES: () */ 
else_7:			/* LN: 278 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 294 | 
	a0 = 0			# LN: 294 | 
	xmem[i0] = a0h			# LN: 294 | 
for_9:			/* LN: 294 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x109)			# LN: 294 | 
	a0 = xmem[i0]			# LN: 294 | 
	uhalfword(a1) = (0x10)			# LN: 294 | 
	call (__div)			# LN: 294 | 
	i0 = i7 - (0x20c)			# LN: 294 | 
	a1 = xmem[i0]			# LN: 294 | 
	a1 - a0			# LN: 294 | 
	if (a >= 0) jmp (for_end_9)			# LN: 294 | 
cline_294_0:			/* LN: 296 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 296 | 
	a0 = 0			# LN: 296 | 
	xmem[i0] = a0h			# LN: 296 | 
	do (0x10), label_end_93			# LN: 296 | 
cline_296_0:			/* LN: 298 | CYCLE: 0 | RULES: () */ 
label_begin_93:			/* LN: 296 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20e)			# LN: 298 | 
	a0 = 0			# LN: 298 | 
	xmem[i0] = a0h			# LN: 298 | 
for_11:			/* LN: 298 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20e)			# LN: 298 | 
	a0 = xmem[i0]			# LN: 298 | 
	i0 = i7 - (0x106)			# LN: 298 | 
	a1 = xmem[i0]			# LN: 298 | 
	a0 - a1			# LN: 298 | 
	if (a >= 0) jmp (for_end_11)			# LN: 298 | 
cline_298_0:			/* LN: 300 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 300 | 
	i0 = xmem[i0]			# LN: 300 | 
	call (_cl_wavread_recvsample)			# LN: 300 | 
	i0 = i7 - (0x20f)			# LN: 300 | 
	xmem[i0] = a0h			# LN: 300 | 
cline_300_0:			/* LN: 301 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20e)			# LN: 301 | 
	a0 = xmem[i0]			# LN: 301 | 
	a0 = a0 << 4			# LN: 301 | 
	i0 = a0			# LN: 301 | 
	i1 = i7 - (0x20d)			# LN: 301 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 301 | 
	a0 = xmem[i1]			# LN: 301 | 
	a1 = i0			# LN: 301 | 
	a0 = a1 + a0			# LN: 301 | 
	AnyReg(i0, a0h)			# LN: 301 | 
	i1 = i7 - (0x20f)			# LN: 301 | 
	a0 = xmem[i1]			# LN: 301 | 
	xmem[i0] = a0h			# LN: 301 | 
cline_301_0:			/* LN: 298 | CYCLE: 0 | RULES: () */ 
init_latch_label_9:			/* LN: 302 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20e)			# LN: 298 | 
	a0 = xmem[i0]			# LN: 298 | 
	uhalfword(a1) = (0x1)			# LN: 298 | 
	a0 = a0 + a1			# LN: 298 | 
	i0 = i7 - (0x20e)			# LN: 298 | 
	xmem[i0] = a0h			# LN: 298 | 
	jmp (for_11)			# LN: 298 | 
cline_298_1:			/* LN: 296 | CYCLE: 0 | RULES: () */ 
init_latch_label_10:			/* LN: 303 | CYCLE: 0 | RULES: () */ 
for_end_11:			/* LN: 298 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 296 | 
	a0 = xmem[i0]			# LN: 296 | 
	uhalfword(a1) = (0x1)			# LN: 296 | 
	a0 = a0 + a1			# LN: 296 | 
	i0 = i7 - (0x20d)			# LN: 296 | 
label_end_93:			# LN: 296 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 296 | 
cline_296_1:			/* LN: 305 | CYCLE: 0 | RULES: () */ 
for_end_10:			/* LN: 296 | CYCLE: 0 | RULES: () */ 
	call (_processing)			# LN: 305 | 
cline_305_0:			/* LN: 307 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 307 | 
	a0 = 0			# LN: 307 | 
	xmem[i0] = a0h			# LN: 307 | 
	do (0x10), label_end_94			# LN: 307 | 
cline_307_0:			/* LN: 309 | CYCLE: 0 | RULES: () */ 
label_begin_94:			/* LN: 307 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20e)			# LN: 309 | 
	a0 = 0			# LN: 309 | 
	xmem[i0] = a0h			# LN: 309 | 
for_13:			/* LN: 309 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20e)			# LN: 309 | 
	a0 = xmem[i0]			# LN: 309 | 
	i0 = i7 - (0x106)			# LN: 309 | 
	a1 = xmem[i0]			# LN: 309 | 
	a0 - a1			# LN: 309 | 
	if (a >= 0) jmp (for_end_13)			# LN: 309 | 
cline_309_0:			/* LN: 311 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20e)			# LN: 311 | 
	a0 = xmem[i0]			# LN: 311 | 
	a0 = a0 << 4			# LN: 311 | 
	i0 = a0			# LN: 311 | 
	i1 = i7 - (0x20d)			# LN: 311 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 311 | 
	a0 = xmem[i1]			# LN: 311 | 
	a1 = i0			# LN: 311 | 
	a0 = a1 + a0			# LN: 311 | 
	AnyReg(i0, a0h)			# LN: 311 | 
	i1 = i7 - (0x20f)			# LN: 311 | 
	a0 = xmem[i0]			# LN: 311 | 
	xmem[i1] = a0h			# LN: 311 | 
cline_311_0:			/* LN: 312 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 312 | 
	i1 = i7 - (0x20f)			# LN: 312 | 
	a0 = xmem[i1]			# LN: 312 | 
	i0 = xmem[i0]			# LN: 312 | 
	call (_cl_wavwrite_sendsample)			# LN: 312 | 
cline_312_0:			/* LN: 309 | CYCLE: 0 | RULES: () */ 
init_latch_label_11:			/* LN: 313 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20e)			# LN: 309 | 
	a0 = xmem[i0]			# LN: 309 | 
	uhalfword(a1) = (0x1)			# LN: 309 | 
	a0 = a0 + a1			# LN: 309 | 
	i0 = i7 - (0x20e)			# LN: 309 | 
	xmem[i0] = a0h			# LN: 309 | 
	jmp (for_13)			# LN: 309 | 
cline_309_1:			/* LN: 307 | CYCLE: 0 | RULES: () */ 
init_latch_label_12:			/* LN: 314 | CYCLE: 0 | RULES: () */ 
for_end_13:			/* LN: 309 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 307 | 
	a0 = xmem[i0]			# LN: 307 | 
	uhalfword(a1) = (0x1)			# LN: 307 | 
	a0 = a0 + a1			# LN: 307 | 
	i0 = i7 - (0x20d)			# LN: 307 | 
label_end_94:			# LN: 307 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 307 | 
cline_307_1:			/* LN: 294 | CYCLE: 0 | RULES: () */ 
init_latch_label_13:			/* LN: 315 | CYCLE: 0 | RULES: () */ 
for_end_12:			/* LN: 307 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 294 | 
	a0 = xmem[i0]			# LN: 294 | 
	uhalfword(a1) = (0x1)			# LN: 294 | 
	a0 = a0 + a1			# LN: 294 | 
	i0 = i7 - (0x20c)			# LN: 294 | 
	xmem[i0] = a0h			# LN: 294 | 
	jmp (for_9)			# LN: 294 | 
cline_294_1:			/* LN: 320 | CYCLE: 0 | RULES: () */ 
for_end_9:			/* LN: 294 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 320 | 
	i0 = xmem[i0]			# LN: 320 | 
	call (_cl_wavread_close)			# LN: 320 | 
cline_320_0:			/* LN: 321 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 321 | 
	i0 = xmem[i0]			# LN: 321 | 
	call (_cl_wavwrite_close)			# LN: 321 | 
cline_321_0:			/* LN: 324 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 324 | 
	jmp (__epilogue_224)			# LN: 324 | 
cline_324_0:			/* LN: 325 | CYCLE: 0 | RULES: () */ 
__epilogue_224:			/* LN: 325 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x20f)			# LN: 325 | 
	i7 -= 1			# LN: 325 | 
	ret			# LN: 325 | 



_processing:			/* LN: 145 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 145 | 
	i7 += 1			# LN: 145 | 
cline_145_0:			/* LN: 147 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 0)			# LN: 147 | 
	xmem[_leftInput + 0] = i0			# LN: 147 | 
cline_147_0:			/* LN: 148 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 16)			# LN: 148 | 
	xmem[_rightInput + 0] = i0			# LN: 148 | 
cline_148_0:			/* LN: 150 | CYCLE: 0 | RULES: () */ 
switch_1:			/* LN: 150 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_outputMode + 0]			# LN: 150 | 
	a0 & a0			# LN: 150 | 
	if (a == 0) jmp (case_4)			# LN: 150 | 
	a0 = xmem[_outputMode + 0]			# LN: 150 | 
	uhalfword(a1) = (0x1)			# LN: 150 | 
	a0 - a1			# LN: 150 | 
	if (a == 0) jmp (case_5)			# LN: 150 | 
	a0 = xmem[_outputMode + 0]			# LN: 150 | 
	uhalfword(a1) = (0x2)			# LN: 150 | 
	a0 - a1			# LN: 150 | 
	if (a == 0) jmp (case_6)			# LN: 150 | 
	jmp (switch_end_1)			# LN: 150 | 
cline_150_0:			/* LN: 153 | CYCLE: 0 | RULES: () */ 
case_4:			/* LN: 152 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 153 | 
	xmem[_i + 0] = a0h			# LN: 153 | 
for_4:			/* LN: 153 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_i + 0]			# LN: 153 | 
	uhalfword(a1) = (0x10)			# LN: 153 | 
	a0 - a1			# LN: 153 | 
	if (a >= 0) jmp (for_end_4)			# LN: 153 | 
cline_153_0:			/* LN: 155 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_leftInput + 0]			# LN: 155 | 
	x0 = ymem[_numGain + 0]			# LN: 155 | 
	x1 = xmem[i0]			# LN: 155 | 
	i0 = (0) + (_leftInput)			# LN: 155 | 
	i0 = xmem[i0]			# LN: 155 | 
	a0 = x1 * x0			# LN: 155 | 
	xmem[i0] = a0			# LN: 155 | 
cline_155_0:			/* LN: 156 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_rightInput + 0]			# LN: 156 | 
	x0 = ymem[_numGain + 0]			# LN: 156 | 
	x1 = xmem[i0]			# LN: 156 | 
	i0 = (0) + (_rightInput)			# LN: 156 | 
	i0 = xmem[i0]			# LN: 156 | 
	a0 = x1 * x0			# LN: 156 | 
	xmem[i0] = a0			# LN: 156 | 
cline_156_0:			/* LN: 157 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_leftInput + 0]			# LN: 157 | 
	nop #empty cycle
	i0 += 1			# LN: 157 | 
	xmem[_leftInput + 0] = i0			# LN: 157 | 
cline_157_0:			/* LN: 158 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_rightInput + 0]			# LN: 158 | 
	nop #empty cycle
	i0 += 1			# LN: 158 | 
	xmem[_rightInput + 0] = i0			# LN: 158 | 
cline_158_0:			/* LN: 153 | CYCLE: 0 | RULES: () */ 
init_latch_label_4:			/* LN: 159 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_i + 0]			# LN: 153 | 
	uhalfword(a1) = (0x1)			# LN: 153 | 
	a0 = a0 + a1			# LN: 153 | 
	xmem[_i + 0] = a0h			# LN: 153 | 
	jmp (for_4)			# LN: 153 | 
cline_153_1:			/* LN: 160 | CYCLE: 0 | RULES: () */ 
for_end_4:			/* LN: 153 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_1)			# LN: 160 | 
cline_160_0:			/* LN: 163 | CYCLE: 0 | RULES: () */ 
case_5:			/* LN: 161 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 32)			# LN: 163 | 
	xmem[_lsOutput + 0] = i0			# LN: 163 | 
cline_163_0:			/* LN: 164 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 48)			# LN: 164 | 
	xmem[_rsOutput + 0] = i0			# LN: 164 | 
cline_164_0:			/* LN: 166 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 166 | 
	xmem[_i + 0] = a0h			# LN: 166 | 
for_5:			/* LN: 166 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_i + 0]			# LN: 166 | 
	uhalfword(a1) = (0x10)			# LN: 166 | 
	a0 - a1			# LN: 166 | 
	if (a >= 0) jmp (for_end_5)			# LN: 166 | 
cline_166_0:			/* LN: 168 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_leftInput + 0]			# LN: 168 | 
	x0 = ymem[_numGain + 0]			# LN: 168 | 
	x1 = xmem[i0]			# LN: 168 | 
	i0 = (0) + (_leftInput)			# LN: 168 | 
	i0 = xmem[i0]			# LN: 168 | 
	a0 = x1 * x0			# LN: 168 | 
	xmem[i0] = a0			# LN: 168 | 
cline_168_0:			/* LN: 169 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_rightInput + 0]			# LN: 169 | 
	x0 = ymem[_numGain + 0]			# LN: 169 | 
	x1 = xmem[i0]			# LN: 169 | 
	i0 = (0) + (_rightInput)			# LN: 169 | 
	i0 = xmem[i0]			# LN: 169 | 
	a0 = x1 * x0			# LN: 169 | 
	xmem[i0] = a0			# LN: 169 | 
cline_169_0:			/* LN: 170 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_leftInput + 0]			# LN: 170 | 
	nop #empty cycle
	i0 += 1			# LN: 170 | 
	xmem[_leftInput + 0] = i0			# LN: 170 | 
cline_170_0:			/* LN: 171 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_rightInput + 0]			# LN: 171 | 
	nop #empty cycle
	i0 += 1			# LN: 171 | 
	xmem[_rightInput + 0] = i0			# LN: 171 | 
cline_171_0:			/* LN: 166 | CYCLE: 0 | RULES: () */ 
init_latch_label_5:			/* LN: 172 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_i + 0]			# LN: 166 | 
	uhalfword(a1) = (0x1)			# LN: 166 | 
	a0 = a0 + a1			# LN: 166 | 
	xmem[_i + 0] = a0h			# LN: 166 | 
	jmp (for_5)			# LN: 166 | 
cline_166_1:			/* LN: 174 | CYCLE: 0 | RULES: () */ 
for_end_5:			/* LN: 166 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 0)			# LN: 174 | 
	xmem[_leftInput + 0] = i0			# LN: 174 | 
cline_174_0:			/* LN: 175 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 16)			# LN: 175 | 
	xmem[_rightInput + 0] = i0			# LN: 175 | 
cline_175_0:			/* LN: 177 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_leftInput + 0]			# LN: 177 | 
	i1 = xmem[_lsOutput + 0]			# LN: 177 | 
	call (_distortion)			# LN: 177 | 
cline_177_0:			/* LN: 178 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_rightInput + 0]			# LN: 178 | 
	i1 = xmem[_rsOutput + 0]			# LN: 178 | 
	call (_distortion)			# LN: 178 | 
cline_178_0:			/* LN: 180 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_1)			# LN: 180 | 
cline_180_0:			/* LN: 183 | CYCLE: 0 | RULES: () */ 
case_6:			/* LN: 181 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 32)			# LN: 183 | 
	xmem[_lsOutput + 0] = i0			# LN: 183 | 
cline_183_0:			/* LN: 184 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 48)			# LN: 184 | 
	xmem[_rsOutput + 0] = i0			# LN: 184 | 
cline_184_0:			/* LN: 185 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 64)			# LN: 185 | 
	xmem[_centralOutput + 0] = i0			# LN: 185 | 
cline_185_0:			/* LN: 186 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 80)			# LN: 186 | 
	xmem[_lfeOutput + 0] = i0			# LN: 186 | 
cline_186_0:			/* LN: 188 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 188 | 
	xmem[_i + 0] = a0h			# LN: 188 | 
for_6:			/* LN: 188 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_i + 0]			# LN: 188 | 
	uhalfword(a1) = (0x10)			# LN: 188 | 
	a0 - a1			# LN: 188 | 
	if (a >= 0) jmp (for_end_6)			# LN: 188 | 
cline_188_0:			/* LN: 190 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_leftInput + 0]			# LN: 190 | 
	x0 = ymem[_numGain + 0]			# LN: 190 | 
	x1 = xmem[i0]			# LN: 190 | 
	i0 = (0) + (_leftInput)			# LN: 190 | 
	i0 = xmem[i0]			# LN: 190 | 
	a0 = x1 * x0			# LN: 190 | 
	xmem[i0] = a0			# LN: 190 | 
cline_190_0:			/* LN: 191 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_rightInput + 0]			# LN: 191 | 
	x0 = ymem[_numGain + 0]			# LN: 191 | 
	x1 = xmem[i0]			# LN: 191 | 
	i0 = (0) + (_rightInput)			# LN: 191 | 
	i0 = xmem[i0]			# LN: 191 | 
	a0 = x1 * x0			# LN: 191 | 
	xmem[i0] = a0			# LN: 191 | 
cline_191_0:			/* LN: 192 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_rightInput + 0]			# LN: 192 | 
	i1 = xmem[_leftInput + 0]			# LN: 192 | 
	a0 = xmem[i0]			# LN: 192 | 
	a1 = xmem[i1]			# LN: 192 | 
	i0 = (0) + (_centralOutput)			# LN: 192 | 
	i0 = xmem[i0]			# LN: 192 | 
	a0 = a0 + a1			# LN: 192 | 
	xmem[i0] = a0h			# LN: 192 | 
cline_192_0:			/* LN: 193 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_centralOutput + 0]			# LN: 193 | 
	nop #empty cycle
	i0 += 1			# LN: 193 | 
	xmem[_centralOutput + 0] = i0			# LN: 193 | 
cline_193_0:			/* LN: 194 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_leftInput + 0]			# LN: 194 | 
	nop #empty cycle
	i0 += 1			# LN: 194 | 
	xmem[_leftInput + 0] = i0			# LN: 194 | 
cline_194_0:			/* LN: 195 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_rightInput + 0]			# LN: 195 | 
	nop #empty cycle
	i0 += 1			# LN: 195 | 
	xmem[_rightInput + 0] = i0			# LN: 195 | 
cline_195_0:			/* LN: 188 | CYCLE: 0 | RULES: () */ 
init_latch_label_6:			/* LN: 196 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_i + 0]			# LN: 188 | 
	uhalfword(a1) = (0x1)			# LN: 188 | 
	a0 = a0 + a1			# LN: 188 | 
	xmem[_i + 0] = a0h			# LN: 188 | 
	jmp (for_6)			# LN: 188 | 
cline_188_1:			/* LN: 198 | CYCLE: 0 | RULES: () */ 
for_end_6:			/* LN: 188 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 0)			# LN: 198 | 
	xmem[_leftInput + 0] = i0			# LN: 198 | 
cline_198_0:			/* LN: 199 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 16)			# LN: 199 | 
	xmem[_rightInput + 0] = i0			# LN: 199 | 
cline_199_0:			/* LN: 201 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_leftInput + 0]			# LN: 201 | 
	i1 = xmem[_lsOutput + 0]			# LN: 201 | 
	call (_distortion)			# LN: 201 | 
cline_201_0:			/* LN: 202 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_rightInput + 0]			# LN: 202 | 
	i1 = xmem[_rsOutput + 0]			# LN: 202 | 
	call (_distortion)			# LN: 202 | 
cline_202_0:			/* LN: 204 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 204 | 
	xmem[_i + 0] = a0h			# LN: 204 | 
for_7:			/* LN: 204 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_i + 0]			# LN: 204 | 
	uhalfword(a1) = (0x10)			# LN: 204 | 
	a0 - a1			# LN: 204 | 
	if (a >= 0) jmp (for_end_7)			# LN: 204 | 
cline_204_0:			/* LN: 206 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_lsOutput + 0]			# LN: 206 | 
	i1 = xmem[_rsOutput + 0]			# LN: 206 | 
	a0 = xmem[i0]			# LN: 206 | 
	a1 = xmem[i1]			# LN: 206 | 
	i0 = (0) + (_lfeOutput)			# LN: 206 | 
	i0 = xmem[i0]			# LN: 206 | 
	a0 = a0 + a1			# LN: 206 | 
	xmem[i0] = a0h			# LN: 206 | 
cline_206_0:			/* LN: 207 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_lfeOutput + 0]			# LN: 207 | 
	nop #empty cycle
	i0 += 1			# LN: 207 | 
	xmem[_lfeOutput + 0] = i0			# LN: 207 | 
cline_207_0:			/* LN: 208 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_lsOutput + 0]			# LN: 208 | 
	nop #empty cycle
	i0 += 1			# LN: 208 | 
	xmem[_lsOutput + 0] = i0			# LN: 208 | 
cline_208_0:			/* LN: 209 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_rsOutput + 0]			# LN: 209 | 
	nop #empty cycle
	i0 += 1			# LN: 209 | 
	xmem[_rsOutput + 0] = i0			# LN: 209 | 
cline_209_0:			/* LN: 204 | CYCLE: 0 | RULES: () */ 
init_latch_label_7:			/* LN: 210 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_i + 0]			# LN: 204 | 
	uhalfword(a1) = (0x1)			# LN: 204 | 
	a0 = a0 + a1			# LN: 204 | 
	xmem[_i + 0] = a0h			# LN: 204 | 
	jmp (for_7)			# LN: 204 | 
cline_204_1:			/* LN: 212 | CYCLE: 0 | RULES: () */ 
for_end_7:			/* LN: 204 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_1)			# LN: 212 | 
cline_212_0:			/* LN: 215 | CYCLE: 0 | RULES: () */ 
switch_end_1:			/* LN: 150 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_222)			# LN: 215 | 
cline_215_0:			/* LN: 216 | CYCLE: 0 | RULES: () */ 
__epilogue_222:			/* LN: 216 | CYCLE: 0 | RULES: () */ 
	i7 -= 1			# LN: 216 | 
	ret			# LN: 216 | 
