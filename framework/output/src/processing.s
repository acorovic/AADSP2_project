	.extern ___C_STACK_BG
	.extern ___C_STACK_FG
	.extern ___X_BL_TEMPBUFF
	.extern ___X_BL_TEMPBUFF0
	.extern ___X_BL_TEMPBUFF1
	.extern ___X_BL_TEMPBUFF10
	.extern ___X_BL_TEMPBUFF11
	.extern ___X_BL_TEMPBUFF12
	.extern ___X_BL_TEMPBUFF13
	.extern ___X_BL_TEMPBUFF14
	.extern ___X_BL_TEMPBUFF15
	.extern ___X_BL_TEMPBUFF2
	.extern ___X_BL_TEMPBUFF3
	.extern ___X_BL_TEMPBUFF4
	.extern ___X_BL_TEMPBUFF5
	.extern ___X_BL_TEMPBUFF6
	.extern ___X_BL_TEMPBUFF7
	.extern ___X_BL_TEMPBUFF8
	.extern ___X_BL_TEMPBUFF9
	.extern ___X_BX_TEMPBUFF
	.extern ___X_BX_TEMPBUFF0
	.extern ___X_BX_TEMPBUFF1
	.extern ___X_BX_TEMPBUFF10
	.extern ___X_BX_TEMPBUFF11
	.extern ___X_BX_TEMPBUFF12
	.extern ___X_BX_TEMPBUFF13
	.extern ___X_BX_TEMPBUFF14
	.extern ___X_BX_TEMPBUFF15
	.extern ___X_BX_TEMPBUFF2
	.extern ___X_BX_TEMPBUFF3
	.extern ___X_BX_TEMPBUFF4
	.extern ___X_BX_TEMPBUFF5
	.extern ___X_BX_TEMPBUFF6
	.extern ___X_BX_TEMPBUFF7
	.extern ___X_BX_TEMPBUFF8
	.extern ___X_BX_TEMPBUFF9
	.extern ___X_BY_IOBUFFER_PTRS
	.extern ___X_BY_TEMPBUFF
	.extern ___X_BY_TEMPBUFF0
	.extern ___X_BY_TEMPBUFF1
	.extern ___X_BY_TEMPBUFF10
	.extern ___X_BY_TEMPBUFF11
	.extern ___X_BY_TEMPBUFF12
	.extern ___X_BY_TEMPBUFF13
	.extern ___X_BY_TEMPBUFF14
	.extern ___X_BY_TEMPBUFF15
	.extern ___X_BY_TEMPBUFF2
	.extern ___X_BY_TEMPBUFF3
	.extern ___X_BY_TEMPBUFF4
	.extern ___X_BY_TEMPBUFF5
	.extern ___X_BY_TEMPBUFF6
	.extern ___X_BY_TEMPBUFF7
	.extern ___X_BY_TEMPBUFF8
	.extern ___X_BY_TEMPBUFF9
	.extern ___X_VX_NEXTFRM_REINIT_REQ
	.extern ___X_VX_PPM_INPUTMODE
	.extern ___X_VX_PPM_INPUT_CHANNELS
	.extern ___X_VX_PPM_OUTPUTMODE
	.extern ___X_VX_PPM_OUTPUT_CHANNELS
	.extern ___X_VX_PPM_SAMPLERATE
	.extern ___X_VX_PPM_VALID_CHANNELS
	.extern ___X_VX_REINIT
	.extern ___X_VX_UNDERFLOW
	.extern _centralOutput
	.extern _frame_mcv
	.extern _frame_mcv_HOST
	.extern _frame_mif
	.extern _input_distortion
	.extern _leftInput
	.extern _lfeOutput
	.extern _lsOutput
	.extern _numGain
	.extern _outputMode
	.extern _output_distortion
	.extern _rightInput
	.extern _rsOutput
	.extern _distortion
	.public _processing
	.code_ovly



