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
	.public _centralOutput
	.public _enable
	.public _frame_mcv
	.public _frame_mcv_HOST
	.extern _frame_mif
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
	.public _frame_background
	.public _frame_brick
	.public _frame_frame
	.public _frame_postKickstart
	.public _frame_postMallocInit
	.public _frame_preKickstart
	.public _frame_preMallocInit
	.public _frame_timer
	.extern _processing
	.extern cl_clearNM0_7
X_centralOutput	.xdata_ovly
_centralOutput
	.bss (0x1)
X_enable	.xdata_ovly
_enable
	.dw  (0x1)
Y_frame_mcv	.ydata_ovly
_frame_mcv
	.bss (0x4)
Y_frame_mcv_HOST	.ydata_ovly
_frame_mcv_HOST
	.dw  (0x1)
	.dw  (0x50c335d4)
	.dw  (0x0)
	.dw  (0x0)
X_input_distortion	.xdata_ovly
_input_distortion
	.bss (0x1)
X_leftInput	.xdata_ovly
_leftInput
	.bss (0x1)
X_lfeOutput	.xdata_ovly
_lfeOutput
	.bss (0x1)
X_lsOutput	.xdata_ovly
_lsOutput
	.bss (0x1)
Y_numGain	.ydata_ovly
_numGain
	.dw  (0x50c335d4)
X_outputMode	.xdata_ovly
_outputMode
	.dw  (0x2)
X_output_distortion	.xdata_ovly
_output_distortion
	.bss (0x1)
X_rightInput	.xdata_ovly
_rightInput
	.bss (0x1)
X_rsOutput	.xdata_ovly
_rsOutput
	.bss (0x1)
X_sampleBuffer	.xdata_ovly align 16
_sampleBuffer
	.bss (0x80)
X_type	.xdata_ovly
_type
	.dw  (0x0)
	.code_ovly



_frame_background:			/* LN: 98 | CYCLE: 0 | RULES: () */ 
	call (cl_clearNM0_7)			# LN: 98 | 
	i7 = (0) + (___C_STACK_BG)			# LN: 98 | 
	xmem[i7] = i7			# LN: 98 | 
	i7 += 1			# LN: 98 | 
cline_98_0:			/* LN: 101 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_frame_mcv_HOST)			# LN: 101 | 
	i1 = (0) + (_frame_mcv)			# LN: 101 | 
	do (0x4), label_end_11_0			# LN: 101 | 
label_begin_11_0:			/* LN: 101 | CYCLE: 0 | RULES: (CLowerMoveStructOrArrayFromMemToMem32to32) */ 
	x0 = ymem[i0]; i0 += 1			# LN: 101, 101 | 
label_end_11_0:			# LN: 101 | CYCLE: 1 | RULES: (CLowerMoveStructOrArrayFromMemToMem32to32)
	ymem[i1] = x0; i1 += 1			# LN: 101, 101 | 
cline_101_0:			/* LN: 102 | CYCLE: 0 | RULES: () */ 
	a0 = ymem[_frame_mcv + 1]			# LN: 102 | 
	ymem[_numGain + 0] = a0h			# LN: 102 | 
cline_102_0:			/* LN: 104 | CYCLE: 0 | RULES: () */ 
	a0 = ymem[_frame_mcv + 2]			# LN: 104 | 
	a0 & a0			# LN: 104 | 
	if (a != 0) jmp (else_4)			# LN: 104 | 
cline_104_0:			/* LN: 106 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 106 | 
	xmem[_outputMode + 0] = a0h			# LN: 106 | 
	jmp (endif_4)			# LN: 106 | 
cline_106_0:			/* LN: 107 | CYCLE: 0 | RULES: () */ 
else_4:			/* LN: 104 | CYCLE: 0 | RULES: () */ 
	a0 = ymem[_frame_mcv + 2]			# LN: 107 | 
	uhalfword(a1) = (0x1)			# LN: 107 | 
	a0 - a1			# LN: 107 | 
	if (a != 0) jmp (else_5)			# LN: 107 | 
