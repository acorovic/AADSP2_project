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
	xmem[i7] = a2g; i7 += 1			# LN: 35, 35 | 
	xmem[i7] = a2h; i7 += 1			# LN: 35, 35 | 
	xmem[i7] = a2l; i7 += 1			# LN: 35, 35 | 
	xmem[i7] = a3g; i7 += 1			# LN: 35, 35 | 
	xmem[i7] = a3h; i7 += 1			# LN: 35, 35 | 
	xmem[i7] = a3l; i7 += 1			# LN: 35, 35 | 
	xmem[i7] = b2g; i7 += 1			# LN: 35, 35 | 
	xmem[i7] = b2h; i7 += 1			# LN: 35, 35 | 
	xmem[i7] = b2l; i7 += 1			# LN: 35, 35 | 
	xmem[i7] = i2; i7 += 1			# LN: 35, 35 | 
	xmem[i7] = b3g; i7 += 1			# LN: 35, 35 | 
	xmem[i7] = b3h; i7 += 1			# LN: 35, 35 | 
	xmem[i7] = b3l; i7 += 1			# LN: 35, 35 | 
	xmem[i7] = i3; i7 += 1			# LN: 35, 35 | 
	i7 = i7 + (0x202)			# LN: 35 | 
	i4 = i0			# LN: 35 | 
	i0 = i4			# LN: 49 | 
	i1 = i4 + (0x3)			# LN: 50 | 
	i0 += 2; a2 = 0			# LN: 49, 54 | 
	i0 = xmem[i0]			# LN: 49 | 
	i1 = xmem[i1]			# LN: 50 | 
	a3 = xmem[i0]			# LN: 49 | 
	i0 = i4 + (0x4)			# LN: 51 | 
	i0 = xmem[i0]			# LN: 51 | 
	b2 = xmem[i1]			# LN: 50 | 
	a0 = xmem[i0]			# LN: 51 | 
	i0 = i7 - (0x201)			# LN: 51 | 
	xmem[i0] = a0h			# LN: 51 | 
	do (0x8), label_end_92			# LN: 54 | 
label_begin_92:			/* LN: 54 | CYCLE: 0 | RULES: () */ 
	a0 =+ a2			# LN: 55 | 
	a0 = a0 << 4			# LN: 55 | 
	i0 = a0; a0 = 0			# LN: 55, 55 | 
	uhalfword(a1) = (0x10)			# LN: 55 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 55 | 
	call (_memset)			# LN: 55 | 
	uhalfword(a0) = (0x1)			# LN: 54 | 
label_end_92:			# LN: 54 | CYCLE: 7 | RULES: ()
	a2 = a2 + a0			# LN: 54 | 
for_end_0:			/* LN: 54 | CYCLE: 0 | RULES: () */ 
	i1 = xmem[i4]			# LN: 59 | 
	i0 = i7 - (256 - 0)			# LN: 59 | 
	call (_strcpy)			# LN: 59 | 
	i0 = i7 - (256 - 0)			# LN: 60 | 
	call (_cl_wavread_open)			# LN: 60 | 
	AnyReg(i2, a0h)			# LN: 60 | 
	a0 = i2			# LN: 61 | 
	a0 & a0			# LN: 61 | 
	if (a != 0) jmp (else_0)			# LN: 61 | 
	i0 = (0) + (_string_const_0)			# LN: 63 | 
	call (_printf)			# LN: 63 | 
	halfword(a0) = (0xffff)			# LN: 64 | 
	jmp (__epilogue_226)			# LN: 64 | 
