/*
 * frame_impl.c
 *
 * This file defines the actual implementation of the functions for 
 * frame.
 */
#include <frame_impl.h>
#include "processing.h"
#include "distortion.h"
#include "common.h"


/*
 * It is a good practice to make MCV shadow. That way host changes
 * are less likely to produce inconsistent state
 */
__memY mcv_t frame_mcv_HOST = MCV_INITIAL_VALUES;
__memY mcv_t frame_mcv;

__memX DSPfract __attribute__((__aligned__(16)) ) sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];

__memX DSPint enable = 1;
__memX user_control outputMode = MODE_2;
__memX clipping_type_t type = HARD_CLIPPING;

// Linear gain
__memY DSPfract numGain = FRACT_NUM(0.63095734448019324943436013662234);


// Channels
__memY DSPfract* leftInput;

__memY DSPfract* rightInput;
__memY DSPfract* centralOutput;
__memY DSPfract* lsOutput;
__memY DSPfract* rsOutput;
__memY DSPfract* lfeOutput;

__memY DSPfract* input_distortion;
__memY DSPfract* output_distortion;


void __fg_call frame_preKickstart(__memY void * mif_ptr)
{
	// <your code here>
	//outputMode = MODE_1;

	if (outputMode == MODE_0)
	{
		__X_VX_PPM_VALID_CHANNELS |= 0x2;
	} else if (outputMode == MODE_1 )
	{
		__X_VX_PPM_VALID_CHANNELS |= 0xf;
	} else {
		__X_VX_PPM_VALID_CHANNELS |= 0x3f;
	}
}

void __fg_call frame_postKickstart(void)
{
	// <your code here>
}

void __fg_call frame_timer(void)
{
	// <your code here>
}

void __fg_call frame_frame(void)
{
	// <your code here>
}

void __fg_call frame_brick(void)
{
	// <your code here>
	leftInput = __X_BY_IOBUFFER_PTRS[0];
	rightInput = __X_BY_IOBUFFER_PTRS[1];
	centralOutput = __X_BY_IOBUFFER_PTRS[4];
	lsOutput = __X_BY_IOBUFFER_PTRS[2];
	rsOutput = __X_BY_IOBUFFER_PTRS[3];
	lfeOutput = __X_BY_IOBUFFER_PTRS[5];

	if (outputMode == MODE_0)
	{
		__X_VX_PPM_VALID_CHANNELS |= 0x2;
	} else if (outputMode == MODE_1)
	{
		__X_VX_PPM_VALID_CHANNELS |= 0xf;
	} else {
		__X_VX_PPM_VALID_CHANNELS |= 0x3f;
	}


	processing();
}

void __bg_call frame_background(void)
{
	// make a shadow copy of the MCV so that changes won't affect this function
	frame_mcv = frame_mcv_HOST;
	numGain = frame_mcv.input_gain;

	if (frame_mcv.combobox == 0)
	{
		outputMode = MODE_0;
	} else if (frame_mcv.combobox == 1)
	{
		outputMode = MODE_1;
	} else {
		outputMode = MODE_2;
	}

	if (frame_mcv.combobox_0 == 0)
	{
		type = HARD_CLIPPING;
	} else if (frame_mcv.combobox_0 == 1)
	{
		type = SOFT_CLIPPING;
	} else if (frame_mcv.combobox_0 == 2){
		type = FULL_WAVE_RECTIFIER;
	} else
	{
		type = HALF_WAVE_RECTIFIER;
	}

	// <your code here>
}

void __fg_call frame_preMallocInit(void)
{
	// <your code here>
}

void __fg_call frame_postMallocInit(void)
{
	// <your code here>
}
