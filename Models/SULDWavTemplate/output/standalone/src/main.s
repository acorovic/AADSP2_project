	.public _centralOutput
	.public _distortion_gain
	.public _enable
	.public _hard_clip_threshold
	.public _input_distortion
	.public _leftInput
	.public _lfeOutput
	.public _lsOutput
	.public _n_hard_clip_threshold
	.public _n_soft_clip_threshold1
	.public _n_soft_clip_threshold2
	.public _numGain
	.public _outputMode
	.public _output_distortion
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
	.dw _sampleBuffer+64
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
_input_distortion
	.bss (0x1)
	.xdata_ovly
_leftInput
	.dw _sampleBuffer
	.xdata_ovly
_lfeOutput
	.dw _sampleBuffer+80
	.xdata_ovly
_lsOutput
	.dw _sampleBuffer+32
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
_output_distortion
	.bss (0x1)
	.xdata_ovly
_rightInput
	.dw _sampleBuffer+16
	.xdata_ovly
_rsOutput
	.dw _sampleBuffer+48
	.xdata_ovly align 16
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
	.dw  (0x0)
	.xdata_ovly
_x
	.bss (0x3)
	.code_ovly



switch_0:			/* LN: 56 | CYCLE: 0 | RULES: () */ 
_distortion:			/* LN: 52 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_type + 0]			# LN: 56 | 
	a0 & a0			# LN: 56 | 
	if (a == 0) jmp (case_0)			# LN: 56 | 
	a0 = xmem[_type + 0]			# LN: 56 | 
	uhalfword(a1) = (0x1)			# LN: 56 | 
	a0 - a1			# LN: 56 | 
	if (a == 0) jmp (case_1)			# LN: 56 | 
	a0 = xmem[_type + 0]			# LN: 56 | 
	uhalfword(a1) = (0x2)			# LN: 56 | 
	a0 - a1			# LN: 56 | 
	if (a == 0) jmp (case_2)			# LN: 56 | 
	a0 = xmem[_type + 0]			# LN: 56 | 
	uhalfword(a1) = (0x3)			# LN: 56 | 
	a0 - a1			# LN: 56 | 
	if (a == 0) jmp (case_3)			# LN: 56 | 
	jmp (__epilogue_222)			# LN: 163 | 
case_0:			/* LN: 57 | CYCLE: 0 | RULES: () */ 
	do (0x10), label_end_92			# LN: 59 | 
label_begin_92:			/* LN: 59 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_input_distortion + 0]			# LN: 61 | 
	x0 = xmem[_distortion_gain + 0]			# LN: 61 | 
	x1 = xmem[i0]			# LN: 61 | 
	i0 = (0) + (_output_distortion)			# LN: 61 | 
	i0 = xmem[i0]			# LN: 61 | 
	a0 = x1 * x0			# LN: 61 | 
	xmem[i0] = a0			# LN: 61 | 
	i0 = xmem[_output_distortion + 0]			# LN: 62 | 
	a0 = (0x1000)			# LN: 62 | 
	a1 = xmem[i0]			# LN: 62 | 
	a1 - a0			# LN: 62 | 
	if (a <= 0) jmp (else_0)			# LN: 62 | 
	i0 = (0) + (_output_distortion)			# LN: 64 | 
	i0 = xmem[i0]			# LN: 64 | 
	a0 = (0x1000)			# LN: 64 | 
	xmem[i0] = a0h			# LN: 64 | 
	jmp (endif_0)			# LN: 64 | 
else_0:			/* LN: 62 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 66 | 
	a0 = (0xf000)			# LN: 66 | 
	a1 = xmem[i0]			# LN: 66 | 
	a1 - a0			# LN: 66 | 
	if (a >= 0) jmp (else_1)			# LN: 66 | 
	i0 = (0) + (_output_distortion)			# LN: 68 | 
	i0 = xmem[i0]			# LN: 68 | 
	a0 = (0xf000)			# LN: 68 | 
	xmem[i0] = a0h			# LN: 68 | 
endif_0:			/* LN: 62 | CYCLE: 0 | RULES: () */ 
endif_1:			/* LN: 66 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 66 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 70 | 
	i1 = (0) + (_output_distortion)			# LN: 70 | 
	a0 = xmem[i0]			# LN: 70 | 
	a0 = a0 << 1			# LN: 70 | 
	i0 = xmem[i1]			# LN: 70 | 
	a0 = a0 << 1			# LN: 70 | 
	xmem[i0] = a0h			# LN: 70 | 
	i0 = xmem[_output_distortion + 0]			# LN: 71 | 
	nop #empty cycle
	i0 += 1			# LN: 71 | 
	xmem[_output_distortion + 0] = i0			# LN: 71 | 
	i0 = xmem[_input_distortion + 0]			# LN: 72 | 
	nop #empty cycle
	i0 += 1			# LN: 72 | 
label_end_92:			# LN: 59 | CYCLE: 14 | RULES: ()
	xmem[_input_distortion + 0] = i0			# LN: 72 | 
for_end_0:			/* LN: 59 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_222)			# LN: 74 | 
case_1:			/* LN: 76 | CYCLE: 0 | RULES: () */ 
	do (0x10), label_end_93			# LN: 78 | 
