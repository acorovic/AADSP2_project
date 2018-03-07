#include <stdio.h>
#include <dsplib\wavefile.h>
#include <stdfix.h>
#include <string.h>
#include "common.h"
#include <circbuff.h>

#define BLOCK_SIZE 16
#define MAX_NUM_CHANNEL 8

typedef enum {MODE_0, MODE_1, MODE_2} user_control;
typedef enum { HARD_CLIPPING, SOFT_CLIPPING, FULL_WAVE_RECTIFIER, HALF_WAVE_RECTIFIER} clipping_type_t;

__memX DSPfract __attribute__((__aligned__(16)) ) sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];

__memX DSPint enable = 1;
__memX user_control outputMode = MODE_0;
__memX clipping_type_t type = HARD_CLIPPING;

// Linear gain
__memY DSPfract numGain = FRACT_NUM(0.63095734448019324943436013662234);
// Distortion gain
__memX DSPfract distortion_gain = FRACT_NUM(0.5);


// Channels
__memX DSPfract* leftInput = sampleBuffer[0];
__memX DSPfract* rightInput = sampleBuffer[1];
__memX DSPfract* centralOutput = sampleBuffer[4];
__memX DSPfract* lsOutput = sampleBuffer[2];
__memX DSPfract* rsOutput = sampleBuffer[3];
__memX DSPfract* lfeOutput = sampleBuffer[5];

// Global distortion vars divided by 4
__memX const DSPfract hard_clip_threshold = FRACT_NUM(0.125);
__memX const DSPfract n_hard_clip_threshold = FRACT_NUM(-0.125);
__memX const DSPfract soft_clip_threshold1 = FRACT_NUM(0.08333333333333333);
__memX const DSPfract soft_clip_threshold2 = FRACT_NUM(0.16666666666666667);
__memX const DSPfract n_soft_clip_threshold1 = FRACT_NUM(-0.08333333333333333);
__memX const DSPfract n_soft_clip_threshold2 = FRACT_NUM(-0.16666666666666667);

__memX DSPfract* input_distortion;
__memX DSPfract* output_distortion;

// Half wave recifier accum var
DSPaccum x;
// Used to calculate input^2
DSPaccum soft_pow;
// Used to calculate input << 2
DSPaccum soft_mul;

