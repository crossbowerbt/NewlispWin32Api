(context 'WIN32)


;; mask DWORD PlaySoundFlags {
(setq SND_SYNC 0x00000000L)
(setq SND_ASYNC 0x00000001L)
(setq SND_NODEFAULT 0x00000002L)
(setq SND_MEMORY 0x00000004L)
(setq SND_LOOP 0x00000008L)
(setq SND_NOSTOP 0x00000010L)

(setq SND_PURGE 0x00000040L)
(setq SND_APPLICATION 0x00000080L)

(setq SND_NOWAIT 0x00002000L)
(setq SND_ALIAS 0x00010000L)
(setq SND_FILENAME 0x00020000L)
(setq SND_RESOURCE 0x00040000L)

(setq SND_ALIAS_ID 0x00100000L)
;; };

;; mask DWORD WaveOutCapsFlags {
(setq WAVECAPS_PITCH 0x0001)
(setq WAVECAPS_PLAYBACKRATE 0x0002)
(setq WAVECAPS_VOLUME 0x0004)
(setq WAVECAPS_LRVOLUME 0x0008)
(setq WAVECAPS_SYNC 0x0010)
(setq WAVECAPS_SAMPLEACCURATE 0x0020)
(setq WAVECAPS_DIRECTSOUND 0x0040)
;; };

;; mask DWORD WaveCapsFormatFlags {
(setq WAVE_INVALIDFORMAT 0x00000000)
(setq WAVE_FORMAT_1M08 0x00000001)
(setq WAVE_FORMAT_1S08 0x00000002)
(setq WAVE_FORMAT_1M16 0x00000004)
(setq WAVE_FORMAT_1S16 0x00000008)
(setq WAVE_FORMAT_2M08 0x00000010)
(setq WAVE_FORMAT_2S08 0x00000020)
(setq WAVE_FORMAT_2M16 0x00000040)
(setq WAVE_FORMAT_2S16 0x00000080)
(setq WAVE_FORMAT_4M08 0x00000100)
(setq WAVE_FORMAT_4S08 0x00000200)
(setq WAVE_FORMAT_4M16 0x00000400)
(setq WAVE_FORMAT_4S16 0x00000800)
;; };

;; mask DWORD WAVE_OUT_OPEN_FLAGS {

(setq WAVE_FORMAT_QUERY 0x0001)
(setq WAVE_ALLOWSYNC 0x0002)
(setq WAVE_MAPPED 0x0004)
(setq WAVE_FORMAT_DIRECT 0x0008)
(setq CALLBACK_WINDOW 0x000100000)
(setq CALLBACK_TASK 0x000200000)
(setq CALLBACK_FUNCTION 0x000300000)
;; };

;; value DWORD MMRESULT_VALUES {
(setq MMSYSERR_NOERROR 0)
(setq MMSYSERR_ERROR 1)
(setq MMSYSERR_BADDEVICEID 2)
(setq MMSYSERR_NOTENABLED 3)
(setq MMSYSERR_ALLOCATED 4)
(setq MMSYSERR_INVALHANDLE 5)
(setq MMSYSERR_NODRIVER 6)
(setq MMSYSERR_NOMEM 7)
(setq MMSYSERR_NOTSUPPORTED 8)
(setq MMSYSERR_BADERRNUM 9)
(setq MMSYSERR_INVALFLAG 10)
(setq MMSYSERR_INVALPARAM 11)
(setq MMSYSERR_HANDLEBUSY 12)
(setq MMSYSERR_INVALIDALIAS 13)
(setq MMSYSERR_BADDB 14)
(setq MMSYSERR_KEYNOTFOUND 15)
(setq MMSYSERR_READERROR 16)
(setq MMSYSERR_WRITEERROR 17)
(setq MMSYSERR_DELETEERROR 18)
(setq MMSYSERR_VALNOTFOUND 19)
(setq MMSYSERR_NODRIVERCB 20)
(setq MMSYSERR_LASTERROR 20)
;; };

;; value UINT PRODUCT_ID_VALUE {

(setq MM_MIDI_MAPPER 1)
(setq MM_WAVE_MAPPER 2)
(setq MM_SNDBLST_MIDIOUT 3)
(setq MM_SNDBLST_MIDIIN 4)
(setq MM_SNDBLST_SYNTH 5)
(setq MM_SNDBLST_WAVEOUT 6)
(setq MM_SNDBLST_WAVEIN 7)
(setq MM_ADLIB 9)
(setq MM_MPU401_MIDIOUT 10)
(setq MM_MPU401_MIDIIN 11)
(setq MM_PC_JOYSTICK 12)
(setq MM_PCSPEAKER_WAVEOUT 13)
(setq MM_MSFT_WSS_WAVEIN 14)
(setq MM_MSFT_WSS_WAVEOUT 15)
(setq MM_MSFT_WSS_FMSYNTH_STEREO 16)
(setq MM_MSFT_WSS_MIXER 17)
(setq MM_MSFT_WSS_OEM_WAVEIN 18)
(setq MM_MSFT_WSS_OEM_WAVEOUT 19)
(setq MM_MSFT_WSS_OEM_FMSYNTH_STEREO 20)
(setq MM_MSFT_WSS_AUX 21)
(setq MM_MSFT_WSS_OEM_AUX 22)
(setq MM_MSFT_GENERIC_WAVEIN 23)
(setq MM_MSFT_GENERIC_WAVEOUT 24)
(setq MM_MSFT_GENERIC_MIDIIN 25)
(setq MM_MSFT_GENERIC_MIDIOUT 26)
(setq MM_MSFT_GENERIC_MIDISYNTH 27)
(setq MM_MSFT_GENERIC_AUX_LINE 28)
(setq MM_MSFT_GENERIC_AUX_MIC 29)
(setq MM_MSFT_GENERIC_AUX_CD 30)
(setq MM_MSFT_WSS_OEM_MIXER 31)
(setq MM_MSFT_MSACM 32)
(setq MM_MSFT_ACM_MSADPCM 33)
(setq MM_MSFT_ACM_IMAADPCM 34)
(setq MM_MSFT_ACM_MSFILTER 35)
(setq MM_MSFT_ACM_GSM610 36)
(setq MM_MSFT_ACM_G711 37)
(setq MM_MSFT_ACM_PCM 38)

    #define ; MM_WSS_SB16_WAVEIN
(setq MM_WSS_SB16_WAVEOUT 40)
(setq MM_WSS_SB16_MIDIIN 41)
(setq MM_WSS_SB16_MIDIOUT 42)
(setq MM_WSS_SB16_SYNTH 43)
(setq MM_WSS_SB16_AUX_LINE 44)
(setq MM_WSS_SB16_AUX_CD 45)
(setq MM_WSS_SB16_MIXER 46)
(setq MM_WSS_SBPRO_WAVEIN 47)
(setq MM_WSS_SBPRO_WAVEOUT 48)
(setq MM_WSS_SBPRO_MIDIIN 49)
(setq MM_WSS_SBPRO_MIDIOUT 50)
(setq MM_WSS_SBPRO_SYNTH 51)
(setq MM_WSS_SBPRO_AUX_LINE 52)
(setq MM_WSS_SBPRO_AUX_CD 53)
(setq MM_WSS_SBPRO_MIXER 54)
(setq MM_MSFT_WSS_NT_WAVEIN 55)
(setq MM_MSFT_WSS_NT_WAVEOUT 56)
(setq MM_MSFT_WSS_NT_FMSYNTH_STEREO 57)
(setq MM_MSFT_WSS_NT_MIXER 58)
(setq MM_MSFT_WSS_NT_AUX 59)
(setq MM_MSFT_SB16_WAVEIN 60)
(setq MM_MSFT_SB16_WAVEOUT 61)
(setq MM_MSFT_SB16_MIDIIN 62)
(setq MM_MSFT_SB16_MIDIOUT 63)
(setq MM_MSFT_SB16_SYNTH 64)
(setq MM_MSFT_SB16_AUX_LINE 65)
(setq MM_MSFT_SB16_AUX_CD 66)
(setq MM_MSFT_SB16_MIXER 67)
(setq MM_MSFT_SBPRO_WAVEIN 68)
(setq MM_MSFT_SBPRO_WAVEOUT 69)
(setq MM_MSFT_SBPRO_MIDIIN 70)
(setq MM_MSFT_SBPRO_MIDIOUT 71)
(setq MM_MSFT_SBPRO_SYNTH 72)
(setq MM_MSFT_SBPRO_AUX_LINE 73)
(setq MM_MSFT_SBPRO_AUX_CD 74)
(setq MM_MSFT_SBPRO_MIXER 75)
(setq MM_MSFT_MSOPL_SYNTH 76)
(setq MM_MSFT_VMDMS_LINE_WAVEIN 80)
(setq MM_MSFT_VMDMS_LINE_WAVEOUT 81)
(setq MM_MSFT_VMDMS_HANDSET_WAVEIN 82)
(setq MM_MSFT_VMDMS_HANDSET_WAVEOUT 83)
(setq MM_MSFT_VMDMW_LINE_WAVEIN 84)
(setq MM_MSFT_VMDMW_LINE_WAVEOUT 85)
(setq MM_MSFT_VMDMW_HANDSET_WAVEIN 86)
(setq MM_MSFT_VMDMW_HANDSET_WAVEOUT 87)
(setq MM_MSFT_VMDMW_MIXER 88)
(setq MM_MSFT_VMDM_GAME_WAVEOUT 89)
(setq MM_MSFT_VMDM_GAME_WAVEIN 90)
(setq MM_MSFT_ACM_MSNAUDIO 91)
(setq MM_MSFT_ACM_MSG723 92)
(setq MM_MSFT_WDMAUDIO_WAVEOUT 100)
(setq MM_MSFT_WDMAUDIO_WAVEIN 101)
(setq MM_MSFT_WDMAUDIO_MIDIOUT 102)
(setq MM_MSFT_WDMAUDIO_MIDIIN 103)
(setq MM_MSFT_WDMAUDIO_MIXER 104)
;; };

typedef UINT        MMVERSION;  
(setq LPUINT (string UINT "*"))
(setq HWAVEOUT HANDLE)
(setq HWAVEIN HANDLE)
typedef UINT        MMRESULT;   

;; typedef struct mmtime_tag { {
(struct 'mmtime_tag
    UINT ; wType;
    DWORD ; ms;
    DWORD ; sample;
    DWORD ; cb;
    DWORD ; ticks;

)
(setq MMTIME mmtime_tag)
;; } MMTIME
(setq PMMTIME (string MMTIME "*"))
(setq NPMMTIME (string MMTIME "*"))
(setq LPMMTIME (string MMTIME "*"))

;; typedef struct wavehdr_tag  { {
(struct 'wavehdr_tag
    LPSTR ; lpData;
    DWORD ; dwBufferLength;
    DWORD ; dwBytesRecorded;
    DWORD ; dwUser;
    DWORD ; dwFlags;
    DWORD ; dwLoops;
    DWORD ; lpNext;
    DWORD ; reserved;
)
(setq WAVEHDR wavehdr_tag)
;; } WAVEHDR
(setq PWAVEHDR (string WAVEHDR "*"))
(setq NPWAVEHDR (string WAVEHDR "*"))
(setq LPWAVEHDR (string WAVEHDR "*"))

;; typedef struct tagWAVEOUTCAPSA  { {
(struct 'tagWAVEOUTCAPSA
    WORD ; wMid;
    WORD ; wPid;
    MMVERSION ; vDriverVersion;
    CHAR ; szPname;
    DWORD ; dwFormats;
    WORD ; wChannels;
    WORD ; wReserved1;
    DWORD ; dwSupport;
)
(setq WAVEOUTCAPSA tagWAVEOUTCAPSA)
;; } WAVEOUTCAPSA
(setq PWAVEOUTCAPSA (string WAVEOUTCAPSA "*"))
(setq NPWAVEOUTCAPSA (string WAVEOUTCAPSA "*"))
(setq LPWAVEOUTCAPSA (string WAVEOUTCAPSA "*"))


;; typedef struct tagWAVEOUTCAPSW  { {
(struct 'tagWAVEOUTCAPSW
    WORD ; wMid;
    WORD ; wPid;
    MMVERSION ; vDriverVersion;
    WCHAR ; szPname;
    DWORD ; dwFormats;
    WORD ; wChannels;
    WORD ; wReserved1;
    DWORD ; dwSupport;
)
(setq WAVEOUTCAPSW tagWAVEOUTCAPSW)
;; } WAVEOUTCAPSW
(setq PWAVEOUTCAPSW (string WAVEOUTCAPSW "*"))
(setq NPWAVEOUTCAPSW (string WAVEOUTCAPSW "*"))
(setq LPWAVEOUTCAPSW (string WAVEOUTCAPSW "*"))



(setq DRVCALLBACK DWORD)


(setq LPHWAVEIN (string HWAVEIN "*"))
(setq LPHWAVEOUT (string HWAVEOUT "*"))
(setq WAVECALLBACK DRVCALLBACK)
(setq LPWAVECALLBACK (string WAVECALLBACK "*"))

;; value WORD FORMAT_TAG_VALUE {
(setq WAVE_FORMAT_UNKNOWN 0x0000)
(setq WAVE_FORMAT_ADPCM 0x0002)
(setq WAVE_FORMAT_IEEE_FLOAT 0x0003)
    #define ; WAVE_FORMAT_IBM_CVSD
(setq WAVE_FORMAT_ALAW 0x0006)
(setq WAVE_FORMAT_MULAW 0x0007)
(setq WAVE_FORMAT_OKI_ADPCM 0x0010)
(setq WAVE_FORMAT_DVI_ADPCM 0x0011)
(setq WAVE_FORMAT_IMA_ADPCM 0x0011)
(setq WAVE_FORMAT_MEDIASPACE_ADPCM 0x0012)
(setq WAVE_FORMAT_SIERRA_ADPCM 0x0013)
(setq WAVE_FORMAT_G723_ADPCM 0x0014)
(setq WAVE_FORMAT_DIGISTD 0x0015)
(setq WAVE_FORMAT_DIGIFIX 0x0016)
(setq WAVE_FORMAT_DIALOGIC_OKI_ADPCM 0x0017)
(setq WAVE_FORMAT_MEDIAVISION_ADPCM 0x0018)
(setq WAVE_FORMAT_YAMAHA_ADPCM 0x0020)
(setq WAVE_FORMAT_SONARC 0x0021)
(setq WAVE_FORMAT_DSPGROUP_TRUESPEECH 0x0022)
(setq WAVE_FORMAT_ECHOSC1 0x0023)
(setq WAVE_FORMAT_AUDIOFILE_AF36 0x0024)
(setq WAVE_FORMAT_APTX 0x0025)
(setq WAVE_FORMAT_AUDIOFILE_AF10 0x0026)
(setq WAVE_FORMAT_DOLBY_AC2 0x0030)
(setq WAVE_FORMAT_GSM610 0x0031)
(setq WAVE_FORMAT_MSNAUDIO 0x0032)
(setq WAVE_FORMAT_ANTEX_ADPCME 0x0033)
(setq WAVE_FORMAT_CONTROL_RES_VQLPC 0x0034)
(setq WAVE_FORMAT_DIGIREAL 0x0035)
(setq WAVE_FORMAT_DIGIADPCM 0x0036)
(setq WAVE_FORMAT_CONTROL_RES_CR10 0x0037)
(setq WAVE_FORMAT_NMS_VBXADPCM 0x0038)
(setq WAVE_FORMAT_CS_IMAADPCM 0x0039)
(setq WAVE_FORMAT_ECHOSC3 0x003A)
(setq WAVE_FORMAT_ROCKWELL_ADPCM 0x003B)
(setq WAVE_FORMAT_ROCKWELL_DIGITALK 0x003C)
(setq WAVE_FORMAT_XEBEC 0x003D)
(setq WAVE_FORMAT_G721_ADPCM 0x0040)
(setq WAVE_FORMAT_G728_CELP 0x0041)
(setq WAVE_FORMAT_MPEG 0x0050)
(setq WAVE_FORMAT_MPEGLAYER3 0x0055)
(setq WAVE_FORMAT_CIRRUS 0x0060)
(setq WAVE_FORMAT_ESPCM 0x0061)
(setq WAVE_FORMAT_VOXWARE 0x0062)
(setq WAVEFORMAT_CANOPUS_ATRAC 0x0063)
(setq WAVE_FORMAT_G726_ADPCM 0x0064)
(setq WAVE_FORMAT_G722_ADPCM 0x0065)
(setq WAVE_FORMAT_DSAT 0x0066)
(setq WAVE_FORMAT_DSAT_DISPLAY 0x0067)
(setq WAVE_FORMAT_SOFTSOUND 0x0080)
(setq WAVE_FORMAT_RHETOREX_ADPCM 0x0100)
(setq WAVE_FORMAT_CREATIVE_ADPCM 0x0200)
(setq WAVE_FORMAT_CREATIVE_FASTSPEECH8 0x0202)
(setq WAVE_FORMAT_CREATIVE_FASTSPEECH10 0x0203)
(setq WAVE_FORMAT_QUARTERDECK 0x0220)
(setq WAVE_FORMAT_FM_TOWNS_SND 0x0300)
(setq WAVE_FORMAT_BTV_DIGITAL 0x0400)
(setq WAVE_FORMAT_OLIGSM 0x1000)
(setq WAVE_FORMAT_OLIADPCM 0x1001)
(setq WAVE_FORMAT_OLICELP 0x1002)
(setq WAVE_FORMAT_OLISBC 0x1003)
(setq WAVE_FORMAT_OLIOPR 0x1004)
(setq WAVE_FORMAT_LH_CODEC 0x1100)
(setq WAVE_FORMAT_NORRIS 0x1400)
;; };

;; typedef struct waveformat_tag  { {
(struct 'waveformat_tag
    FORMAT_TAG_VALUE ; wFormatTag;
    WORD ; nChannels;
    DWORD ; nSamplesPerSec;
    DWORD ; nAvgBytesPerSec;
    WORD ; nBlockAlign;
)
(setq WAVEFORMAT waveformat_tag)
;; } WAVEFORMAT
(setq PWAVEFORMAT (string WAVEFORMAT "*"))
(setq NPWAVEFORMAT (string WAVEFORMAT "*"))
(setq LPWAVEFORMAT (string WAVEFORMAT "*"))

;; typedef struct pcmwaveformat_tag  { {
(struct 'pcmwaveformat_tag
    WAVEFORMAT ; wf
    WORD ; wBitsPerSample
)
(setq PCMWAVEFORMAT pcmwaveformat_tag)
;; } PCMWAVEFORMAT
(setq PPCMWAVEFORMAT (string PCMWAVEFORMAT "*"))
(setq NPPCMWAVEFORMAT (string PCMWAVEFORMAT "*"))
(setq LPPCMWAVEFORMAT (string PCMWAVEFORMAT "*"))

;; typedef struct tWAVEFORMATEX { {
(struct 'tWAVEFORMATEX
    WORD ; wFormatTag;
    WORD ; nChannels;
    DWORD ; nSamplesPerSec;
    DWORD ; nAvgBytesPerSec;
    WORD ; nBlockAlign;
    WORD ; wBitsPerSample;
    WORD ; cbSize;
    } ; WAVEFORMATEX
(setq PWAVEFORMATEX (string WAVEFORMATEX "*"))
(setq NPWAVEFORMATEX (string WAVEFORMATEX "*"))
(setq LPWAVEFORMATEX (string WAVEFORMATEX "*"))
(setq LPCWAVEFORMATEX (string WAVEFORMATEX "*"))

;; typedef struct tagWAVEINCAPSA  { {
(struct 'tagWAVEINCAPSA
    WORD ; wMid;
    WORD ; wPid;
    MMVERSION ; vDriverVersion;
    CHAR ; szPname;
    DWORD ; dwFormats;
    WORD ; wChannels;
    WORD ; wReserved1;
)
(setq WAVEINCAPSA tagWAVEINCAPSA)
;; } WAVEINCAPSA
(setq PWAVEINCAPSA (string tagWAVEINCAPSA "*"))
(setq NPWAVEINCAPSA (string tagWAVEINCAPSA "*"))
(setq LPWAVEINCAPSA (string tagWAVEINCAPSA "*"))
;; typedef struct tagWAVEINCAPSW  { {
(struct 'tagWAVEINCAPSW
    WORD ; wMid;
    WORD ; wPid;
    MMVERSION ; vDriverVersion;
    WCHAR ; szPname;
    DWORD ; dwFormats;
    WORD ; wChannels;
    WORD ; wReserved1;
)
(setq WAVEINCAPSW tagWAVEINCAPSW)
;; } WAVEINCAPSW

(setq PWAVEINCAPSW (string WAVEINCAPSW "*"))
(setq NPWAVEINCAPSW (string WAVEINCAPSW "*"))
(setq LPWAVEINCAPSW (string WAVEINCAPSW "*"))

;; category Multimedia:
;; module WINMM.DLL:

(import "WINMM.DLL" "sndPlaySoundA" BOOL
    LPCSTR ; pszSound,
    PlaySoundFlags ; fuSound
)
(import "WINMM.DLL" "sndPlaySoundW" BOOL
    LPCWSTR ; pszSound,
    PlaySoundFlags ; fuSound
)
(import "WINMM.DLL" "PlaySound" BOOL
    LPCSTR ; pszSound,
    HMODULE ; hmod,
    PlaySoundFlags ; fdwSound
)
(import "WINMM.DLL" "PlaySoundA" BOOL
    LPCSTR ; pszSound,
    HMODULE ; hmod,
    PlaySoundFlags ; fdwSound
)
(import "WINMM.DLL" "PlaySoundW" BOOL
    LPCWSTR ; pszSound,
    HMODULE ; hmod,
    PlaySoundFlags ; fdwSound
)

(import "WINMM.DLL" "waveOutGetDevCapsA" MMRESULT
    PRODUCT_ID_VALUE ; uDeviceID,
    LPWAVEOUTCAPSA ; pwoc,
    UINT ; cbwoc
)
(import "WINMM.DLL" "waveOutGetDevCapsW" MMRESULT_VALUES
    PRODUCT_ID_VALUE ; uDeviceID,
    LPWAVEOUTCAPSW ; pwoc,
    UINT ; cbwoc
)
(import "WINMM.DLL" "waveOutGetVolume" MMRESULT_VALUES
    HWAVEOUT ; hwo,
    LPDWORD ; pdwVolume
)
(import "WINMM.DLL" "waveOutSetVolume" MMRESULT_VALUES
    HWAVEOUT ; hwo,
    DWORD ; dwVolume
)
(import "WINMM.DLL" "waveOutGetErrorTextA" MMRESULT_VALUES
    MMRESULT_VALUES ; mmrError,
    LPSTR ; pszText,
    UINT ; cchText
)
(import "WINMM.DLL" "waveOutGetErrorTextW" MMRESULT_VALUES
    MMRESULT_VALUES ; mmrError,
    LPWSTR ; pszText,
    UINT ; cchText
)
(import "WINMM.DLL" "waveOutOpen" MMRESULT_VALUES
    LPHWAVEOUT ; phwo,
    PRODUCT_ID_VALUE ; uDeviceID,
    LPCWAVEFORMATEX ; pwfx,
    DWORD ; dwCallback,
    DWORD ; dwInstance,
    WAVE_OUT_OPEN_FLAGS ; fdwOpen
)
(import "WINMM.DLL" "waveOutGetNumDevs" UINT
     ; 
)
(import "WINMM.DLL" "waveOutClose" MMRESULT_VALUES
    HWAVEOUT ; hwo
)
(import "WINMM.DLL" "waveOutPrepareHeader" MMRESULT_VALUES
    HWAVEOUT ; hwo,
    LPWAVEHDR ; pwh,
    UINT ; cbwh
)
(import "WINMM.DLL" "waveOutUnprepareHeader" MMRESULT_VALUES
    HWAVEOUT ; hwo,
    LPWAVEHDR ; pwh,
    UINT ; cbwh
)
(import "WINMM.DLL" "waveOutWrite" MMRESULT_VALUES
    HWAVEOUT ; hwo,
    LPWAVEHDR ; pwh,
    UINT ; cbwh
)
(import "WINMM.DLL" "waveOutPause" MMRESULT_VALUES
    HWAVEOUT ; hwo
)
(import "WINMM.DLL" "waveOutRestart" MMRESULT_VALUES
    HWAVEOUT ; hwo
)
(import "WINMM.DLL" "waveOutReset" MMRESULT_VALUES
    HWAVEOUT ; hwo
)
(import "WINMM.DLL" "waveOutBreakLoop" MMRESULT_VALUES
    HWAVEOUT ; hwo
)
(import "WINMM.DLL" "waveOutGetPosition" MMRESULT_VALUES
    HWAVEOUT ; hwo,
    LPMMTIME ; pmmt,
    UINT ; cbmmt
)
(import "WINMM.DLL" "waveOutGetPitch" MMRESULT_VALUES
    HWAVEOUT ; hwo,
    LPDWORD ; pdwPitch
)
(import "WINMM.DLL" "waveOutSetPitch" MMRESULT_VALUES
    HWAVEOUT ; hwo,
    DWORD ; dwPitch
)
(import "WINMM.DLL" "waveOutGetPlaybackRate" MMRESULT_VALUES
    HWAVEOUT ; hwo,
    LPDWORD ; pdwRate
)
(import "WINMM.DLL" "waveOutSetPlaybackRate" MMRESULT_VALUES
    HWAVEOUT ; hwo,
    DWORD ; dwRate
)
(import "WINMM.DLL" "waveOutGetID" MMRESULT_VALUES
    HWAVEOUT ; hwo,
    LPUINT ; puDeviceID
)
(import "WINMM.DLL" "waveOutMessage" MMRESULT_VALUES
    HWAVEOUT ; hwo,
    UINT ; uMsg,
    DWORD ; dw1,
    DWORD ; dw2
)


(import "WINMM.DLL" "waveInGetDevCapsA" MMRESULT_VALUES
    PRODUCT_ID_VALUE ; uDeviceID,
    LPWAVEINCAPSA ; pwic,
    UINT ; cbwic
)
(import "WINMM.DLL" "waveInGetDevCapsW" MMRESULT_VALUES
    PRODUCT_ID_VALUE ; uDeviceID,
    LPWAVEINCAPSW ; pwic,
    UINT ; cbwic
)
(import "WINMM.DLL" "waveInGetErrorTextA" MMRESULT_VALUES
    MMRESULT_VALUES ; mmrError,
    LPSTR ; pszText,
    UINT ; cchText
)
(import "WINMM.DLL" "waveInGetErrorTextW" MMRESULT_VALUES
    MMRESULT_VALUES ; mmrError,
    LPWSTR ; pszText,
    UINT ; cchText
)
(import "WINMM.DLL" "waveInOpen" MMRESULT_VALUES
    LPHWAVEIN ; phwi,
    PRODUCT_ID_VALUE ; uDeviceID,
    LPCWAVEFORMATEX ; pwfx,
    DWORD ; dwCallback,
    DWORD ; dwInstance,
    WAVE_OUT_OPEN_FLAGS ; fdwOpen
)
(import "WINMM.DLL" "waveInClose" MMRESULT_VALUES
    HWAVEIN ; hwi
)
(import "WINMM.DLL" "waveInPrepareHeader" MMRESULT_VALUES
    HWAVEIN ; hwi,
    LPWAVEHDR ; pwh,
    UINT ; cbwh
)
(import "WINMM.DLL" "waveInUnprepareHeader" MMRESULT_VALUES
    HWAVEIN ; hwi,
    LPWAVEHDR ; pwh,
    UINT ; cbwh
)
(import "WINMM.DLL" "waveInAddBuffer" MMRESULT_VALUES
    HWAVEIN ; hwi,
    LPWAVEHDR ; pwh,
    UINT ; cbwh
)
(import "WINMM.DLL" "waveInStart" MMRESULT_VALUES
    HWAVEIN ; hwi
)
(import "WINMM.DLL" "waveInStop" MMRESULT_VALUES
    HWAVEIN ; hwi
)
(import "WINMM.DLL" "waveInReset" MMRESULT_VALUES
    HWAVEIN ; hwi
)
(import "WINMM.DLL" "waveInGetPosition" MMRESULT_VALUES
    HWAVEIN ; hwi,
    LPMMTIME ; pmmt,
    UINT ; cbmmt
)
(import "WINMM.DLL" "waveInGetID" MMRESULT_VALUES
    HWAVEIN ; hwi,
    LPUINT ; puDeviceID
)

;; value DWORD MCIERROR {
(setq MCIERR_NO_ERROR 0)
(setq MCIERR_UNRECOGNIZED_KEYWORD 259)
(setq MCIERR_UNRECOGNIZED_COMMAND 261)
(setq MCIERR_HARDWARE 262)
(setq MCIERR_INVALID_DEVICE_NAME 263)
(setq MCIERR_OUT_OF_MEMORY 264)
(setq MCIERR_DEVICE_OPEN 265)
(setq MCIERR_CANNOT_LOAD_DRIVER 266)
(setq MCIERR_MISSING_COMMAND_STRING 267)
(setq MCIERR_PARAM_OVERFLOW 268)
(setq MCIERR_MISSING_STRING_ARGUMENT 269)
(setq MCIERR_BAD_INTEGER 270)
(setq MCIERR_PARSER_INTERNAL 271)
(setq MCIERR_DRIVER_INTERNAL 272)
(setq MCIERR_MISSING_PARAMETER 273)
(setq MCIERR_UNSUPPORTED_FUNCTION 274)
(setq MCIERR_FILE_NOT_FOUND 275)
(setq MCIERR_DEVICE_NOT_READY 276)
(setq MCIERR_INTERNAL 277)
(setq MCIERR_DRIVER 278)
(setq MCIERR_CANNOT_USE_ALL 279)
(setq MCIERR_MULTIPLE 280)
(setq MCIERR_EXTENSION_NOT_FOUND 281)
(setq MCIERR_OUTOFRANGE 282)
(setq MCIERR_FLAGS_NOT_COMPATIBLE 284)
(setq MCIERR_FILE_NOT_SAVED 286)
(setq MCIERR_DEVICE_TYPE_REQUIRED 287)
(setq MCIERR_DEVICE_LOCKED 288)
(setq MCIERR_DUPLICATE_ALIAS 289)
(setq MCIERR_BAD_CONSTANT 290)
(setq MCIERR_MUST_USE_SHAREABLE 291)
(setq MCIERR_MISSING_DEVICE_NAME 292)
(setq MCIERR_BAD_TIME_FORMAT 293)
(setq MCIERR_NO_CLOSING_QUOTE 294)
(setq MCIERR_DUPLICATE_FLAGS 295)
(setq MCIERR_INVALID_FILE 296)
(setq MCIERR_NULL_PARAMETER_BLOCK 297)
(setq MCIERR_UNNAMED_RESOURCE 298)
(setq MCIERR_NEW_REQUIRES_ALIAS 299)
(setq MCIERR_NOTIFY_ON_AUTO_OPEN 300)
(setq MCIERR_NO_ELEMENT_ALLOWED 301)
(setq MCIERR_NONAPPLICABLE_FUNCTION 302)
(setq MCIERR_ILLEGAL_FOR_AUTO_OPEN 303)
(setq MCIERR_FILENAME_REQUIRED 304)
(setq MCIERR_EXTRA_CHARACTERS 305)
(setq MCIERR_DEVICE_NOT_INSTALLED 306)
(setq MCIERR_GET_CD 307)
(setq MCIERR_SET_CD 308)
(setq MCIERR_SET_DRIVE 309)
(setq MCIERR_DEVICE_LENGTH 310)
(setq MCIERR_DEVICE_ORD_LENGTH 311)
(setq MCIERR_NO_INTEGER 312)
(setq MCIERR_WAVE_OUTPUTSINUSE 320)
(setq MCIERR_WAVE_SETOUTPUTINUSE 321)
(setq MCIERR_WAVE_INPUTSINUSE 322)
(setq MCIERR_WAVE_SETINPUTINUSE 323)
(setq MCIERR_WAVE_OUTPUTUNSPECIFIED 324)
(setq MCIERR_WAVE_INPUTUNSPECIFIED 325)
(setq MCIERR_WAVE_OUTPUTSUNSUITABLE 326)
(setq MCIERR_WAVE_SETOUTPUTUNSUITABLE 327)
(setq MCIERR_WAVE_INPUTSUNSUITABLE 328)
(setq MCIERR_WAVE_SETINPUTUNSUITABLE 329)
(setq MCIERR_SEQ_DIV_INCOMPATIBLE 336)
(setq MCIERR_SEQ_PORT_INUSE 337)
(setq MCIERR_SEQ_PORT_NONEXISTENT 338)
(setq MCIERR_SEQ_PORT_MAPNODEVICE 339)
(setq MCIERR_SEQ_PORT_MISCERROR 340)
(setq MCIERR_SEQ_TIMER 341)
(setq MCIERR_SEQ_PORTUNSPECIFIED 342)
(setq MCIERR_SEQ_NOMIDIPRESENT 343)
(setq MCIERR_NO_WINDOW 346)
(setq MCIERR_CREATEWINDOW 347)
(setq MCIERR_FILE_READ 348)
(setq MCIERR_FILE_WRITE 349)
(setq MCIERR_NO_IDENTITY 350)
(setq MCIERR_CUSTOM_DRIVER_BASE 512)
;; };

typedef UINT    MCIDEVICEID;    
(setq HTASK HANDLE)

;; value UINT MCI_COMMAND_MESSAGE_VALUE {
(setq MCI_OPEN 0x0803)
(setq MCI_CLOSE 0x0804)
(setq MCI_ESCAPE 0x0805)
(setq MCI_PLAY 0x0806)
(setq MCI_SEEK 0x0807)
(setq MCI_STOP 0x0808)
(setq MCI_PAUSE 0x0809)
(setq MCI_INFO 0x080A)
(setq MCI_GETDEVCAPS 0x080B)
(setq MCI_SPIN 0x080C)
(setq MCI_SET 0x080D)
(setq MCI_STEP 0x080E)
(setq MCI_RECORD 0x080F)
(setq MCI_SYSINFO 0x0810)
(setq MCI_BREAK 0x0811)
(setq MCI_SAVE 0x0813)
(setq MCI_STATUS 0x0814)
(setq MCI_CUE 0x0830)
(setq MCI_REALIZE 0x0840)
(setq MCI_WINDOW 0x0841)
(setq MCI_PUT 0x0842)
(setq MCI_WHERE 0x0843)
(setq MCI_FREEZE 0x0844)
(setq MCI_UNFREEZE 0x0845)
(setq MCI_LOAD 0x0850)
(setq MCI_CUT 0x0851)
(setq MCI_COPY 0x0852)
(setq MCI_PASTE 0x0853)
(setq MCI_UPDATE 0x0854)
(setq MCI_RESUME 0x0855)
(setq MCI_DELETE 0x0856)
;; };

;; mask DWORD MCI_SEND_COMMAND_MASK {
(setq MCI_NOTIFY 0x00000001L)
(setq MCI_WAIT 0x00000002L)
(setq MCI_FROM 0x00000004L)
(setq MCI_TO 0x00000008L)
(setq MCI_TRACK 0x00000010L)
(setq MCI_COMMAND1 0x00000020L)
(setq MCI_COMMAND2 0x00000040L)
(setq MCI_COMMAND3 0x00000080L)
(setq MCI_COMMAND4 0x00000100L)
(setq MCI_COMMAND5 0x00000200L)
(setq MCI_COMMAND6 0x00000400L)
(setq MCI_COMMAND7 0x00000800L)
(setq MCI_COMMAND8 0x00001000L)
(setq MCI_COMMAND9 0x00002000L)
(setq MCI_COMMAND10 0x00004000L)
(setq MCI_COMMAND11 0x00008000L)
;; };


(import "WINMM.DLL" "mciSendCommandA" MCIERROR
    MCIDEVICEID ; mciId,
    MCI_COMMAND_MESSAGE_VALUE ; uMsg,
    MCI_SEND_COMMAND_MASK ; dwParam1,
    DWORD ; dwParam2
)
(import "WINMM.DLL" "mciSendCommandW" MCIERROR
    MCIDEVICEID ; mciId,
    MCI_COMMAND_MESSAGE_VALUE ; uMsg,
    MCI_SEND_COMMAND_MASK ; dwParam1,
    DWORD ; dwParam2
)
(import "WINMM.DLL" "mciSendStringA" MCIERROR
    LPCSTR ; lpstrCommand,
    LPSTR ; lpstrReturnString,
    UINT ; uReturnLength,
    HWND ; hwndCallback
)
(import "WINMM.DLL" "mciSendStringW" MCIERROR
    LPCWSTR ; lpstrCommand,
    LPWSTR ; lpstrReturnString,
    UINT ; uReturnLength,
    HWND ; hwndCallback
)
(import "WINMM.DLL" "mciGetDeviceIDA" MCIDEVICEID
    LPCSTR ; pszDevice
)
(import "WINMM.DLL" "mciGetDeviceIDW" MCIDEVICEID
    LPCWSTR ; pszDevice
)
(import "WINMM.DLL" "mciGetDeviceIDFromElementIDA" MCIDEVICEID
    DWORD ; dwElementID,
    LPCSTR ; lpstrType
)
(import "WINMM.DLL" "mciGetDeviceIDFromElementIDW" MCIDEVICEID
    DWORD ; dwElementID,
    LPCWSTR ; lpstrType
)
(import "WINMM.DLL" "mciGetErrorStringA" BOOL
    MCIERROR ; mcierr,
    LPSTR ; pszText,
    UINT ; cchText
)
(import "WINMM.DLL" "mciGetErrorStringW" BOOL
    MCIERROR ; mcierr,
    LPWSTR ; pszText,
    UINT ; cchText
)

(import "WINMM.DLL" "mciSetYieldProc" BOOL
    MCIDEVICEID ; mciId,
    DWORD ; fpYieldProc,
    DWORD ; dwYieldData
)
(import "WINMM.DLL" "mciGetCreatorTask" HTASK
    MCIDEVICEID ; mciId
)
(import "WINMM.DLL" "mciGetYieldProc" DWORD
    MCIDEVICEID ; mciId,
    LPDWORD ; pdwYieldData
)
(import "WINMM.DLL" "mciExecute" BOOL
    LPCSTR ; pszCommand
)



typedef DWORD           FOURCC;         
typedef char            HPSTR;          
(setq LPMMIOPROC DWORD)
(setq HMMIO HANDLE)

;; typedef struct _MMIOINFO { {
(struct '_MMIOINFO
    DWORD ; dwFlags;
    FOURCC ; fccIOProc;
    LPMMIOPROC ; pIOProc;
    UINT ; wErrorRet;
    HTASK ; htask;
    LONG ; cchBuffer;
    HPSTR ; pchBuffer;
    HPSTR ; pchNext;
    HPSTR ; pchEndRead;
    HPSTR ; pchEndWrite;
    LONG ; lBufOffset;
    LONG ; lDiskOffset;
    DWORD ; adwInfo;
    DWORD ; dwReserved1;
    DWORD ; dwReserved2;
    HMMIO ; hmmio;
)
(setq MMIOINFO _MMIOINFO)
;; } MMIOINFO

(setq PMMIOINFO (string MMIOINFO "*"))
(setq NPMMIOINFO (string MMIOINFO "*"))
(setq LPMMIOINFO (string MMIOINFO "*"))
(setq LPCMMIOINFO (string MMIOINFO "*"))


;; typedef struct _MMCKINFO { {
(struct '_MMCKINFO
    FOURCC ; ckid;
    DWORD ; cksize;
    FOURCC ; fccType;
    DWORD ; dwDataOffset;
    DWORD ; dwFlags;
)
(setq MMCKINFO _MMCKINFO)
;; } MMCKINFO
(setq PMMCKINFO (string MMCKINFO "*"))
(setq NPMMCKINFO (string MMCKINFO "*"))
(setq LPMMCKINFO (string MMCKINFO "*"))
(setq LPCMMCKINFO (string MMCKINFO "*"))

;; mask DWORD MMIOINFO_MASK {
(setq MMIO_EXCLUSIVE 0x00000010)
(setq MMIO_DENYWRITE 0x00000020)
(setq MMIO_DENYREAD 0x00000030)
(setq MMIO_DENYNONE 0x00000040)
(setq MMIO_CREATE 0x00001000)
(setq MMIO_PARSE 0x00000100)
(setq MMIO_DELETE 0x00000200)
(setq MMIO_EXIST 0x00004000)
(setq MMIO_ALLOCBUF 0x00010000)
(setq MMIO_GETTEMP 0x00020000)
;; };

;; value DWORD MMIO_SEEK_VALUE {
(setq SEEK_SET 0)
(setq SEEK_CUR 1)
(setq SEEK_END 2)
;; };

;; value DWORD MMIO_RW_VALUE {
(setq MMIO_READ 0x00000000)
(setq MMIO_WRITE 0x00000001)
(setq MMIO_READWRITE 0x00000002)
;; };

(import "WINMM.DLL" "mmioStringToFOURCCA" FOURCC
    LPCSTR ; sz,
    UINT ; uFlags
)
(import "WINMM.DLL" "mmioStringToFOURCCW" FOURCC
    LPCWSTR ; sz,
    UINT ; uFlags
)
(import "WINMM.DLL" "mmioInstallIOProcA" LPMMIOPROC
    FOURCC ; fccIOProc,
    LPMMIOPROC ; pIOProc,
    DWORD ; dwFlags
)
(import "WINMM.DLL" "mmioInstallIOProcW" LPMMIOPROC
    FOURCC ; fccIOProc,
    LPMMIOPROC ; pIOProc,
    DWORD ; dwFlags
)
(import "WINMM.DLL" "mmioOpenA" HMMIO
    LPSTR ; pszFileName,
    LPMMIOINFO ; pmmioinfo,
    MMIOINFO_MASK ; fdwOpen
)
(import "WINMM.DLL" "mmioOpenW" HMMIO
    LPWSTR ; pszFileName,
    LPMMIOINFO ; pmmioinfo,
    MMIOINFO_MASK ; fdwOpen
)
(import "WINMM.DLL" "mmioRenameA" MMRESULT
    LPCSTR ; pszFileName,
    LPCSTR ; pszNewFileName,
    LPCMMIOINFO ; pmmioinfo,
    DWORD ; fdwRename
)
(import "WINMM.DLL" "mmioRenameW" MMRESULT
    LPCWSTR ; pszFileName,
    LPCWSTR ; pszNewFileName,
    LPCMMIOINFO ; pmmioinfo,
    DWORD ; fdwRename
)
(import "WINMM.DLL" "mmioClose" MMRESULT
    HMMIO ; hmmio,
    UINT ; fuClose
)
(import "WINMM.DLL" "mmioRead" LONG
    HMMIO ; hmmio,
    HPSTR ; pch,
    LONG ; cch
)
(import "WINMM.DLL" "mmioWrite" LONG
    HMMIO ; hmmio,
    (string char "*") ; pch,
    LONG ; cch
)
(import "WINMM.DLL" "mmioSeek" LONG
    HMMIO ; hmmio,
    LONG ; lOffset,
    MMIO_SEEK_VALUE ; iOrigin
)
(import "WINMM.DLL" "mmioGetInfo" MMRESULT
    HMMIO ; hmmio,
    LPMMIOINFO ; pmmioinfo,
    UINT ; fuInfo
)
(import "WINMM.DLL" "mmioSetInfo" MMRESULT
    HMMIO ; hmmio,
    LPCMMIOINFO ; pmmioinfo,
    UINT ; fuInfo
)
(import "WINMM.DLL" "mmioSetBuffer" MMRESULT
    HMMIO ; hmmio,
    LPSTR ; pchBuffer,
    LONG ; cchBuffer,
    UINT ; fuBuffer
)
(import "WINMM.DLL" "mmioFlush" MMRESULT
    HMMIO ; hmmio,
    UINT ; fuFlush
)
(import "WINMM.DLL" "mmioAdvance" MMRESULT
    HMMIO ; hmmio,
    LPMMIOINFO ; pmmioinfo,
    MMIO_RW_VALUE ; fuAdvance
)
(import "WINMM.DLL" "mmioSendMessage" LRESULT
    HMMIO ; hmmio,
    UINT ; uMsg,
    LPARAM ; lParam1,
    LPARAM ; lParam2
)
(import "WINMM.DLL" "mmioDescend" MMRESULT
    HMMIO ; hmmio,
    LPMMCKINFO ; pmmcki,
    (string MMCKINFO "*") ; pmmckiParent,
    UINT ; fuDescend
)
(import "WINMM.DLL" "mmioAscend" MMRESULT
    HMMIO ; hmmio,
    LPMMCKINFO ; pmmcki,
    UINT ; fuAscend
)
(import "WINMM.DLL" "mmioCreateChunk" MMRESULT
    HMMIO ; hmmio,
    LPMMCKINFO ; pmmcki,
    UINT ; fuCreate
)
