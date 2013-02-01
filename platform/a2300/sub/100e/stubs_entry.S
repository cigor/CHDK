// !!! THIS FILE IS GENERATED. DO NOT EDIT. !!!
#include "stubs_asm.h"

// Camera info:
//   DRYOS R50 (DRYOS version 2.3, release #0050)
//   Firmware Ver GM1.00E
//   Canon PowerShot A2300

// Values for makefile.inc
//   PLATFORMOSVER = 50
//   PLATFORMID = 12874 (0x324a) // Found @ 0xfffe0040
//   MAXRAMADDR = 0x03ffffff
//   KEYSYS = d4c                // Found @ 0xffff1d28
//   NEED_ENCODED_DISKBOOT = 8   // Found @ 0xffff1d38

// Note, ROM copied to RAM :- from 0xffc01034, to 0x003f1000, len 15733 words.

// Stubs below should be checked. Stub not matched 100%, or difference found to current 'stubs_entry_2.S'
//    Name                                     Address      Rule  %  Comp to stubs_entry_2.S
//NSTUB(DeleteFile_Fut                        ,0xff830fb4) //  1 90%        == 0xff830fb4
// ERROR: MakeDirectory_Fut is not found.                  //--- ---    *** != 0xff831ac4
//NSTUB(kbd_pwr_off                           ,0xff856adc) //  2 60%    *** != 0x00000000
// ERROR: kbd_pwr_on is not found.                         //--- ---    *** != 0x00000000
// ERROR: rand is not found.                               //--- ---    *** != 0x00000000
// ERROR: srand is not found.                              //--- ---    *** != 0x00000000

// Check of modemap from 'platform/CAMERA/shooting.c':
// Firmware modemap table found @ff886dac -> ff883824 -> ff984970 -> ffa7f61c -> ffb9f770
// No problems found with modemap table.

// Values below can be overridden in 'stubs_min.S':
DEF(physw_status                            ,0x00031120) // Found @0xff82edb8
DEF(physw_run                               ,0x00001c18) // Found @0xff82e968
DEF(physw_sleep_delay                       ,0x00001c20) // Found @0xff82e968
DEF(levent_table                            ,0xffb5b930) // Found @0xffb5b930
DEF(FlashParamsTable                        ,0xffb9f9cc) // Found @0xffb9f9cc
DEF(movie_status                            ,0x0000635c) // Found @0xff95ab04
DEF(full_screen_refresh                     ,0x0000860c) // Found @0xff9d29a0
DEF(canon_menu_active                       ,0x00002e4c) // Found @0xff87f714
DEF(canon_shoot_menu_active                 ,0x000077a1) // Found @0xff99b618
DEF(playrec_mode                            ,0x00002ba0) // Found @0xff873814
DEF(zoom_status                             ,0x0000b3c8) // Found @0xffa82db4
// focus_len_table contains zoom focus lengths for use in 'get_focal_length' (main.c).
// each entry contains 2 int value(s), the first is the zoom focus length.
// there are 64 entries in the table - set NUM_FL to 64
DEF(focus_len_table                         ,0xfffeabc8) // Found @0xfffeabc8
DEF(zoom_busy                               ,0x0000623c) // Found @0xff9564c8
DEF(focus_busy                              ,0x00006114) // Found @0xff95359c
DEF(recreview_hold                          ,0x000033f8) // Found @0xff88d2d4
DEF(palette_control                         ,0x0000860c) // Found @0xff9d291c
DEF(active_palette_buffer                   ,0x00008614) // Found @0xff9d2920
DEF(palette_buffer                          ,0x000b3ec0) // Found @0xff9d2cc4

// Values below go in 'lib.c':
//void *vid_get_bitmap_fb()        { return (void*)0x40411000; }             // Found @0xff852ebc
//void *vid_get_viewport_fb()      { return (void*)0x40566b80; }             // Found @0xffaddf88
//void *vid_get_viewport_fb_d()    { return (void*)(*(int*)(0x2970+0x54)); } // Found @0xff867dc0 & 0xff867df8
//char *camera_jpeg_count_str()    { return (char*)0x000b376c; }             // Found @0xff9c91d8
//long hook_raw_size()             { return 0x01794300; }                    // Found @0xffae0dbc
//int get_flash_params_count(void) { return 0xa6; }                          // Found @0xff9859bc

