/*
 * frame.c
 *
 * This file defines the data structures necessary for a module that fits into
 * the Cirrus Logic OS Framework.
 */
#include <frame_impl.h>
 
/*
 * Define the MCT for frame
 */
static __memY mct_t frame_mct = {
	&frame_preKickstart,			// prekick function
	&frame_postKickstart,			// postkick function
	&frame_timer,					// timer function
	&frame_frame,					// frame function
	&frame_brick,					// block function
	0,										// reserved
	&frame_background,			// background function
	&frame_postMallocInit,		// post-malloc function
	&frame_preMallocInit			// pre-malloc function
};

/* 
 * Define the MIF for frame
 */
__memY mif_t frame_mif = {
	&frame_mcv_HOST,
	&frame_mct
};