label_begin_93:			/* LN: 78 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_input_distortion + 0]			# LN: 80 | 
	x0 = xmem[_distortion_gain + 0]			# LN: 80 | 
	x1 = xmem[i0]			# LN: 80 | 
	i0 = (0) + (_output_distortion)			# LN: 80 | 
	i0 = xmem[i0]			# LN: 80 | 
	a0 = x1 * x0			# LN: 80 | 
	xmem[i0] = a0			# LN: 80 | 
	i0 = xmem[_output_distortion + 0]			# LN: 81 | 
	a0 = xmem[__extractedConst_0_1 + 0]			# LN: 81 | 
	a1 = xmem[i0]			# LN: 81 | 
	a1 - a0			# LN: 81 | 
	if (a <= 0) jmp (else_2)			# LN: 81 | 
	i0 = xmem[_output_distortion + 0]			# LN: 83 | 
	a0 = xmem[__extractedConst_1_0 + 0]			# LN: 83 | 
	a1 = xmem[i0]			# LN: 83 | 
	a1 - a0			# LN: 83 | 
	if (a <= 0) jmp (else_3)			# LN: 83 | 
	i0 = (0) + (_output_distortion)			# LN: 86 | 
	i0 = xmem[i0]			# LN: 86 | 
	a0 = (0x1000)			# LN: 86 | 
	xmem[i0] = a0h			# LN: 86 | 
	jmp (endif_4)			# LN: 86 | 
else_3:			/* LN: 83 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 90 | 
	i1 = xmem[_output_distortion + 0]			# LN: 90 | 
	a0 = xmem[i0]			# LN: 90 | 
	b0 = xmem[i1]			# LN: 90 | 
	a1 =+ b0			# LN: 90 | 
	call (__mul_sat_laccum)			# LN: 90 | 
	xmem[_soft_pow + 0] = a0g			# LN: 90 | 
	xmem[_soft_pow + 1] = a0h			# LN: 90 | 
	xmem[_soft_pow + 2] = a0l			# LN: 90 | 
	b0g = xmem[_soft_pow + 0]			# LN: 91 | 
	b0h = xmem[_soft_pow + 1]			# LN: 91 | 
	uhalfword(a0) = (0xc)			# LN: 91 | 
	b0l = xmem[_soft_pow + 2]			# LN: 91 | 
	call (__int_to_laccum)			# LN: 91 | 
	a1 =+ b0; b1 =+ a0			# LN: 91, 91 | 
	a0 =+ b1			# LN: 91 | 
	call (__mul_sat_laccum)			# LN: 91 | 
	xmem[_soft_pow + 0] = a0g			# LN: 91 | 
	xmem[_soft_pow + 1] = a0h			# LN: 91 | 
	xmem[_soft_pow + 2] = a0l			# LN: 91 | 
	i0 = xmem[_output_distortion + 0]			# LN: 92 | 
	i1 = (0) + (_output_distortion)			# LN: 93 | 
	a0 = xmem[i0]			# LN: 92 | 
	a0 = a0 << 1			# LN: 92 | 
	a0 = a0 << 1			# LN: 92 | 
	xmem[_soft_mul + 0] = a0g			# LN: 92 | 
	xmem[_soft_mul + 1] = a0h			# LN: 92 | 
	xmem[_soft_mul + 2] = a0l			# LN: 92 | 
	a0 = xmem[__extractedConst_2_1 + 0]			# LN: 93 | 
	a1g = xmem[_soft_mul + 0]			# LN: 93 | 
	a1h = xmem[_soft_mul + 1]			# LN: 93 | 
	a1l = xmem[_soft_mul + 2]			# LN: 93 | 
	a0 = a0 + a1			# LN: 93 | 
	a1g = xmem[_soft_pow + 0]			# LN: 93 | 
	a1h = xmem[_soft_pow + 1]			# LN: 93 | 
	a1l = xmem[_soft_pow + 2]			# LN: 93 | 
	i0 = xmem[i1]			# LN: 93 | 
	a0 = a0 - a1			# LN: 93 | 
	xmem[i0] = a0			# LN: 93 | 
	jmp (endif_4)			# LN: 93 | 
else_2:			/* LN: 81 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 99 | 
	a0 = xmem[__extractedConst_2_1 + 0]			# LN: 99 | 
	a1 = xmem[i0]			# LN: 99 | 
	a1 - a0			# LN: 99 | 
	if (a >= 0) jmp (else_4)			# LN: 99 | 
	i0 = xmem[_output_distortion + 0]			# LN: 101 | 
	a0 = xmem[__extractedConst_3_0 + 0]			# LN: 101 | 
	a1 = xmem[i0]			# LN: 101 | 
	a1 - a0			# LN: 101 | 
	if (a >= 0) jmp (else_5)			# LN: 101 | 
	i0 = (0) + (_output_distortion)			# LN: 104 | 
	i0 = xmem[i0]			# LN: 104 | 
	a0 = (0xf000)			# LN: 104 | 
	xmem[i0] = a0h			# LN: 104 | 
	jmp (endif_4)			# LN: 104 | 
else_5:			/* LN: 101 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 108 | 
	i1 = xmem[_output_distortion + 0]			# LN: 108 | 
	a0 = xmem[i0]			# LN: 108 | 
	b0 = xmem[i1]			# LN: 108 | 
	a1 =+ b0			# LN: 108 | 
	call (__mul_sat_laccum)			# LN: 108 | 
	xmem[_soft_pow + 0] = a0g			# LN: 108 | 
	xmem[_soft_pow + 1] = a0h			# LN: 108 | 
	xmem[_soft_pow + 2] = a0l			# LN: 108 | 
	b0g = xmem[_soft_pow + 0]			# LN: 109 | 
	b0h = xmem[_soft_pow + 1]			# LN: 109 | 
	uhalfword(a0) = (0xc)			# LN: 109 | 
	b0l = xmem[_soft_pow + 2]			# LN: 109 | 
	call (__int_to_laccum)			# LN: 109 | 
	a1 =+ b0; b1 =+ a0			# LN: 109, 109 | 
	a0 =+ b1			# LN: 109 | 
	call (__mul_sat_laccum)			# LN: 109 | 
	xmem[_soft_pow + 0] = a0g			# LN: 109 | 
	xmem[_soft_pow + 1] = a0h			# LN: 109 | 
	xmem[_soft_pow + 2] = a0l			# LN: 109 | 
	i0 = xmem[_output_distortion + 0]			# LN: 110 | 
	i1 = (0) + (_output_distortion)			# LN: 111 | 
	a0 = xmem[i0]			# LN: 110 | 
	a0 = a0 << 1			# LN: 110 | 
	a0 = a0 << 1			# LN: 110 | 
	xmem[_soft_mul + 0] = a0g			# LN: 110 | 
	xmem[_soft_mul + 1] = a0h			# LN: 110 | 
	xmem[_soft_mul + 2] = a0l			# LN: 110 | 
	a0 = xmem[__extractedConst_0_1 + 0]			# LN: 111 | 
	a1g = xmem[_soft_mul + 0]			# LN: 111 | 
	a1h = xmem[_soft_mul + 1]			# LN: 111 | 
	a1l = xmem[_soft_mul + 2]			# LN: 111 | 
	a0 = a0 + a1			# LN: 111 | 
	a1g = xmem[_soft_pow + 0]			# LN: 111 | 
	a1h = xmem[_soft_pow + 1]			# LN: 111 | 
	a1l = xmem[_soft_pow + 2]			# LN: 111 | 
	i0 = xmem[i1]			# LN: 111 | 
	a0 = a0 + a1			# LN: 111 | 
	xmem[i0] = a0			# LN: 111 | 
	jmp (endif_4)			# LN: 111 | 
else_4:			/* LN: 99 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 117 | 
	i1 = (0) + (_output_distortion)			# LN: 117 | 
	a0 = xmem[i0]			# LN: 117 | 
	i0 = xmem[i1]			# LN: 117 | 
	a0 = a0 << 1			# LN: 117 | 
	xmem[i0] = a0h			# LN: 117 | 
endif_2:			/* LN: 81 | CYCLE: 0 | RULES: () */ 
endif_4:			/* LN: 99 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 120 | 
	i1 = (0) + (_output_distortion)			# LN: 120 | 
	a0 = xmem[i0]			# LN: 120 | 
	i0 = xmem[i1]			# LN: 120 | 
	a0 = a0 >> 1			# LN: 120 | 
	xmem[i0] = a0h			# LN: 120 | 
	i0 = xmem[_output_distortion + 0]			# LN: 122 | 
	i1 = (0) + (_output_distortion)			# LN: 122 | 
	a0 = xmem[i0]			# LN: 122 | 
	a0 = a0 << 1			# LN: 122 | 
	i0 = xmem[i1]			# LN: 122 | 
	a0 = a0 << 1			# LN: 122 | 
	xmem[i0] = a0h			# LN: 122 | 
	i0 = xmem[_output_distortion + 0]			# LN: 123 | 
	nop #empty cycle
	i0 += 1			# LN: 123 | 
	xmem[_output_distortion + 0] = i0			# LN: 123 | 
	i0 = xmem[_input_distortion + 0]			# LN: 124 | 
	nop #empty cycle
	i0 += 1			# LN: 124 | 
label_end_93:			# LN: 78 | CYCLE: 20 | RULES: ()
	xmem[_input_distortion + 0] = i0			# LN: 124 | 
for_end_1:			/* LN: 78 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_222)			# LN: 126 | 
case_2:			/* LN: 128 | CYCLE: 0 | RULES: () */ 
	do (0x10), label_end_94			# LN: 130 | 
