	.public _sampleBuffer
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
	.extern _strcpy
	.extern __div
	.xdata_ovly
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

_main:			/* LN: 12 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 12 | 
	i7 += 1			# LN: 12 | 
	i7 = i7 + (0x20d)			# LN: 12 | 
	i1 = i7 - (0x1)			# LN: 12 | 
	xmem[i1] = a0h			# LN: 12 | 
	i1 = i7 - (0x2)			# LN: 12 | 
	xmem[i1] = i0			# LN: 12 | 
cline_12_0:			/* LN: 27 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 27 | 
	a0 = 0			# LN: 27 | 
	xmem[i0] = a0h			# LN: 27 | 
	do (0x8), label_end_92			# LN: 27 | 
cline_27_0:			/* LN: 28 | CYCLE: 0 | RULES: () */ 
label_begin_92:			/* LN: 27 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 28 | 
	a1 = xmem[i0]; a0 = 0			# LN: 28, 28 | 
	a1 = a1 << 4			# LN: 28 | 
	i0 = a1			# LN: 28 | 
	uhalfword(a1) = (0x10)			# LN: 28 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 28 | 
	call (_memset)			# LN: 28 | 
cline_28_0:			/* LN: 27 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 28 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 27 | 
	a0 = xmem[i0]			# LN: 27 | 
	uhalfword(a1) = (0x1)			# LN: 27 | 
	a0 = a0 + a1			# LN: 27 | 
	i0 = i7 - (0x3)			# LN: 27 | 
label_end_92:			# LN: 27 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 27 | 
cline_27_1:			/* LN: 32 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 27 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 32 | 
	i0 = xmem[i0]			# LN: 32 | 
	i1 = i7 - (259 - 0)			# LN: 32 | 
	i4 = xmem[i0]			# LN: 32 | 
	i0 = i1			# LN: 32 | 
	i1 = i4			# LN: 32 | 
	call (_strcpy)			# LN: 32 | 
cline_32_0:			/* LN: 33 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (259 - 0)			# LN: 33 | 
	call (_cl_wavread_open)			# LN: 33 | 
	AnyReg(i0, a0h)			# LN: 33 | 
	i1 = i7 - (0x104)			# LN: 33 | 
	xmem[i1] = i0			# LN: 33 | 
cline_33_0:			/* LN: 34 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x104)			# LN: 34 | 
	a0 = xmem[i0]			# LN: 34 | 
	a0 & a0			# LN: 34 | 
	if (a != 0) jmp (else_0)			# LN: 34 | 
cline_34_0:			/* LN: 36 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_0)			# LN: 36 | 
	call (_printf)			# LN: 36 | 
cline_36_0:			/* LN: 37 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 37 | 
	jmp (__epilogue_220)			# LN: 37 | 
cline_37_0:			/* LN: 43 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 34 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 34 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x104)			# LN: 43 | 
	i0 = xmem[i0]			# LN: 43 | 
	call (_cl_wavread_getnchannels)			# LN: 43 | 
	i0 = i7 - (0x105)			# LN: 43 | 
	xmem[i0] = a0h			# LN: 43 | 
cline_43_0:			/* LN: 44 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x104)			# LN: 44 | 
	i0 = xmem[i0]			# LN: 44 | 
	call (_cl_wavread_bits_per_sample)			# LN: 44 | 
	i0 = i7 - (0x106)			# LN: 44 | 
	xmem[i0] = a0h			# LN: 44 | 
cline_44_0:			/* LN: 45 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x104)			# LN: 45 | 
	i0 = xmem[i0]			# LN: 45 | 
	call (_cl_wavread_frame_rate)			# LN: 45 | 
	i0 = i7 - (0x107)			# LN: 45 | 
	xmem[i0] = a0h			# LN: 45 | 
cline_45_0:			/* LN: 46 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x104)			# LN: 46 | 
	i0 = xmem[i0]			# LN: 46 | 
	call (_cl_wavread_number_of_frames)			# LN: 46 | 
	i0 = i7 - (0x108)			# LN: 46 | 
	xmem[i0] = a0h			# LN: 46 | 
cline_46_0:			/* LN: 51 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 51 | 
	i0 = xmem[i0]			# LN: 51 | 
	i1 = i7 - (520 - 0)			# LN: 51 | 
	i0 += 1			# LN: 51 | 
	i4 = xmem[i0]			# LN: 51 | 
	i0 = i1			# LN: 51 | 
	i1 = i4			# LN: 51 | 
	call (_strcpy)			# LN: 51 | 
cline_51_0:			/* LN: 52 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (520 - 0)			# LN: 52 | 
	i1 = i7 - (0x106)			# LN: 52 | 
	a0 = xmem[i1]			# LN: 52 | 
	i1 = i7 - (0x105)			# LN: 52 | 
	a1 = xmem[i1]			# LN: 52 | 
	i1 = i7 - (0x107)			# LN: 52 | 
	b0 = xmem[i1]			# LN: 52 | 
	call (_cl_wavwrite_open)			# LN: 52 | 
	AnyReg(i0, a0h)			# LN: 52 | 
	i1 = i7 - (0x209)			# LN: 52 | 
	xmem[i1] = i0			# LN: 52 | 
cline_52_0:			/* LN: 53 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x209)			# LN: 53 | 
	a0 = xmem[i0]			# LN: 53 | 
	a0 & a0			# LN: 53 | 
	if (a != 0) jmp (else_1)			# LN: 53 | 
cline_53_0:			/* LN: 55 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_1)			# LN: 55 | 
	call (_printf)			# LN: 55 | 
cline_55_0:			/* LN: 56 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 56 | 
	jmp (__epilogue_220)			# LN: 56 | 
cline_56_0:			/* LN: 69 | CYCLE: 0 | RULES: () */ 
endif_1:			/* LN: 53 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 53 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 69 | 
	a0 = 0			# LN: 69 | 
	xmem[i0] = a0h			# LN: 69 | 
for_1:			/* LN: 69 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x108)			# LN: 69 | 
	a0 = xmem[i0]			# LN: 69 | 
	uhalfword(a1) = (0x10)			# LN: 69 | 
	call (__div)			# LN: 69 | 
	i0 = i7 - (0x20a)			# LN: 69 | 
	a1 = xmem[i0]			# LN: 69 | 
	a1 - a0			# LN: 69 | 
	if (a >= 0) jmp (for_end_1)			# LN: 69 | 
cline_69_0:			/* LN: 71 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 71 | 
	a0 = 0			# LN: 71 | 
	xmem[i0] = a0h			# LN: 71 | 
	do (0x10), label_end_93			# LN: 71 | 
cline_71_0:			/* LN: 73 | CYCLE: 0 | RULES: () */ 
label_begin_93:			/* LN: 71 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 73 | 
	a0 = 0			# LN: 73 | 
	xmem[i0] = a0h			# LN: 73 | 
for_3:			/* LN: 73 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 73 | 
	a0 = xmem[i0]			# LN: 73 | 
	i0 = i7 - (0x105)			# LN: 73 | 
	a1 = xmem[i0]			# LN: 73 | 
	a0 - a1			# LN: 73 | 
	if (a >= 0) jmp (for_end_3)			# LN: 73 | 
cline_73_0:			/* LN: 75 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x104)			# LN: 75 | 
	i0 = xmem[i0]			# LN: 75 | 
	call (_cl_wavread_recvsample)			# LN: 75 | 
	i0 = i7 - (0x20d)			# LN: 75 | 
	xmem[i0] = a0h			# LN: 75 | 
cline_75_0:			/* LN: 76 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 76 | 
	a0 = xmem[i0]			# LN: 76 | 
	a0 = a0 << 4			# LN: 76 | 
	i0 = a0			# LN: 76 | 
	i1 = i7 - (0x20b)			# LN: 76 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 76 | 
	a0 = xmem[i1]			# LN: 76 | 
	a1 = i0			# LN: 76 | 
	a0 = a1 + a0			# LN: 76 | 
	AnyReg(i0, a0h)			# LN: 76 | 
	i1 = i7 - (0x20d)			# LN: 76 | 
	a0 = xmem[i1]			# LN: 76 | 
	xmem[i0] = a0h			# LN: 76 | 
cline_76_0:			/* LN: 73 | CYCLE: 0 | RULES: () */ 
init_latch_label_1:			/* LN: 77 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 73 | 
	a0 = xmem[i0]			# LN: 73 | 
	uhalfword(a1) = (0x1)			# LN: 73 | 
	a0 = a0 + a1			# LN: 73 | 
	i0 = i7 - (0x20c)			# LN: 73 | 
	xmem[i0] = a0h			# LN: 73 | 
	jmp (for_3)			# LN: 73 | 
cline_73_1:			/* LN: 71 | CYCLE: 0 | RULES: () */ 
init_latch_label_2:			/* LN: 78 | CYCLE: 0 | RULES: () */ 
for_end_3:			/* LN: 73 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 71 | 
	a0 = xmem[i0]			# LN: 71 | 
	uhalfword(a1) = (0x1)			# LN: 71 | 
	a0 = a0 + a1			# LN: 71 | 
	i0 = i7 - (0x20b)			# LN: 71 | 
label_end_93:			# LN: 71 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 71 | 
cline_71_1:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
for_end_2:			/* LN: 71 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 82 | 
	a0 = 0			# LN: 82 | 
	xmem[i0] = a0h			# LN: 82 | 
	do (0x10), label_end_94			# LN: 82 | 
cline_82_0:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
label_begin_94:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 84 | 
	a0 = 0			# LN: 84 | 
	xmem[i0] = a0h			# LN: 84 | 
for_5:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 84 | 
	a0 = xmem[i0]			# LN: 84 | 
	i0 = i7 - (0x105)			# LN: 84 | 
	a1 = xmem[i0]			# LN: 84 | 
	a0 - a1			# LN: 84 | 
	if (a >= 0) jmp (for_end_5)			# LN: 84 | 
cline_84_0:			/* LN: 86 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 86 | 
	a0 = xmem[i0]			# LN: 86 | 
	a0 = a0 << 4			# LN: 86 | 
	i0 = a0			# LN: 86 | 
	i1 = i7 - (0x20b)			# LN: 86 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 86 | 
	a0 = xmem[i1]			# LN: 86 | 
	a1 = i0			# LN: 86 | 
	a0 = a1 + a0			# LN: 86 | 
	AnyReg(i0, a0h)			# LN: 86 | 
	i1 = i7 - (0x20d)			# LN: 86 | 
	a0 = xmem[i0]			# LN: 86 | 
	xmem[i1] = a0h			# LN: 86 | 
cline_86_0:			/* LN: 87 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x209)			# LN: 87 | 
	i1 = i7 - (0x20d)			# LN: 87 | 
	a0 = xmem[i1]			# LN: 87 | 
	i0 = xmem[i0]			# LN: 87 | 
	call (_cl_wavwrite_sendsample)			# LN: 87 | 
cline_87_0:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
init_latch_label_3:			/* LN: 88 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 84 | 
	a0 = xmem[i0]			# LN: 84 | 
	uhalfword(a1) = (0x1)			# LN: 84 | 
	a0 = a0 + a1			# LN: 84 | 
	i0 = i7 - (0x20c)			# LN: 84 | 
	xmem[i0] = a0h			# LN: 84 | 
	jmp (for_5)			# LN: 84 | 
cline_84_1:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
init_latch_label_4:			/* LN: 89 | CYCLE: 0 | RULES: () */ 
for_end_5:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 82 | 
	a0 = xmem[i0]			# LN: 82 | 
	uhalfword(a1) = (0x1)			# LN: 82 | 
	a0 = a0 + a1			# LN: 82 | 
	i0 = i7 - (0x20b)			# LN: 82 | 
