	.public _centralOutput
	.public _distortion_gain
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
	.ydata_ovly
_distortion_gain
	.dw  (0x40000000)
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
	.dw  (0x32)
	.dw  (0x63)
	.dw  (0x68)
	.dw  (0x5f)
	.dw  (0x63)
	.dw  (0x6f)
	.dw  (0x6e)
	.dw  (0x74)
	.dw  (0x6f)
	.dw  (0x75)
	.dw  (0x72)
	.dw  (0x5f)
	.dw  (0x6e)
	.dw  (0x65)
	.dw  (0x34)
	.dw  (0x30)
	.dw  (0x5f)
	.dw  (0x32)
	.dw  (0x34)
	.dw  (0x62)
	.dw  (0x5f)
	.dw  (0x34)
	.dw  (0x38)
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

_main:			/* LN: 36 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = a2g; i7 += 1			# LN: 36, 36 | 
	xmem[i7] = a2h; i7 += 1			# LN: 36, 36 | 
	xmem[i7] = a2l; i7 += 1			# LN: 36, 36 | 
	xmem[i7] = i2; i7 += 1			# LN: 36, 36 | 
	xmem[i7] = a3g; i7 += 1			# LN: 36, 36 | 
	xmem[i7] = a3h; i7 += 1			# LN: 36, 36 | 
	xmem[i7] = a3l; i7 += 1			# LN: 36, 36 | 
	xmem[i7] = i3; i7 += 1			# LN: 36, 36 | 
	xmem[i7] = b2g; i7 += 1			# LN: 36, 36 | 
	xmem[i7] = b2h; i7 += 1			# LN: 36, 36 | 
	xmem[i7] = b2l; i7 += 1			# LN: 36, 36 | 
	i7 = i7 + (0x200)			# LN: 36 | 
	a2 = 0			# LN: 53 | 
	do (0x8), label_end_92			# LN: 53 | 
label_begin_92:			/* LN: 53 | CYCLE: 0 | RULES: () */ 
	a0 =+ a2			# LN: 54 | 
	a0 = a0 << 4			# LN: 54 | 
	i0 = a0; a0 = 0			# LN: 54, 54 | 
	uhalfword(a1) = (0x10)			# LN: 54 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 54 | 
	call (_memset)			# LN: 54 | 
	uhalfword(a0) = (0x1)			# LN: 53 | 
label_end_92:			# LN: 53 | CYCLE: 7 | RULES: ()
	a2 = a2 + a0			# LN: 53 | 
for_end_0:			/* LN: 53 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (256 - 0)			# LN: 58 | 
	i1 = (0) + (_string_const_0)			# LN: 58 | 
	call (_strcpy)			# LN: 58 | 
	i0 = i7 - (256 - 0)			# LN: 59 | 
	call (_cl_wavread_open)			# LN: 59 | 
	AnyReg(i2, a0h)			# LN: 59 | 
	a0 = i2			# LN: 60 | 
	a0 & a0			# LN: 60 | 
	if (a != 0) jmp (else_0)			# LN: 60 | 
	i0 = (0) + (_string_const_1)			# LN: 62 | 
	call (_printf)			# LN: 62 | 
	halfword(a0) = (0xffff)			# LN: 63 | 
	jmp (__epilogue_226)			# LN: 63 | 
endif_0:			/* LN: 60 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 60 | CYCLE: 0 | RULES: () */ 
	i0 = i2			# LN: 69 | 
	call (_cl_wavread_getnchannels)			# LN: 69 | 
	a2 =+ a0			# LN: 69 | 
	i0 = i2			# LN: 70 | 
	call (_cl_wavread_bits_per_sample)			# LN: 70 | 
	a1 =+ a0			# LN: 70 | 
	i0 = i2			# LN: 71 | 
	call (_cl_wavread_frame_rate)			# LN: 71 | 
	b0 =+ a0			# LN: 71 | 
	i0 = i2			# LN: 72 | 
	call (_cl_wavread_number_of_frames)			# LN: 72 | 
	b1 =+ a0			# LN: 72 | 
	uhalfword(a0) = (0x2)			# LN: 87 | 
	xmem[_outputMode + 0] = a0h			# LN: 87 | 
	i0 = i7 - (512 - 0)			# LN: 93 | 
	i1 = (0) + (_string_const_2)			# LN: 93 | 
	uhalfword(a3) = (0x6)			# LN: 88 | 
	call (_strcpy)			# LN: 93 | 
	i0 = i7 - (512 - 0)			# LN: 94 | 
	a0 =+ a1			# LN: 94 | 
	a1 =+ a3			# LN: 94 | 
	call (_cl_wavwrite_open)			# LN: 94 | 
	AnyReg(i3, a0h)			# LN: 94 | 
	a0 = i3			# LN: 95 | 
	a0 & a0			# LN: 95 | 
	if (a != 0) jmp (else_1)			# LN: 95 | 
	i0 = (0) + (_string_const_3)			# LN: 97 | 
	call (_printf)			# LN: 97 | 
	halfword(a0) = (0xffff)			# LN: 98 | 
	jmp (__epilogue_226)			# LN: 98 | 
