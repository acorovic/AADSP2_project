#ifndef _COMMON_H
#define _COMMON_H

#include "stdfix_emu.h"

/* Basic constants */
#define BLOCK_SIZE 16
#define MAX_NUM_CHANNEL 8
#define N_TAP 4
#define ECHO_MAX_LENGTH 4096

typedef enum {MODE_0, MODE_1, MODE_2} user_control;
typedef enum { HARD_CLIPPING, SOFT_CLIPPING, FULL_WAVE_RECTIFIER, HALF_WAVE_RECTIFIER} clipping_type_t;

/* DSP type definitions */
typedef short DSPshort;					/* DSP integer */
typedef unsigned short DSPushort;		/* DSP unsigned integer */
typedef int DSPint;						/* native integer */
typedef fract DSPfract;				    /* DSP fixed-point fractional */
typedef long_accum DSPaccum;			/* DSP fixed-point fractional */

#endif //_COMMON_H