_processing:			/* LN: 19 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 19 | 
	i7 += 1			# LN: 19 | 
	i7 = i7 + (0x1)			# LN: 19 | 
cline_19_0:			/* LN: 23 | CYCLE: 0 | RULES: () */ 
	i0 = ymem[___X_BY_IOBUFFER_PTRS + 0]			# LN: 23 | 
	xmem[_leftInput + 0] = i0			# LN: 23 | 
cline_23_0:			/* LN: 24 | CYCLE: 0 | RULES: () */ 
	i0 = ymem[___X_BY_IOBUFFER_PTRS + 1]			# LN: 24 | 
	xmem[_rightInput + 0] = i0			# LN: 24 | 
cline_24_0:			/* LN: 26 | CYCLE: 0 | RULES: () */ 
switch_0:			/* LN: 26 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_outputMode + 0]			# LN: 26 | 
	a0 & a0			# LN: 26 | 
	if (a == 0) jmp (case_0)			# LN: 26 | 
	a0 = xmem[_outputMode + 0]			# LN: 26 | 
	uhalfword(a1) = (0x1)			# LN: 26 | 
	a0 - a1			# LN: 26 | 
	if (a == 0) jmp (case_1)			# LN: 26 | 
	a0 = xmem[_outputMode + 0]			# LN: 26 | 
	uhalfword(a1) = (0x2)			# LN: 26 | 
	a0 - a1			# LN: 26 | 
	if (a == 0) jmp (case_2)			# LN: 26 | 
	jmp (switch_end_0)			# LN: 26 | 
cline_26_0:			/* LN: 29 | CYCLE: 0 | RULES: () */ 
case_0:			/* LN: 28 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 29 | 
	a0 = 0			# LN: 29 | 
	xmem[i0] = a0h			# LN: 29 | 
	do (0x10), label_end_92			# LN: 29 | 
cline_29_0:			/* LN: 31 | CYCLE: 0 | RULES: () */ 
label_begin_92:			/* LN: 29 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_leftInput + 0]			# LN: 31 | 
	x0 = ymem[_numGain + 0]			# LN: 31 | 
	x1 = ymem[i0]			# LN: 31 | 
	i0 = (0) + (_leftInput)			# LN: 31 | 
	i0 = xmem[i0]			# LN: 31 | 
	a0 = x1 * x0			# LN: 31 | 
	ymem[i0] = a0			# LN: 31 | 
cline_31_0:			/* LN: 32 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_rightInput + 0]			# LN: 32 | 
	x0 = ymem[_numGain + 0]			# LN: 32 | 
	x1 = ymem[i0]			# LN: 32 | 
	i0 = (0) + (_rightInput)			# LN: 32 | 
	i0 = xmem[i0]			# LN: 32 | 
	a0 = x1 * x0			# LN: 32 | 
	ymem[i0] = a0			# LN: 32 | 
cline_32_0:			/* LN: 33 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_leftInput + 0]			# LN: 33 | 
	nop #empty cycle
	i0 += 1			# LN: 33 | 
	xmem[_leftInput + 0] = i0			# LN: 33 | 
cline_33_0:			/* LN: 34 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_rightInput + 0]			# LN: 34 | 
	nop #empty cycle
	i0 += 1			# LN: 34 | 
	xmem[_rightInput + 0] = i0			# LN: 34 | 
cline_34_0:			/* LN: 29 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 35 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 29 | 
	a0 = xmem[i0]			# LN: 29 | 
	uhalfword(a1) = (0x1)			# LN: 29 | 
	a0 = a0 + a1			# LN: 29 | 
	i0 = i7 - (0x1)			# LN: 29 | 
label_end_92:			# LN: 29 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 29 | 
cline_29_1:			/* LN: 36 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 29 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_0)			# LN: 36 | 
cline_36_0:			/* LN: 39 | CYCLE: 0 | RULES: () */ 
case_1:			/* LN: 37 | CYCLE: 0 | RULES: () */ 
	i0 = ymem[___X_BY_IOBUFFER_PTRS + 2]			# LN: 39 | 
	xmem[_lsOutput + 0] = i0			# LN: 39 | 
