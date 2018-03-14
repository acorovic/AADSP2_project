#include "distortion.h"
#include "processing.h"


extern __memY DSPfract* leftInput;
extern __memY DSPfract* rightInput;
extern __memY DSPfract* centralOutput;
extern __memY DSPfract* lsOutput;
extern __memY DSPfract* rsOutput;
extern __memY DSPfract* lfeOutput;

extern __memY DSPfract* input_distortion;
extern __memY DSPfract* output_distortion;

extern __memX user_control outputMode;

extern __memY DSPfract numGain;

void processing()
{
	int i;

	leftInput = __X_BY_IOBUFFER_PTRS[0];
	rightInput = __X_BY_IOBUFFER_PTRS[1];

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
			lsOutput = __X_BY_IOBUFFER_PTRS[2];
			rsOutput = __X_BY_IOBUFFER_PTRS[3];

			for (i = 0; i < BLOCK_SIZE; i++)
			{
				*leftInput = (*leftInput) * numGain;
				*rightInput = (*rightInput) * numGain;
				leftInput++;
				rightInput++;
			}

			leftInput = __X_BY_IOBUFFER_PTRS[0];
			rightInput = __X_BY_IOBUFFER_PTRS[1];

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
			lsOutput = __X_BY_IOBUFFER_PTRS[2];
			rsOutput = __X_BY_IOBUFFER_PTRS[3];
			centralOutput = __X_BY_IOBUFFER_PTRS[4];
			lfeOutput = __X_BY_IOBUFFER_PTRS[5];

			for (i = 0; i < BLOCK_SIZE; i++)
			{
				*leftInput = (*leftInput) * numGain;
				*rightInput = (*rightInput) * numGain;
				*centralOutput = *rightInput + *leftInput;
				centralOutput++;
				leftInput++;
				rightInput++;

			}

			leftInput = __X_BY_IOBUFFER_PTRS[0];
			rightInput = __X_BY_IOBUFFER_PTRS[1];

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