cline_107_0:			/* LN: 109 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x1)			# LN: 109 | 
	xmem[_outputMode + 0] = a0h			# LN: 109 | 
	jmp (endif_5)			# LN: 109 | 
cline_109_0:			/* LN: 111 | CYCLE: 0 | RULES: () */ 
else_5:			/* LN: 107 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x2)			# LN: 111 | 
	xmem[_outputMode + 0] = a0h			# LN: 111 | 
cline_111_0:			/* LN: 114 | CYCLE: 0 | RULES: () */ 
endif_4:			/* LN: 104 | CYCLE: 0 | RULES: () */ 
endif_5:			/* LN: 107 | CYCLE: 0 | RULES: () */ 
	a0 = ymem[_frame_mcv + 3]			# LN: 114 | 
	a0 & a0			# LN: 114 | 
	if (a != 0) jmp (else_6)			# LN: 114 | 
cline_114_0:			/* LN: 116 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 116 | 
	xmem[_type + 0] = a0h			# LN: 116 | 
	jmp (endif_6)			# LN: 116 | 
cline_116_0:			/* LN: 117 | CYCLE: 0 | RULES: () */ 
else_6:			/* LN: 114 | CYCLE: 0 | RULES: () */ 
	a0 = ymem[_frame_mcv + 3]			# LN: 117 | 
	uhalfword(a1) = (0x1)			# LN: 117 | 
	a0 - a1			# LN: 117 | 
	if (a != 0) jmp (else_7)			# LN: 117 | 
cline_117_0:			/* LN: 119 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x1)			# LN: 119 | 
	xmem[_type + 0] = a0h			# LN: 119 | 
	jmp (endif_7)			# LN: 119 | 
cline_119_0:			/* LN: 120 | CYCLE: 0 | RULES: () */ 
else_7:			/* LN: 117 | CYCLE: 0 | RULES: () */ 
	a0 = ymem[_frame_mcv + 3]			# LN: 120 | 
	uhalfword(a1) = (0x2)			# LN: 120 | 
	a0 - a1			# LN: 120 | 
	if (a != 0) jmp (else_8)			# LN: 120 | 
cline_120_0:			/* LN: 121 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x2)			# LN: 121 | 
	xmem[_type + 0] = a0h			# LN: 121 | 
	jmp (endif_8)			# LN: 121 | 
cline_121_0:			/* LN: 124 | CYCLE: 0 | RULES: () */ 
else_8:			/* LN: 120 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x3)			# LN: 124 | 
	xmem[_type + 0] = a0h			# LN: 124 | 
cline_124_0:			/* LN: 128 | CYCLE: 0 | RULES: () */ 
endif_6:			/* LN: 114 | CYCLE: 0 | RULES: () */ 
endif_7:			/* LN: 117 | CYCLE: 0 | RULES: () */ 
endif_8:			/* LN: 120 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_176)			# LN: 128 | 
__epilogue_176:			/* LN: 128 | CYCLE: 0 | RULES: () */ 
	i7 -= 1			# LN: 128 | 
	ret			# LN: 128 | 



_frame_brick:			/* LN: 74 | CYCLE: 0 | RULES: () */ 
	call (cl_clearNM0_7)			# LN: 74 | 
	i7 = (0) + (___C_STACK_FG)			# LN: 74 | 
	xmem[i7] = i7			# LN: 74 | 
	i7 += 1			# LN: 74 | 
cline_74_0:			/* LN: 77 | CYCLE: 0 | RULES: () */ 
	i0 = ymem[___X_BY_IOBUFFER_PTRS + 0]			# LN: 77 | 
	xmem[_leftInput + 0] = i0			# LN: 77 | 
cline_77_0:			/* LN: 78 | CYCLE: 0 | RULES: () */ 
	i0 = ymem[___X_BY_IOBUFFER_PTRS + 1]			# LN: 78 | 
	xmem[_rightInput + 0] = i0			# LN: 78 | 
cline_78_0:			/* LN: 79 | CYCLE: 0 | RULES: () */ 
	i0 = ymem[___X_BY_IOBUFFER_PTRS + 4]			# LN: 79 | 
	xmem[_centralOutput + 0] = i0			# LN: 79 | 
cline_79_0:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
	i0 = ymem[___X_BY_IOBUFFER_PTRS + 2]			# LN: 80 | 
	xmem[_lsOutput + 0] = i0			# LN: 80 | 
