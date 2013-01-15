// !!! THIS FILE IS GENERATED. DO NOT EDIT. !!!
#include "stubs_asm.h"

// Camera info:
//   DRYOS R51 (DRYOS version 2.3, release #0051)
//   Firmware Ver GM1.01B
//   Canon PowerShot S110

// Values for makefile.inc
//   PLATFORMOSVER = 51
//   PLATFORMID = 12891 (0x325b) // Found @ 0xfff40040
//   MAXRAMADDR = 0x0fffffff
//   KEYSYS = d4c                // Found @ 0xffff3cd0
//   NEED_ENCODED_DISKBOOT = 9   // Found @ 0xffff3ce0

// Note, ROM copied to RAM :- from 0xf896e790, to 0x00685000, len 47257 words.

// Stubs below should be checked. Stub not matched 100%, or difference found to current 'stubs_entry_2.S'
//    Name                                     Address      Rule  %  Comp to stubs_entry_2.S
NSTUB(DeleteFile_Fut                          ,0xf8023c84) //  1 90%
// ERROR: MakeDirectory_Fut is not found.                  //--- ---    *** != 0x00000000
//NSTUB(kbd_pwr_off                           ,0xf82f2e68) //  1 53%    *** != 0x00000000
// ERROR: kbd_pwr_on is not found.                         //--- ---    *** != 0x00000000

// Check of modemap from 'platform/CAMERA/shooting.c':
// Firmware modemap table found @f8067734 -> f80dbed8 -> f8276d94 -> f845ab84 -> f8907670
// Mode 33337 in firmware but not in current modemap
// Mode 16914 in firmware but not in current modemap
// Mode  8756 in firmware but not in current modemap
// Mode 32805 in firmware but not in current modemap
// Mode  8758 in firmware but not in current modemap
// Mode 16401 in firmware but not in current modemap
// Mode 16393 in firmware but not in current modemap
// Mode  8746 in firmware but not in current modemap
// Mode 16924 in firmware but not in current modemap
// Mode  8745 in firmware but not in current modemap
// Mode  8747 in firmware but not in current modemap
// Mode  8737 in firmware but not in current modemap
// Mode  8738 in firmware but not in current modemap
// Mode 33295 in firmware but not in current modemap
// Mode  8754 in firmware but not in current modemap
// Mode 16945 in firmware but not in current modemap
// Mode 16411 in firmware but not in current modemap
// Mode 16940 in firmware but not in current modemap
// Mode 16941 in firmware but not in current modemap
// Mode  2626 in firmware but not in current modemap
// Mode  2633 in firmware but not in current modemap
// Mode  2631 in firmware but not in current modemap

// Values below can be overridden in 'stubs_min.S':
DEF(physw_status                            ,0x0004161c) // Found @0xf8021508
DEF(physw_run                               ,0x00001e80) // Found @0xf8021064
DEF(physw_sleep_delay                       ,0x00001e88) // Found @0xf8021064
DEF(levent_table                            ,0xf87c7df4) // Found @0xf87c7df4
DEF(FlashParamsTable                        ,0xf89078f4) // Found @0xf89078f4
DEF(full_screen_refresh                     ,0x0000a9f4) // Found @0xf8282060
DEF(canon_menu_active                       ,0x00004a18) // Found @0xf80df580
DEF(canon_shoot_menu_active                 ,0x0000d6a5) // Found @0xf833bdb4
DEF(playrec_mode                            ,0x00003fd0) // Found @0xf80ca3e0
DEF(zoom_status                             ,0x00007224) // Found @0xf81acdd4
// focus_len_table contains zoom focus lengths for use in 'get_focal_length' (main.c).
// each entry contains 2 int value(s), the first is the zoom focus length.
// there are 121 entries in the table - set NUM_FL to 121
DEF(focus_len_table                         ,0xf8f4a910) // Found @0xf8f4a910
DEF(zoom_busy                               ,0x00009b6c) // Found @0xf822f708
DEF(focus_busy                              ,0x00009984) // Found @0xf82281e8
DEF(recreview_hold                          ,0x00002cd4) // Found @0xf8071560
DEF(palette_control                         ,0x0000a9f4) // Found @0xf8281fdc
DEF(active_palette_buffer                   ,0x0000a9fc) // Found @0xf8281fe0
DEF(palette_buffer                          ,0x001a7524) // Found @0xf82824a8
DEF(bitmap_buffer                           ,0x0000aa38) // Found @0xf82870cc
DEF(active_bitmap_buffer                    ,0x0000aa30) // Found @0xf82870d0

