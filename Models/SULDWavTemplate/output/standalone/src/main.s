	.public _centralOutput
	.public _enable
	.public _input_distortion
	.public _leftInput
	.public _lfeOutput
	.public _lsOutput
	.public _numGain
	.public _outputMode
	.public _output_distortion
	.public _rightInput
	.public _rsOutput
	.public _sampleBuffer
	.public _type
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
	.public _main
	.extern _memset
	.extern _printf
	.extern _processing
	.extern _strcpy
	.extern __div
	.xdata_ovly
_centralOutput
	.dw _sampleBuffer+64
	.xdata_ovly
_enable
	.dw  (0x1)
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
_string_const_0
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
_type
	.dw  (0x0)
	.code_ovly



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

_main:			/* LN: 35 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 35 | 
	i7 += 1			# LN: 35 | 
	i7 = i7 + (0x210)			# LN: 35 | 
	i1 = i7 - (0x1)			# LN: 35 | 
	xmem[i1] = a0h			# LN: 35 | 
	i1 = i7 - (0x2)			# LN: 35 | 
	xmem[i1] = i0			# LN: 35 | 
cline_35_0:			/* LN: 49 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 49 | 
	i0 = xmem[i0]			# LN: 49 | 
	i1 = i7 - (0x3)			# LN: 49 | 
	i0 += 2			# LN: 49 | 
	i0 = xmem[i0]			# LN: 49 | 
	nop #empty cycle
	a0 = xmem[i0]			# LN: 49 | 
	xmem[i1] = a0h			# LN: 49 | 
cline_49_0:			/* LN: 50 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 50 | 
	i0 = xmem[i0]			# LN: 50 | 
	i1 = i7 - (0x4)			# LN: 50 | 
	i0 = i0 + (0x3)			# LN: 50 | 
	i0 = xmem[i0]			# LN: 50 | 
	nop #empty cycle
	a0 = xmem[i0]			# LN: 50 | 
	xmem[i1] = a0h			# LN: 50 | 
cline_50_0:			/* LN: 53 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 53 | 
	a0 = 0			# LN: 53 | 
	xmem[i0] = a0h			# LN: 53 | 
	do (0x8), label_end_92			# LN: 53 | 
cline_53_0:			/* LN: 54 | CYCLE: 0 | RULES: () */ 
label_begin_92:			/* LN: 53 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 54 | 
	a1 = xmem[i0]; a0 = 0			# LN: 54, 54 | 
	a1 = a1 << 4			# LN: 54 | 
	i0 = a1			# LN: 54 | 
	uhalfword(a1) = (0x10)			# LN: 54 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 54 | 
	call (_memset)			# LN: 54 | 
cline_54_0:			/* LN: 53 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 54 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 53 | 
	a0 = xmem[i0]			# LN: 53 | 
	uhalfword(a1) = (0x1)			# LN: 53 | 
	a0 = a0 + a1			# LN: 53 | 
	i0 = i7 - (0x5)			# LN: 53 | 
label_end_92:			# LN: 53 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 53 | 
cline_53_1:			/* LN: 58 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 53 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 58 | 
	i0 = xmem[i0]			# LN: 58 | 
	i1 = i7 - (261 - 0)			# LN: 58 | 
	i4 = xmem[i0]			# LN: 58 | 
	i0 = i1			# LN: 58 | 
	i1 = i4			# LN: 58 | 
	call (_strcpy)			# LN: 58 | 
cline_58_0:			/* LN: 59 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (261 - 0)			# LN: 59 | 
	call (_cl_wavread_open)			# LN: 59 | 
	AnyReg(i0, a0h)			# LN: 59 | 
	i1 = i7 - (0x106)			# LN: 59 | 
	xmem[i1] = i0			# LN: 59 | 
cline_59_0:			/* LN: 60 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x106)			# LN: 60 | 
	a0 = xmem[i0]			# LN: 60 | 
	a0 & a0			# LN: 60 | 
	if (a != 0) jmp (else_0)			# LN: 60 | 
cline_60_0:			/* LN: 62 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_0)			# LN: 62 | 
	call (_printf)			# LN: 62 | 
cline_62_0:			/* LN: 63 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 63 | 
	jmp (__epilogue_226)			# LN: 63 | 
cline_63_0:			/* LN: 69 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 60 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 60 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x106)			# LN: 69 | 
	i0 = xmem[i0]			# LN: 69 | 
	call (_cl_wavread_getnchannels)			# LN: 69 | 
	i0 = i7 - (0x107)			# LN: 69 | 
	xmem[i0] = a0h			# LN: 69 | 
cline_69_0:			/* LN: 70 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x106)			# LN: 70 | 
	i0 = xmem[i0]			# LN: 70 | 
	call (_cl_wavread_bits_per_sample)			# LN: 70 | 
	i0 = i7 - (0x108)			# LN: 70 | 
	xmem[i0] = a0h			# LN: 70 | 
cline_70_0:			/* LN: 71 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x106)			# LN: 71 | 
	i0 = xmem[i0]			# LN: 71 | 
	call (_cl_wavread_frame_rate)			# LN: 71 | 
	i0 = i7 - (0x109)			# LN: 71 | 
	xmem[i0] = a0h			# LN: 71 | 
cline_71_0:			/* LN: 72 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x106)			# LN: 72 | 
	i0 = xmem[i0]			# LN: 72 | 
	call (_cl_wavread_number_of_frames)			# LN: 72 | 
	i0 = i7 - (0x10a)			# LN: 72 | 
	xmem[i0] = a0h			# LN: 72 | 
cline_72_0:			/* LN: 74 | CYCLE: 0 | RULES: () */ 
switch_0:			/* LN: 74 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 74 | 
	a0 = xmem[i0]			# LN: 74 | 
	uhalfword(a1) = (0x30)			# LN: 74 | 
	a0g = (0x0)			# LN: 74 | 
	a1g = (0x0)			# LN: 74 | 
	a0 - a1			# LN: 74 | 
	if (a == 0) jmp (case_0)			# LN: 74 | 
	i0 = i7 - (0x4)			# LN: 74 | 
	a0 = xmem[i0]			# LN: 74 | 
	uhalfword(a1) = (0x31)			# LN: 74 | 
	a0g = (0x0)			# LN: 74 | 
	a1g = (0x0)			# LN: 74 | 
	a0 - a1			# LN: 74 | 
	if (a == 0) jmp (case_1)			# LN: 74 | 
	i0 = i7 - (0x4)			# LN: 74 | 
	a0 = xmem[i0]			# LN: 74 | 
	uhalfword(a1) = (0x32)			# LN: 74 | 
	a0g = (0x0)			# LN: 74 | 
	a1g = (0x0)			# LN: 74 | 
	a0 - a1			# LN: 74 | 
	if (a == 0) jmp (case_2)			# LN: 74 | 
	i0 = i7 - (0x4)			# LN: 74 | 
	a0 = xmem[i0]			# LN: 74 | 
	uhalfword(a1) = (0x33)			# LN: 74 | 
	a0g = (0x0)			# LN: 74 | 
	a1g = (0x0)			# LN: 74 | 
	a0 - a1			# LN: 74 | 
	if (a == 0) jmp (case_3)			# LN: 74 | 
	jmp (switch_end_0)			# LN: 74 | 
cline_74_0:			/* LN: 77 | CYCLE: 0 | RULES: () */ 
case_0:			/* LN: 76 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 77 | 
	xmem[_type + 0] = a0h			# LN: 77 | 
cline_77_0:			/* LN: 78 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_0)			# LN: 78 | 
cline_78_0:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
case_1:			/* LN: 79 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x1)			# LN: 80 | 
	xmem[_type + 0] = a0h			# LN: 80 | 
cline_80_0:			/* LN: 81 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_0)			# LN: 81 | 
cline_81_0:			/* LN: 83 | CYCLE: 0 | RULES: () */ 
case_2:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x2)			# LN: 83 | 
	xmem[_type + 0] = a0h			# LN: 83 | 
