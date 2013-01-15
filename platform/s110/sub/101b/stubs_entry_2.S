#include "stubs_asm.h"
#define NULL_SUB 0xFF02D7E0 //TODO

// Override stubs_entry.S
NHSTUB(kbd_pwr_off,                 NULL_SUB)
NHSTUB(kbd_pwr_on,                  NULL_SUB)

NHSTUB(SetZoomActuatorSpeedPercent, NULL_SUB)
NHSTUB(MakeDirectory_Fut,           NULL_SUB) // TODO: Find it