label_begin_94:			/* LN: 130 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_input_distortion + 0]			# LN: 132 | 
	x0 = xmem[_distortion_gain + 0]			# LN: 132 | 
	x1 = xmem[i0]			# LN: 132 | 
	i0 = (0) + (_output_distortion)			# LN: 132 | 
	i0 = xmem[i0]			# LN: 132 | 
	a0 = x1 * x0			# LN: 132 | 
	xmem[i0] = a0			# LN: 132 | 
	i0 = xmem[_output_distortion + 0]			# LN: 133 | 
	nop #empty cycle
	a0 = xmem[i0]			# LN: 133 | 
	a0 & a0			# LN: 133 | 
	if (a >= 0) jmp (else_6)			# LN: 133 | 
	i0 = xmem[_output_distortion + 0]			# LN: 135 | 
	i1 = (0) + (_output_distortion)			# LN: 135 | 
	a0 = xmem[i0]			# LN: 135 | 
	i0 = xmem[i1]			# LN: 135 | 
	a0 =- a0			# LN: 135 | 
	xmem[i0] = a0h			# LN: 135 | 
endif_6:			/* LN: 133 | CYCLE: 0 | RULES: () */ 
else_6:			/* LN: 133 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 138 | 
	i1 = (0) + (_output_distortion)			# LN: 138 | 
	a0 = xmem[i0]			# LN: 138 | 
	a0 = a0 << 1			# LN: 138 | 
	i0 = xmem[i1]			# LN: 138 | 
	a0 = a0 << 1			# LN: 138 | 
	xmem[i0] = a0h			# LN: 138 | 
	i0 = xmem[_output_distortion + 0]			# LN: 139 | 
	nop #empty cycle
	i0 += 1			# LN: 139 | 
	xmem[_output_distortion + 0] = i0			# LN: 139 | 
	i0 = xmem[_input_distortion + 0]			# LN: 140 | 
	nop #empty cycle
	i0 += 1			# LN: 140 | 
label_end_94:			# LN: 130 | CYCLE: 14 | RULES: ()
	xmem[_input_distortion + 0] = i0			# LN: 140 | 
for_end_2:			/* LN: 130 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_222)			# LN: 142 | 
case_3:			/* LN: 144 | CYCLE: 0 | RULES: () */ 
	do (0x10), label_end_95			# LN: 146 | 