endif_0:			/* LN: 61 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 61 | CYCLE: 0 | RULES: () */ 
	i0 = i2			# LN: 70 | 
	call (_cl_wavread_getnchannels)			# LN: 70 | 
	a2 =+ a0			# LN: 70 | 
	i0 = i2			# LN: 71 | 
	call (_cl_wavread_bits_per_sample)			# LN: 71 | 
	b1 =+ a0			# LN: 71 | 
	i0 = i2			# LN: 72 | 
	call (_cl_wavread_frame_rate)			# LN: 72 | 
	a1 =+ a0			# LN: 72 | 
	i0 = i2			# LN: 73 | 
	call (_cl_wavread_number_of_frames)			# LN: 73 | 
	b3 =+ a0			# LN: 73 | 
	uhalfword(a0) = (0x30)			# LN: 75 | 
	b2g = (0x0)			# LN: 75 | 
	a0g = (0x0)			# LN: 75 | 
	b2 - a0			# LN: 75 | 
	if (b == 0) jmp (case_0)			# LN: 75 | 
	uhalfword(a0) = (0x31)			# LN: 75 | 
	b2g = (0x0)			# LN: 75 | 
	a0g = (0x0)			# LN: 75 | 
	b2 - a0			# LN: 75 | 
	if (b == 0) jmp (case_1)			# LN: 75 | 
	uhalfword(a0) = (0x32)			# LN: 75 | 
	b2g = (0x0)			# LN: 75 | 
	a0g = (0x0)			# LN: 75 | 
	b2 - a0			# LN: 75 | 
	if (b == 0) jmp (case_2)			# LN: 75 | 
	uhalfword(a0) = (0x33)			# LN: 75 | 
	b2g = (0x0)			# LN: 75 | 
	a0g = (0x0)			# LN: 75 | 
	b2 - a0			# LN: 75 | 
	if (b == 0) jmp (case_3)			# LN: 75 | 
	jmp (switch_end_0)			# LN: 75 | 
case_0:			/* LN: 77 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 78 | 
	xmem[_type + 0] = a0h			# LN: 78 | 
	jmp (switch_end_0)			# LN: 79 | 
case_1:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x1)			# LN: 81 | 
	xmem[_type + 0] = a0h			# LN: 81 | 
	jmp (switch_end_0)			# LN: 82 | 
case_2:			/* LN: 83 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x2)			# LN: 84 | 
	xmem[_type + 0] = a0h			# LN: 84 | 
	jmp (switch_end_0)			# LN: 85 | 
case_3:			/* LN: 86 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x3)			# LN: 87 | 
	xmem[_type + 0] = a0h			# LN: 87 | 
switch_1:			/* LN: 91 | CYCLE: 0 | RULES: () */ 
switch_end_0:			/* LN: 75 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x30)			# LN: 91 | 
	a3g = (0x0)			# LN: 91 | 
	a0g = (0x0)			# LN: 91 | 
	a3 - a0			# LN: 91 | 
	if (a == 0) jmp (case_4)			# LN: 91 | 
	uhalfword(a0) = (0x31)			# LN: 91 | 
	a3g = (0x0)			# LN: 91 | 
	a0g = (0x0)			# LN: 91 | 
	a3 - a0			# LN: 91 | 
	if (a == 0) jmp (case_5)			# LN: 91 | 
	uhalfword(a0) = (0x32)			# LN: 91 | 
	a3g = (0x0)			# LN: 91 | 
	a0g = (0x0)			# LN: 91 | 
	a3 - a0			# LN: 91 | 
	if (a == 0) jmp (case_6)			# LN: 91 | 
	jmp (switch_end_1)			# LN: 91 | 
case_4:			/* LN: 93 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 95 | 
	xmem[_outputMode + 0] = a0h			# LN: 95 | 
	uhalfword(a0) = (0x2)			# LN: 96 | 
	i0 = i7 - (0x202)			# LN: 96 | 
	xmem[i0] = a0h			# LN: 96 | 
	jmp (switch_end_1)			# LN: 96 | 
case_5:			/* LN: 97 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x1)			# LN: 99 | 
	xmem[_outputMode + 0] = a0h			# LN: 99 | 
	uhalfword(a0) = (0x4)			# LN: 100 | 
	i0 = i7 - (0x202)			# LN: 100 | 
	xmem[i0] = a0h			# LN: 100 | 
	jmp (switch_end_1)			# LN: 100 | 
case_6:			/* LN: 101 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x2)			# LN: 103 | 
	xmem[_outputMode + 0] = a0h			# LN: 103 | 
	uhalfword(a0) = (0x6)			# LN: 104 | 
	i0 = i7 - (0x202)			# LN: 104 | 
	xmem[i0] = a0h			# LN: 104 | 
switch_end_1:			/* LN: 91 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (512 - 0)			# LN: 109 | 
	i4 += 1; b0 =+ a1			# LN: 109, 110 | 
	i1 = i7 - (0x202)			# LN: 110 | 
	a0 = xmem[i1]			# LN: 110 | 
	i1 = xmem[i4]			# LN: 109 | 
	a1 =+ a0			# LN: 110 | 
	call (_strcpy)			# LN: 109 | 
	a0 =+ b1			# LN: 110 | 
	i0 = i7 - (512 - 0)			# LN: 110 | 
	call (_cl_wavwrite_open)			# LN: 110 | 
	AnyReg(i3, a0h)			# LN: 110 | 
	a0 = i3			# LN: 111 | 
	a0 & a0			# LN: 111 | 
	if (a != 0) jmp (else_1)			# LN: 111 | 
	i0 = (0) + (_string_const_1)			# LN: 113 | 
	call (_printf)			# LN: 113 | 
	halfword(a0) = (0xffff)			# LN: 114 | 
	jmp (__epilogue_226)			# LN: 114 | 
endif_1:			/* LN: 111 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 111 | CYCLE: 0 | RULES: () */ 
	uhalfword(a1) = (0x10)			# LN: 127 | 
	a0 =+ b3			# LN: 127 | 
	call (__div)			# LN: 127 | 
	AnyReg(i0, a0h)			# LN: 127 | 
	nop #empty cycle
	do (i0), label_end_97			# LN: 127 | 
