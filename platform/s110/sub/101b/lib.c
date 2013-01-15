#include "platform.h"

void *vid_get_bitmap_fb()        { return (void*)0x406c5000; }             // Found @0xf8074fa0
void *vid_get_viewport_fb()      { return (void*)0x4081ab80; }             // Found @0xf8518e9c
void *vid_get_viewport_fb_d()    { return (void*)(*(int*)(0x3838+0x54)); } // Found @0xf8095da8 & 0xf8095de0
char *camera_jpeg_count_str()    { return (char*)0x001ad150; }             // Found @0xf831935c
long hook_raw_size()             { return 0x01297380; }                    // Found @0xf851a838
int get_flash_params_count(void) { return 0xa6; }                          // Found @0xf8278320

char *hook_raw_image_addr() //TODO:
{
	// Appears to be two raw buffers (this returns active buffer)
	// Addresses below found in table at ff467f78 used in sub_ff0f26b8 
	// [0x40E0 + 0xC] --> defines which buffer is active

	if (*((int*)0x40EC) != 0)
		return (char*) 0x4AD65BC0;
	else
		return (char*) 0x44000000;	// found at (ff3feed4) [search CRAW BUF]
}

char *hook_alt_raw_image_addr() //TODO:
{
	// Appears to be two raw buffers (this returns active buffer)
	// Addresses below found in table at ff467f78 used in sub_ff0f26b8 
	// [0x40E0 + 0xC] --> defines which buffer is active

	if (*((int*)0x40EC) == 0)
		return (char*) 0x4AD65BC0;
	else
		return (char*) 0x44000000;	// found at (ff3feed4) [search CRAW BUF]
}

