/** @file frame_impl.h
 *
 *  This file declares implementation data types for 
 *  frame.
 */
 
#ifndef frame_IMPL_H_
#define frame_IMPL_H_ 

#include <stdfix.h>
#include <dsplib/cl_os.h>
#include <frame_mcv.h>
#include <frame_module.h>

extern __memY mcv_t frame_mcv_HOST;
extern __memY mcv_t frame_mcv;

extern void __fg_call frame_preKickstart(__memY void * mif_ptr);
extern void __fg_call frame_postKickstart(void);
extern void __fg_call frame_timer(void);
extern void __fg_call frame_frame(void);
extern void __fg_call frame_brick(void);
extern void __bg_call frame_background(void);
extern void __fg_call frame_postMallocInit(void);
extern void __fg_call frame_preMallocInit(void);

#endif