void distortion()
{
	int i;
	// Apply distortion (sample per sample)
	switch (type) {
	case HARD_CLIPPING:
	{
		for (i = 0; i < BLOCK_SIZE; i++)
		{
			*output_distortion = *input_distortion * distortion_gain;
			if (*output_distortion  > hard_clip_threshold) // positive hard clipping
			{
				*output_distortion = hard_clip_threshold;
			}
			else if (*output_distortion < n_hard_clip_threshold) // negative hard clipping
			{
				*output_distortion = n_hard_clip_threshold;
			}
			*output_distortion = *output_distortion << 2;
			output_distortion++;
			input_distortion++;
		}
		break;
	}
	case SOFT_CLIPPING:
	{
		for (i = 0; i < BLOCK_SIZE; i++)
		{
			*output_distortion = *input_distortion * distortion_gain;
			if (*output_distortion  > soft_clip_threshold1)
			{
				if (*output_distortion > soft_clip_threshold2) // positive clipping
				{
					// divided by 4
					*output_distortion = FRACT_NUM(0.125);
				}
				else // soft knee (positive)
				{
					soft_pow = ((DSPaccum)*output_distortion) * ((DSPaccum)*output_distortion);
					soft_pow = soft_pow * 12;
					soft_mul = ((DSPaccum)*output_distortion) << 2;
					*output_distortion = FRACT_NUM(0.25) - FRACT_NUM(0.333333333333333) + soft_mul - soft_pow;
					//*output = (3.0f - (2.0f - 3.0f* (*output)) * (2.0f - 3.0f* (*output))) / 3.0f;
				}
			}
			else
			{
				if (*output_distortion < n_soft_clip_threshold1)
				{
					if (*output_distortion < n_soft_clip_threshold2) // negative clipping
					{
						// divided by 4
						*output_distortion = FRACT_NUM(-0.125);
					}
					else // soft knee (negative)
					{
						soft_pow =((DSPaccum)*output_distortion) * ((DSPaccum)*output_distortion);
						soft_pow = soft_pow * 12;
						soft_mul = ((DSPaccum)*output_distortion) << 2;
						*output_distortion = FRACT_NUM(-0.25) + FRACT_NUM(0.333333333333333) + soft_mul + soft_pow;
						//*output = -(3.0f - (2.0f + 3.0f* (*output))*(2.0f + 3.0f* (*output))) / 3.0f;
					}
				}
				else // linear region (-1/3..1/3)
				{
					*output_distortion <<= 1;
				}
			}
			*output_distortion >>= 1; // divide all by 2 to compensate for extra 6 dB gain boost
			// return to original
			*output_distortion <<= 2;
			output_distortion++;
			input_distortion++;
		}
		break;
	}
	case FULL_WAVE_RECTIFIER:
	{
		for (i = 0; i < BLOCK_SIZE; i++)
		{
			*output_distortion = *input_distortion * distortion_gain;
			if (*output_distortion < 0)
			{
				*output_distortion = - *output_distortion;
			}
			//*output = (*output).abs();
			*output_distortion = *output_distortion << 2;
			output_distortion++;
			input_distortion++;
		}
		break;
	}
	case HALF_WAVE_RECTIFIER:
	{
		for (i = 0; i < BLOCK_SIZE; i++)
		{
			*output_distortion = *input_distortion * distortion_gain;
			if (x < 0) {
				x = -x;
			}
			//x = (*output).abs();
			x += *output_distortion;
			*output_distortion = x;
			*output_distortion = *output_distortion << 1;

			output_distortion++;
			input_distortion++;
		}
		break;
	}
	default:
		break;
	}
}

