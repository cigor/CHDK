#include "stubs_asm.h"
#define NULL_SUB 0xFF810950 //ixus110

// Override stubs_entry.S
NHSTUB(kbd_pwr_on,                  NULL_SUB)
NHSTUB(kbd_pwr_off,                 NULL_SUB)

// These don't exist
NHSTUB(SetZoomActuatorSpeedPercent, NULL_SUB)

// Additional
NHSTUB(LogPrintf,                   0xFF86C85C) //ixus110
NHSTUB(MakeAFScan,                  0xFF924900) //ixus110
NHSTUB(ScreenLock,                  0xFF9B7774) //ixus110
NHSTUB(exmem_free,                  0xFF86A0D4) //ixus110