label_begin_97:			/* LN: 127 | CYCLE: 0 | RULES: () */ 
	a3 = 0			# LN: 129 | 
	do (0x10), label_end_94			# LN: 129 | 
label_begin_94:			/* LN: 129 | CYCLE: 0 | RULES: () */ 
	AnyReg(i0, a2h)			# LN: 131 | 
	b0 = 0			# LN: 131 | 
	do (i0), label_end_93			# LN: 131 | 
label_begin_93:			/* LN: 131 | CYCLE: 0 | RULES: () */ 
	i0 = i2			# LN: 133 | 
	call (_cl_wavread_recvsample)			# LN: 133 | 
	a1 =+ a0; b1 =+ b0			# LN: 133, 134 | 
	b1 = b1 << 4			# LN: 134 | 
	i0 = b1; a0 =+ a1			# LN: 134, 134 | 
	uhalfword(a1) = (0x1)			# LN: 131 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 134 | 
	b1 = i0; b0 = b0 + a1			# LN: 134, 131 | 
	a1 = a3 + b1			# LN: 134 | 
	AnyReg(i0, a1h)			# LN: 134 | 
	nop #empty cycle
label_end_93:			# LN: 131 | CYCLE: 11 | RULES: ()
	xmem[i0] = a0h			# LN: 134 | 
init_latch_label_2:			/* LN: 136 | CYCLE: 0 | RULES: () */ 
for_end_3:			/* LN: 131 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x1)			# LN: 129 | 
label_end_94:			# LN: 129 | CYCLE: 1 | RULES: ()
	a3 = a3 + a0			# LN: 129 | 
for_end_2:			/* LN: 129 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x31)			# LN: 138 | 
	i0 = i7 - (0x201)			# LN: 138 | 
	a1 = xmem[i0]			# LN: 138 | 
	a1g = (0x0)			# LN: 138 | 
	i0 = i7 - (0x201)			# LN: 138 | 
	xmem[i0] = a1h			# LN: 138 | 
	a0g = (0x0)			# LN: 138 | 
	i0 = i7 - (0x201)			# LN: 138 | 
	a1 = xmem[i0]			# LN: 138 | 
	a1 - a0			# LN: 138 | 
	if (a != 0) jmp (else_2)			# LN: 138 | 
	call (_processing)			# LN: 140 | 
endif_2:			/* LN: 138 | CYCLE: 0 | RULES: () */ 
else_2:			/* LN: 138 | CYCLE: 0 | RULES: () */ 
	a1 = 0			# LN: 143 | 
	do (0x10), label_end_96			# LN: 143 | 