label_begin_95:			/* LN: 146 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_input_distortion + 0]			# LN: 148 | 
	x0 = xmem[_distortion_gain + 0]			# LN: 148 | 
	x1 = xmem[i0]			# LN: 148 | 
	i0 = (0) + (_output_distortion)			# LN: 148 | 
	i0 = xmem[i0]			# LN: 148 | 
	a0 = x1 * x0			# LN: 148 | 
	xmem[i0] = a0			# LN: 148 | 
	a0g = xmem[_x + 0]			# LN: 149 | 
	a0h = xmem[_x + 1]			# LN: 149 | 
	a0l = xmem[_x + 2]			# LN: 149 | 
	a0 & a0			# LN: 149 | 
	if (a >= 0) jmp (else_7)			# LN: 149 | 
	a0g = xmem[_x + 0]			# LN: 150 | 
	a0h = xmem[_x + 1]			# LN: 150 | 
	a0l = xmem[_x + 2]			# LN: 150 | 
	a0 =- a0			# LN: 150 | 
	xmem[_x + 0] = a0g			# LN: 150 | 
	xmem[_x + 1] = a0h			# LN: 150 | 
	xmem[_x + 2] = a0l			# LN: 150 | 
endif_7:			/* LN: 149 | CYCLE: 0 | RULES: () */ 
else_7:			/* LN: 149 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_output_distortion + 0]			# LN: 153 | 
	a0g = xmem[_x + 0]			# LN: 153 | 
	a1 = xmem[i0]			# LN: 153 | 
	a0h = xmem[_x + 1]			# LN: 153 | 
	a0l = xmem[_x + 2]			# LN: 153 | 
	a0 = a0 + a1			# LN: 153 | 
	xmem[_x + 0] = a0g			# LN: 153 | 
	xmem[_x + 1] = a0h			# LN: 153 | 
	xmem[_x + 2] = a0l			# LN: 153 | 
	a0g = xmem[_x + 0]			# LN: 154 | 
	a0h = xmem[_x + 1]			# LN: 154 | 
	i0 = (0) + (_output_distortion)			# LN: 154 | 
	i0 = xmem[i0]			# LN: 154 | 
	a0l = xmem[_x + 2]			# LN: 154 | 
	xmem[i0] = a0			# LN: 154 | 
	i0 = xmem[_output_distortion + 0]			# LN: 155 | 
	i1 = (0) + (_output_distortion)			# LN: 155 | 
	a0 = xmem[i0]			# LN: 155 | 
	i0 = xmem[i1]			# LN: 155 | 
	a0 = a0 << 1			# LN: 155 | 
	xmem[i0] = a0h			# LN: 155 | 
	i0 = xmem[_output_distortion + 0]			# LN: 157 | 
	nop #empty cycle
	i0 += 1			# LN: 157 | 
	xmem[_output_distortion + 0] = i0			# LN: 157 | 
	i0 = xmem[_input_distortion + 0]			# LN: 158 | 
	nop #empty cycle
	i0 += 1			# LN: 158 | 
label_end_95:			# LN: 146 | CYCLE: 28 | RULES: ()
	xmem[_input_distortion + 0] = i0			# LN: 158 | 
__epilogue_222:			/* LN: 165 | CYCLE: 0 | RULES: () */ 
for_end_3:			/* LN: 146 | CYCLE: 0 | RULES: () */ 
	ret			# LN: 165 | 



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