// Bitmap masks and physw_status index values for SD_READONLY and USB power flags (for kbd.c).
//#define SD_READONLY_FLAG    0x00020000 // Found @0xffb10088, levent 0x20a
//#define SD_READONLY_IDX     2
//#define USB_MASK            0x00040000 // Found @0xffb10090, levent 0x202
//#define USB_IDX             2

// Keymap values for kbd.c. Additional keys may be present, only common values included here.
//static KeyMap keymap[] = {
//    { 0, KEY_ZOOM_OUT        ,0x00001000 }, // Found @0xffb10010, levent 0x03
//    { 0, KEY_ZOOM_IN         ,0x00002000 }, // Found @0xffb10018, levent 0x02
//    { 1, KEY_SHOOT_FULL      ,0x00300000 }, // Found @0xffb10028, levent 0x01
//    { 1, KEY_SHOOT_FULL_ONLY ,0x00200000 }, // Found @0xffb10028, levent 0x01
//    { 1, KEY_SHOOT_HALF      ,0x00100000 }, // Found @0xffb10020, levent 0x00
//    { 1, KEY_UP              ,0x00400000 }, // Found @0xffb10030, levent 0x04
//    { 1, KEY_DOWN            ,0x00800000 }, // Found @0xffb10038, levent 0x05
//    { 1, KEY_RIGHT           ,0x01000000 }, // Found @0xffb10040, levent 0x07
//    { 1, KEY_LEFT            ,0x02000000 }, // Found @0xffb10048, levent 0x06
//    { 1, KEY_MENU            ,0x04000000 }, // Found @0xffb10050, levent 0x09
//    { 1, KEY_SET             ,0x08000000 }, // Found @0xffb10058, levent 0x08
//    { 1, KEY_VIDEO           ,0x10000000 }, // Found @0xffb10060, levent 0x1a
//    { 1, KEY_HELP            ,0x20000000 }, // Found @0xffb10068, levent 0x14
//    { 1, KEY_POWER           ,0x40000000 }, // Found @0xffb10070, levent 0x100
//    { 1, KEY_PLAYBACK        ,0x80000000 }, // Found @0xffb10078, levent 0x101
//    { 0, 0, 0 }
//};

// Values below go in 'platform_camera.h':
//#define CAM_DRYOS         1
//#define CAM_DRYOS_2_3_R39 1 // Defined for cameras with DryOS version R39 or higher
//#define CAM_DRYOS_2_3_R47 1 // Defined for cameras with DryOS version R47 or higher
//#define CAM_RAW_ROWPIX    4704 // Found @0xff92e33c
//#define CAM_RAW_ROWS      3504 // Found @0xff92e348
//#undef  CAM_UNCACHED_BIT
//#define CAM_UNCACHED_BIT  0x40000000 // Found @0xff834324

// Misc stuff
DEF(ctypes, 0xffb0f410)

// For capt_seq.c
//static long *nrflag = (long*)(0x8748+0x00);  // Found @ ff9df408 & ff9df468
//#define NR_AUTO (0)                          // have to explictly reset value back to 0 to enable auto