// Values below go in 'lib.c':
//void *vid_get_bitmap_fb()        { return (void*)0x406c5000; }             // Found @0xf8074fa0
//void *vid_get_viewport_fb()      { return (void*)0x4081ab80; }             // Found @0xf8518e9c
//void *vid_get_viewport_fb_d()    { return (void*)(*(int*)(0x3838+0x54)); } // Found @0xf8095da8 & 0xf8095de0
//char *camera_jpeg_count_str()    { return (char*)0x001ad150; }             // Found @0xf831935c
//long hook_raw_size()             { return 0x01297380; }                    // Found @0xf851a838
//int get_flash_params_count(void) { return 0xa6; }                          // Found @0xf8278320

// Bitmap masks and physw_status index values for SD_READONLY and USB power flags (for kbd.c).
//#define SD_READONLY_FLAG    0x00000800 // Found @0xf864bc7c, levent 0x20a
//#define SD_READONLY_IDX     2
//#define USB_MASK            0x10000000 // Found @0xf864bcac, levent 0x202
//#define USB_IDX             2

// Keymap values for kbd.c. Additional keys may be present, only common values included here.
//static KeyMap keymap[] = {
//    { 0, KEY_DOWN            ,0x00000002 }, // Found @0xf864bbbc, levent 0x05
//    { 0, KEY_LEFT            ,0x00000004 }, // Found @0xf864bbc4, levent 0x06
//    { 0, KEY_MENU            ,0x00000008 }, // Found @0xf864bbcc, levent 0x09
//    { 0, KEY_SET             ,0x00000020 }, // Found @0xf864bbdc, levent 0x08
//    { 0, KEY_UP              ,0x00000040 }, // Found @0xf864bbe4, levent 0x04
//    { 0, KEY_RIGHT           ,0x00000080 }, // Found @0xf864bbec, levent 0x07
//    { 0, KEY_ZOOM_OUT        ,0x00008000 }, // Found @0xf864bc2c, levent 0x03
//    { 0, KEY_ZOOM_IN         ,0x00010000 }, // Found @0xf864bc34, levent 0x02
//    { 1, KEY_POWER           ,0x00400000 }, // Found @0xf864bc54, levent 0x100
//    { 1, KEY_PLAYBACK        ,0x00800000 }, // Found @0xf864bc5c, levent 0x101
//    { 2, KEY_SHOOT_FULL      ,0x000000c0 }, // Found @0xf864bc6c, levent 0x01
//    { 2, KEY_SHOOT_FULL_ONLY ,0x00000080 }, // Found @0xf864bc6c, levent 0x01
//    { 2, KEY_SHOOT_HALF      ,0x00000040 }, // Found @0xf864bc64, levent 0x00
//    { 0, 0, 0 }
//};

// Values below go in 'platform_camera.h':
//#define CAM_DRYOS         1
//#define CAM_DRYOS_2_3_R39 1 // Defined for cameras with DryOS version R39 or higher
//#define CAM_DRYOS_2_3_R47 1 // Defined for cameras with DryOS version R47 or higher
//#define CAM_RAW_ROWPIX    4160 // Found @0xf81fdae4
//#define CAM_RAW_ROWS      3124 // Found @0xf81fdaec
//#undef  CAM_UNCACHED_BIT
//#define CAM_UNCACHED_BIT  0x40000000 // Found @0xf8039b1c

// Misc stuff
DEF(ctypes, 0xf86492d8)

// For capt_seq.c
//static long *nrflag = (long*)(0xa5d4+0x0c);  // Found @ f8266978 & f8266994