_main:			/* LN: 261 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = a2g; i7 += 1			# LN: 261, 261 | 
	xmem[i7] = a2h; i7 += 1			# LN: 261, 261 | 
	xmem[i7] = a2l; i7 += 1			# LN: 261, 261 | 
	xmem[i7] = i2; i7 += 1			# LN: 261, 261 | 
	xmem[i7] = a3g; i7 += 1			# LN: 261, 261 | 
	xmem[i7] = a3h; i7 += 1			# LN: 261, 261 | 
	xmem[i7] = a3l; i7 += 1			# LN: 261, 261 | 
	xmem[i7] = i3; i7 += 1			# LN: 261, 261 | 
	xmem[i7] = b2g; i7 += 1			# LN: 261, 261 | 
	xmem[i7] = b2h; i7 += 1			# LN: 261, 261 | 
	xmem[i7] = b2l; i7 += 1			# LN: 261, 261 | 
	i7 = i7 + (0x200)			# LN: 261 | 
	a2 = 0			# LN: 278 | 
	do (0x8), label_end_100			# LN: 278 | 
label_begin_100:			/* LN: 278 | CYCLE: 0 | RULES: () */ 
	a0 =+ a2			# LN: 279 | 
	a0 = a0 << 4			# LN: 279 | 
	i0 = a0; a0 = 0			# LN: 279, 279 | 
	uhalfword(a1) = (0x10)			# LN: 279 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 279 | 
	call (_memset)			# LN: 279 | 
	uhalfword(a0) = (0x1)			# LN: 278 | 
label_end_100:			# LN: 278 | CYCLE: 7 | RULES: ()
	a2 = a2 + a0			# LN: 278 | 
for_end_8:			/* LN: 278 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (256 - 0)			# LN: 283 | 
	i1 = (0) + (_string_const_0)			# LN: 283 | 
	call (_strcpy)			# LN: 283 | 
	i0 = i7 - (256 - 0)			# LN: 284 | 
	call (_cl_wavread_open)			# LN: 284 | 
	AnyReg(i2, a0h)			# LN: 284 | 
	a0 = i2			# LN: 285 | 
	a0 & a0			# LN: 285 | 
	if (a != 0) jmp (else_8)			# LN: 285 | 
	i0 = (0) + (_string_const_1)			# LN: 287 | 
	call (_printf)			# LN: 287 | 
	halfword(a0) = (0xffff)			# LN: 288 | 
	jmp (__epilogue_226)			# LN: 288 | 
endif_8:			/* LN: 285 | CYCLE: 0 | RULES: () */ 
else_8:			/* LN: 285 | CYCLE: 0 | RULES: () */ 
	i0 = i2			# LN: 294 | 
	call (_cl_wavread_getnchannels)			# LN: 294 | 
	a2 =+ a0			# LN: 294 | 
	i0 = i2			# LN: 295 | 
	call (_cl_wavread_bits_per_sample)			# LN: 295 | 
	a1 =+ a0			# LN: 295 | 
	i0 = i2			# LN: 296 | 
	call (_cl_wavread_frame_rate)			# LN: 296 | 
	b0 =+ a0			# LN: 296 | 
	i0 = i2			# LN: 297 | 
	call (_cl_wavread_number_of_frames)			# LN: 297 | 
	b1 =+ a0			# LN: 297 | 
	uhalfword(a0) = (0x2)			# LN: 312 | 
	xmem[_outputMode + 0] = a0h			# LN: 312 | 
	i0 = i7 - (512 - 0)			# LN: 318 | 
	i1 = (0) + (_string_const_2)			# LN: 318 | 
	uhalfword(a3) = (0x6)			# LN: 313 | 
	call (_strcpy)			# LN: 318 | 
	i0 = i7 - (512 - 0)			# LN: 319 | 
	a0 =+ a1			# LN: 319 | 
	a1 =+ a3			# LN: 319 | 
	call (_cl_wavwrite_open)			# LN: 319 | 
	AnyReg(i3, a0h)			# LN: 319 | 
	a0 = i3			# LN: 320 | 
	a0 & a0			# LN: 320 | 
	if (a != 0) jmp (else_9)			# LN: 320 | 
	i0 = (0) + (_string_const_3)			# LN: 322 | 
	call (_printf)			# LN: 322 | 
	halfword(a0) = (0xffff)			# LN: 323 | 
	jmp (__epilogue_226)			# LN: 323 | 
endif_9:			/* LN: 320 | CYCLE: 0 | RULES: () */ 
else_9:			/* LN: 320 | CYCLE: 0 | RULES: () */ 
	uhalfword(a1) = (0x10)			# LN: 336 | 
	a0 =+ b1			# LN: 336 | 
	call (__div)			# LN: 336 | 
	AnyReg(i0, a0h)			# LN: 336 | 
	nop #empty cycle
	do (i0), label_end_105			# LN: 336 | 
label_begin_105:			/* LN: 336 | CYCLE: 0 | RULES: () */ 
	b2 = 0			# LN: 338 | 
	do (0x10), label_end_102			# LN: 338 | 
label_begin_102:			/* LN: 338 | CYCLE: 0 | RULES: () */ 
	AnyReg(i0, a2h)			# LN: 340 | 
	b0 = 0			# LN: 340 | 
	do (i0), label_end_101			# LN: 340 | 