void processing()
{
	int i;

	//leftInput = sampleBuffer[0];
	//rightInput = sampleBuffer[1];

	switch(outputMode)
	{
	case MODE_0:
		for (i = 0; i < BLOCK_SIZE; i++)
		{
			*leftInput = (*leftInput) * numGain;
			*rightInput = (*rightInput) * numGain;
			leftInput = CIRC_INC(leftInput, MOD_16 + 1); //++;
			rightInput = CIRC_INC(rightInput, MOD_16 + 1);
		}
		break;
	case MODE_1:
		{
			lsOutput = sampleBuffer[2];
			rsOutput = sampleBuffer[3];

			for (i = 0; i < BLOCK_SIZE; i++)
			{
				*leftInput = (*leftInput) * numGain;
				*rightInput = (*rightInput) * numGain;
				leftInput++;
				rightInput++;
			}

			leftInput = sampleBuffer[0];
			rightInput = sampleBuffer[1];

			input_distortion = leftInput;
			output_distortion = lsOutput;
			distortion();
			input_distortion = rightInput;
			output_distortion = rsOutput;
			distortion();
			//distortion(leftInput, lsOutput);
			//distortion(rightInput, rsOutput);
		}
		break;
	case MODE_2:
		{
			lsOutput = sampleBuffer[2];
			rsOutput = sampleBuffer[3];
			centralOutput = sampleBuffer[4];
			lfeOutput = sampleBuffer[5];

			for (i = 0; i < BLOCK_SIZE; i++)
			{
				*leftInput = (*leftInput) * numGain;
				*rightInput = (*rightInput) * numGain;
				*centralOutput = *rightInput + *leftInput;
				//centralOutput = CIRC_INC(centralOutput, MOD_16 + 1);
				centralOutput++;
				//leftInput = CIRC_INC(leftInput, MOD_16 + 1);
				leftInput++;
				//rightInput = CIRC_INC(rightInput, MOD_16 + 1);
				rightInput++;
			}

			leftInput = sampleBuffer[0];
			rightInput = sampleBuffer[1];

			input_distortion = leftInput;
			output_distortion = lsOutput;
			distortion();
			input_distortion = rightInput;
			output_distortion = rsOutput;
			distortion();
			//distortion(leftInput, lsOutput);
			//distortion(rightInput, rsOutput);

			for (i = 0; i < BLOCK_SIZE; i++)
			{
				*lfeOutput = *lsOutput + *rsOutput;
				//lfeOutput = CIRC_INC(lfeOutput, MOD_16 + 1);
				lfeOutput++;
				//lsOutput = CIRC_INC(lsOutput, MOD_16 + 1);
				lsOutput++;
				//rsOutput = CIRC_INC(rsOutput, MOD_16 + 1);
				rsOutput++;
			}
		}
		break;
	}

	return;
}

 
int main(int argc, char *argv[])
 {
    WAVREAD_HANDLE *wav_in;
    WAVWRITE_HANDLE *wav_out;
	
	char WavInputName[256];
	char WavOutputName[256];
	
    int nChannels;
	int bitsPerSample;
    int sampleRate;
    int iNumSamples;
    int i;
    int my_channels;
    char option = '2';

	// Init channel buffers
	for(i=0; i<MAX_NUM_CHANNEL; i++)
		memset(&sampleBuffer[i],0,BLOCK_SIZE);
    
	// Open input wav file
	//-------------------------------------------------
	strcpy(WavInputName, "../../TestStreams/Tone_L1k_R3kshort.wav");
	wav_in = cl_wavread_open(WavInputName);
	 if(wav_in == NULL)
    {
        printf("Error: Could not open wavefile.\n");
        return -1;
    }
	//-------------------------------------------------
	
	// Read input wav header
	//-------------------------------------------------
	nChannels = cl_wavread_getnchannels(wav_in);
    bitsPerSample = cl_wavread_bits_per_sample(wav_in);
    sampleRate = cl_wavread_frame_rate(wav_in);
    iNumSamples =  cl_wavread_number_of_frames(wav_in);
	//-------------------------------------------------

    switch (option)
    	{
    	case '0':
    		my_channels = 2;
    		outputMode = MODE_0;
    		break;
    	case '1':
    		my_channels = 4;
    		outputMode = MODE_1;
    		break;
    	case '2':
    		my_channels = 6;
    		outputMode = MODE_2;
    		break;
    	}
	
	// Open output wav file
	//-------------------------------------------------
	strcpy(WavOutputName, "../OutStreams/cmp_3.wav");
	wav_out = cl_wavwrite_open(WavOutputName, bitsPerSample, my_channels, sampleRate);
	if(!wav_out)
    {
        printf("Error: Could not open wavefile.\n");
        return -1;
    }
	//-------------------------------------------------
	
	// Processing loop
	//-------------------------------------------------	
    {
		int i;
		int j;
		int k;
		int sample;
		
		// exact file length should be handled correctly...
		for(i=0; i<iNumSamples/BLOCK_SIZE; i++)
		{	
			for(j=0; j<BLOCK_SIZE; j++)
			{
				for(k=0; k<nChannels; k++)
				{	
					sample = cl_wavread_recvsample(wav_in);
        			sampleBuffer[k][j] = rbits(sample);
				}
			}

			processing();

			for(j=0; j<BLOCK_SIZE; j++)
			{
				for(k=0; k<my_channels; k++)
				{	
					sample = bitsr(sampleBuffer[k][j]);
					cl_wavwrite_sendsample(wav_out, sample);
				}
			}		
		}
	}
	
	// Close files
	//-------------------------------------------------	
    cl_wavread_close(wav_in);
    cl_wavwrite_close(wav_out);
	//-------------------------------------------------	

    return 0;
 }
