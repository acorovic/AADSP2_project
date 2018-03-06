#include <stdio.h>
#include <dsplib\wavefile.h>
#include <stdfix.h>
#include <string.h>
#include "common.h"

#define BLOCK_SIZE 16
#define MAX_NUM_CHANNEL 8

typedef enum {MODE_0, MODE_1, MODE_2} user_control;
typedef enum { HARD_CLIPPING, SOFT_CLIPPING, FULL_WAVE_RECTIFIER, HALF_WAVE_RECTIFIER} clipping_type_t;

__memX DSPfract sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];

__memX DSPint enable = 1;
__memX user_control outputMode = MODE_0;
__memX clipping_type_t type = SOFT_CLIPPING;

// Linear gain
__memY DSPfract numGain = FRACT_NUM(0.63095734448019324943436013662234);
// Distortion gain
__memX DSPfract distortion_gain = FRACT_NUM(0.5);

// Processing global vars
__memX DSPint i;

// Channels
__memX DSPfract* leftInput;
__memX DSPfract* rightInput;
__memX DSPfract* centralOutput;
__memX DSPfract* lsOutput;
__memX DSPfract* rsOutput;
__memX DSPfract* lfeOutput;

// Global distortion vars divided by 4
__memX const DSPfract hard_clip_threshold = FRACT_NUM(0.125);
__memX const DSPfract n_hard_clip_threshold = FRACT_NUM(-0.125);
__memX const DSPfract soft_clip_threshold1 = FRACT_NUM(0.08333333333333333);
__memX const DSPfract soft_clip_threshold2 = FRACT_NUM(0.16666666666666667);
__memX const DSPfract n_soft_clip_threshold1 = FRACT_NUM(-0.08333333333333333);
__memX const DSPfract n_soft_clip_threshold2 = FRACT_NUM(-0.16666666666666667);

// Half wave recifier accum var
DSPaccum x;
// Used to calculate input^2
DSPaccum soft_pow;
// Used to calculate input << 2
DSPaccum soft_mul;

void distortion(__memX DSPfract* input, __memX DSPfract* output)
{
	// Apply distortion (sample per sample)
	switch (type) {
	case HARD_CLIPPING:
	{
		for (i = 0; i < BLOCK_SIZE; i++)
		{
			*output = *input * distortion_gain;
			if (*output  > hard_clip_threshold) // positive hard clipping
			{
				*output = hard_clip_threshold;
			}
			else if (*output < n_hard_clip_threshold) // negative hard clipping
			{
				*output = n_hard_clip_threshold;
			}
			*output = *output << 2;
			output++;
			input++;
		}
		break;
	}
	case SOFT_CLIPPING:
	{
		for (i = 0; i < BLOCK_SIZE; i++)
		{
			*output = *input * distortion_gain;
			if (*output  > soft_clip_threshold1)
			{
				if (*output > soft_clip_threshold2) // positive clipping
				{
					// divided by 4
					*output = FRACT_NUM(0.125);
				}
				else // soft knee (positive)
				{
					soft_pow = ((DSPaccum)*output) * ((DSPaccum)*output);
					soft_pow = soft_pow * 12;
					soft_mul = ((DSPaccum)*output) << 2;
					*output = FRACT_NUM(0.25) - FRACT_NUM(0.333333333333333) + soft_mul - soft_pow;
					//*output = (3.0f - (2.0f - 3.0f* (*output)) * (2.0f - 3.0f* (*output))) / 3.0f;
				}
			}
			else
			{
				if (*output < n_soft_clip_threshold1)
				{
					if (*output < n_soft_clip_threshold2) // negative clipping
					{
						// divided by 4
						*output = FRACT_NUM(-0.125);
					}
					else // soft knee (negative)
					{
						soft_pow =((DSPaccum)*output) * ((DSPaccum)*output);
						soft_pow = soft_pow * 12;
						soft_mul = ((DSPaccum)*output) << 2;
						*output = FRACT_NUM(-0.25) + FRACT_NUM(0.333333333333333) + soft_mul + soft_pow;
						//*output = -(3.0f - (2.0f + 3.0f* (*output))*(2.0f + 3.0f* (*output))) / 3.0f;
					}
				}
				else // linear region (-1/3..1/3)
				{
					*output <<= 1;
				}
			}
			*output >>= 1; // divide all by 2 to compensate for extra 6 dB gain boost
			// return to original
			*output <<= 2;
			output++;
			input++;
		}
		break;
	}
	case FULL_WAVE_RECTIFIER:
	{
		for (i = 0; i < BLOCK_SIZE; i++)
		{
			*output = *input * distortion_gain;
			if (*output < 0)
			{
				*output = - *output;
			}
			//*output = (*output).abs();
			*output = *output << 2;
			output++;
			input++;
		}
		break;
	}
	case HALF_WAVE_RECTIFIER:
	{
		for (i = 0; i < BLOCK_SIZE; i++)
		{
			*output = *input * distortion_gain;
			if (x < 0) {
				x = -x;
			}
			//x = (*output).abs();
			x += *output;
			*output = x;
			*output = *output << 1;

			output++;
			input++;
		}
		break;
	}
	default:
		break;
	}
}

void processing()
{
	leftInput = sampleBuffer[0];
	rightInput = sampleBuffer[1];

	switch(outputMode)
	{
	case MODE_0:
		for (i = 0; i < BLOCK_SIZE; i++)
		{
			*leftInput = (*leftInput) * numGain;
			*rightInput = (*rightInput) * numGain;
			leftInput++;
			rightInput++;
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

			distortion(leftInput, lsOutput);
			distortion(rightInput, rsOutput);
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
				centralOutput++;
				leftInput++;
				rightInput++;
			}

			leftInput = sampleBuffer[0];
			rightInput = sampleBuffer[1];

			distortion(leftInput, lsOutput);
			distortion(rightInput, rsOutput);

			for (i = 0; i < BLOCK_SIZE; i++)
			{
				*lfeOutput = *lsOutput + *rsOutput;
				lfeOutput++;
				lsOutput++;
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
