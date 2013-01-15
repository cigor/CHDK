# 0x325b Found @ 0xfff40040
PLATFORMID=12891

PLATFORMOS=dryos

# Force disable of EXMEM (not implemented yet)
override OPT_EXMEM_MALLOC=
override OPT_CHDK_IN_EXMEM=
override OPT_EXMEM_TESTING=

# address where wif or diskboot code will be loaded by camera
MEMBASEADDR=0x1900

# points to the start of the memory pool used by the firmware
MEMISOSTART=0x28C088

# start of firmware
ROMBASEADDR=0xF8000000
ALT_ROMBASEADDR=0xFF000000

MAXRAMADDR = 0x0fffffff

# Found @ 0xffff3ce0
NEED_ENCODED_DISKBOOT = 9

PLFLAGS=-DMEMBASEADDR=$(MEMBASEADDR) -DMEMISOSTART=$(MEMISOSTART) -DMEMISOSIZE=$(MEMISOSIZE)

#suppress FI2 since it doesn't work
override OPT_FI2=
# Found @ 0xffff3cd0
KEYSYS=d4c

PLATFORMOSVER=51
