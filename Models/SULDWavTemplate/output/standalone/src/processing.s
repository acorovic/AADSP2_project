	.extern _centralOutput
	.extern _input_distortion
	.extern _leftInput
	.extern _lfeOutput
	.extern _lsOutput
	.extern _numGain
	.extern _outputMode
	.extern _output_distortion
	.extern _rightInput
	.extern _rsOutput
	.extern _sampleBuffer
	.extern _distortion
	.public _processing
	.code_ovly



_processing:			/* LN: 20 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 0)			# LN: 24 | 
	xmem[_leftInput + 0] = i0			# LN: 24 | 
	i0 = (0) + (_sampleBuffer + 16)			# LN: 25 | 
	xmem[_rightInput + 0] = i0			# LN: 25 | 
	a0 = xmem[_outputMode + 0]			# LN: 27 | 
	a0 & a0			# LN: 27 | 
	if (a == 0) jmp (case_0)			# LN: 27 | 
	a0 = xmem[_outputMode + 0]			# LN: 27 | 
	uhalfword(a1) = (0x1)			# LN: 27 | 
	a0 - a1			# LN: 27 | 
	if (a == 0) jmp (case_1)			# LN: 27 | 
	a0 = xmem[_outputMode + 0]			# LN: 27 | 
	uhalfword(a1) = (0x2)			# LN: 27 | 
	a0 - a1			# LN: 27 | 
	if (a == 0) jmp (case_2)			# LN: 27 | 
	jmp (__epilogue_106)			# LN: 27 | 
case_0:			/* LN: 29 | CYCLE: 0 | RULES: () */ 
	do (0x10), label_end_92			# LN: 30 | 