cline_39_0:			/* LN: 40 | CYCLE: 0 | RULES: () */ 
	i0 = ymem[___X_BY_IOBUFFER_PTRS + 3]			# LN: 40 | 
	xmem[_rsOutput + 0] = i0			# LN: 40 | 
cline_40_0:			/* LN: 42 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 42 | 
	a0 = 0			# LN: 42 | 
	xmem[i0] = a0h			# LN: 42 | 
	do (0x10), label_end_93			# LN: 42 | 
cline_42_0:			/* LN: 44 | CYCLE: 0 | RULES: () */ 
label_begin_93:			/* LN: 42 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_leftInput + 0]			# LN: 44 | 
	x0 = ymem[_numGain + 0]			# LN: 44 | 
	x1 = ymem[i0]			# LN: 44 | 
	i0 = (0) + (_leftInput)			# LN: 44 | 
	i0 = xmem[i0]			# LN: 44 | 
	a0 = x1 * x0			# LN: 44 | 
	ymem[i0] = a0			# LN: 44 | 
cline_44_0:			/* LN: 45 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_rightInput + 0]			# LN: 45 | 
	x0 = ymem[_numGain + 0]			# LN: 45 | 
	x1 = ymem[i0]			# LN: 45 | 
	i0 = (0) + (_rightInput)			# LN: 45 | 
	i0 = xmem[i0]			# LN: 45 | 
	a0 = x1 * x0			# LN: 45 | 
	ymem[i0] = a0			# LN: 45 | 
cline_45_0:			/* LN: 46 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_leftInput + 0]			# LN: 46 | 
	nop #empty cycle
	i0 += 1			# LN: 46 | 
	xmem[_leftInput + 0] = i0			# LN: 46 | 
cline_46_0:			/* LN: 47 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_rightInput + 0]			# LN: 47 | 
	nop #empty cycle
	i0 += 1			# LN: 47 | 
	xmem[_rightInput + 0] = i0			# LN: 47 | 
cline_47_0:			/* LN: 42 | CYCLE: 0 | RULES: () */ 
init_latch_label_1:			/* LN: 48 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 42 | 
	a0 = xmem[i0]			# LN: 42 | 
	uhalfword(a1) = (0x1)			# LN: 42 | 
	a0 = a0 + a1			# LN: 42 | 
	i0 = i7 - (0x1)			# LN: 42 | 
label_end_93:			# LN: 42 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 42 | 
cline_42_1:			/* LN: 50 | CYCLE: 0 | RULES: () */ 
for_end_1:			/* LN: 42 | CYCLE: 0 | RULES: () */ 
	i0 = ymem[___X_BY_IOBUFFER_PTRS + 0]			# LN: 50 | 
	xmem[_leftInput + 0] = i0			# LN: 50 | 
cline_50_0:			/* LN: 51 | CYCLE: 0 | RULES: () */ 
	i0 = ymem[___X_BY_IOBUFFER_PTRS + 1]			# LN: 51 | 
	xmem[_rightInput + 0] = i0			# LN: 51 | 
cline_51_0:			/* LN: 53 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_leftInput + 0]			# LN: 53 | 
	xmem[_input_distortion + 0] = a0			# LN: 53 | 
cline_53_0:			/* LN: 54 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_lsOutput + 0]			# LN: 54 | 
	xmem[_output_distortion + 0] = a0			# LN: 54 | 
cline_54_0:			/* LN: 55 | CYCLE: 0 | RULES: () */ 
	call (_distortion)			# LN: 55 | 
cline_55_0:			/* LN: 57 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_rightInput + 0]			# LN: 57 | 
	xmem[_input_distortion + 0] = a0			# LN: 57 | 
cline_57_0:			/* LN: 58 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_rsOutput + 0]			# LN: 58 | 
	xmem[_output_distortion + 0] = a0			# LN: 58 | 
cline_58_0:			/* LN: 59 | CYCLE: 0 | RULES: () */ 
	call (_distortion)			# LN: 59 | 