label_begin_101:			/* LN: 340 | CYCLE: 0 | RULES: () */ 
	i0 = i2			# LN: 342 | 
	call (_cl_wavread_recvsample)			# LN: 342 | 
	a1 =+ a0; b1 =+ b0			# LN: 342, 343 | 
	b1 = b1 << 4			# LN: 343 | 
	i0 = b1; a0 =+ a1			# LN: 343, 343 | 
	uhalfword(a1) = (0x1)			# LN: 340 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 343 | 
	b1 = i0; b0 = b0 + a1			# LN: 343, 340 | 
	a1 =+ b1			# LN: 343 | 
	a1 = a1 + b2			# LN: 343 | 
	AnyReg(i0, a1h)			# LN: 343 | 
	nop #empty cycle
label_end_101:			# LN: 340 | CYCLE: 12 | RULES: ()
	xmem[i0] = a0h			# LN: 343 | 
init_latch_label_10:			/* LN: 345 | CYCLE: 0 | RULES: () */ 
for_end_11:			/* LN: 340 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x1)			# LN: 338 | 
label_end_102:			# LN: 338 | CYCLE: 1 | RULES: ()
	b2 = b2 + a0			# LN: 338 | 
for_end_10:			/* LN: 338 | CYCLE: 0 | RULES: () */ 
	call (_processing)			# LN: 347 | 
	a1 = 0			# LN: 349 | 
	do (0x10), label_end_104			# LN: 349 | 
label_begin_104:			/* LN: 349 | CYCLE: 0 | RULES: () */ 
	AnyReg(i0, a3h)			# LN: 351 | 
	b0 = 0			# LN: 351 | 
	do (i0), label_end_103			# LN: 351 | 
label_begin_103:			/* LN: 351 | CYCLE: 0 | RULES: () */ 
	a0 =+ b0			# LN: 353 | 
	a0 = a0 << 4			# LN: 353 | 
	i1 = a0			# LN: 353 | 
	i0 = i3			# LN: 354 | 
	i1 = i1 + (_sampleBuffer + 0)			# LN: 353 | 
	a0 = i1			# LN: 353 | 
	a0 = a0 + a1			# LN: 353 | 
	AnyReg(i1, a0h)			# LN: 353 | 
	uhalfword(a0) = (0x1)			# LN: 351 | 
	b1 = xmem[i1]; b0 = b0 + a0			# LN: 353, 351 | 
	a0 =+ b1			# LN: 353 | 
label_end_103:			# LN: 351 | CYCLE: 11 | RULES: ()
	call (_cl_wavwrite_sendsample)			# LN: 354 | 
init_latch_label_12:			/* LN: 356 | CYCLE: 0 | RULES: () */ 
for_end_13:			/* LN: 351 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x1)			# LN: 349 | 
label_end_104:			# LN: 349 | CYCLE: 1 | RULES: ()
	a1 = a1 + a0			# LN: 349 | 
init_latch_label_13:			/* LN: 357 | CYCLE: 0 | RULES: () */ 
for_end_12:			/* LN: 349 | CYCLE: 0 | RULES: () */ 
label_end_105:			# LN: 336 | CYCLE: 0 | RULES: ()
	nop #empty cycle
for_end_9:			/* LN: 336 | CYCLE: 0 | RULES: () */ 
	i0 = i2			# LN: 362 | 
	call (_cl_wavread_close)			# LN: 362 | 
	i0 = i3			# LN: 363 | 
	call (_cl_wavwrite_close)			# LN: 363 | 
	a0 = 0			# LN: 366 | 
__epilogue_226:			/* LN: 367 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x200)			# LN: 367 | 
	i7 -= 1			# LN: 367 | 
	b2l = xmem[i7]; i7 -= 1			# LN: 367, 367 | 
	b2h = xmem[i7]; i7 -= 1			# LN: 367, 367 | 
	b2g = xmem[i7]; i7 -= 1			# LN: 367, 367 | 
	i3 = xmem[i7]; i7 -= 1			# LN: 367, 367 | 
	a3l = xmem[i7]; i7 -= 1			# LN: 367, 367 | 
	a3h = xmem[i7]; i7 -= 1			# LN: 367, 367 | 
	a3g = xmem[i7]; i7 -= 1			# LN: 367, 367 | 
	i2 = xmem[i7]; i7 -= 1			# LN: 367, 367 | 
	a2l = xmem[i7]; i7 -= 1			# LN: 367, 367 | 
	a2h = xmem[i7]; i7 -= 1			# LN: 367, 367 | 
	a2g = xmem[i7]			# LN: 367 | 
	ret			# LN: 367 | 



switch_1:			/* LN: 174 | CYCLE: 0 | RULES: () */ 
_processing:			/* LN: 167 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_outputMode + 0]			# LN: 174 | 
	a0 & a0			# LN: 174 | 
	if (a == 0) jmp (case_4)			# LN: 174 | 
	a0 = xmem[_outputMode + 0]			# LN: 174 | 
	uhalfword(a1) = (0x1)			# LN: 174 | 
	a0 - a1			# LN: 174 | 
	if (a == 0) jmp (case_5)			# LN: 174 | 
	a0 = xmem[_outputMode + 0]			# LN: 174 | 
	uhalfword(a1) = (0x2)			# LN: 174 | 
	a0 - a1			# LN: 174 | 
	if (a == 0) jmp (case_6)			# LN: 174 | 
	jmp (__epilogue_224)			# LN: 174 | 
case_4:			/* LN: 176 | CYCLE: 0 | RULES: () */ 
	do (0x10), label_end_96			# LN: 177 | 