endif_1:			/* LN: 95 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 95 | CYCLE: 0 | RULES: () */ 
	uhalfword(a1) = (0x10)			# LN: 111 | 
	a0 =+ b1			# LN: 111 | 
	call (__div)			# LN: 111 | 
	AnyReg(i0, a0h)			# LN: 111 | 
	nop #empty cycle
	do (i0), label_end_97			# LN: 111 | 
label_begin_97:			/* LN: 111 | CYCLE: 0 | RULES: () */ 
	b2 = 0			# LN: 113 | 
	do (0x10), label_end_94			# LN: 113 | 
label_begin_94:			/* LN: 113 | CYCLE: 0 | RULES: () */ 
	AnyReg(i0, a2h)			# LN: 115 | 
	b0 = 0			# LN: 115 | 
	do (i0), label_end_93			# LN: 115 | 
label_begin_93:			/* LN: 115 | CYCLE: 0 | RULES: () */ 
	i0 = i2			# LN: 117 | 
	call (_cl_wavread_recvsample)			# LN: 117 | 
	a1 =+ a0; b1 =+ b0			# LN: 117, 118 | 
	b1 = b1 << 4			# LN: 118 | 
	i0 = b1; a0 =+ a1			# LN: 118, 118 | 
	uhalfword(a1) = (0x1)			# LN: 115 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 118 | 
	b1 = i0; b0 = b0 + a1			# LN: 118, 115 | 
	a1 =+ b1			# LN: 118 | 
	a1 = a1 + b2			# LN: 118 | 
	AnyReg(i0, a1h)			# LN: 118 | 
	nop #empty cycle
label_end_93:			# LN: 115 | CYCLE: 12 | RULES: ()
	xmem[i0] = a0h			# LN: 118 | 
init_latch_label_2:			/* LN: 120 | CYCLE: 0 | RULES: () */ 
for_end_3:			/* LN: 115 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x1)			# LN: 113 | 
label_end_94:			# LN: 113 | CYCLE: 1 | RULES: ()
	b2 = b2 + a0			# LN: 113 | 
for_end_2:			/* LN: 113 | CYCLE: 0 | RULES: () */ 
	call (_processing)			# LN: 122 | 
	a1 = 0			# LN: 124 | 
	do (0x10), label_end_96			# LN: 124 | 
label_begin_96:			/* LN: 124 | CYCLE: 0 | RULES: () */ 
	AnyReg(i0, a3h)			# LN: 126 | 
	b0 = 0			# LN: 126 | 
	do (i0), label_end_95			# LN: 126 | 
label_begin_95:			/* LN: 126 | CYCLE: 0 | RULES: () */ 
	a0 =+ b0			# LN: 128 | 
	a0 = a0 << 4			# LN: 128 | 
	i1 = a0			# LN: 128 | 
	i0 = i3			# LN: 129 | 
	i1 = i1 + (_sampleBuffer + 0)			# LN: 128 | 
	a0 = i1			# LN: 128 | 
	a0 = a0 + a1			# LN: 128 | 
	AnyReg(i1, a0h)			# LN: 128 | 
	uhalfword(a0) = (0x1)			# LN: 126 | 
	b1 = xmem[i1]; b0 = b0 + a0			# LN: 128, 126 | 
	a0 =+ b1			# LN: 128 | 
label_end_95:			# LN: 126 | CYCLE: 11 | RULES: ()
	call (_cl_wavwrite_sendsample)			# LN: 129 | 
init_latch_label_4:			/* LN: 131 | CYCLE: 0 | RULES: () */ 
for_end_5:			/* LN: 126 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x1)			# LN: 124 | 
label_end_96:			# LN: 124 | CYCLE: 1 | RULES: ()
	a1 = a1 + a0			# LN: 124 | 
init_latch_label_5:			/* LN: 132 | CYCLE: 0 | RULES: () */ 
for_end_4:			/* LN: 124 | CYCLE: 0 | RULES: () */ 
label_end_97:			# LN: 111 | CYCLE: 0 | RULES: ()
	nop #empty cycle
for_end_1:			/* LN: 111 | CYCLE: 0 | RULES: () */ 
	i0 = i2			# LN: 137 | 
	call (_cl_wavread_close)			# LN: 137 | 
	i0 = i3			# LN: 138 | 
	call (_cl_wavwrite_close)			# LN: 138 | 
	a0 = 0			# LN: 141 | 
__epilogue_226:			/* LN: 142 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x200)			# LN: 142 | 
	i7 -= 1			# LN: 142 | 
	b2l = xmem[i7]; i7 -= 1			# LN: 142, 142 | 
	b2h = xmem[i7]; i7 -= 1			# LN: 142, 142 | 
	b2g = xmem[i7]; i7 -= 1			# LN: 142, 142 | 
	i3 = xmem[i7]; i7 -= 1			# LN: 142, 142 | 
	a3l = xmem[i7]; i7 -= 1			# LN: 142, 142 | 
	a3h = xmem[i7]; i7 -= 1			# LN: 142, 142 | 
	a3g = xmem[i7]; i7 -= 1			# LN: 142, 142 | 
	i2 = xmem[i7]; i7 -= 1			# LN: 142, 142 | 
	a2l = xmem[i7]; i7 -= 1			# LN: 142, 142 | 
	a2h = xmem[i7]; i7 -= 1			# LN: 142, 142 | 
	a2g = xmem[i7]			# LN: 142 | 
	ret			# LN: 142 | 