cline_59_0:			/* LN: 61 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_0)			# LN: 61 | 
cline_61_0:			/* LN: 64 | CYCLE: 0 | RULES: () */ 
case_2:			/* LN: 62 | CYCLE: 0 | RULES: () */ 
	i0 = ymem[___X_BY_IOBUFFER_PTRS + 2]			# LN: 64 | 
	xmem[_lsOutput + 0] = i0			# LN: 64 | 
cline_64_0:			/* LN: 65 | CYCLE: 0 | RULES: () */ 
	i0 = ymem[___X_BY_IOBUFFER_PTRS + 3]			# LN: 65 | 
	xmem[_rsOutput + 0] = i0			# LN: 65 | 
cline_65_0:			/* LN: 66 | CYCLE: 0 | RULES: () */ 
	i0 = ymem[___X_BY_IOBUFFER_PTRS + 4]			# LN: 66 | 
	xmem[_centralOutput + 0] = i0			# LN: 66 | 
cline_66_0:			/* LN: 67 | CYCLE: 0 | RULES: () */ 
	i0 = ymem[___X_BY_IOBUFFER_PTRS + 5]			# LN: 67 | 
	xmem[_lfeOutput + 0] = i0			# LN: 67 | 
cline_67_0:			/* LN: 69 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 69 | 
	a0 = 0			# LN: 69 | 
	xmem[i0] = a0h			# LN: 69 | 
	do (0x10), label_end_94			# LN: 69 | 
cline_69_0:			/* LN: 71 | CYCLE: 0 | RULES: () */ 
label_begin_94:			/* LN: 69 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_leftInput + 0]			# LN: 71 | 
	x0 = ymem[_numGain + 0]			# LN: 71 | 
	x1 = ymem[i0]			# LN: 71 | 
	i0 = (0) + (_leftInput)			# LN: 71 | 
	i0 = xmem[i0]			# LN: 71 | 
	a0 = x1 * x0			# LN: 71 | 
	ymem[i0] = a0			# LN: 71 | 
cline_71_0:			/* LN: 72 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_rightInput + 0]			# LN: 72 | 
	x0 = ymem[_numGain + 0]			# LN: 72 | 
	x1 = ymem[i0]			# LN: 72 | 
	i0 = (0) + (_rightInput)			# LN: 72 | 
	i0 = xmem[i0]			# LN: 72 | 
	a0 = x1 * x0			# LN: 72 | 
	ymem[i0] = a0			# LN: 72 | 
cline_72_0:			/* LN: 73 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_rightInput + 0]			# LN: 73 | 
	i1 = xmem[_leftInput + 0]			# LN: 73 | 
	a0 = ymem[i0]			# LN: 73 | 
	a1 = ymem[i1]			# LN: 73 | 
	i0 = (0) + (_centralOutput)			# LN: 73 | 
	i0 = xmem[i0]			# LN: 73 | 
	a0 = a0 + a1			# LN: 73 | 
	ymem[i0] = a0h			# LN: 73 | 
cline_73_0:			/* LN: 74 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_centralOutput + 0]			# LN: 74 | 
	nop #empty cycle
	i0 += 1			# LN: 74 | 
	xmem[_centralOutput + 0] = i0			# LN: 74 | 
cline_74_0:			/* LN: 75 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_leftInput + 0]			# LN: 75 | 
	nop #empty cycle
	i0 += 1			# LN: 75 | 
	xmem[_leftInput + 0] = i0			# LN: 75 | 
cline_75_0:			/* LN: 76 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_rightInput + 0]			# LN: 76 | 
	nop #empty cycle
	i0 += 1			# LN: 76 | 
	xmem[_rightInput + 0] = i0			# LN: 76 | 
cline_76_0:			/* LN: 69 | CYCLE: 0 | RULES: () */ 
init_latch_label_2:			/* LN: 78 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 69 | 
	a0 = xmem[i0]			# LN: 69 | 
	uhalfword(a1) = (0x1)			# LN: 69 | 
	a0 = a0 + a1			# LN: 69 | 
	i0 = i7 - (0x1)			# LN: 69 | 
label_end_94:			# LN: 69 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 69 | 
cline_69_1:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
for_end_2:			/* LN: 69 | CYCLE: 0 | RULES: () */ 
	i0 = ymem[___X_BY_IOBUFFER_PTRS + 0]			# LN: 80 | 
	xmem[_leftInput + 0] = i0			# LN: 80 | 