// Stubs below matched 100%.
//    Name                                     Address                Comp to stubs_entry_2.S
NSTUB(AllocateMemory                          ,0xf8456598) //101
NSTUB(AllocateUncacheableMemory               ,0xf8039ad4) //112
NSTUB(Close                                   ,0xf80242f8) //101
NSTUB(CreateTask                              ,0x0068ab8c) //101
NSTUB(DebugAssert                             ,0x0068b104) //111
NSTUB(DeleteDirectory_Fut                     ,0xf8023cf8) //116
NSTUB(DoAFLock                                ,0xf8037bb8) //102
NSTUB(EnterToCompensationEVF                  ,0xf8037f38) //104
NSTUB(ExecuteEventProcedure                   ,0xf80d2bb0) //104
NSTUB(ExitFromCompensationEVF                 ,0xf8037f7c) //104
NSTUB(ExitTask                                ,0x0068ae1c) //101
NSTUB(ExpCtrlTool_StartContiAE                ,0xf804a1a4) //104
NSTUB(ExpCtrlTool_StopContiAE                 ,0xf804a30c) //104
NSTUB(Fclose_Fut                              ,0xf8023d90) //101
NSTUB(Feof_Fut                                ,0xf8023f7c) //  1
NSTUB(Fflush_Fut                              ,0xf8023fb8) //  1
NSTUB(Fgets_Fut                               ,0xf8023ee4) //  6
NSTUB(Fopen_Fut                               ,0xf8023d50) //101
NSTUB(Fread_Fut                               ,0xf8023e3c) //101
NSTUB(FreeMemory                              ,0xf8456590) //101
NSTUB(FreeUncacheableMemory                   ,0xf8039b14) //112
NSTUB(Fseek_Fut                               ,0xf8023f30) //101
NSTUB(Fwrite_Fut                              ,0xf8023e90) //101
NSTUB(GetBatteryTemperature                   ,0xf807f4ec) //102
NSTUB(GetCCDTemperature                       ,0xf807f478) //102
NSTUB(GetCurrentAvValue                       ,0xf822b23c) //102
NSTUB(GetDrive_ClusterSize                    ,0xf8093818) //  6
NSTUB(GetDrive_FreeClusters                   ,0xf8093870) //  6
NSTUB(GetDrive_TotalClusters                  ,0xf8093848) //  6
NSTUB(GetFocusLensSubjectDistance             ,0xf8229200) //102
NSTUB(GetFocusLensSubjectDistanceFromLens     ,0xf82295bc) //  3
NSTUB(GetImageFolder                          ,0xf82077fc) // 11
NSTUB(GetKbdState                             ,0xf807baa0) //109
NSTUB(GetMemInfo                              ,0xf8005378) //115
NSTUB(GetOpticalTemperature                   ,0xf807f560) //102
NSTUB(GetParameterData                        ,0xf82782e0) //101
NSTUB(GetPropertyCase                         ,0xf80d6d40) //101
NSTUB(GetSystemTime                           ,0xf84565f0) //101
NSTUB(GetVRAMHPixelsSize                      ,0xf805c31c) //102
NSTUB(GetVRAMVPixelsSize                      ,0xf805c328) //102
NSTUB(GetZoomLensCurrentPoint                 ,0xf822fb7c) //102
NSTUB(GetZoomLensCurrentPosition              ,0xf8428028) //102
NSTUB(GiveSemaphore                           ,0x0068aaec) //112
NSTUB(IsStrobeChargeCompleted                 ,0xf8136be8) //102
NSTUB(LEDDrive                                ,0xf8262934) //101
NSTUB(LocalTime                               ,0xf8648d14) //115
NSTUB(LockMainPower                           ,0xf80db874) //103
NSTUB(Lseek                                   ,0xf8024514) //101
NSTUB(MakeSDCardBootable                      ,0xf8093aa8) //105
NSTUB(MoveFocusLensToDistance                 ,0xf85149d0) //102
NSTUB(MoveIrisWithAv                          ,0xf845278c) //102
NSTUB(MoveZoomLensWithPoint                   ,0xf8453140) //102
NSTUB(NewTaskShell                            ,0xf80d66c4) //101
NSTUB(Open                                    ,0xf8024230) //101
NSTUB(PB2Rec                                  ,0xf8066d40) //104
NSTUB(PT_MoveDigitalZoomToWide                ,0xf8263a14) //102
NSTUB(PT_MoveOpticalZoomAt                    ,0xf82639ec) //102
NSTUB(PT_PlaySound                            ,0xf80cc584) // 11
NSTUB(PostLogicalEventForNotPowerType         ,0xf80d905c) //103
NSTUB(PostLogicalEventToUI                    ,0xf80d90a8) //103
NSTUB(PutInNdFilter                           ,0xf8452f18) //102
NSTUB(PutOutNdFilter                          ,0xf8452f3c) //102
NSTUB(Read                                    ,0xf8005e34) //101
NSTUB(ReadFastDir                             ,0xf840f930) //115
NSTUB(Rec2PB                                  ,0xf8066d80) //104
NSTUB(RefreshPhysicalScreen                   ,0xf80ddf6c) //104
NSTUB(Remove                                  ,0xf802446c) //  6
NSTUB(RenameFile_Fut                          ,0xf8023bf0) //116
NSTUB(Restart                                 ,0xf803b30c) //106
NSTUB(ScreenLock                              ,0xf80def44) //  4
NSTUB(ScreenUnlock                            ,0xf80defa8) //  3
NSTUB(SetAE_ShutterSpeed                      ,0xf8517d14) //102
NSTUB(SetAutoShutdownTime                     ,0xf80db8e8) //103
NSTUB(SetCurrentCaptureModeType               ,0xf80e7a58) //101
NSTUB(SetFileAttributes                       ,0xf80246fc) //  6
NSTUB(SetFileTimeStamp                        ,0xf8024684) //  6
NSTUB(SetLogicalEventActive                   ,0xf80db5c0) //101
NSTUB(SetParameterData                        ,0xf82781bc) //101
NSTUB(SetPropertyCase                         ,0xf80d6bb8) //101
NSTUB(SetScriptMode                           ,0xf80db610) //101
NSTUB(SleepTask                               ,0x0068f868) //101
NSTUB(TakeSemaphore                           ,0x0068aa1c) //101
NSTUB(TurnOffBackLight                        ,0xf80ec840) //104
NSTUB(TurnOnBackLight                         ,0xf80ec828) //104
NSTUB(UIFS_WriteFirmInfoToFile                ,0xf8299da8) //101
NSTUB(UnlockAF                                ,0xf8037bf0) //102
NSTUB(UnlockMainPower                         ,0xf80db7c8) //103
NSTUB(UnsetZoomForMovie                       ,0xf806d12c) //104
NSTUB(VbattGet                                ,0xf801fc50) //101
NSTUB(Write                                   ,0xf802434c) //101
NSTUB(WriteSDCard                             ,0xf821cc90) //108
NSTUB(_log                                    ,0x006ae840) //111
NSTUB(_log10                                  ,0xf8649184) //112
NSTUB(_pow                                    ,0xf8649054) //114
NSTUB(_sqrt                                   ,0x006b0fd0) //  6
NSTUB(add_ptp_handler                         ,0xf81875d8) //  6
NSTUB(apex2us                                 ,0xf8348270) //  4
NSTUB(close                                   ,0xf8005c90) //  6
NSTUB(closedir                                ,0xf840f78c) //  4
NSTUB(err_init_task                           ,0xf80043b4) //111
NSTUB(exmem_alloc                             ,0xf80d1584) //101
NSTUB(free                                    ,0xf8002f54) //112
NSTUB(kbd_p1_f                                ,0xf8021558) //109
NSTUB(kbd_p1_f_cont                           ,0xf8021564) //109
NSTUB(kbd_p2_f                                ,0xf8020cfc) //109
NSTUB(kbd_read_keys                           ,0xf8021508) //109
NSTUB(kbd_read_keys_r2                        ,0xf807b2f4) //109
NSTUB(lseek                                   ,0xf8024514) //101
NSTUB(malloc                                  ,0xf8002efc) //112
NSTUB(memcmp                                  ,0xf800d42c) //101
NSTUB(memcpy                                  ,0xf803c418) //101
NSTUB(memset                                  ,0xf80f0ca8) //101
NSTUB(mkdir                                   ,0xf8024794) //  6
NSTUB(mktime_ext                              ,0xf80f0280) //  1
NSTUB(open                                    ,0xf8005be0) //  6
NSTUB(OpenFastDir                             ,0xf840f7dc) //115
NSTUB(qsort                                   ,0xf8345894) //  6
NSTUB(rand                                    ,0xf803c3e8) //  6
NSTUB(read                                    ,0xf8005e34) //101
NSTUB(reboot_fw_update                        ,0xf8455c40) //106
NSTUB(set_control_event                       ,0xf80db1a0) //  6
NSTUB(srand                                   ,0xf803c3dc) //  6
NSTUB(stat                                    ,0xf802455c) //109
NSTUB(strcat                                  ,0xf80f0bdc) //  1
NSTUB(strchr                                  ,0xf8002dc8) //  1
NSTUB(strcmp                                  ,0xf800d528) //101
NSTUB(strcpy                                  ,0xf800d414) //101
NSTUB(strftime                                ,0xf80f02cc) //113
NSTUB(strlen                                  ,0xf8002e14) //101
NSTUB(strncmp                                 ,0xf8002d7c) //  1
NSTUB(strncpy                                 ,0xf8002d40) //  1
NSTUB(strrchr                                 ,0xf8002dec) //  1
NSTUB(strtol                                  ,0xf803c3c8) //101
NSTUB(strtolx                                 ,0xf803c1cc) //109
  DEF(task_CaptSeq                            ,0xf80c1810) //110
  DEF(task_ExpDrv                             ,0xf810cfa0) //110
  DEF(task_InitFileModules                    ,0xf80675a8) //110
  DEF(task_MovieRecord                        ,0xf8235e0c) //110
  DEF(task_PhySw                              ,0xf8021060) //110
  DEF(task_RotaryEncoder                      ,0xf807bdb8) //110
NSTUB(time                                    ,0x0069991c) //  6
NSTUB(vsprintf                                ,0xf800d2c4) //115
NSTUB(write                                   ,0xf802434c) //101
