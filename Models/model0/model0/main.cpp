
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include "WAVheader.h"
#include "distortion.h"

#define BLOCK_SIZE 16
#define MAX_NUM_CHANNEL 8

enum user_control {MODE_0, MODE_1, MODE_2};

int enable = 1;
int gainDb = -4;

double sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];

double numGain = pow(10, ((double)gainDb/20));
user_control outputMode = MODE_2;

void processing()
{
	int i;

	double* leftInput = sampleBuffer[0];
	double* rightInput = sampleBuffer[1];
	double* leftOutput = sampleBuffer[0];
	double* rightOutput = sampleBuffer[1];

	distortion_state_t dist_state;

	dist_state.numChannels = 1;
	dist_state.numSamples = BLOCK_SIZE;
	dist_state.sampleRate = 48000;
	dist_state.type = HALF_WAVE_RECTIFIER;
	dist_state.gain = 2;

	switch(outputMode)
	{
	case MODE_0:
		for (i = 0; i < BLOCK_SIZE; i++)
		{
			*leftOutput = (*leftInput) * numGain;
			*rightOutput = (*rightInput) * numGain;
			leftInput++;
			rightInput++;
			leftOutput++;
			rightOutput++;
		}
		break;
	case MODE_1:
		{
			double* lsOutput = sampleBuffer[2];
			double* rsOutput = sampleBuffer[3];

			for (i = 0; i < BLOCK_SIZE; i++)
			{
				*leftOutput = (*leftInput) * numGain;
				*rightOutput = (*rightInput) * numGain;
				leftInput++;
				rightInput++;
				leftOutput++;
				rightOutput++;
			}

			leftOutput = sampleBuffer[0];
			rightOutput = sampleBuffer[1];
			processSingleChannel(leftOutput, lsOutput, dist_state);
			processSingleChannel(rightOutput, rsOutput, dist_state);
		}
		break;
	case MODE_2:
		{
			double* lsOutput = sampleBuffer[2];
			double* rsOutput = sampleBuffer[3];
			double* centralOutput = sampleBuffer[4];
			double* lfeOutput = sampleBuffer[5];

			for (i = 0; i < BLOCK_SIZE; i++)
			{
				*leftOutput = (*leftInput) * numGain;
				*rightOutput = (*rightInput) * numGain;
				*centralOutput = *rightOutput + *leftOutput;
				centralOutput++;
				leftInput++;
				rightInput++;
				leftOutput++;
				rightOutput++;
			}
			
			leftOutput = sampleBuffer[0];
			rightOutput = sampleBuffer[1];
			processSingleChannel(leftOutput, lsOutput, dist_state);
			processSingleChannel(rightOutput, rsOutput, dist_state);

			for (i = 0; i < BLOCK_SIZE; i++)
			{
				
				if (*lsOutput > 0 && (*rsOutput > 1l - *lsOutput)) {
					// Overflow
					*lfeOutput = 0.99999999999998l;
				}
				else if (*lsOutput < 0 && (*rsOutput < -1l - *lsOutput))
				{
					// Underflow
					*lfeOutput = -1;
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