cline_80_0:			/* LN: 81 | CYCLE: 0 | RULES: () */ 
	i0 = ymem[___X_BY_IOBUFFER_PTRS + 1]			# LN: 81 | 
	xmem[_rightInput + 0] = i0			# LN: 81 | 
cline_81_0:			/* LN: 83 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_leftInput + 0]			# LN: 83 | 
	xmem[_input_distortion + 0] = a0			# LN: 83 | 
cline_83_0:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_lsOutput + 0]			# LN: 84 | 
	xmem[_output_distortion + 0] = a0			# LN: 84 | 
cline_84_0:			/* LN: 85 | CYCLE: 0 | RULES: () */ 
	call (_distortion)			# LN: 85 | 
cline_85_0:			/* LN: 87 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_rightInput + 0]			# LN: 87 | 
	xmem[_input_distortion + 0] = a0			# LN: 87 | 
cline_87_0:			/* LN: 88 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_rsOutput + 0]			# LN: 88 | 
	xmem[_output_distortion + 0] = a0			# LN: 88 | 
cline_88_0:			/* LN: 89 | CYCLE: 0 | RULES: () */ 
	call (_distortion)			# LN: 89 | 
cline_89_0:			/* LN: 91 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 91 | 
	a0 = 0			# LN: 91 | 
	xmem[i0] = a0h			# LN: 91 | 
	do (0x10), label_end_95			# LN: 91 | 
cline_91_0:			/* LN: 93 | CYCLE: 0 | RULES: () */ 
label_begin_95:			/* LN: 91 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_lsOutput + 0]			# LN: 93 | 
	i1 = xmem[_rsOutput + 0]			# LN: 93 | 
	a0 = ymem[i0]			# LN: 93 | 
	a1 = ymem[i1]			# LN: 93 | 
	i0 = (0) + (_lfeOutput)			# LN: 93 | 
	i0 = xmem[i0]			# LN: 93 | 
	a0 = a0 + a1			# LN: 93 | 
	ymem[i0] = a0			# LN: 93 | 
cline_93_0:			/* LN: 94 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_lfeOutput + 0]			# LN: 94 | 
	nop #empty cycle
	i0 += 1			# LN: 94 | 
	xmem[_lfeOutput + 0] = i0			# LN: 94 | 
cline_94_0:			/* LN: 95 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_lsOutput + 0]			# LN: 95 | 
	nop #empty cycle
	i0 += 1			# LN: 95 | 
	xmem[_lsOutput + 0] = i0			# LN: 95 | 
cline_95_0:			/* LN: 96 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_rsOutput + 0]			# LN: 96 | 
	nop #empty cycle
	i0 += 1			# LN: 96 | 
	xmem[_rsOutput + 0] = i0			# LN: 96 | 
cline_96_0:			/* LN: 91 | CYCLE: 0 | RULES: () */ 
init_latch_label_3:			/* LN: 98 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 91 | 
	a0 = xmem[i0]			# LN: 91 | 
	uhalfword(a1) = (0x1)			# LN: 91 | 
	a0 = a0 + a1			# LN: 91 | 
	i0 = i7 - (0x1)			# LN: 91 | 
label_end_95:			# LN: 91 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 91 | 
cline_91_1:			/* LN: 100 | CYCLE: 0 | RULES: () */ 
for_end_3:			/* LN: 91 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_0)			# LN: 100 | 
cline_100_0:			/* LN: 103 | CYCLE: 0 | RULES: () */ 
switch_end_0:			/* LN: 26 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_180)			# LN: 103 | 
cline_103_0:			/* LN: 104 | CYCLE: 0 | RULES: () */ 
__epilogue_180:			/* LN: 104 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x1)			# LN: 104 | 
	i7 -= 1			# LN: 104 | 
	ret			# LN: 104 | 
