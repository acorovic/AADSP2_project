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
	i7 = i7 + (0x201)			# LN: 35 | 
	i4 = i0			# LN: 35 | 
	i0 = i4			# LN: 49 | 
	i1 = i4 + (0x3)			# LN: 50 | 
	i0 += 2; a2 = 0			# LN: 49, 53 | 
	i0 = xmem[i0]			# LN: 49 | 
	i1 = xmem[i1]			# LN: 50 | 
	a3 = xmem[i0]			# LN: 49 | 
	b2 = xmem[i1]			# LN: 50 | 
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
	i1 = xmem[i4]			# LN: 58 | 
	i0 = i7 - (256 - 0)			# LN: 58 | 
	call (_strcpy)			# LN: 58 | 
	i0 = i7 - (256 - 0)			# LN: 59 | 
	call (_cl_wavread_open)			# LN: 59 | 
	AnyReg(i2, a0h)			# LN: 59 | 
	a0 = i2			# LN: 60 | 
	a0 & a0			# LN: 60 | 
	if (a != 0) jmp (else_0)			# LN: 60 | 
	i0 = (0) + (_string_const_0)			# LN: 62 | 
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
	b1 =+ a0			# LN: 70 | 
	i0 = i2			# LN: 71 | 
	call (_cl_wavread_frame_rate)			# LN: 71 | 
	a1 =+ a0			# LN: 71 | 
	i0 = i2			# LN: 72 | 
	call (_cl_wavread_number_of_frames)			# LN: 72 | 
	b3 =+ a0			# LN: 72 | 
	uhalfword(a0) = (0x30)			# LN: 74 | 
	b2g = (0x0)			# LN: 74 | 
	a0g = (0x0)			# LN: 74 | 
	b2 - a0			# LN: 74 | 
	if (b == 0) jmp (case_0)			# LN: 74 | 
	uhalfword(a0) = (0x31)			# LN: 74 | 
	b2g = (0x0)			# LN: 74 | 
	a0g = (0x0)			# LN: 74 | 
	b2 - a0			# LN: 74 | 
	if (b == 0) jmp (case_1)			# LN: 74 | 
	uhalfword(a0) = (0x32)			# LN: 74 | 
	b2g = (0x0)			# LN: 74 | 
	a0g = (0x0)			# LN: 74 | 
	b2 - a0			# LN: 74 | 
	if (b == 0) jmp (case_2)			# LN: 74 | 
	uhalfword(a0) = (0x33)			# LN: 74 | 
	b2g = (0x0)			# LN: 74 | 
	a0g = (0x0)			# LN: 74 | 
	b2 - a0			# LN: 74 | 
	if (b == 0) jmp (case_3)			# LN: 74 | 
	jmp (switch_end_0)			# LN: 74 | 