label_begin_92:			/* LN: 30 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_leftInput + 0]			# LN: 32 | 
	x0 = ymem[_numGain + 0]			# LN: 32 | 
	x1 = xmem[i0]			# LN: 32 | 
	i0 = (0) + (_leftInput)			# LN: 32 | 
	i0 = xmem[i0]			# LN: 32 | 
	a0 = x1 * x0			# LN: 32 | 
	xmem[i0] = a0			# LN: 32 | 
	i0 = xmem[_rightInput + 0]			# LN: 33 | 
	x0 = ymem[_numGain + 0]			# LN: 33 | 
	x1 = xmem[i0]			# LN: 33 | 
	i0 = (0) + (_rightInput)			# LN: 33 | 
	i0 = xmem[i0]			# LN: 33 | 
	a0 = x1 * x0			# LN: 33 | 
	xmem[i0] = a0			# LN: 33 | 
	i0 = xmem[_leftInput + 0]			# LN: 34 | 
	nop #empty cycle
	i0 += 1			# LN: 34 | 
	xmem[_leftInput + 0] = i0			# LN: 34 | 
	i0 = xmem[_rightInput + 0]			# LN: 35 | 
	nop #empty cycle
	i0 += 1			# LN: 35 | 
label_end_92:			# LN: 30 | CYCLE: 21 | RULES: ()
	xmem[_rightInput + 0] = i0			# LN: 35 | 
for_end_0:			/* LN: 30 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_106)			# LN: 37 | 
case_1:			/* LN: 38 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 32)			# LN: 40 | 
	xmem[_lsOutput + 0] = i0			# LN: 40 | 
	i0 = (0) + (_sampleBuffer + 48)			# LN: 41 | 
	xmem[_rsOutput + 0] = i0			# LN: 41 | 
	do (0x10), label_end_93			# LN: 43 | 
label_begin_93:			/* LN: 43 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_leftInput + 0]			# LN: 45 | 
	x0 = ymem[_numGain + 0]			# LN: 45 | 
	x1 = xmem[i0]			# LN: 45 | 
	i0 = (0) + (_leftInput)			# LN: 45 | 
	i0 = xmem[i0]			# LN: 45 | 
	a0 = x1 * x0			# LN: 45 | 
	xmem[i0] = a0			# LN: 45 | 
	i0 = xmem[_rightInput + 0]			# LN: 46 | 
	x0 = ymem[_numGain + 0]			# LN: 46 | 
	x1 = xmem[i0]			# LN: 46 | 
	i0 = (0) + (_rightInput)			# LN: 46 | 
	i0 = xmem[i0]			# LN: 46 | 
	a0 = x1 * x0			# LN: 46 | 
	xmem[i0] = a0			# LN: 46 | 
	i0 = xmem[_leftInput + 0]			# LN: 47 | 
	nop #empty cycle
	i0 += 1			# LN: 47 | 
	xmem[_leftInput + 0] = i0			# LN: 47 | 
	i0 = xmem[_rightInput + 0]			# LN: 48 | 
	nop #empty cycle
	i0 += 1			# LN: 48 | 
label_end_93:			# LN: 43 | CYCLE: 21 | RULES: ()
	xmem[_rightInput + 0] = i0			# LN: 48 | 
for_end_1:			/* LN: 43 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 0)			# LN: 51 | 
	xmem[_leftInput + 0] = i0			# LN: 51 | 
	i0 = (0) + (_sampleBuffer + 16)			# LN: 52 | 
	xmem[_rightInput + 0] = i0			# LN: 52 | 
	a0 = xmem[_leftInput + 0]			# LN: 54 | 
	xmem[_input_distortion + 0] = a0			# LN: 54 | 
	a0 = xmem[_lsOutput + 0]			# LN: 55 | 
	xmem[_output_distortion + 0] = a0			# LN: 55 | 
	call (_distortion)			# LN: 56 | 
	a0 = xmem[_rightInput + 0]			# LN: 58 | 
	xmem[_input_distortion + 0] = a0			# LN: 58 | 
	a0 = xmem[_rsOutput + 0]			# LN: 59 | 
	xmem[_output_distortion + 0] = a0			# LN: 59 | 
	call (_distortion)			# LN: 60 | 
	jmp (__epilogue_106)			# LN: 62 | 
case_2:			/* LN: 63 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 32)			# LN: 65 | 
	xmem[_lsOutput + 0] = i0			# LN: 65 | 
	i0 = (0) + (_sampleBuffer + 48)			# LN: 66 | 
	xmem[_rsOutput + 0] = i0			# LN: 66 | 
	i0 = (0) + (_sampleBuffer + 64)			# LN: 67 | 
	xmem[_centralOutput + 0] = i0			# LN: 67 | 
	i0 = (0) + (_sampleBuffer + 80)			# LN: 68 | 
	xmem[_lfeOutput + 0] = i0			# LN: 68 | 
	do (0x10), label_end_94			# LN: 70 | 
label_begin_94:			/* LN: 70 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_leftInput + 0]			# LN: 72 | 
	x0 = ymem[_numGain + 0]			# LN: 72 | 
	x1 = xmem[i0]			# LN: 72 | 
	i0 = (0) + (_leftInput)			# LN: 72 | 
	i0 = xmem[i0]			# LN: 72 | 
	a0 = x1 * x0			# LN: 72 | 
	xmem[i0] = a0			# LN: 72 | 
	i0 = xmem[_rightInput + 0]			# LN: 73 | 
	x0 = ymem[_numGain + 0]			# LN: 73 | 
	x1 = xmem[i0]			# LN: 73 | 
	i0 = (0) + (_rightInput)			# LN: 73 | 
	i0 = xmem[i0]			# LN: 73 | 
	a0 = x1 * x0			# LN: 73 | 
	xmem[i0] = a0			# LN: 73 | 
	i0 = xmem[_rightInput + 0]			# LN: 74 | 
	i1 = xmem[_leftInput + 0]			# LN: 74 | 
	a0 = xmem[i0]			# LN: 74 | 
	a1 = xmem[i1]			# LN: 74 | 
	i0 = (0) + (_centralOutput)			# LN: 74 | 
	i0 = xmem[i0]			# LN: 74 | 
	a0 = a0 + a1			# LN: 74 | 
	xmem[i0] = a0h			# LN: 74 | 
	i0 = xmem[_centralOutput + 0]			# LN: 75 | 
	nop #empty cycle
	i0 += 1			# LN: 75 | 
	xmem[_centralOutput + 0] = i0			# LN: 75 | 
	i0 = xmem[_leftInput + 0]			# LN: 76 | 
	nop #empty cycle
	i0 += 1			# LN: 76 | 
	xmem[_leftInput + 0] = i0			# LN: 76 | 
	i0 = xmem[_rightInput + 0]			# LN: 77 | 
	nop #empty cycle
	i0 += 1			# LN: 77 | 
label_end_94:			# LN: 70 | CYCLE: 33 | RULES: ()
	xmem[_rightInput + 0] = i0			# LN: 77 | 
for_end_2:			/* LN: 70 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 0)			# LN: 80 | 
	xmem[_leftInput + 0] = i0			# LN: 80 | 
	i0 = (0) + (_sampleBuffer + 16)			# LN: 81 | 
	xmem[_rightInput + 0] = i0			# LN: 81 | 
	a0 = xmem[_leftInput + 0]			# LN: 83 | 
	xmem[_input_distortion + 0] = a0			# LN: 83 | 
	a0 = xmem[_lsOutput + 0]			# LN: 84 | 
	xmem[_output_distortion + 0] = a0			# LN: 84 | 
	call (_distortion)			# LN: 85 | 
	a0 = xmem[_rightInput + 0]			# LN: 87 | 
	xmem[_input_distortion + 0] = a0			# LN: 87 | 
	a0 = xmem[_rsOutput + 0]			# LN: 88 | 
	xmem[_output_distortion + 0] = a0			# LN: 88 | 
	call (_distortion)			# LN: 89 | 
	do (0x10), label_end_95			# LN: 91 | 
label_begin_95:			/* LN: 91 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_lsOutput + 0]			# LN: 93 | 
	i1 = xmem[_rsOutput + 0]			# LN: 93 | 
	a0 = xmem[i0]			# LN: 93 | 
	a1 = xmem[i1]			# LN: 93 | 
	i0 = (0) + (_lfeOutput)			# LN: 93 | 
	i0 = xmem[i0]			# LN: 93 | 
	a0 = a0 + a1			# LN: 93 | 
	xmem[i0] = a0h			# LN: 93 | 
	i0 = xmem[_lfeOutput + 0]			# LN: 94 | 
	nop #empty cycle
	i0 += 1			# LN: 94 | 
	xmem[_lfeOutput + 0] = i0			# LN: 94 | 
	i0 = xmem[_lsOutput + 0]			# LN: 95 | 
	nop #empty cycle
	i0 += 1			# LN: 95 | 
	xmem[_lsOutput + 0] = i0			# LN: 95 | 
	i0 = xmem[_rsOutput + 0]			# LN: 96 | 
	nop #empty cycle
	i0 += 1			# LN: 96 | 
label_end_95:			# LN: 91 | CYCLE: 19 | RULES: ()
	xmem[_rsOutput + 0] = i0			# LN: 96 | 
__epilogue_106:			/* LN: 103 | CYCLE: 0 | RULES: () */ 
for_end_3:			/* LN: 91 | CYCLE: 0 | RULES: () */ 
	ret			# LN: 103 | 
