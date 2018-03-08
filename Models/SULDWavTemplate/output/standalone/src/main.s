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
	.dw  (0x3)
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
	xmem[i7] = a2g; i7 += 1			# LN: 35, 35 | 
	xmem[i7] = a2h; i7 += 1			# LN: 35, 35 | 
	xmem[i7] = a2l; i7 += 1			# LN: 35, 35 | 
	xmem[i7] = i2; i7 += 1			# LN: 35, 35 | 
	xmem[i7] = a3g; i7 += 1			# LN: 35, 35 | 
	xmem[i7] = a3h; i7 += 1			# LN: 35, 35 | 
	xmem[i7] = a3l; i7 += 1			# LN: 35, 35 | 
	xmem[i7] = i3; i7 += 1			# LN: 35, 35 | 
	xmem[i7] = b2g; i7 += 1			# LN: 35, 35 | 
	xmem[i7] = b2h; i7 += 1			# LN: 35, 35 | 
	xmem[i7] = b2l; i7 += 1			# LN: 35, 35 | 
	i7 = i7 + (0x200)			# LN: 35 | 
	a2 = 0			# LN: 52 | 
	do (0x8), label_end_92			# LN: 52 | 
label_begin_92:			/* LN: 52 | CYCLE: 0 | RULES: () */ 
	a0 =+ a2			# LN: 53 | 
	a0 = a0 << 4			# LN: 53 | 
	i0 = a0; a0 = 0			# LN: 53, 53 | 
	uhalfword(a1) = (0x10)			# LN: 53 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 53 | 
	call (_memset)			# LN: 53 | 
	uhalfword(a0) = (0x1)			# LN: 52 | 
label_end_92:			# LN: 52 | CYCLE: 7 | RULES: ()
	a2 = a2 + a0			# LN: 52 | 
for_end_0:			/* LN: 52 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (256 - 0)			# LN: 57 | 
	i1 = (0) + (_string_const_0)			# LN: 57 | 
	call (_strcpy)			# LN: 57 | 
	i0 = i7 - (256 - 0)			# LN: 58 | 
	call (_cl_wavread_open)			# LN: 58 | 
	AnyReg(i2, a0h)			# LN: 58 | 
	a0 = i2			# LN: 59 | 
	a0 & a0			# LN: 59 | 
	if (a != 0) jmp (else_0)			# LN: 59 | 
	i0 = (0) + (_string_const_1)			# LN: 61 | 
	call (_printf)			# LN: 61 | 
	halfword(a0) = (0xffff)			# LN: 62 | 
	jmp (__epilogue_226)			# LN: 62 | 
endif_0:			/* LN: 59 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 59 | CYCLE: 0 | RULES: () */ 
	i0 = i2			# LN: 68 | 
	call (_cl_wavread_getnchannels)			# LN: 68 | 
	a2 =+ a0			# LN: 68 | 
	i0 = i2			# LN: 69 | 
	call (_cl_wavread_bits_per_sample)			# LN: 69 | 
	a1 =+ a0			# LN: 69 | 
	i0 = i2			# LN: 70 | 
	call (_cl_wavread_frame_rate)			# LN: 70 | 
	b0 =+ a0			# LN: 70 | 
	i0 = i2			# LN: 71 | 
	call (_cl_wavread_number_of_frames)			# LN: 71 | 
	b1 =+ a0			# LN: 71 | 
	uhalfword(a0) = (0x2)			# LN: 86 | 
	xmem[_outputMode + 0] = a0h			# LN: 86 | 
	i0 = i7 - (512 - 0)			# LN: 92 | 
	i1 = (0) + (_string_const_2)			# LN: 92 | 
	uhalfword(a3) = (0x6)			# LN: 87 | 
	call (_strcpy)			# LN: 92 | 
	i0 = i7 - (512 - 0)			# LN: 93 | 
	a0 =+ a1			# LN: 93 | 
	a1 =+ a3			# LN: 93 | 
	call (_cl_wavwrite_open)			# LN: 93 | 
	AnyReg(i3, a0h)			# LN: 93 | 
	a0 = i3			# LN: 94 | 
	a0 & a0			# LN: 94 | 
	if (a != 0) jmp (else_1)			# LN: 94 | 
	i0 = (0) + (_string_const_3)			# LN: 96 | 
	call (_printf)			# LN: 96 | 
	halfword(a0) = (0xffff)			# LN: 97 | 
	jmp (__epilogue_226)			# LN: 97 | 
endif_1:			/* LN: 94 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 94 | CYCLE: 0 | RULES: () */ 
	uhalfword(a1) = (0x10)			# LN: 110 | 
	a0 =+ b1			# LN: 110 | 
	call (__div)			# LN: 110 | 
	AnyReg(i0, a0h)			# LN: 110 | 
	nop #empty cycle
	do (i0), label_end_97			# LN: 110 | 
label_begin_97:			/* LN: 110 | CYCLE: 0 | RULES: () */ 
	b2 = 0			# LN: 112 | 
	do (0x10), label_end_94			# LN: 112 | 