cline_80_0:			/* LN: 81 | CYCLE: 0 | RULES: () */ 
	i0 = ymem[___X_BY_IOBUFFER_PTRS + 3]			# LN: 81 | 
	xmem[_rsOutput + 0] = i0			# LN: 81 | 
cline_81_0:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
	i0 = ymem[___X_BY_IOBUFFER_PTRS + 5]			# LN: 82 | 
	xmem[_lfeOutput + 0] = i0			# LN: 82 | 
cline_82_0:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_outputMode + 0]			# LN: 84 | 
	a0 & a0			# LN: 84 | 
	if (a != 0) jmp (else_2)			# LN: 84 | 
cline_84_0:			/* LN: 86 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[___X_VX_PPM_VALID_CHANNELS + 0]			# LN: 86 | 
	uhalfword(a1) = (0x2)			# LN: 86 | 
	a0 = a0 | a1			# LN: 86 | 
	xmem[___X_VX_PPM_VALID_CHANNELS + 0] = a0h			# LN: 86 | 
	jmp (endif_2)			# LN: 86 | 
cline_86_0:			/* LN: 87 | CYCLE: 0 | RULES: () */ 
else_2:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_outputMode + 0]			# LN: 87 | 
	uhalfword(a1) = (0x1)			# LN: 87 | 
	a0 - a1			# LN: 87 | 
	if (a != 0) jmp (else_3)			# LN: 87 | 
cline_87_0:			/* LN: 89 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[___X_VX_PPM_VALID_CHANNELS + 0]			# LN: 89 | 
	uhalfword(a1) = (0xf)			# LN: 89 | 
	a0 = a0 | a1			# LN: 89 | 
	xmem[___X_VX_PPM_VALID_CHANNELS + 0] = a0h			# LN: 89 | 
	jmp (endif_3)			# LN: 89 | 
cline_89_0:			/* LN: 91 | CYCLE: 0 | RULES: () */ 
else_3:			/* LN: 87 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[___X_VX_PPM_VALID_CHANNELS + 0]			# LN: 91 | 
	uhalfword(a1) = (0x3f)			# LN: 91 | 
	a0 = a0 | a1			# LN: 91 | 
	xmem[___X_VX_PPM_VALID_CHANNELS + 0] = a0h			# LN: 91 | 
cline_91_0:			/* LN: 95 | CYCLE: 0 | RULES: () */ 
endif_2:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
endif_3:			/* LN: 87 | CYCLE: 0 | RULES: () */ 
	call (_processing)			# LN: 95 | 
cline_95_0:			/* LN: 96 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_174)			# LN: 96 | 
__epilogue_174:			/* LN: 96 | CYCLE: 0 | RULES: () */ 
	i7 -= 1			# LN: 96 | 
	ret			# LN: 96 | 



_frame_frame:			/* LN: 69 | CYCLE: 0 | RULES: () */ 
	call (cl_clearNM0_7)			# LN: 69 | 
	i7 = (0) + (___C_STACK_FG)			# LN: 69 | 
	xmem[i7] = i7			# LN: 69 | 
	i7 += 1			# LN: 69 | 
cline_69_0:			/* LN: 72 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_172)			# LN: 72 | 
__epilogue_172:			/* LN: 72 | CYCLE: 0 | RULES: () */ 
	i7 -= 1			# LN: 72 | 
	ret			# LN: 72 | 



_frame_postKickstart:			/* LN: 59 | CYCLE: 0 | RULES: () */ 
	call (cl_clearNM0_7)			# LN: 59 | 
	i7 = (0) + (___C_STACK_FG)			# LN: 59 | 
	xmem[i7] = i7			# LN: 59 | 
	i7 += 1			# LN: 59 | 
cline_59_0:			/* LN: 62 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_168)			# LN: 62 | 
__epilogue_168:			/* LN: 62 | CYCLE: 0 | RULES: () */ 
	i7 -= 1			# LN: 62 | 
	ret			# LN: 62 | 



