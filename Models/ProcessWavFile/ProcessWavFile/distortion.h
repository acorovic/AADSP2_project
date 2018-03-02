#ifndef DISTORTION_H
#define DISTORTION_H

#include <math.h>

typedef enum { HARD_CLIPPING, SOFT_CLIPPING, FULL_WAVE_RECTIFIER, HALF_WAVE_RECTIFIER } clipping_type_t;

typedef struct
{
	int numChannels;
	int numSamples;
	int sampleRate;
	clipping_type_t type;
	float gain;
} distortion_state_t;

void processSingleChannel(double* input, double* output, distortion_state_t state);

#endif