cline_83_0:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_0)			# LN: 84 | 
cline_84_0:			/* LN: 86 | CYCLE: 0 | RULES: () */ 
case_3:			/* LN: 85 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x3)			# LN: 86 | 
	xmem[_type + 0] = a0h			# LN: 86 | 
cline_86_0:			/* LN: 87 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_0)			# LN: 87 | 
cline_87_0:			/* LN: 90 | CYCLE: 0 | RULES: () */ 
switch_1:			/* LN: 90 | CYCLE: 0 | RULES: () */ 
switch_end_0:			/* LN: 74 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 90 | 
	a0 = xmem[i0]			# LN: 90 | 
	uhalfword(a1) = (0x30)			# LN: 90 | 
	a0g = (0x0)			# LN: 90 | 
	a1g = (0x0)			# LN: 90 | 
	a0 - a1			# LN: 90 | 
	if (a == 0) jmp (case_4)			# LN: 90 | 
	i0 = i7 - (0x3)			# LN: 90 | 
	a0 = xmem[i0]			# LN: 90 | 
	uhalfword(a1) = (0x31)			# LN: 90 | 
	a0g = (0x0)			# LN: 90 | 
	a1g = (0x0)			# LN: 90 | 
	a0 - a1			# LN: 90 | 
	if (a == 0) jmp (case_5)			# LN: 90 | 
	i0 = i7 - (0x3)			# LN: 90 | 
	a0 = xmem[i0]			# LN: 90 | 
	uhalfword(a1) = (0x32)			# LN: 90 | 
	a0g = (0x0)			# LN: 90 | 
	a1g = (0x0)			# LN: 90 | 
	a0 - a1			# LN: 90 | 
	if (a == 0) jmp (case_6)			# LN: 90 | 
	jmp (switch_end_1)			# LN: 90 | 
cline_90_0:			/* LN: 93 | CYCLE: 0 | RULES: () */ 
case_4:			/* LN: 92 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x10b)			# LN: 93 | 
	uhalfword(a0) = (0x2)			# LN: 93 | 
	xmem[i0] = a0h			# LN: 93 | 
cline_93_0:			/* LN: 94 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 94 | 
	xmem[_outputMode + 0] = a0h			# LN: 94 | 
cline_94_0:			/* LN: 95 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_1)			# LN: 95 | 
cline_95_0:			/* LN: 97 | CYCLE: 0 | RULES: () */ 
case_5:			/* LN: 96 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x10b)			# LN: 97 | 
	uhalfword(a0) = (0x4)			# LN: 97 | 
	xmem[i0] = a0h			# LN: 97 | 
cline_97_0:			/* LN: 98 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x1)			# LN: 98 | 
	xmem[_outputMode + 0] = a0h			# LN: 98 | 
cline_98_0:			/* LN: 99 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_1)			# LN: 99 | 
cline_99_0:			/* LN: 101 | CYCLE: 0 | RULES: () */ 
case_6:			/* LN: 100 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x10b)			# LN: 101 | 
	uhalfword(a0) = (0x6)			# LN: 101 | 
	xmem[i0] = a0h			# LN: 101 | 
cline_101_0:			/* LN: 102 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x2)			# LN: 102 | 
	xmem[_outputMode + 0] = a0h			# LN: 102 | 
cline_102_0:			/* LN: 103 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_1)			# LN: 103 | 
cline_103_0:			/* LN: 108 | CYCLE: 0 | RULES: () */ 
switch_end_1:			/* LN: 90 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 108 | 
	i0 = xmem[i0]			# LN: 108 | 
	i1 = i7 - (523 - 0)			# LN: 108 | 
	i0 += 1			# LN: 108 | 
	i4 = xmem[i0]			# LN: 108 | 
	i0 = i1			# LN: 108 | 
	i1 = i4			# LN: 108 | 
	call (_strcpy)			# LN: 108 | 
cline_108_0:			/* LN: 109 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (523 - 0)			# LN: 109 | 
	i1 = i7 - (0x108)			# LN: 109 | 
	a0 = xmem[i1]			# LN: 109 | 
	i1 = i7 - (0x10b)			# LN: 109 | 
	a1 = xmem[i1]			# LN: 109 | 
	i1 = i7 - (0x109)			# LN: 109 | 
	b0 = xmem[i1]			# LN: 109 | 
	call (_cl_wavwrite_open)			# LN: 109 | 
	AnyReg(i0, a0h)			# LN: 109 | 
	i1 = i7 - (0x20c)			# LN: 109 | 
	xmem[i1] = i0			# LN: 109 | 
cline_109_0:			/* LN: 110 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 110 | 
	a0 = xmem[i0]			# LN: 110 | 
	a0 & a0			# LN: 110 | 
	if (a != 0) jmp (else_1)			# LN: 110 | 
cline_110_0:			/* LN: 112 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_1)			# LN: 112 | 
	call (_printf)			# LN: 112 | 
cline_112_0:			/* LN: 113 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 113 | 
	jmp (__epilogue_226)			# LN: 113 | 
cline_113_0:			/* LN: 126 | CYCLE: 0 | RULES: () */ 
endif_1:			/* LN: 110 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 110 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 126 | 
	a0 = 0			# LN: 126 | 
	xmem[i0] = a0h			# LN: 126 | 
for_1:			/* LN: 126 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x10a)			# LN: 126 | 
	a0 = xmem[i0]			# LN: 126 | 
	uhalfword(a1) = (0x10)			# LN: 126 | 
	call (__div)			# LN: 126 | 
	i0 = i7 - (0x20d)			# LN: 126 | 
	a1 = xmem[i0]			# LN: 126 | 
	a1 - a0			# LN: 126 | 
	if (a >= 0) jmp (for_end_1)			# LN: 126 | 
cline_126_0:			/* LN: 128 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20e)			# LN: 128 | 
	a0 = 0			# LN: 128 | 
	xmem[i0] = a0h			# LN: 128 | 
	do (0x10), label_end_93			# LN: 128 | 
cline_128_0:			/* LN: 130 | CYCLE: 0 | RULES: () */ 
label_begin_93:			/* LN: 128 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20f)			# LN: 130 | 
	a0 = 0			# LN: 130 | 
	xmem[i0] = a0h			# LN: 130 | 
for_3:			/* LN: 130 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20f)			# LN: 130 | 
	a0 = xmem[i0]			# LN: 130 | 
	i0 = i7 - (0x107)			# LN: 130 | 
	a1 = xmem[i0]			# LN: 130 | 
	a0 - a1			# LN: 130 | 
	if (a >= 0) jmp (for_end_3)			# LN: 130 | 
cline_130_0:			/* LN: 132 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x106)			# LN: 132 | 
	i0 = xmem[i0]			# LN: 132 | 
	call (_cl_wavread_recvsample)			# LN: 132 | 
	i0 = i7 - (0x210)			# LN: 132 | 
	xmem[i0] = a0h			# LN: 132 | 
cline_132_0:			/* LN: 133 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20f)			# LN: 133 | 
	a0 = xmem[i0]			# LN: 133 | 
	a0 = a0 << 4			# LN: 133 | 
	i0 = a0			# LN: 133 | 
	i1 = i7 - (0x20e)			# LN: 133 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 133 | 
	a0 = xmem[i1]			# LN: 133 | 
	a1 = i0			# LN: 133 | 
	a0 = a1 + a0			# LN: 133 | 
	AnyReg(i0, a0h)			# LN: 133 | 
	i1 = i7 - (0x210)			# LN: 133 | 
	a0 = xmem[i1]			# LN: 133 | 
	xmem[i0] = a0h			# LN: 133 | 
cline_133_0:			/* LN: 130 | CYCLE: 0 | RULES: () */ 
init_latch_label_1:			/* LN: 134 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20f)			# LN: 130 | 
	a0 = xmem[i0]			# LN: 130 | 
	uhalfword(a1) = (0x1)			# LN: 130 | 
	a0 = a0 + a1			# LN: 130 | 
	i0 = i7 - (0x20f)			# LN: 130 | 
	xmem[i0] = a0h			# LN: 130 | 
	jmp (for_3)			# LN: 130 | 
cline_130_1:			/* LN: 128 | CYCLE: 0 | RULES: () */ 
init_latch_label_2:			/* LN: 135 | CYCLE: 0 | RULES: () */ 
for_end_3:			/* LN: 130 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20e)			# LN: 128 | 
	a0 = xmem[i0]			# LN: 128 | 
	uhalfword(a1) = (0x1)			# LN: 128 | 
	a0 = a0 + a1			# LN: 128 | 
	i0 = i7 - (0x20e)			# LN: 128 | 
label_end_93:			# LN: 128 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 128 | 
cline_128_1:			/* LN: 137 | CYCLE: 0 | RULES: () */ 
for_end_2:			/* LN: 128 | CYCLE: 0 | RULES: () */ 
	call (_processing)			# LN: 137 | 