label_begin_96:			/* LN: 143 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x202)			# LN: 145 | 
	a0 = xmem[i0]; b0 = 0			# LN: 145, 145 | 
	AnyReg(i0, a0h)			# LN: 145 | 
	nop #empty cycle
	do (i0), label_end_95			# LN: 145 | 
label_begin_95:			/* LN: 145 | CYCLE: 0 | RULES: () */ 
	a0 =+ b0			# LN: 147 | 
	a0 = a0 << 4			# LN: 147 | 
	i1 = a0			# LN: 147 | 
	i0 = i3			# LN: 148 | 
	i1 = i1 + (_sampleBuffer + 0)			# LN: 147 | 
	a0 = i1			# LN: 147 | 
	a0 = a0 + a1			# LN: 147 | 
	AnyReg(i1, a0h)			# LN: 147 | 
	uhalfword(a0) = (0x1)			# LN: 145 | 
	b1 = xmem[i1]; b0 = b0 + a0			# LN: 147, 145 | 
	a0 =+ b1			# LN: 147 | 
label_end_95:			# LN: 145 | CYCLE: 11 | RULES: ()
	call (_cl_wavwrite_sendsample)			# LN: 148 | 
init_latch_label_4:			/* LN: 150 | CYCLE: 0 | RULES: () */ 
for_end_5:			/* LN: 145 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x1)			# LN: 143 | 
label_end_96:			# LN: 143 | CYCLE: 1 | RULES: ()
	a1 = a1 + a0			# LN: 143 | 
init_latch_label_5:			/* LN: 151 | CYCLE: 0 | RULES: () */ 
for_end_4:			/* LN: 143 | CYCLE: 0 | RULES: () */ 
label_end_97:			# LN: 127 | CYCLE: 0 | RULES: ()
	nop #empty cycle
for_end_1:			/* LN: 127 | CYCLE: 0 | RULES: () */ 
	i0 = i2			# LN: 156 | 
	call (_cl_wavread_close)			# LN: 156 | 
	i0 = i3			# LN: 157 | 
	call (_cl_wavwrite_close)			# LN: 157 | 
	a0 = 0			# LN: 160 | 
__epilogue_226:			/* LN: 161 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x202)			# LN: 161 | 
	i7 -= 1			# LN: 161 | 
	i3 = xmem[i7]; i7 -= 1			# LN: 161, 161 | 
	b3l = xmem[i7]; i7 -= 1			# LN: 161, 161 | 
	b3h = xmem[i7]; i7 -= 1			# LN: 161, 161 | 
	b3g = xmem[i7]; i7 -= 1			# LN: 161, 161 | 
	i2 = xmem[i7]; i7 -= 1			# LN: 161, 161 | 
	b2l = xmem[i7]; i7 -= 1			# LN: 161, 161 | 
	b2h = xmem[i7]; i7 -= 1			# LN: 161, 161 | 
	b2g = xmem[i7]; i7 -= 1			# LN: 161, 161 | 
	a3l = xmem[i7]; i7 -= 1			# LN: 161, 161 | 
	a3h = xmem[i7]; i7 -= 1			# LN: 161, 161 | 
	a3g = xmem[i7]; i7 -= 1			# LN: 161, 161 | 
	a2l = xmem[i7]; i7 -= 1			# LN: 161, 161 | 
	a2h = xmem[i7]; i7 -= 1			# LN: 161, 161 | 
	a2g = xmem[i7]			# LN: 161 | 
	ret			# LN: 161 | 
