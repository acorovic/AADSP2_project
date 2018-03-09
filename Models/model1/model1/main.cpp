
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include "WAVheader.h"
#include "common.h"

enum user_control {MODE_0, MODE_1, MODE_2};
enum clipping_type_t { HARD_CLIPPING, SOFT_CLIPPING, FULL_WAVE_RECTIFIER, HALF_WAVE_RECTIFIER };

DSPint enable = 1;
DSPint gainDb = -4;

DSPfract sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];

DSPfract numGain = pow(10, ((DSPfract)gainDb/20));
user_control outputMode = MODE_2;

// Processing global vars
static DSPint i;

// Channels
DSPfract* leftInput;
DSPfract* rightInput;
DSPfract* centralOutput;
DSPfract* lsOutput;
DSPfract* rsOutput;
DSPfract* lfeOutput;

// Global distortion vars
DSPfract hard_clip_threshold = 0.5f;
DSPfract soft_clip_threshold1 = 1.0f / 3.0f;
DSPfract soft_clip_threshold2 = 2.0f / 3.0f;

clipping_type_t type = HALF_WAVE_RECTIFIER;
DSPfract distortion_gain = 2.0f;

void distortion(DSPfract* input, DSPfract* output)
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
			else if (*output < -hard_clip_threshold) // negative hard clipping
			{
				*output = -hard_clip_threshold;
			}

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
					*output = 1.0f;
				}
				else // soft knee (positive)
				{
					*output = (3.0f - (2.0f - 3.0f* (*output))*(2.0f - 3.0f* (*output))) / 3.0f;
				}
			}
			else
			{
				if (*output < -soft_clip_threshold1)
				{
					if (*output < -soft_clip_threshold2) // negative clipping
					{
						*output = -1.0f;
					}
					else // soft knee (negative)
					{
						*output = -(3.0f - (2.0f + 3.0f* (*output))*(2.0f + 3.0f* (*output))) / 3.0f;
					}
				}
				else // linear region (-1/3..1/3)
				{
					*output *= 2.0f;
				}
			}
			*output /= 2.0f; // divide all by 2 to compensate for extra 6 dB gain boost
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
			*output = fabs(*output);
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
			*output = 0.5f*(fabs(*output) + *output);
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
				if (*lsOutput > 0 && (*rsOutput > 1l - *lsOutput)) {
					// Overflow
					*lfeOutput = 0.99999999999998l;
				}
				else if (*lsOutput < 0 && (*rsOutput < -1l - *lsOutput))
				{
					// Underflow
					*lfeOutput = -0.99999999999999l;
				}
				else
				{
					*lfeOutput = *lsOutput + *rsOutput;
				}
				lfeOutput++;
				lsOutput++;
				rsOutput++;
			}
		}
		break;
	}
	
	return;
}

int main(int argc, char* argv[])
{
	FILE *wav_in=NULL;
	FILE *wav_out=NULL;
	char WavInputName[256];
	char WavOutputName[256];
	WAV_HEADER inputWAVhdr,outputWAVhdr;
	
	int option = atoi(argv[3]);
	

	// Init channel buffers
	for(int i=0; i<MAX_NUM_CHANNEL; i++)
		memset(&sampleBuffer[i],0,BLOCK_SIZE);

	// Open input and output wav files
	//-------------------------------------------------
	strcpy(WavInputName, argv[1]);
	wav_in = OpenWavFileForRead (WavInputName,"rb");
	strcpy(WavOutputName, argv[2]);
	wav_out = OpenWavFileForRead (WavOutputName,"wb");
	//-------------------------------------------------

	// Read input wav header
	//-------------------------------------------------
	ReadWavHeader(wav_in,inputWAVhdr);
	//-------------------------------------------------
	
	// Set up output WAV header
	//-------------------------------------------------
	int distortion_option = atoi(argv[4]);

	switch (distortion_option)
	{
	case 0:
		type = HARD_CLIPPING;
		break;
	case 1:
		type = SOFT_CLIPPING;
		break;
	case 2:
		type = FULL_WAVE_RECTIFIER;
		break;
	case 3:
		type = HALF_WAVE_RECTIFIER;
		break;
	default:
		break;
	}
	outputWAVhdr = inputWAVhdr;
	switch (option)
	{
	case 0:
		outputWAVhdr.fmt.NumChannels = 2;
		outputMode = MODE_0;
		break;
	case 1:
		outputWAVhdr.fmt.NumChannels = 4;
		outputMode = MODE_1;
		break;
	case 2:
		outputWAVhdr.fmt.NumChannels = 6;
		outputMode = MODE_2;
		break;
	}
	//outputWAVhdr.fmt.NumChannels = 6; // inputWAVhdr.fmt.NumChannels; // change number of channels

	int oneChannelSubChunk2Size = inputWAVhdr.data.SubChunk2Size/inputWAVhdr.fmt.NumChannels;
	int oneChannelByteRate = inputWAVhdr.fmt.ByteRate/inputWAVhdr.fmt.NumChannels;
	int oneChannelBlockAlign = inputWAVhdr.fmt.BlockAlign/inputWAVhdr.fmt.NumChannels;
	
	outputWAVhdr.data.SubChunk2Size = oneChannelSubChunk2Size*outputWAVhdr.fmt.NumChannels;
	outputWAVhdr.fmt.ByteRate = oneChannelByteRate*outputWAVhdr.fmt.NumChannels;
	outputWAVhdr.fmt.BlockAlign = oneChannelBlockAlign*outputWAVhdr.fmt.NumChannels;

	// Write output WAV header to file
	//-------------------------------------------------
	WriteWavHeader(wav_out,outputWAVhdr);


	// Processing loop
	//-------------------------------------------------	
	{
		int sample;
		int BytesPerSample = inputWAVhdr.fmt.BitsPerSample/8;
		const double SAMPLE_SCALE = -(double)(1 << 31);		//2^31
		int iNumSamples = inputWAVhdr.data.SubChunk2Size/(inputWAVhdr.fmt.NumChannels*inputWAVhdr.fmt.BitsPerSample/8);
		
		// exact file length should be handled correctly...
		for(int i=0; i<iNumSamples/BLOCK_SIZE; i++)
		{	
			for(int j=0; j<BLOCK_SIZE; j++)
			{
				for(int k=0; k<inputWAVhdr.fmt.NumChannels; k++)
				{	
					sample = 0; //debug
					fread(&sample, BytesPerSample, 1, wav_in);
					sample = sample << (32 - inputWAVhdr.fmt.BitsPerSample); // force signextend
					sampleBuffer[k][j] = sample / SAMPLE_SCALE;				// scale sample to 1.0/-1.0 range		
				}
			}

			processing();

			for(int j=0; j<BLOCK_SIZE; j++)
			{
				for(int k=0; k<outputWAVhdr.fmt.NumChannels; k++)
				{	
					sample = sampleBuffer[k][j] * SAMPLE_SCALE ;	// crude, non-rounding 			
					sample = sample >> (32 - inputWAVhdr.fmt.BitsPerSample);
					fwrite(&sample, outputWAVhdr.fmt.BitsPerSample/8, 1, wav_out);		
				}
			}		
		}
	}
	
	// Close files
	//-------------------------------------------------	
	fclose(wav_in);
	fclose(wav_out);
	//-------------------------------------------------	

	return 0;
}