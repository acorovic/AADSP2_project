
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include "WAVheader.h"
#include "common.h"

enum user_control {MODE_0, MODE_1, MODE_2};
enum clipping_type_t { HARD_CLIPPING, SOFT_CLIPPING, FULL_WAVE_RECTIFIER, HALF_WAVE_RECTIFIER};

DSPint enable = 1;
// initial gain -4Db
DSPfract gainDb = DSPfract(0.63095734448019324943436013662234);

DSPfract sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];

// Linear gain
DSPfract numGain = gainDb;
user_control outputMode = MODE_0;

// Processing global vars
static DSPint i;

// Channels
DSPfract* leftInput;
DSPfract* rightInput;
DSPfract* centralOutput;
DSPfract* lsOutput;
DSPfract* rsOutput;
DSPfract* lfeOutput;

// Global distortion vars divided by 4
DSPfract hard_clip_threshold = FRACT_NUM(0.125);
DSPfract n_hard_clip_threshold = FRACT_NUM(-0.125);
DSPfract soft_clip_threshold1 = FRACT_NUM(0.08333333333333333);
DSPfract soft_clip_threshold2 = FRACT_NUM(0.16666666666666667);
										  
DSPfract distortion_gain = FRACT_NUM(0.5);
// Half wave recifier accum var
DSPaccum x;

clipping_type_t type = SOFT_CLIPPING;


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
					//*output = (3.0f - (2.0f - 3.0f* (*output)) * (2.0f - 3.0f* (*output))) / 3.0f;
					*output = FRACT_NUM((FRACT_NUM(-0.333333333333333) + *output) * (2 - 3 * *output));
				}
			}
			else
			{
				if (*output < -soft_clip_threshold1)
				{
					if (*output < -soft_clip_threshold2) // negative clipping
					{
						// divided by 4
						*output = FRACT_NUM(-0.125);
					}
					else // soft knee (negative)
					{
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
			*output = (*output).abs();
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
			x = (*output).abs();
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
	{
		for(int k=0; k<BLOCK_SIZE; k++)
		{
			sampleBuffer[i][k] = FRACT_NUM(0.0);
		}
	}
		//memset(&sampleBuffer[i],0,BLOCK_SIZE);

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
					sample = sampleBuffer[k][j].toLong() ;	// crude, non-rounding 			
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