label_begin_94:			/* LN: 112 | CYCLE: 0 | RULES: () */ 
	AnyReg(i0, a2h)			# LN: 114 | 
	b0 = 0			# LN: 114 | 
	do (i0), label_end_93			# LN: 114 | 
label_begin_93:			/* LN: 114 | CYCLE: 0 | RULES: () */ 
	i0 = i2			# LN: 116 | 
	call (_cl_wavread_recvsample)			# LN: 116 | 
	a1 =+ a0; b1 =+ b0			# LN: 116, 117 | 
	b1 = b1 << 4			# LN: 117 | 
	i0 = b1; a0 =+ a1			# LN: 117, 117 | 
	uhalfword(a1) = (0x1)			# LN: 114 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 117 | 
	b1 = i0; b0 = b0 + a1			# LN: 117, 114 | 
	a1 =+ b1			# LN: 117 | 
	a1 = a1 + b2			# LN: 117 | 
	AnyReg(i0, a1h)			# LN: 117 | 
	nop #empty cycle
label_end_93:			# LN: 114 | CYCLE: 12 | RULES: ()
	xmem[i0] = a0h			# LN: 117 | 
init_latch_label_2:			/* LN: 119 | CYCLE: 0 | RULES: () */ 
for_end_3:			/* LN: 114 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x1)			# LN: 112 | 
label_end_94:			# LN: 112 | CYCLE: 1 | RULES: ()
	b2 = b2 + a0			# LN: 112 | 
for_end_2:			/* LN: 112 | CYCLE: 0 | RULES: () */ 
	call (_processing)			# LN: 121 | 
	a1 = 0			# LN: 123 | 
	do (0x10), label_end_96			# LN: 123 | 
label_begin_96:			/* LN: 123 | CYCLE: 0 | RULES: () */ 
	AnyReg(i0, a3h)			# LN: 125 | 
	b0 = 0			# LN: 125 | 
	do (i0), label_end_95			# LN: 125 | 
label_begin_95:			/* LN: 125 | CYCLE: 0 | RULES: () */ 
	a0 =+ b0			# LN: 127 | 
	a0 = a0 << 4			# LN: 127 | 
	i1 = a0			# LN: 127 | 
	i0 = i3			# LN: 128 | 
	i1 = i1 + (_sampleBuffer + 0)			# LN: 127 | 
	a0 = i1			# LN: 127 | 
	a0 = a0 + a1			# LN: 127 | 
	AnyReg(i1, a0h)			# LN: 127 | 
	uhalfword(a0) = (0x1)			# LN: 125 | 
	b1 = xmem[i1]; b0 = b0 + a0			# LN: 127, 125 | 
	a0 =+ b1			# LN: 127 | 
label_end_95:			# LN: 125 | CYCLE: 11 | RULES: ()
	call (_cl_wavwrite_sendsample)			# LN: 128 | 
init_latch_label_4:			/* LN: 130 | CYCLE: 0 | RULES: () */ 
for_end_5:			/* LN: 125 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x1)			# LN: 123 | 
label_end_96:			# LN: 123 | CYCLE: 1 | RULES: ()
	a1 = a1 + a0			# LN: 123 | 
init_latch_label_5:			/* LN: 131 | CYCLE: 0 | RULES: () */ 
for_end_4:			/* LN: 123 | CYCLE: 0 | RULES: () */ 
label_end_97:			# LN: 110 | CYCLE: 0 | RULES: ()
	nop #empty cycle
for_end_1:			/* LN: 110 | CYCLE: 0 | RULES: () */ 
	i0 = i2			# LN: 136 | 
	call (_cl_wavread_close)			# LN: 136 | 
	i0 = i3			# LN: 137 | 
	call (_cl_wavwrite_close)			# LN: 137 | 
	a0 = 0			# LN: 140 | 
__epilogue_226:			/* LN: 141 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x200)			# LN: 141 | 
	i7 -= 1			# LN: 141 | 
	b2l = xmem[i7]; i7 -= 1			# LN: 141, 141 | 
	b2h = xmem[i7]; i7 -= 1			# LN: 141, 141 | 
	b2g = xmem[i7]; i7 -= 1			# LN: 141, 141 | 
	i3 = xmem[i7]; i7 -= 1			# LN: 141, 141 | 
	a3l = xmem[i7]; i7 -= 1			# LN: 141, 141 | 
	a3h = xmem[i7]; i7 -= 1			# LN: 141, 141 | 
	a3g = xmem[i7]; i7 -= 1			# LN: 141, 141 | 
	i2 = xmem[i7]; i7 -= 1			# LN: 141, 141 | 
	a2l = xmem[i7]; i7 -= 1			# LN: 141, 141 | 
	a2h = xmem[i7]; i7 -= 1			# LN: 141, 141 | 
	a2g = xmem[i7]			# LN: 141 | 
	ret			# LN: 141 | 