label_begin_96:			/* LN: 177 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_leftInput + 0]			# LN: 179 | 
	x0 = ymem[_numGain + 0]			# LN: 179 | 
	x1 = xmem[i0]			# LN: 179 | 
	i0 = (0) + (_leftInput)			# LN: 179 | 
	i0 = xmem[i0]			# LN: 179 | 
	a0 = x1 * x0			# LN: 179 | 
	xmem[i0] = a0			# LN: 179 | 
	i0 = xmem[_rightInput + 0]			# LN: 180 | 
	x0 = ymem[_numGain + 0]			# LN: 180 | 
	x1 = xmem[i0]			# LN: 180 | 
	i0 = (0) + (_rightInput)			# LN: 180 | 
	i0 = xmem[i0]			# LN: 180 | 
	a0 = x1 * x0			# LN: 180 | 
	xmem[i0] = a0			# LN: 180 | 
	a0 = xmem[_leftInput + 0]			# LN: 181 | 
	AnyReg(i0, a0h)			# LN: 181 | 
	nm0 = (0x3001)			# LN: -1 | 
	nop #empty cycle
	i0 += n			# LN: 181 | 
	nm0 = (0x0)			# LN: -1 | 
	xmem[_leftInput + 0] = i0			# LN: 181 | 
	a0 = xmem[_rightInput + 0]			# LN: 182 | 
	AnyReg(i0, a0h)			# LN: 182 | 
	nm0 = (0x3001)			# LN: -1 | 
	nop #empty cycle
	i0 += n			# LN: 182 | 
	nm0 = (0x0)			# LN: -1 | 
label_end_96:			# LN: 177 | CYCLE: 27 | RULES: ()
	xmem[_rightInput + 0] = i0			# LN: 182 | 
for_end_4:			/* LN: 177 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_224)			# LN: 184 | 
case_5:			/* LN: 185 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 32)			# LN: 187 | 
	xmem[_lsOutput + 0] = i0			# LN: 187 | 
	i0 = (0) + (_sampleBuffer + 48)			# LN: 188 | 
	xmem[_rsOutput + 0] = i0			# LN: 188 | 
	do (0x10), label_end_97			# LN: 190 | 
label_begin_97:			/* LN: 190 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_leftInput + 0]			# LN: 192 | 
	x0 = ymem[_numGain + 0]			# LN: 192 | 
	x1 = xmem[i0]			# LN: 192 | 
	i0 = (0) + (_leftInput)			# LN: 192 | 
	i0 = xmem[i0]			# LN: 192 | 
	a0 = x1 * x0			# LN: 192 | 
	xmem[i0] = a0			# LN: 192 | 
	i0 = xmem[_rightInput + 0]			# LN: 193 | 
	x0 = ymem[_numGain + 0]			# LN: 193 | 
	x1 = xmem[i0]			# LN: 193 | 
	i0 = (0) + (_rightInput)			# LN: 193 | 
	i0 = xmem[i0]			# LN: 193 | 
	a0 = x1 * x0			# LN: 193 | 
	xmem[i0] = a0			# LN: 193 | 
	i0 = xmem[_leftInput + 0]			# LN: 194 | 
	nop #empty cycle
	i0 += 1			# LN: 194 | 
	xmem[_leftInput + 0] = i0			# LN: 194 | 
	i0 = xmem[_rightInput + 0]			# LN: 195 | 
	nop #empty cycle
	i0 += 1			# LN: 195 | 
label_end_97:			# LN: 190 | CYCLE: 21 | RULES: ()
	xmem[_rightInput + 0] = i0			# LN: 195 | 
for_end_5:			/* LN: 190 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 0)			# LN: 198 | 
	xmem[_leftInput + 0] = i0			# LN: 198 | 
	i0 = (0) + (_sampleBuffer + 16)			# LN: 199 | 
	xmem[_rightInput + 0] = i0			# LN: 199 | 
	a0 = xmem[_leftInput + 0]			# LN: 201 | 
	xmem[_input_distortion + 0] = a0			# LN: 201 | 
	a0 = xmem[_lsOutput + 0]			# LN: 202 | 
	xmem[_output_distortion + 0] = a0			# LN: 202 | 
	call (_distortion)			# LN: 203 | 
	a0 = xmem[_rightInput + 0]			# LN: 204 | 
	xmem[_input_distortion + 0] = a0			# LN: 204 | 
	a0 = xmem[_rsOutput + 0]			# LN: 205 | 
	xmem[_output_distortion + 0] = a0			# LN: 205 | 
	call (_distortion)			# LN: 206 | 
	jmp (__epilogue_224)			# LN: 210 | 
case_6:			/* LN: 211 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 32)			# LN: 213 | 
	xmem[_lsOutput + 0] = i0			# LN: 213 | 
	i0 = (0) + (_sampleBuffer + 48)			# LN: 214 | 
	xmem[_rsOutput + 0] = i0			# LN: 214 | 
	i0 = (0) + (_sampleBuffer + 64)			# LN: 215 | 
	xmem[_centralOutput + 0] = i0			# LN: 215 | 
	i0 = (0) + (_sampleBuffer + 80)			# LN: 216 | 
	xmem[_lfeOutput + 0] = i0			# LN: 216 | 
	do (0x10), label_end_98			# LN: 218 | 
label_begin_98:			/* LN: 218 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_leftInput + 0]			# LN: 220 | 
	x0 = ymem[_numGain + 0]			# LN: 220 | 
	x1 = xmem[i0]			# LN: 220 | 
	i0 = (0) + (_leftInput)			# LN: 220 | 
	i0 = xmem[i0]			# LN: 220 | 
	a0 = x1 * x0			# LN: 220 | 
	xmem[i0] = a0			# LN: 220 | 
	i0 = xmem[_rightInput + 0]			# LN: 221 | 
	x0 = ymem[_numGain + 0]			# LN: 221 | 
	x1 = xmem[i0]			# LN: 221 | 
	i0 = (0) + (_rightInput)			# LN: 221 | 
	i0 = xmem[i0]			# LN: 221 | 
	a0 = x1 * x0			# LN: 221 | 
	xmem[i0] = a0			# LN: 221 | 
	i0 = xmem[_rightInput + 0]			# LN: 222 | 
	i1 = xmem[_leftInput + 0]			# LN: 222 | 
	a0 = xmem[i0]			# LN: 222 | 
	a1 = xmem[i1]			# LN: 222 | 
	i0 = (0) + (_centralOutput)			# LN: 222 | 
	i0 = xmem[i0]			# LN: 222 | 
	a0 = a0 + a1			# LN: 222 | 
	xmem[i0] = a0h			# LN: 222 | 
	i0 = xmem[_centralOutput + 0]			# LN: 224 | 
	nop #empty cycle
	i0 += 1			# LN: 224 | 
	xmem[_centralOutput + 0] = i0			# LN: 224 | 
	i0 = xmem[_leftInput + 0]			# LN: 226 | 
	nop #empty cycle
	i0 += 1			# LN: 226 | 
	xmem[_leftInput + 0] = i0			# LN: 226 | 
	i0 = xmem[_rightInput + 0]			# LN: 228 | 
	nop #empty cycle
	i0 += 1			# LN: 228 | 
label_end_98:			# LN: 218 | CYCLE: 33 | RULES: ()
	xmem[_rightInput + 0] = i0			# LN: 228 | 
for_end_6:			/* LN: 218 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 0)			# LN: 231 | 
	xmem[_leftInput + 0] = i0			# LN: 231 | 
	i0 = (0) + (_sampleBuffer + 16)			# LN: 232 | 
	xmem[_rightInput + 0] = i0			# LN: 232 | 
	a0 = xmem[_leftInput + 0]			# LN: 234 | 
	xmem[_input_distortion + 0] = a0			# LN: 234 | 
	a0 = xmem[_lsOutput + 0]			# LN: 235 | 
	xmem[_output_distortion + 0] = a0			# LN: 235 | 
	call (_distortion)			# LN: 236 | 
	a0 = xmem[_rightInput + 0]			# LN: 237 | 
	xmem[_input_distortion + 0] = a0			# LN: 237 | 
	a0 = xmem[_rsOutput + 0]			# LN: 238 | 
	xmem[_output_distortion + 0] = a0			# LN: 238 | 
	call (_distortion)			# LN: 239 | 
	do (0x10), label_end_99			# LN: 243 | 
label_begin_99:			/* LN: 243 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_lsOutput + 0]			# LN: 245 | 
	i1 = xmem[_rsOutput + 0]			# LN: 245 | 
	a0 = xmem[i0]			# LN: 245 | 
	a1 = xmem[i1]			# LN: 245 | 
	i0 = (0) + (_lfeOutput)			# LN: 245 | 
	i0 = xmem[i0]			# LN: 245 | 
	a0 = a0 + a1			# LN: 245 | 
	xmem[i0] = a0h			# LN: 245 | 
	i0 = xmem[_lfeOutput + 0]			# LN: 247 | 
	nop #empty cycle
	i0 += 1			# LN: 247 | 
	xmem[_lfeOutput + 0] = i0			# LN: 247 | 
	i0 = xmem[_lsOutput + 0]			# LN: 249 | 
	nop #empty cycle
	i0 += 1			# LN: 249 | 
	xmem[_lsOutput + 0] = i0			# LN: 249 | 
	i0 = xmem[_rsOutput + 0]			# LN: 251 | 
	nop #empty cycle
	i0 += 1			# LN: 251 | 
label_end_99:			# LN: 243 | CYCLE: 19 | RULES: ()
	xmem[_rsOutput + 0] = i0			# LN: 251 | 
__epilogue_224:			/* LN: 258 | CYCLE: 0 | RULES: () */ 
for_end_7:			/* LN: 243 | CYCLE: 0 | RULES: () */ 
	ret			# LN: 258 | 
