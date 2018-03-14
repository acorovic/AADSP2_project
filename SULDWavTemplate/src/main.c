#include <stdio.h>
#include <dsplib\wavefile.h>
#include <stdfix.h>
#include <string.h>
#include "common.h"
#include "processing.h"
#include "distortion.h"
#include <circbuff.h>

#define BLOCK_SIZE 16
#define MAX_NUM_CHANNEL 8

__memX DSPfract __attribute__((__aligned__(16)) ) sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];

__memX DSPint enable = 1;
__memX user_control outputMode = MODE_0;
__memX clipping_type_t type = HARD_CLIPPING;

// Linear gain
__memY DSPfract numGain = FRACT_NUM(0.63095734448019324943436013662234);


// Channels
__memX DSPfract* leftInput = sampleBuffer[0];
__memX DSPfract* rightInput = sampleBuffer[1];
__memX DSPfract* centralOutput = sampleBuffer[4];
__memX DSPfract* lsOutput = sampleBuffer[2];
__memX DSPfract* rsOutput = sampleBuffer[3];
__memX DSPfract* lfeOutput = sampleBuffer[5];

__memX DSPfract* input_distortion;
__memX DSPfract* output_distortion;

 
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
    char option = argv[2][0];
    char distortion_option = argv[3][0];
    char enable = argv[4][0];

	// Init channel buffers
	for(i=0; i<MAX_NUM_CHANNEL; i++)
		memset(&sampleBuffer[i],0,BLOCK_SIZE);
    
	// Open input wav file
	//-------------------------------------------------
	strcpy(WavInputName, argv[0]);
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
    switch (distortion_option)
	{
	case '0':
		type = HARD_CLIPPING;
		break;
	case '1':
		type = SOFT_CLIPPING;
		break;
	case '2':
		type = FULL_WAVE_RECTIFIER;
		break;
	case '3':
		type = HALF_WAVE_RECTIFIER;
		break;
	}

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
	strcpy(WavOutputName, argv[1]);
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

			if (enable == '1')
			{
				processing();
			}

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
