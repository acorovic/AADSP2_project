#include "distortion.h"

extern __memX DSPfract* input_distortion;
extern __memX DSPfract* output_distortion;

extern __memX clipping_type_t type;

extern __memY DSPfract distortion_gain;

// Half wave recifier accum var
DSPaccum x;
// Used to calculate input^2
DSPaccum soft_pow;
// Used to calculate input << 2
DSPaccum soft_mul;

// Global distortion vars divided by 4
__memX const DSPfract hard_clip_threshold = FRACT_NUM(0.125);
__memX const DSPfract n_hard_clip_threshold = FRACT_NUM(-0.125);
__memX const DSPfract soft_clip_threshold1 = FRACT_NUM(0.08333333333333333);
__memX const DSPfract soft_clip_threshold2 = FRACT_NUM(0.16666666666666667);
__memX const DSPfract n_soft_clip_threshold1 = FRACT_NUM(-0.08333333333333333);
__memX const DSPfract n_soft_clip_threshold2 = FRACT_NUM(-0.16666666666666667);

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