case_0:			/* LN: 76 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 77 | 
	xmem[_type + 0] = a0h			# LN: 77 | 
	jmp (switch_end_0)			# LN: 78 | 
case_1:			/* LN: 79 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x1)			# LN: 80 | 
	xmem[_type + 0] = a0h			# LN: 80 | 
	jmp (switch_end_0)			# LN: 81 | 
case_2:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x2)			# LN: 83 | 
	xmem[_type + 0] = a0h			# LN: 83 | 
	jmp (switch_end_0)			# LN: 84 | 
case_3:			/* LN: 85 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x3)			# LN: 86 | 
	xmem[_type + 0] = a0h			# LN: 86 | 
switch_1:			/* LN: 90 | CYCLE: 0 | RULES: () */ 
switch_end_0:			/* LN: 74 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x30)			# LN: 90 | 
	a3g = (0x0)			# LN: 90 | 
	a0g = (0x0)			# LN: 90 | 
	a3 - a0			# LN: 90 | 
	if (a == 0) jmp (case_4)			# LN: 90 | 
	uhalfword(a0) = (0x31)			# LN: 90 | 
	a3g = (0x0)			# LN: 90 | 
	a0g = (0x0)			# LN: 90 | 
	a3 - a0			# LN: 90 | 
	if (a == 0) jmp (case_5)			# LN: 90 | 
	uhalfword(a0) = (0x32)			# LN: 90 | 
	a3g = (0x0)			# LN: 90 | 
	a0g = (0x0)			# LN: 90 | 
	a3 - a0			# LN: 90 | 
	if (a == 0) jmp (case_6)			# LN: 90 | 
	jmp (switch_end_1)			# LN: 90 | 
case_4:			/* LN: 92 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 94 | 
	xmem[_outputMode + 0] = a0h			# LN: 94 | 
	uhalfword(a0) = (0x2)			# LN: 95 | 
	i0 = i7 - (0x201)			# LN: 95 | 
	xmem[i0] = a0h			# LN: 95 | 
	jmp (switch_end_1)			# LN: 95 | 
case_5:			/* LN: 96 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x1)			# LN: 98 | 
	xmem[_outputMode + 0] = a0h			# LN: 98 | 
	uhalfword(a0) = (0x4)			# LN: 99 | 
	i0 = i7 - (0x201)			# LN: 99 | 
	xmem[i0] = a0h			# LN: 99 | 
	jmp (switch_end_1)			# LN: 99 | 
case_6:			/* LN: 100 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x2)			# LN: 102 | 
	xmem[_outputMode + 0] = a0h			# LN: 102 | 
	uhalfword(a0) = (0x6)			# LN: 103 | 
	i0 = i7 - (0x201)			# LN: 103 | 
	xmem[i0] = a0h			# LN: 103 | 
switch_end_1:			/* LN: 90 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (512 - 0)			# LN: 108 | 
	i4 += 1; b0 =+ a1			# LN: 108, 109 | 
	i1 = i7 - (0x201)			# LN: 109 | 
	a0 = xmem[i1]			# LN: 109 | 
	i1 = xmem[i4]			# LN: 108 | 
	a1 =+ a0			# LN: 109 | 
	call (_strcpy)			# LN: 108 | 
	a0 =+ b1			# LN: 109 | 
	i0 = i7 - (512 - 0)			# LN: 109 | 
	call (_cl_wavwrite_open)			# LN: 109 | 
	AnyReg(i3, a0h)			# LN: 109 | 
	a0 = i3			# LN: 110 | 
	a0 & a0			# LN: 110 | 
	if (a != 0) jmp (else_1)			# LN: 110 | 
	i0 = (0) + (_string_const_1)			# LN: 112 | 
	call (_printf)			# LN: 112 | 
	halfword(a0) = (0xffff)			# LN: 113 | 
	jmp (__epilogue_226)			# LN: 113 | 
endif_1:			/* LN: 110 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 110 | CYCLE: 0 | RULES: () */ 
	uhalfword(a1) = (0x10)			# LN: 126 | 
	a0 =+ b3			# LN: 126 | 
	call (__div)			# LN: 126 | 
	AnyReg(i0, a0h)			# LN: 126 | 
	nop #empty cycle
	do (i0), label_end_97			# LN: 126 | 
label_begin_97:			/* LN: 126 | CYCLE: 0 | RULES: () */ 
	a3 = 0			# LN: 128 | 
	do (0x10), label_end_94			# LN: 128 | 
label_begin_94:			/* LN: 128 | CYCLE: 0 | RULES: () */ 
	AnyReg(i0, a2h)			# LN: 130 | 
	b0 = 0			# LN: 130 | 
	do (i0), label_end_93			# LN: 130 | 
label_begin_93:			/* LN: 130 | CYCLE: 0 | RULES: () */ 
	i0 = i2			# LN: 132 | 
	call (_cl_wavread_recvsample)			# LN: 132 | 
	a1 =+ a0; b1 =+ b0			# LN: 132, 133 | 
	b1 = b1 << 4			# LN: 133 | 
	i0 = b1; a0 =+ a1			# LN: 133, 133 | 
	uhalfword(a1) = (0x1)			# LN: 130 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 133 | 
	b1 = i0; b0 = b0 + a1			# LN: 133, 130 | 
	a1 = a3 + b1			# LN: 133 | 
	AnyReg(i0, a1h)			# LN: 133 | 
	nop #empty cycle