// Stubs below matched 100%.
//    Name                                     Address                Comp to stubs_entry_2.S
NSTUB(AllocateMemory                          ,0xffa719c4) //101
NSTUB(AllocateUncacheableMemory               ,0xff8342dc) //112
NSTUB(Close                                   ,0xff831628) //101
NSTUB(CreateTask                              ,0x003f6824) //101
NSTUB(DebugAssert                             ,0x003f6afc) //111
NSTUB(DeleteDirectory_Fut                     ,0xff831028) //116
NSTUB(DoAFLock                                ,0xff832e70) //102
NSTUB(EnterToCompensationEVF                  ,0xff8330cc) //104
NSTUB(ExecuteEventProcedure                   ,0xff87ac3c) //104
NSTUB(ExitFromCompensationEVF                 ,0xff833110) //104
NSTUB(ExitTask                                ,0x003f6ab4) //101
NSTUB(ExpCtrlTool_StartContiAE                ,0xff83d768) //104
NSTUB(ExpCtrlTool_StopContiAE                 ,0xff83d8c4) //104
NSTUB(Fclose_Fut                              ,0xff8310c0) //101
NSTUB(Feof_Fut                                ,0xff8312ac) //  1
NSTUB(Fflush_Fut                              ,0xff8312e8) //  1
NSTUB(Fgets_Fut                               ,0xff831214) //  6
NSTUB(Fopen_Fut                               ,0xff831080) //101
NSTUB(Fread_Fut                               ,0xff83116c) //101
NSTUB(FreeMemory                              ,0xffa719bc) //101
NSTUB(FreeUncacheableMemory                   ,0xff83431c) //112
NSTUB(Fseek_Fut                               ,0xff831260) //101
NSTUB(Fwrite_Fut                              ,0xff8311c0) //101
NSTUB(GetBatteryTemperature                   ,0xff858d28) //102
NSTUB(GetCCDTemperature                       ,0xff858cb4) //102
NSTUB(GetCurrentAvValue                       ,0xff955108) //102
NSTUB(GetDrive_ClusterSize                    ,0xff866814) //  6
NSTUB(GetDrive_FreeClusters                   ,0xff86686c) //  6
NSTUB(GetDrive_TotalClusters                  ,0xff866844) //  6
NSTUB(GetFocusLensSubjectDistance             ,0xff954360) //102
NSTUB(GetFocusLensSubjectDistanceFromLens     ,0xff9547b0) //  3
NSTUB(GetImageFolder                          ,0xff9378bc) //  6
NSTUB(GetKbdState                             ,0xff856acc) //109
NSTUB(GetMemInfo                              ,0xff81509c) //115
NSTUB(GetOpticalTemperature                   ,0xff858d9c) //102
NSTUB(GetParameterData                        ,0xff98597c) //101
NSTUB(GetPropertyCase                         ,0xff87ecb4) //102
NSTUB(GetSystemTime                           ,0xffa71a1c) //101
NSTUB(GetVRAMHPixelsSize                      ,0xff84be48) //102
NSTUB(GetVRAMVPixelsSize                      ,0xff84be54) //102
NSTUB(GetZoomLensCurrentPoint                 ,0xff956948) //102
NSTUB(GetZoomLensCurrentPosition              ,0xffa636bc) //102
NSTUB(GiveSemaphore                           ,0x003f7704) //112
NSTUB(IsStrobeChargeCompleted                 ,0xff8ca058) //102
NSTUB(LEDDrive                                ,0xff95c3b0) //101
NSTUB(LocalTime                               ,0x003fb1b8) //115
NSTUB(LockMainPower                           ,0xff883560) //103
NSTUB(Lseek                                   ,0xff831844) //101
NSTUB(MakeSDCardBootable                      ,0xff866aa4) //105
NSTUB(MoveFocusLensToDistance                 ,0xffada040) //102
NSTUB(MoveIrisWithAv                          ,0xffa6d92c) //102
NSTUB(MoveZoomLensWithPoint                   ,0xffa6e054) //102
NSTUB(NewTaskShell                            ,0xff87e634) //101
NSTUB(Open                                    ,0xff831560) //101
NSTUB(PB2Rec                                  ,0xff8863c8) //104
NSTUB(PT_MoveDigitalZoomToWide                ,0xff86c880) //102
NSTUB(PT_MoveOpticalZoomAt                    ,0xff86c858) //102
NSTUB(PT_PlaySound                            ,0xff875478) // 11
NSTUB(PostLogicalEventForNotPowerType         ,0xff882c54) //103
NSTUB(PostLogicalEventToUI                    ,0xff882ca0) //103
NSTUB(PutInNdFilter                           ,0xffa6de2c) //102
NSTUB(PutOutNdFilter                          ,0xffa6de50) //102
NSTUB(Read                                    ,0xff815b58) //101
NSTUB(ReadFastDir                             ,0xffa53bec) //115
NSTUB(Rec2PB                                  ,0xff886408) //104
NSTUB(RefreshPhysicalScreen                   ,0xff8950a4) //104
NSTUB(Remove                                  ,0xff83179c) //  6
NSTUB(RenameFile_Fut                          ,0xff830f20) //116
NSTUB(Restart                                 ,0xff835af0) //106
NSTUB(ScreenLock                              ,0xff8960c4) //  4
NSTUB(ScreenUnlock                            ,0xff896128) //  3
NSTUB(SetAE_ShutterSpeed                      ,0xffadd160) //102
NSTUB(SetAutoShutdownTime                     ,0xff8835d4) //103
NSTUB(SetCurrentCaptureModeType               ,0xff88a60c) //101
NSTUB(SetFileAttributes                       ,0xff831a2c) //  6
NSTUB(SetFileTimeStamp                        ,0xff8319b4) //  6
NSTUB(SetLogicalEventActive                   ,0xff8832dc) //101
NSTUB(SetParameterData                        ,0xff9858ec) //101
NSTUB(SetPropertyCase                         ,0xff87eb2c) //102
NSTUB(SetScriptMode                           ,0xff88332c) //101
NSTUB(SleepTask                               ,0x003f79b0) //101
NSTUB(TakeSemaphore                           ,0x003f7634) //101
NSTUB(TurnOffBackLight                        ,0xff8902c0) //104
NSTUB(TurnOnBackLight                         ,0xff8902a8) //104
NSTUB(UIFS_WriteFirmInfoToFile                ,0xff977edc) //101
NSTUB(UnlockAF                                ,0xff832ea8) //102
NSTUB(UnlockMainPower                         ,0xff8834b4) //103
NSTUB(UnsetZoomForMovie                       ,0xff98c0b8) //104
NSTUB(VbattGet                                ,0xff82c3d0) //101
NSTUB(Write                                   ,0xff83167c) //101
NSTUB(WriteSDCard                             ,0xff947620) //108
NSTUB(_log                                    ,0x003fcce0) //111
NSTUB(_log10                                  ,0x003fd220) //112
NSTUB(_pow                                    ,0x003fd398) //114
NSTUB(_sqrt                                   ,0x003fefbc) //  6
NSTUB(add_ptp_handler                         ,0xffa17204) //  6
NSTUB(apex2us                                 ,0xff9d8d1c) //  4
NSTUB(close                                   ,0xff8159b4) //  6
NSTUB(closedir                                ,0xffa53a48) //  4
NSTUB(err_init_task                           ,0xff81437c) //111
NSTUB(exmem_alloc                             ,0xff879610) //101
NSTUB(free                                    ,0xff812f78) //112
NSTUB(kbd_p1_f                                ,0xff82ee08) //109
NSTUB(kbd_p1_f_cont                           ,0xff82ee14) //109
NSTUB(kbd_p2_f                                ,0xff82e600) //109
NSTUB(kbd_read_keys                           ,0xff82edb8) //109
NSTUB(kbd_read_keys_r2                        ,0xff8565e8) //109
NSTUB(lseek                                   ,0xff831844) //101
NSTUB(malloc                                  ,0xff812f20) //112
NSTUB(memcmp                                  ,0xff81ae34) //101
NSTUB(memcpy                                  ,0xff83725c) //101
NSTUB(memset                                  ,0xff9d6fac) //101
NSTUB(mkdir                                   ,0xff831ac4) //  6
NSTUB(mktime_ext                              ,0xff8965f4) //  1
NSTUB(open                                    ,0xff815904) //  6
NSTUB(OpenFastDir                             ,0xffa53a98) //115
NSTUB(qsort                                   ,0xff9d6f4c) //  6
NSTUB(read                                    ,0xff815b58) //101
NSTUB(reboot_fw_update                        ,0xffa58fc8) //106
NSTUB(set_control_event                       ,0xff882f9c) //111
NSTUB(stat                                    ,0xff83188c) //109
NSTUB(strcat                                  ,0xff896c74) //  1
NSTUB(strchr                                  ,0xff812dec) //  1
NSTUB(strcmp                                  ,0xff81af30) //101
NSTUB(strcpy                                  ,0xff81ae1c) //101
NSTUB(strftime                                ,0xff896640) //113
NSTUB(strlen                                  ,0xff812e38) //101
NSTUB(strncmp                                 ,0xff812da0) //  1
NSTUB(strncpy                                 ,0xff812d64) //  1
NSTUB(strrchr                                 ,0xff812e10) //  1
NSTUB(strtol                                  ,0xff837248) //101
NSTUB(strtolx                                 ,0xff83704c) //109
  DEF(task_CaptSeq                            ,0xff86f0f0) //110
  DEF(task_ExpDrv                             ,0xff8aedf4) //110
  DEF(task_InitFileModules                    ,0xff886c2c) //110
  DEF(task_MovieRecord                        ,0xff95b668) //110
  DEF(task_PhySw                              ,0xff82e964) //110
NSTUB(time                                    ,0x003fb794) //  6
NSTUB(vsprintf                                ,0xff81accc) //115
NSTUB(write                                   ,0xff83167c) //101