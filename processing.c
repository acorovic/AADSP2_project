#include "distortion.h"
#include "processing.h"

extern __memX DSPfract sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];

extern __memX DSPfract* leftInput;
extern __memX DSPfract* rightInput;
extern __memX DSPfract* centralOutput;
extern __memX DSPfract* lsOutput;
extern __memX DSPfract* rsOutput;
extern __memX DSPfract* lfeOutput;

extern __memX DSPfract* input_distortion;
extern __memX DSPfract* output_distortion;

extern __memX user_control outputMode;

extern __memY DSPfract numGain;

void processing()
{
	int i;

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

			input_distortion = leftInput;
			output_distortion = lsOutput;
			distortion();

			input_distortion = rightInput;
			output_distortion = rsOutput;
			distortion();
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

			input_distortion = leftInput;
			output_distortion = lsOutput;
			distortion();

			input_distortion = rightInput;
			output_distortion = rsOutput;
			distortion();

			for (i = 0; i < BLOCK_SIZE; i++)
			{
				*lfeOutput = ((DSPaccum)*lsOutput) + ((DSPaccum)*rsOutput);
				lfeOutput++;
				lsOutput++;
				rsOutput++;

			}
		}
		break;
	}

	return;
}