label_end_93:			# LN: 130 | CYCLE: 11 | RULES: ()
	xmem[i0] = a0h			# LN: 133 | 
init_latch_label_2:			/* LN: 135 | CYCLE: 0 | RULES: () */ 
for_end_3:			/* LN: 130 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x1)			# LN: 128 | 
label_end_94:			# LN: 128 | CYCLE: 1 | RULES: ()
	a3 = a3 + a0			# LN: 128 | 
for_end_2:			/* LN: 128 | CYCLE: 0 | RULES: () */ 
	call (_processing)			# LN: 137 | 
	a1 = 0			# LN: 139 | 
	do (0x10), label_end_96			# LN: 139 | 
label_begin_96:			/* LN: 139 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x201)			# LN: 141 | 
	a0 = xmem[i0]; b0 = 0			# LN: 141, 141 | 
	AnyReg(i0, a0h)			# LN: 141 | 
	nop #empty cycle
	do (i0), label_end_95			# LN: 141 | 
label_begin_95:			/* LN: 141 | CYCLE: 0 | RULES: () */ 
	a0 =+ b0			# LN: 143 | 
	a0 = a0 << 4			# LN: 143 | 
	i1 = a0			# LN: 143 | 
	i0 = i3			# LN: 144 | 
	i1 = i1 + (_sampleBuffer + 0)			# LN: 143 | 
	a0 = i1			# LN: 143 | 
	a0 = a0 + a1			# LN: 143 | 
	AnyReg(i1, a0h)			# LN: 143 | 
	uhalfword(a0) = (0x1)			# LN: 141 | 
	b1 = xmem[i1]; b0 = b0 + a0			# LN: 143, 141 | 
	a0 =+ b1			# LN: 143 | 
label_end_95:			# LN: 141 | CYCLE: 11 | RULES: ()
	call (_cl_wavwrite_sendsample)			# LN: 144 | 
init_latch_label_4:			/* LN: 146 | CYCLE: 0 | RULES: () */ 
for_end_5:			/* LN: 141 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x1)			# LN: 139 | 
label_end_96:			# LN: 139 | CYCLE: 1 | RULES: ()
	a1 = a1 + a0			# LN: 139 | 
init_latch_label_5:			/* LN: 147 | CYCLE: 0 | RULES: () */ 
for_end_4:			/* LN: 139 | CYCLE: 0 | RULES: () */ 
label_end_97:			# LN: 126 | CYCLE: 0 | RULES: ()
	nop #empty cycle
for_end_1:			/* LN: 126 | CYCLE: 0 | RULES: () */ 
	i0 = i2			# LN: 152 | 
	call (_cl_wavread_close)			# LN: 152 | 
	i0 = i3			# LN: 153 | 
	call (_cl_wavwrite_close)			# LN: 153 | 
	a0 = 0			# LN: 156 | 
__epilogue_226:			/* LN: 157 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x201)			# LN: 157 | 
	i7 -= 1			# LN: 157 | 
	i3 = xmem[i7]; i7 -= 1			# LN: 157, 157 | 
	b3l = xmem[i7]; i7 -= 1			# LN: 157, 157 | 
	b3h = xmem[i7]; i7 -= 1			# LN: 157, 157 | 
	b3g = xmem[i7]; i7 -= 1			# LN: 157, 157 | 
	i2 = xmem[i7]; i7 -= 1			# LN: 157, 157 | 
	b2l = xmem[i7]; i7 -= 1			# LN: 157, 157 | 
	b2h = xmem[i7]; i7 -= 1			# LN: 157, 157 | 
	b2g = xmem[i7]; i7 -= 1			# LN: 157, 157 | 
	a3l = xmem[i7]; i7 -= 1			# LN: 157, 157 | 
	a3h = xmem[i7]; i7 -= 1			# LN: 157, 157 | 
	a3g = xmem[i7]; i7 -= 1			# LN: 157, 157 | 
	a2l = xmem[i7]; i7 -= 1			# LN: 157, 157 | 
	a2h = xmem[i7]; i7 -= 1			# LN: 157, 157 | 
	a2g = xmem[i7]			# LN: 157 | 
	ret			# LN: 157 | 