label_end_94:			# LN: 82 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 82 | 
cline_82_1:			/* LN: 69 | CYCLE: 0 | RULES: () */ 
init_latch_label_5:			/* LN: 90 | CYCLE: 0 | RULES: () */ 
for_end_4:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 69 | 
	a0 = xmem[i0]			# LN: 69 | 
	uhalfword(a1) = (0x1)			# LN: 69 | 
	a0 = a0 + a1			# LN: 69 | 
	i0 = i7 - (0x20a)			# LN: 69 | 
	xmem[i0] = a0h			# LN: 69 | 
	jmp (for_1)			# LN: 69 | 
cline_69_1:			/* LN: 95 | CYCLE: 0 | RULES: () */ 
for_end_1:			/* LN: 69 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x104)			# LN: 95 | 
	i0 = xmem[i0]			# LN: 95 | 
	call (_cl_wavread_close)			# LN: 95 | 
cline_95_0:			/* LN: 96 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x209)			# LN: 96 | 
	i0 = xmem[i0]			# LN: 96 | 
	call (_cl_wavwrite_close)			# LN: 96 | 
cline_96_0:			/* LN: 99 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 99 | 
	jmp (__epilogue_220)			# LN: 99 | 
cline_99_0:			/* LN: 100 | CYCLE: 0 | RULES: () */ 
__epilogue_220:			/* LN: 100 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x20d)			# LN: 100 | 
	i7 -= 1			# LN: 100 | 
	ret			# LN: 100 | 