cline_137_0:			/* LN: 139 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20e)			# LN: 139 | 
	a0 = 0			# LN: 139 | 
	xmem[i0] = a0h			# LN: 139 | 
	do (0x10), label_end_94			# LN: 139 | 
cline_139_0:			/* LN: 141 | CYCLE: 0 | RULES: () */ 
label_begin_94:			/* LN: 139 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20f)			# LN: 141 | 
	a0 = 0			# LN: 141 | 
	xmem[i0] = a0h			# LN: 141 | 
for_5:			/* LN: 141 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20f)			# LN: 141 | 
	a0 = xmem[i0]			# LN: 141 | 
	i0 = i7 - (0x10b)			# LN: 141 | 
	a1 = xmem[i0]			# LN: 141 | 
	a0 - a1			# LN: 141 | 
	if (a >= 0) jmp (for_end_5)			# LN: 141 | 
cline_141_0:			/* LN: 143 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20f)			# LN: 143 | 
	a0 = xmem[i0]			# LN: 143 | 
	a0 = a0 << 4			# LN: 143 | 
	i0 = a0			# LN: 143 | 
	i1 = i7 - (0x20e)			# LN: 143 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 143 | 
	a0 = xmem[i1]			# LN: 143 | 
	a1 = i0			# LN: 143 | 
	a0 = a1 + a0			# LN: 143 | 
	AnyReg(i0, a0h)			# LN: 143 | 
	i1 = i7 - (0x210)			# LN: 143 | 
	a0 = xmem[i0]			# LN: 143 | 
	xmem[i1] = a0h			# LN: 143 | 
cline_143_0:			/* LN: 144 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 144 | 
	i1 = i7 - (0x210)			# LN: 144 | 
	a0 = xmem[i1]			# LN: 144 | 
	i0 = xmem[i0]			# LN: 144 | 
	call (_cl_wavwrite_sendsample)			# LN: 144 | 
cline_144_0:			/* LN: 141 | CYCLE: 0 | RULES: () */ 
init_latch_label_3:			/* LN: 145 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20f)			# LN: 141 | 
	a0 = xmem[i0]			# LN: 141 | 
	uhalfword(a1) = (0x1)			# LN: 141 | 
	a0 = a0 + a1			# LN: 141 | 
	i0 = i7 - (0x20f)			# LN: 141 | 
	xmem[i0] = a0h			# LN: 141 | 
	jmp (for_5)			# LN: 141 | 
cline_141_1:			/* LN: 139 | CYCLE: 0 | RULES: () */ 
init_latch_label_4:			/* LN: 146 | CYCLE: 0 | RULES: () */ 
for_end_5:			/* LN: 141 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20e)			# LN: 139 | 
	a0 = xmem[i0]			# LN: 139 | 
	uhalfword(a1) = (0x1)			# LN: 139 | 
	a0 = a0 + a1			# LN: 139 | 
	i0 = i7 - (0x20e)			# LN: 139 | 
label_end_94:			# LN: 139 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 139 | 
cline_139_1:			/* LN: 126 | CYCLE: 0 | RULES: () */ 
init_latch_label_5:			/* LN: 147 | CYCLE: 0 | RULES: () */ 
for_end_4:			/* LN: 139 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 126 | 
	a0 = xmem[i0]			# LN: 126 | 
	uhalfword(a1) = (0x1)			# LN: 126 | 
	a0 = a0 + a1			# LN: 126 | 
	i0 = i7 - (0x20d)			# LN: 126 | 
	xmem[i0] = a0h			# LN: 126 | 
	jmp (for_1)			# LN: 126 | 
cline_126_1:			/* LN: 152 | CYCLE: 0 | RULES: () */ 
for_end_1:			/* LN: 126 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x106)			# LN: 152 | 
	i0 = xmem[i0]			# LN: 152 | 
	call (_cl_wavread_close)			# LN: 152 | 
cline_152_0:			/* LN: 153 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 153 | 
	i0 = xmem[i0]			# LN: 153 | 
	call (_cl_wavwrite_close)			# LN: 153 | 
cline_153_0:			/* LN: 156 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 156 | 
	jmp (__epilogue_226)			# LN: 156 | 
cline_156_0:			/* LN: 157 | CYCLE: 0 | RULES: () */ 
__epilogue_226:			/* LN: 157 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x210)			# LN: 157 | 
	i7 -= 1			# LN: 157 | 
	ret			# LN: 157 | 