_frame_postMallocInit:			/* LN: 135 | CYCLE: 0 | RULES: () */ 
	call (cl_clearNM0_7)			# LN: 135 | 
	i7 = (0) + (___C_STACK_FG)			# LN: 135 | 
	xmem[i7] = i7			# LN: 135 | 
	i7 += 1			# LN: 135 | 
cline_135_0:			/* LN: 138 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_180)			# LN: 138 | 
__epilogue_180:			/* LN: 138 | CYCLE: 0 | RULES: () */ 
	i7 -= 1			# LN: 138 | 
	ret			# LN: 138 | 



_frame_preKickstart:			/* LN: 43 | CYCLE: 0 | RULES: () */ 
	call (cl_clearNM0_7)			# LN: 43 | 
	i7 = (0) + (___C_STACK_FG)			# LN: 43 | 
	xmem[i7] = i7			# LN: 43 | 
	i7 += 1			# LN: 43 | 
	i7 = i7 + (0x1)			# LN: 43 | 
	i1 = i7 - (0x1)			# LN: 43 | 
	xmem[i1] = i0			# LN: 43 | 
cline_43_0:			/* LN: 48 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_outputMode + 0]			# LN: 48 | 
	a0 & a0			# LN: 48 | 
	if (a != 0) jmp (else_0)			# LN: 48 | 
cline_48_0:			/* LN: 50 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[___X_VX_PPM_VALID_CHANNELS + 0]			# LN: 50 | 
	uhalfword(a1) = (0x2)			# LN: 50 | 
	a0 = a0 | a1			# LN: 50 | 
	xmem[___X_VX_PPM_VALID_CHANNELS + 0] = a0h			# LN: 50 | 
	jmp (endif_0)			# LN: 50 | 
cline_50_0:			/* LN: 51 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 48 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_outputMode + 0]			# LN: 51 | 
	uhalfword(a1) = (0x1)			# LN: 51 | 
	a0 - a1			# LN: 51 | 
	if (a != 0) jmp (else_1)			# LN: 51 | 
cline_51_0:			/* LN: 53 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[___X_VX_PPM_VALID_CHANNELS + 0]			# LN: 53 | 
	uhalfword(a1) = (0xf)			# LN: 53 | 
	a0 = a0 | a1			# LN: 53 | 
	xmem[___X_VX_PPM_VALID_CHANNELS + 0] = a0h			# LN: 53 | 
	jmp (endif_1)			# LN: 53 | 
cline_53_0:			/* LN: 55 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 51 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[___X_VX_PPM_VALID_CHANNELS + 0]			# LN: 55 | 
	uhalfword(a1) = (0x3f)			# LN: 55 | 
	a0 = a0 | a1			# LN: 55 | 
	xmem[___X_VX_PPM_VALID_CHANNELS + 0] = a0h			# LN: 55 | 
cline_55_0:			/* LN: 57 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 48 | CYCLE: 0 | RULES: () */ 
endif_1:			/* LN: 51 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_166)			# LN: 57 | 
__epilogue_166:			/* LN: 57 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x1)			# LN: 57 | 
	i7 -= 1			# LN: 57 | 
	ret			# LN: 57 | 



_frame_preMallocInit:			/* LN: 130 | CYCLE: 0 | RULES: () */ 
	call (cl_clearNM0_7)			# LN: 130 | 
	i7 = (0) + (___C_STACK_FG)			# LN: 130 | 
	xmem[i7] = i7			# LN: 130 | 
	i7 += 1			# LN: 130 | 
cline_130_0:			/* LN: 133 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_178)			# LN: 133 | 
__epilogue_178:			/* LN: 133 | CYCLE: 0 | RULES: () */ 
	i7 -= 1			# LN: 133 | 
	ret			# LN: 133 | 



_frame_timer:			/* LN: 64 | CYCLE: 0 | RULES: () */ 
	call (cl_clearNM0_7)			# LN: 64 | 
	i7 = (0) + (___C_STACK_FG)			# LN: 64 | 
	xmem[i7] = i7			# LN: 64 | 
	i7 += 1			# LN: 64 | 
cline_64_0:			/* LN: 67 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_170)			# LN: 67 | 
__epilogue_170:			/* LN: 67 | CYCLE: 0 | RULES: () */ 
	i7 -= 1			# LN: 67 | 
	ret			# LN: 67 | 
