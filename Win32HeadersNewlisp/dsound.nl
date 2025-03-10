(context 'WIN32)

;; module DSOUND.DLL:
;; category DirectSound:

;;  class __declspec(uuid("47d4d946-62e8-11cf-93bc-444553540000"))        DirectSound;
(struct 'DirectSound)
;;  class __declspec(uuid("3901cc3f-84b5-4fa4-ba35-aa8172b8a09b"))        DirectSound8;
(struct 'DirectSound8)
;;  class __declspec(uuid("b0210780-89cd-11d0-af08-00a0c925cd16"))        DirectSoundCapture;
(struct 'DirectSoundCapture)
;;  class __declspec(uuid("e4bcac13-7f99-4908-9a8e-74e3bf24b6e1"))        DirectSoundCapture8;
(struct 'DirectSoundCapture8)
;;  class __declspec(uuid("fea4300c-7959-4147-b26a-2377b9e7a91d"))        DirectSoundFullDuplex;
(struct 'DirectSoundFullDuplex)
;;  class __declspec(uuid("b2f586d4-5558-49d1-a07b-3249dbbb33c2"))        DirectSoundBufferConfig;
(struct 'DirectSoundBufferConfig)

;; struct __declspec(uuid("279AFA83-4981-11CE-A521-0020AF0BE560")) IDirectSound;
(struct 'IDirectSound)
;; struct __declspec(uuid("279AFA85-4981-11CE-A521-0020AF0BE560")) IDirectSoundBuffer;
(struct 'IDirectSoundBuffer)
;; struct __declspec(uuid("279AFA84-4981-11CE-A521-0020AF0BE560")) IDirectSound3DListener;
(struct 'IDirectSound3DListener)
;; struct __declspec(uuid("279AFA86-4981-11CE-A521-0020AF0BE560")) IDirectSound3DBuffer;
(struct 'IDirectSound3DBuffer)
;; struct __declspec(uuid("b0210781-89cd-11d0-af08-00a0c925cd16")) IDirectSoundCapture;
(struct 'IDirectSoundCapture)
;; struct __declspec(uuid("b0210782-89cd-11d0-af08-00a0c925cd16")) IDirectSoundCaptureBuffer;
(struct 'IDirectSoundCaptureBuffer)
;; struct __declspec(uuid("b30f3564-1698-45ba-9f75-fc3c6c3b2810")) IDirectSoundFXSend;
(struct 'IDirectSoundFXSend)
;; struct __declspec(uuid("C50A7E93-F395-4834-9EF6-7FA99DE50966")) IDirectSound8;
(struct 'IDirectSound8)
;; struct __declspec(uuid("6825a449-7524-4d82-920f-50e36ab3ab1e")) IDirectSoundBuffer8;
(struct 'IDirectSoundBuffer8)
;; struct __declspec(uuid("00990df4-0dbb-4872-833e-6d303e80aeb6")) IDirectSoundCaptureBuffer8;
(struct 'IDirectSoundCaptureBuffer8)

;; struct __declspec(uuid("b0210783-89cd-11d0-af08-00a0c925cd16")) IDirectSoundNotify;
(struct 'IDirectSoundNotify)
;; struct __declspec(uuid("31efac30-515c-11d0-a9aa-00aa0061be93")) IKsPropertySet;
(struct 'IKsPropertySet)

;; struct __declspec(uuid("def00000-9c6d-47ed-aaf1-4dda8f2b5c03"))        IDefaultPlayback;
(struct 'IDefaultPlayback)
;; struct __declspec(uuid("def00001-9c6d-47ed-aaf1-4dda8f2b5c03"))        IDefaultCapture;
(struct 'IDefaultCapture)
;; struct __declspec(uuid("def00002-9c6d-47ed-aaf1-4dda8f2b5c03"))        IDefaultVoicePlayback;
(struct 'IDefaultVoicePlayback)
;; struct __declspec(uuid("def00003-9c6d-47ed-aaf1-4dda8f2b5c03"))        IDefaultVoiceCapture;
(struct 'IDefaultVoiceCapture)
;; struct __declspec(uuid("d616f352-d622-11ce-aac5-0020af0b99a3"))        IDirectSoundFXGargle;
(struct 'IDirectSoundFXGargle)
;; struct __declspec(uuid("880842e3-145f-43e6-a934-a71806e50547"))  IDirectSoundFXChorus;
(struct 'IDirectSoundFXChorus)
;; struct __declspec(uuid("903e9878-2c92-4072-9b2c-ea68f5396783"))  IDirectSoundFXFlanger;
(struct 'IDirectSoundFXFlanger)
;; struct __declspec(uuid("8bd28edf-50db-4e92-a2bd-445488d1ed42"))  IDirectSoundFXEcho;
(struct 'IDirectSoundFXEcho)
;; struct __declspec(uuid("8ecf4326-455f-4d8b-bda9-8d5d3e9e3e0b"))  IDirectSoundFXDistortion;
(struct 'IDirectSoundFXDistortion)
;; struct __declspec(uuid("4bbd1154-62f6-4e2c-a15c-d3b6c417f7a0"))  IDirectSoundFXCompressor;
(struct 'IDirectSoundFXCompressor)
;; struct __declspec(uuid("c03ca9fe-fe90-4204-8078-82334cd177da"))  IDirectSoundFXParamEq;
(struct 'IDirectSoundFXParamEq)
;; struct __declspec(uuid("4b166a6a-0d66-43f3-80e3-ee6280dee1a4"))  IDirectSoundFXI3DL2Reverb;
(struct 'IDirectSoundFXI3DL2Reverb)
;; struct __declspec(uuid("46858c3a-0dc6-45e3-b760-d4eef16cb325"))  IDirectSoundFXWavesReverb;
(struct 'IDirectSoundFXWavesReverb)
;; struct __declspec(uuid("174d3eb9-6696-4fac-a46c-a0ac7bc9e20f"))  IDirectSoundCaptureFXAec;
(struct 'IDirectSoundCaptureFXAec)
;; struct __declspec(uuid("ed311e41-fbae-4175-9625-cd0854f693ca"))  IDirectSoundCaptureFXNoiseSuppress;
(struct 'IDirectSoundCaptureFXNoiseSuppress)
;; struct __declspec(uuid("edcb4c7a-daab-4216-a42e-6c50596ddc1d"))  IDirectSoundFullDuplex;
(struct 'IDirectSoundFullDuplex)




(setq LPDIRECTSOUND (string IDirectSound "*"))
(setq LPDIRECTSOUNDBUFFER (string IDirectSoundBuffer "*"))
(setq LPDIRECTSOUND3DLISTENER (string IDirectSound3DListener "*"))
(setq LPDIRECTSOUND3DBUFFER (string IDirectSound3DBuffer "*"))
(setq LPDIRECTSOUNDCAPTURE (string IDirectSoundCapture "*"))
(setq LPDIRECTSOUNDCAPTUREBUFFER (string IDirectSoundCaptureBuffer "*"))
(setq LPDIRECTSOUNDNOTIFY (string IDirectSoundNotify "*"))

(setq LPDIRECTSOUNDFXSEND (string IDirectSoundFXSend "*"))
(setq LPDIRECTSOUNDFXGARGLE (string IDirectSoundFXGargle "*"))
(setq LPDIRECTSOUNDFXCHORUS (string IDirectSoundFXChorus "*"))
(setq LPDIRECTSOUNDFXFLANGER (string IDirectSoundFXFlanger "*"))
(setq LPDIRECTSOUNDFXECHO (string IDirectSoundFXEcho "*"))
(setq LPDIRECTSOUNDFXDISTORTION (string IDirectSoundFXDistortion "*"))
(setq LPDIRECTSOUNDFXCOMPRESSOR (string IDirectSoundFXCompressor "*"))
(setq LPDIRECTSOUNDFXPARAMEQ (string IDirectSoundFXParamEq "*"))
(setq LPDIRECTSOUNDFXWAVESREVERB (string IDirectSoundFXWavesReverb "*"))
(setq LPDIRECTSOUNDFXI3DL2REVERB (string IDirectSoundFXI3DL2Reverb "*"))
(setq LPDIRECTSOUNDCAPTUREFXAEC (string IDirectSoundCaptureFXAec "*"))
(setq LPDIRECTSOUNDCAPTUREFXNOISESUPPRESS (string IDirectSoundCaptureFXNoiseSuppress "*"))
(setq LPDIRECTSOUNDFULLDUPLEX (string IDirectSoundFullDuplex "*"))

(setq LPDIRECTSOUND8 (string IDirectSound8 "*"))
(setq LPDIRECTSOUNDBUFFER8 (string IDirectSoundBuffer8 "*"))
(setq LPDIRECTSOUNDCAPTUREBUFFER8 (string IDirectSoundCaptureBuffer8 "*"))

(setq LPLPDIRECTSOUND8 (string LPDIRECTSOUND8 "*"))
(setq LPLPDIRECTSOUNDBUFFER8 (string LPDIRECTSOUNDBUFFER8 "*"))
(setq LPLPDIRECTSOUNDCAPTUREBUFFER8 (string LPDIRECTSOUNDCAPTUREBUFFER8 "*"))





;; mask DWORD DSCAPS_MASK {
(setq DSCAPS_PRIMARYMONO 0x00000001)
(setq DSCAPS_PRIMARYSTEREO 0x00000002)
(setq DSCAPS_PRIMARY8BIT 0x00000004)
(setq DSCAPS_PRIMARY16BIT 0x00000008)
(setq DSCAPS_CONTINUOUSRATE 0x00000010)
(setq DSCAPS_EMULDRIVER 0x00000020)
(setq DSCAPS_CERTIFIED 0x00000040)
(setq DSCAPS_SECONDARYMONO 0x00000100)
(setq DSCAPS_SECONDARYSTEREO 0x00000200)
(setq DSCAPS_SECONDARY8BIT 0x00000400)
(setq DSCAPS_SECONDARY16BIT 0x00000800)
;; };

;; mask DWORD DSBPLAY_MASK {
(setq DSBPLAY_LOOPING 0x00000001)
(setq DSBPLAY_LOCHARDWARE 0x00000002)
(setq DSBPLAY_LOCSOFTWARE 0x00000004)
(setq DSBPLAY_TERMINATEBY_TIME 0x00000008)
(setq DSBPLAY_TERMINATEBY_DISTANCE 0x000000010)
(setq DSBPLAY_TERMINATEBY_PRIORITY 0x000000020)
;; };

;; mask DWORD DSBSTATUS_MASK {
(setq DSBSTATUS_PLAYING 0x00000001)
(setq DSBSTATUS_BUFFERLOST 0x00000002)
(setq DSBSTATUS_LOOPING 0x00000004)
(setq DSBSTATUS_LOCHARDWARE 0x00000008)
(setq DSBSTATUS_LOCSOFTWARE 0x00000010)
(setq DSBSTATUS_TERMINATED 0x00000020)
;; };

;; value DWORD DSBLOCK_VALUE {
(setq DSBLOCK_FROMWRITECURSOR 0x00000001)
(setq DSBLOCK_ENTIREBUFFER 0x00000002)
;; };

;; value DWORD DSSCL_VALUE {
(setq DSSCL_NORMAL 0x00000001)
(setq DSSCL_PRIORITY 0x00000002)
(setq DSSCL_EXCLUSIVE 0x00000003)
(setq DSSCL_WRITEPRIMARY 0x00000004)
;; };

;; value DWORD DS3DMODE_VALUE {
(setq DS3DMODE_NORMAL 0x00000000)
(setq DS3DMODE_HEADRELATIVE 0x00000001)
(setq DS3DMODE_DISABLE 0x00000002)
;; };

;; mask DWORD DSBCAPS_MASK {
(setq DSBCAPS_PRIMARYBUFFER 0x00000001)
(setq DSBCAPS_STATIC 0x00000002)
(setq DSBCAPS_LOCHARDWARE 0x00000004)
(setq DSBCAPS_LOCSOFTWARE 0x00000008)
(setq DSBCAPS_CTRL3D 0x00000010)
(setq DSBCAPS_CTRLFREQUENCY 0x00000020)
(setq DSBCAPS_CTRLPAN 0x00000040)
(setq DSBCAPS_CTRLVOLUME 0x00000080)
(setq DSBCAPS_CTRLPOSITIONNOTIFY 0x00000100)
(setq DSCBCAPS_CTRLFX 0x00000200)


(setq DSBCAPS_STICKYFOCUS 0x00004000)
(setq DSBCAPS_GLOBALFOCUS 0x00008000)
(setq DSBCAPS_GETCURRENTPOSITION2 0x00010000)
(setq DSBCAPS_MUTE3DATMAXDISTANCE 0x00020000)
(setq DSBCAPS_LOCDEFER 0x00040000)

(setq DSCBCAPS_WAVEMAPPED 0x80000000)
;; };

;; value DWORD DSSPEAKER_VALUE {
(setq DSSPEAKER_HEADPHONE 0x00000001)
(setq DSSPEAKER_MONO 0x00000002)
(setq DSSPEAKER_QUAD 0x00000003)
(setq DSSPEAKER_STEREO 0x00000004)
(setq DSSPEAKER_SURROUND 0x00000005)

(setq DSSPEAKER_GEOMETRY_MIN 0x00000005)
(setq DSSPEAKER_GEOMETRY_NARROW 0x0000000A)
(setq DSSPEAKER_GEOMETRY_WIDE 0x00000014)
(setq DSSPEAKER_GEOMETRY_MAX 0x000000B4)




;; };

;; value DWORD DSBFREQUENCY_VALUE {
(setq DSBFREQUENCY_MIN 100)
(setq DSBFREQUENCY_MAX 100000)
(setq DSBFREQUENCY_ORIGINAL 0)
;; };

;; value DWORD DSBPAN_VALUE {
(setq DSBPAN_LEFT -10000)
(setq DSBPAN_CENTER 0)
(setq DSBPAN_RIGHT 10000)
;; };

;; value DWORD DSBVOLUME_VALUE {
(setq DSBVOLUME_MIN -10000)
(setq DSBVOLUME_MAX 0)
;; };

;; value DWORD DSBSIZE_VALUE {
(setq DSBSIZE_MIN 4)
(setq DSBSIZE_MAX 0x0FFFFFFF)
;; };

;; value DWORD DS3D_VALUE {
(setq DS3D_IMMEDIATE 0x00000000)
(setq DS3D_DEFERRED 0x00000001)
;; };




;; mask DWORD DSCBLOCK_MASK {
(setq DSCBLOCK_ENTIREBUFFER 0x00000001)
;; };

;; mask DWORD DSCBSTATUS_MASK {
(setq DSCBSTATUS_CAPTURING 0x00000001)
(setq DSCBSTATUS_LOOPING 0x00000002)
;; };
;; mask DWORD DSCBSTART_MASK {
(setq DSCBSTART_LOOPING 0x00000001)
;; };



;; mask DWORD DSFX_MASK {
(setq DSFX_LOCHARDWARE 0x00000001)
(setq DSFX_LOCSOFTWARE 0x00000002)
;; };

;; mask DWORD DSFXR_MASK {
(setq DSCFXR_LOCHARDWARE 0x00000010)
(setq DSCFXR_LOCSOFTWARE 0x00000020)
(setq DSCFXR_UNALLOCATED 0x00000040)
(setq DSCFXR_FAILED 0x00000080)
(setq DSCFXR_UNKNOWN 0x00000100)
;; };

;; typedef struct _DSEFFECTDESC { {
(struct '_DSEFFECTDESC
    DWORD ; dwSize
    DWORD ; dwFlags
    GUID ; guidDSFXClass
    LPDIRECTSOUNDBUFFER ; lpSendBuffer
    DWORD ; dwReserved
)
(setq DSEFFECTDESC _DSEFFECTDESC)
;; } DSEFFECTDESC
(setq LPDSEFFECTDESC (string DSEFFECTDESC "*"))
(setq LPCDSEFFECTDESC (string DSEFFECTDESC "*"))

;; value DWORD DSFXR_ENUM {
(setq DSFXR_PRESENT 0)
(setq DSFXR_LOCHARDWARE 1)
(setq DSFXR_LOCSOFTWARE 2)
(setq DSFXR_UNALLOCATED 3)
(setq DSFXR_FAILED 4)
(setq DSFXR_UNKNOWN 5)
(setq DSFXR_SENDLOOP 6)
;; };

;; typedef struct _DSCEFFECTDESC { {
(struct '_DSCEFFECTDESC
    DWORD ; dwSize
    DWORD ; dwFlags
    GUID ; guidDSCFXClass
    GUID ; guidDSCFXInstance
    DWORD ; dwReserved1
    DWORD ; dwReserved2
)
(setq DSCEFFECTDESC _DSCEFFECTDESC)
;; } DSCEFFECTDESC
(setq LPDSCEFFECTDESC (string DSCEFFECTDESC "*"))
(setq LPCDSCEFFECTDESC (string DSCEFFECTDESC "*"))

;; typedef struct _DSCAPS { {
(struct '_DSCAPS
    DWORD ; dwSize
    DSCAPS_MASK ; dwFlags
    DWORD ; dwMinSecondarySampleRate
    DWORD ; dwMaxSecondarySampleRate
    DWORD ; dwPrimaryBuffers
    DWORD ; dwMaxHwMixingAllBuffers
    DWORD ; dwMaxHwMixingStaticBuffers
    DWORD ; dwMaxHwMixingStreamingBuffers
    DWORD ; dwFreeHwMixingAllBuffers
    DWORD ; dwFreeHwMixingStaticBuffers
    DWORD ; dwFreeHwMixingStreamingBuffers
    DWORD ; dwMaxHw3DAllBuffers
    DWORD ; dwMaxHw3DStaticBuffers
    DWORD ; dwMaxHw3DStreamingBuffers
    DWORD ; dwFreeHw3DAllBuffers
    DWORD ; dwFreeHw3DStaticBuffers
    DWORD ; dwFreeHw3DStreamingBuffers
    DWORD ; dwTotalHwMemBytes
    DWORD ; dwFreeHwMemBytes
    DWORD ; dwMaxContigFreeHwMemBytes
    DWORD ; dwUnlockTransferRateHwBuffers
    DWORD ; dwPlayCpuOverheadSwBuffers
    DWORD ; dwReserved1
    DWORD ; dwReserved2
)
(setq DSCAPS _DSCAPS)
;; } DSCAPS
(setq LPDSCAPS (string _DSCAPS "*"))

(setq LPCDSCAPS (string DSCAPS "*"))

;; typedef struct _DSBCAPS { {
(struct '_DSBCAPS
    DWORD ; dwSize
    DWORD ; dwFlags
    DWORD ; dwBufferBytes
    DWORD ; dwUnlockTransferRate
    DWORD ; dwPlayCpuOverhead
)
(setq DSBCAPS _DSBCAPS)
;; } DSBCAPS
(setq LPDSBCAPS (string _DSBCAPS "*"))

(setq LPCDSBCAPS (string DSBCAPS "*"))

;; typedef struct _DSBUFFERDESC { {
(struct '_DSBUFFERDESC
    DWORD ; dwSize
    DSBCAPS_MASK ; dwFlags
    DWORD ; dwBufferBytes
    DWORD ; dwReserved
    LPWAVEFORMATEX ; lpwfxFormat
)
(setq DSBUFFERDESC _DSBUFFERDESC)
;; } DSBUFFERDESC
(setq LPDSBUFFERDESC (string _DSBUFFERDESC "*"))

(setq LPCDSBUFFERDESC (string DSBUFFERDESC "*"))

;; typedef struct _DS3DBUFFER { {
(struct '_DS3DBUFFER
    DWORD ; dwSize
    D3DVECTOR ; vPosition
    D3DVECTOR ; vVelocity
    DWORD ; dwInsideConeAngle
    DWORD ; dwOutsideConeAngle
    D3DVECTOR ; vConeOrientation
    LONG ; lConeOutsideVolume
    D3DVALUE ; flMinDistance
    D3DVALUE ; flMaxDistance
    DWORD ; dwMode
)
(setq DS3DBUFFER _DS3DBUFFER)
;; } DS3DBUFFER
(setq LPDS3DBUFFER (string _DS3DBUFFER "*"))

(setq LPCDS3DBUFFER (string DS3DBUFFER "*"))

;; typedef struct _DS3DLISTENER { {
(struct '_DS3DLISTENER
    DWORD ; dwSize
    D3DVECTOR ; vPosition
    D3DVECTOR ; vVelocity
    D3DVECTOR ; vOrientFront
    D3DVECTOR ; vOrientTop
    D3DVALUE ; flDistanceFactor
    D3DVALUE ; flRolloffFactor
    D3DVALUE ; flDopplerFactor
)
(setq DS3DLISTENER _DS3DLISTENER)
;; } DS3DLISTENER
(setq LPDS3DLISTENER (string _DS3DLISTENER "*"))

(setq LPCDS3DLISTENER (string DS3DLISTENER "*"))

;; typedef struct _DSCCAPS { {
(struct '_DSCCAPS
    DWORD ; dwSize
    DWORD ; dwFlags
    DWORD ; dwFormats
    DWORD ; dwChannels
)
(setq DSCCAPS _DSCCAPS)
;; } DSCCAPS
(setq LPDSCCAPS (string _DSCCAPS "*"))

(setq LPCDSCCAPS (string DSCCAPS "*"))

;; typedef struct _DSCBUFFERDESC { {
(struct '_DSCBUFFERDESC
    DWORD ; dwSize
    DWORD ; dwFlags
    DWORD ; dwBufferBytes
    DWORD ; dwReserved
    LPWAVEFORMATEX ; lpwfxFormat
    DWORD ; dwFXCount
    LPDSCEFFECTDESC ; lpDSCFXDesc
)
(setq DSCBUFFERDESC _DSCBUFFERDESC)
;; } DSCBUFFERDESC
(setq LPDSCBUFFERDESC (string _DSCBUFFERDESC "*"))

(setq LPCDSCBUFFERDESC (string DSCBUFFERDESC "*"))

;; typedef struct _DSCBCAPS { {
(struct '_DSCBCAPS
    DWORD ; dwSize
    DWORD ; dwFlags
    DWORD ; dwBufferBytes
    DWORD ; dwReserved
)
(setq DSCBCAPS _DSCBCAPS)
;; } DSCBCAPS
(setq LPDSCBCAPS (string _DSCBCAPS "*"))

(setq LPCDSCBCAPS (string DSCBCAPS "*"))

;; typedef struct _DSBPOSITIONNOTIFY { {
(struct '_DSBPOSITIONNOTIFY
    DWORD ; dwOffset
    HANDLE ; hEventNotify
)
(setq DSBPOSITIONNOTIFY _DSBPOSITIONNOTIFY)
;; } DSBPOSITIONNOTIFY
(setq LPDSBPOSITIONNOTIFY (string _DSBPOSITIONNOTIFY "*"))

(setq LPCDSBPOSITIONNOTIFY (string DSBPOSITIONNOTIFY "*"))





(setq LPLPDIRECTSOUND (string LPDIRECTSOUND "*"))
(setq LPLPDIRECTSOUNDBUFFER (string LPDIRECTSOUNDBUFFER "*"))
(setq LPLPDIRECTSOUND3DLISTENER (string LPDIRECTSOUND3DLISTENER "*"))
(setq LPLPDIRECTSOUND3DBUFFER (string LPDIRECTSOUND3DBUFFER "*"))
(setq LPLPDIRECTSOUNDCAPTURE (string LPDIRECTSOUNDCAPTURE "*"))
(setq LPLPDIRECTSOUNDCAPTUREBUFFER (string LPDIRECTSOUNDCAPTUREBUFFER "*"))
(setq LPLPDIRECTSOUNDNOTIFY (string LPDIRECTSOUNDNOTIFY "*"))
(setq LPLPVOID (string LPVOID "*"))


;; value DWORD DSRESULT {




(setq DS_OK 0)



(setq DSERR_ALLOCATED 0x8878000A)


(setq DSERR_CONTROLUNAVAIL 0x8878001E)


(setq DSERR_INVALIDPARAM 0x80070057)


(setq DSERR_INVALIDCALL 0x88780032)


(setq DSERR_GENERIC 0x80004005)



(setq DSERR_PRIOLEVELNEEDED 0x88780046)


(setq DSERR_OUTOFMEMORY 0x8007000E)


(setq DSERR_BADFORMAT 0x88780064)


(setq DSERR_UNSUPPORTED 0x80004001)


(setq DSERR_NODRIVER 0x88780078)


(setq DSERR_ALREADYINITIALIZED 0x88780082)


(setq DSERR_NOAGGREGATION 0x80040110)


(setq DSERR_BUFFERLOST 0x88780096)



(setq DSERR_OTHERAPPHASPRIO 0x887800A0)


(setq DSERR_UNINITIALIZED 0x887800AA)


(setq DSERR_NOINTERFACE 0x80000004)


(setq DSERR_ACCESSDENIED 0x80070005)


(setq DSERR_BUFFERTOOSMALL 0x887800B4)


(setq DSERR_DS8_REQUIRED 0x887800BE)


(setq DSERR_SENDLOOP 0x887800C8)


(setq DSERR_BADSENDBUFFERGUID 0x887800D2)


(setq DSERR_OBJECTNOTFOUND 0x88781193)

;; };







;; interface IDirectSound: IUnknown
;; {
;;          DSRESULT  CreateSoundBuffer    (
;;      LPCDSBUFFERDESC lpcDSBufferDesc,
;;       LPLPDIRECTSOUNDBUFFER lplpDirectSoundBuffer,
;;       IUnknown* pUnkOuter
;; );
;;     DSRESULT  GetCaps              (
;;      LPDSCAPS lpDSCaps
;; ) ;
;;     DSRESULT  DuplicateSoundBuffer (
;;      LPDIRECTSOUNDBUFFER lpDsbOriginal,
;;       LPLPDIRECTSOUNDBUFFER lplpDsbDuplicate
;; ) ;
;;     DSRESULT  SetCooperativeLevel  (
;;     HWND hwnd,
;;      DSSCL_VALUE dwLevel
;; ) ;
;;     DSRESULT  Compact              (
;;     
;; ) ;
;;     DSRESULT  GetSpeakerConfig     (
;;      DSSPEAKER_VALUE* lpdwSpeakerConfig
;; ) ;
;;     DSRESULT  SetSpeakerConfig     (
;;     DSSPEAKER_VALUE dwSpeakerConfig
;; ) ;
;;     DSRESULT  Initialize           (
;;      LPCGUID lpcGuid
;; ) ;
;; };
;; interface IDirectSound8 : IDirectSound
;; {
;;           DSRESULT VerifyCertification  (
;;     LPDWORD pdwCertified
;; ) ;
;; };






;; interface IDirectSoundBuffer: IUnknown
;; {
;;          DSRESULT  GetCaps               (
;;      LPDSCAPS lpDSCaps 
;; ) ;
;;     DSRESULT  GetCurrentPosition    (
;;      LPDWORD lpdwCurrentPlayCursor,
;;       LPDWORD lpdwCurrentWriteCursor 
;; );
;;     DSRESULT  GetFormat             (
;;      LPWAVEFORMATEX lpwfxFormat,
;;      DWORD dwSizeAllocated,
;;        LPDWORD lpdwSizeWritten 
;; );
;;     DSRESULT  GetVolume             (
;;      LPLONG lplVolume 
;; );
;;     DSRESULT  GetPan                (
;;      LPLONG lplPan
;; );
;;     DSRESULT  GetFrequency          (
;;      LPDWORD lpdwFrequency 
;; );
;;     DSRESULT  GetStatus             (
;;      LPDWORD lpdwStatus 
;; );
;;     DSRESULT  Initialize            (
;;      LPDIRECTSOUND lpDirectSound,
;;       LPCDSBUFFERDESC lpcDSBufferDesc 
;; );
;;     DSRESULT  Lock                  (
;;     DWORD dwWriteCursor,
;;        DWORD dwWriteBytes,
;;          LPVOID lplpvAudioPtr1,
;;       LPDWORD lpdwAudioBytes1,
;;       LPVOID lplpvAudioPtr2,
;;       LPDWORD lpdwAudioBytes2,
;;      DSBLOCK_VALUE dwFlags
;; );
;;     DSRESULT  Play                  (
;;     DWORD dwReserved1,
;;      DWORD dwPriority,
;;       DSBPLAY_MASK dwFlags 
;; );
;;     DSRESULT  SetCurrentPosition    (
;;     DWORD dwNewPosition
;; );
;;     DSRESULT  SetFormat             (
;;      LPCWAVEFORMATEX lpcfxFormat 
;; );
;;     DSRESULT  SetVolume             (
;;     LONG lVolume 
;; );
;;     DSRESULT  SetPan                (
;;     LONG lPan 
;; );
;;     DSRESULT  SetFrequency          (
;;     DWORD dwFrequency 
;; );
;;     DSRESULT  Stop                  (
;;      
;; );
;;     DSRESULT  Unlock                (
;;      LPVOID lpvAudioPtr1,
;;      DWORD dwAudioBytes1,
;;       LPVOID lpvAudioPtr2,
;;      DWORD dwAudioBytes2 
;; );
;;     DSRESULT  Restore               (
;;      
;; );
;; };

;; interface IDirectSoundBuffer8: IDirectSoundBuffer
;; {
;;          DSRESULT  SetFX                 (
;;     DWORD dwEffectsCount,
;;       LPDSEFFECTDESC pDSFXDesc,
;;       LPDWORD pdwResultCodes
;; ) ;
;;     DSRESULT  AcquireResources      (
;;     DWORD dwFlags,
;;      DWORD dwEffectsCount,
;;       LPDWORD pdwResultCodes
;; ) ;
;;     DSRESULT  GetObjectInPath       (
;;     REFGUID rguidObject,
;;      DWORD dwIndex,
;;      REFGUID rguidInterface,
;;       LPVOID* ppObject
;; ) ;
;; };







;; interface IDirectSound3DListener: IUnknown
;; {
;;          DSRESULT  GetAllParameters          (
;;      LPDS3DLISTENER lpListener 
;; );
;;     DSRESULT  GetDistanceFactor         (
;;      LPD3DVALUE lpflDistanceFactor 
;; );
;;     DSRESULT  GetDopplerFactor          (
;;      LPD3DVALUE lpflDopplerFactor 
;; );
;;     DSRESULT  GetOrientation            (
;;      LPD3DVECTOR lpvOrientFront,
;;       LPD3DVECTOR lpvOrientTop 
;; );
;;     DSRESULT  GetPosition               (
;;      LPD3DVECTOR lpvPosition
;; );
;;     DSRESULT  GetRolloffFactor          (
;;      LPD3DVALUE lpflRolloffFactor 
;; );
;;     DSRESULT  GetVelocity               (
;;      LPD3DVECTOR lpvVelocity
;; );
;;     DSRESULT  SetAllParameters          (
;;      LPCDS3DLISTENER lpcListener,
;;      DS3D_VALUE dwApply 
;; );
;;     DSRESULT  SetDistanceFactor         (
;;     D3DVALUE flDistanceFactor,
;;      DS3D_VALUE dwApply 
;; );
;;     DSRESULT  SetDopplerFactor          (
;;     D3DVALUE flDopplerFactor,
;;      DS3D_VALUE dwApply 
;; );
;;     DSRESULT  SetOrientation            (
;;     D3DVALUE xFront,
;;      D3DVALUE yFront,
;;      D3DVALUE zFront,
;;      D3DVALUE xTop,
;;        D3DVALUE yTop,
;;        D3DVALUE zTop,
;;        DS3D_VALUE dwApply
;; );
;;     DSRESULT  SetPosition               (
;;     D3DVALUE x,
;;        D3DVALUE y,
;;        D3DVALUE z,
;;        DS3D_VALUE dwApply 
;; );
;;     DSRESULT  SetRolloffFactor          (
;;     D3DVALUE flRolloffFactor,
;;      DS3D_VALUE dwApply
;; );
;;     DSRESULT  SetVelocity               (
;;     D3DVALUE x,
;;        D3DVALUE y,
;;        D3DVALUE z,
;;        DS3D_VALUE dwApply 
;; );
;;     DSRESULT  CommitDeferredSettings    (
;;      
;; );
;; };






;; interface IDirectSound3DBuffer: IUnknown
;; {
;;          DSRESULT  GetAllParameters      (
;;      LPDS3DBUFFER lpDs3dBuffer 
;; );
;;     DSRESULT  GetConeAngles         (
;;      LPDWORD lpdwInsideConeAngle,
;;       LPDWORD lpdwOutsideConeAngle 
;; );
;;     DSRESULT  GetConeOrientation    (
;;      LPD3DVECTOR lpvOrientation 
;; );
;;     DSRESULT  GetConeOutsideVolume  (
;;      LPLONG lplConeOutsideVolume 
;; );
;;     DSRESULT  GetMaxDistance        (
;;      LPD3DVALUE lpflMaxDistance 
;; );
;;     DSRESULT  GetMinDistance        (
;;      LPD3DVALUE lpflMinDistance 
;; );
;;     DSRESULT  GetMode               (
;;      LPDWORD lpdwMode 
;; );
;;     DSRESULT  GetPosition           (
;;      LPD3DVECTOR lpvPosition 
;; );
;;     DSRESULT  GetVelocity           (
;;      LPD3DVECTOR lpvVelocity 
;; );
;;     DSRESULT  SetAllParameters      (
;;      LPCDS3DBUFFER lpcDs3dBuffer,
;;      DS3D_VALUE dwApply 
;; );
;;     DSRESULT  SetConeAngles         (
;;     DWORD dwInsideConeAngle,
;;      DWORD dwOutsideConeAngle,
;;      DS3D_VALUE dwApply 
;; );
;;     DSRESULT  SetConeOrientation    (
;;     D3DVALUE x,
;;        D3DVALUE y,
;;        D3DVALUE z,
;;        DS3D_VALUE dwApply 
;; );
;;     DSRESULT  SetConeOutsideVolume  (
;;     LONG lConeOutsideVolume,
;;      DS3D_VALUE dwApply 
;; );
;;     DSRESULT  SetMaxDistance        (
;;     D3DVALUE flMaxDistance,
;;      DS3D_VALUE dwApply 
;; );
;;     DSRESULT  SetMinDistance        (
;;     D3DVALUE flMinDistance,
;;      DS3D_VALUE dwApply 
;; );
;;     DSRESULT  SetMode               (
;;     DS3DMODE_VALUE dwMode,
;;      DS3D_VALUE dwApply 
;; );
;;     DSRESULT  SetPosition           (
;;     D3DVALUE x,
;;        D3DVALUE y,
;;        D3DVALUE z,
;;        DS3D_VALUE dwApply 
;; );
;;     DSRESULT  SetVelocity           (
;;     D3DVALUE x,
;;        D3DVALUE y,
;;        D3DVALUE z,
;;        DS3D_VALUE dwApply 
;; );
;; };







;; interface IDirectSoundCapture: IUnknown
;; {
;;          DSRESULT  CreateCaptureBuffer   (
;;      LPDSCBUFFERDESC lpDSCBufferDesc,
;;       LPLPDIRECTSOUNDCAPTUREBUFFER lplpDirectSoundCaptureBuffer,
;;       LPUNKNOWN pUnkOuter 
;; );
;;     DSRESULT  GetCaps               (
;;      LPDSCAPS lpDSCaps 
;; ) ;
;;     DSRESULT  Initialize            (
;;      LPCGUID lpcGuid 
;; );
;; };

;; interface IDirectSoundCaptureBuffer8 : IDirectSoundCapture
;; {
;;          DSRESULT GetObjectInPath       (
;;     REFGUID rguidObject,
;;      DWORD dwIndex,
;;      REFGUID rguidInterface,
;;       LPVOID* ppObject
;; ) ;
;;     DSRESULT GetFXStatus           (
;;     DWORD dwFXCount,
;;       LPDWORD pdwFXStatus
;; ) ;
;; };






;; interface IDirectSoundCaptureBuffer: IUnknown
;; {
;;          DSRESULT  GetCaps               (
;;      LPDSCAPS lpDSCaps 
;; ) ;
;;     DSRESULT  GetCurrentPosition    (
;;      LPDWORD lpdwCapturePosition,
;;       LPDWORD lpdwReadPosition 
;; );
;;     DSRESULT  GetFormat             (
;;      LPWAVEFORMATEX lpwfxFormat,
;;      DWORD dwSizeAllocated,
;;        LPDWORD lpdwSizeWritten 
;; );
;;     DSRESULT  GetStatus             (
;;      DWORD* lpdwStatus 
;; );
;;     DSRESULT  Initialize            (
;;     LPDIRECTSOUNDCAPTURE lpDirectSoundCapture,
;;       LPCDSCBUFFERDESC lpcDSCBufferDesc 
;; );
;;     DSRESULT  Lock                  (
;;     DWORD dwReadCursor,
;;          DWORD dwReadBytes,
;;        LPVOID* lplpvAudioPtr1,
;;       LPDWORD lpdwAudioBytes1,
;;       LPVOID *lplpvAudioPtr2,
;;       LPDWORD lpdwAudioBytes2,
;;      DSCBLOCK_MASK dwFlags
;; );
;;     DSRESULT  Start                 (
;;     DSCBSTART_MASK dwFlags 
;; );
;;     DSRESULT  Stop                  (
;;      
;; );
;;     DSRESULT  Unlock                (
;;      LPVOID lpvAudioPtr1,
;;     DWORD dwAudioBytes1,
;;       LPVOID lpvAudioPtr2,
;;     DWORD dwAudioBytes2 
;; );
;; };







;; interface IDirectSoundNotify: IUnknown
;; {
;;          DSRESULT  SetNotificationPositions  (
;;      
;; );
;; };

;; typedef struct _DSFXSend { {
(struct '_DSFXSend
    LONG ; lSendLevel
)
(setq DSFXSend _DSFXSend)
;; } DSFXSend
(setq LPDSFXSend (string DSFXSend "*"))
(setq LPCDSFXSend (string DSFXSend "*"))


;; interface IDirectSoundFXSend: IUnknown
;; {
;;          DSRESULT SetAllParameters      (
;;      LPCDSFXSend pcDsFxSend
;; ) ;
;;     DSRESULT GetAllParameters      (
;;      LPDSFXSend pDsFxSend
;; ) ;
;; };


;; typedef struct _DSFXGargle { {
(struct '_DSFXGargle
    DWORD ; dwRateHz;
    DWORD ; dwWaveShape;
)
(setq DSFXGargle _DSFXGargle)
;; } DSFXGargle
(setq LPDSFXGargle (string DSFXGargle "*"))
(setq LPCDSFXGargle (string DSFXGargle "*"))

;; value DWORD DSFXGARGLE_VALUE {
(setq DSFXGARGLE_WAVE_TRIANGLE 0)
(setq DSFXGARGLE_WAVE_SQUARE 1)
;; };



;; interface IDirectSoundFXGargle: IUnknown
;; {
;;          DSRESULT SetAllParameters      (
;;      LPCDSFXGargle pcDsFxGargle
;; ) ;
;;     DSRESULT GetAllParameters      (
;;      LPDSFXGargle pDsFxGargle
;; ) ;
;; };

;; typedef struct _DSFXChorus { {
(struct '_DSFXChorus
    FLOAT ; fWetDryMix
    FLOAT ; fDepth
    FLOAT ; fFeedback
    FLOAT ; fFrequency
    LONG ; lWaveform;
    FLOAT ; fDelay
    LONG ; lPhase
)
(setq DSFXChorus _DSFXChorus)
;; } DSFXChorus
(setq LPDSFXChorus (string DSFXChorus "*"))
(setq LPCDSFXChorus (string DSFXChorus "*"))

;; interface IDirectSoundFXChorus: IUnknown
;; {
;;          DSRESULT SetAllParameters      (
;;      LPCDSFXChorus pcDsFxChorus
;; ) ;
;;     DSRESULT GetAllParameters      (
;;      LPDSFXChorus pDsFxChorus
;; ) ;
;; };


;; typedef struct _DSFXFlanger { {
(struct '_DSFXFlanger
    FLOAT ; fWetDryMix
    FLOAT ; fDepth
    FLOAT ; fFeedback
    FLOAT ; fFrequency
    LONG ; lWaveform
    FLOAT ; fDelay
    LONG ; lPhase
)
(setq DSFXFlanger _DSFXFlanger)
;; } DSFXFlanger
(setq LPDSFXFlanger (string DSFXFlanger "*"))
(setq LPCDSFXFlanger (string DSFXFlanger "*"))

;; interface IDirectSoundFXFlanger: IUnknown
;; {
;;          DSRESULT  SetAllParameters      (
;;      LPCDSFXFlanger pcDsFxFlanger
;; ) ;
;;     DSRESULT  GetAllParameters      (
;;      LPDSFXFlanger pDsFxFlanger
;; ) ;
;; };

;; typedef struct _DSFXEcho { {
(struct '_DSFXEcho
    FLOAT ; fWetDryMix
    FLOAT ; fFeedback
    FLOAT ; fLeftDelay
    FLOAT ; fRightDelay
    LONG ; lPanDelay
)
(setq DSFXEcho _DSFXEcho)
;; } DSFXEcho
(setq LPDSFXEcho (string DSFXEcho "*"))
(setq LPCDSFXEcho (string DSFXEcho "*"))

;; interface IDirectSoundFXEcho: IUnknown
;; {
;;          DSRESULT SetAllParameters      (
;;      LPCDSFXEcho pcDsFxEcho
;; ) ;
;;     DSRESULT GetAllParameters      (
;;      LPDSFXEcho pDsFxEcho
;; ) ;
;; };
;; typedef struct _DSFXDistortion { {
(struct '_DSFXDistortion
    FLOAT ; fGain
    FLOAT ; fEdge
    FLOAT ; fPostEQCenterFrequency
    FLOAT ; fPostEQBandwidth
    FLOAT ; fPreLowpassCutoff
)
(setq DSFXDistortion _DSFXDistortion)
;; } DSFXDistortion
(setq LPDSFXDistortion (string DSFXDistortion "*"))
(setq LPCDSFXDistortion (string DSFXDistortion "*"))

;; interface IDirectSoundFXDistortion: IUnknown
;; {
;;          DSRESULT SetAllParameters      (
;;      LPCDSFXDistortion pcDsFxDistortion
;; ) ;
;;     DSRESULT GetAllParameters      (
;;      LPDSFXDistortion pDsFxDistortion
;; ) ;
;; };

;; typedef struct _DSFXCompressor { {
(struct '_DSFXCompressor
    FLOAT ; fGain
    FLOAT ; fAttack
    FLOAT ; fRelease
    FLOAT ; fThreshold
    FLOAT ; fRatio
    FLOAT ; fPredelay
)
(setq DSFXCompressor _DSFXCompressor)
;; } DSFXCompressor
(setq LPDSFXCompressor (string DSFXCompressor "*"))
(setq LPCDSFXCompressor (string DSFXCompressor "*"))

;; interface IDirectSoundFXCompressor: IUnknown
;; {
;;          DSRESULT SetAllParameters      (
;;      LPCDSFXCompressor pcDsFxCompressor
;; ) ;
;;     DSRESULT GetAllParameters      (
;;      LPDSFXCompressor pDsFxCompressor
;; ) ;
;; };


;; typedef struct _DSFXParamEq { {
(struct '_DSFXParamEq
    FLOAT ; fCenter
    FLOAT ; fBandwidth
    FLOAT ; fGain
)
(setq DSFXParamEq _DSFXParamEq)
;; } DSFXParamEq
(setq LPDSFXParamEq (string DSFXParamEq "*"))
(setq LPCDSFXParamEq (string DSFXParamEq "*"))

;; interface IDirectSoundFXParamEq: IUnknown
;; {
;;          DSRESULT SetAllParameters      (
;;      LPCDSFXParamEq pcDsFxParamEq
;; ) ;
;;     DSRESULT GetAllParameters      (
;;      LPDSFXParamEq pDsFxParamEq
;; ) ;
;; };


;; typedef struct _DSFXI3DL2Reverb { {
(struct '_DSFXI3DL2Reverb
    LONG ; lRoom;
    LONG ; lRoomHF;
    FLOAT ; flRoomRolloffFactor;
    FLOAT ; flDecayTime;
    FLOAT ; flDecayHFRatio;
    LONG ; lReflections;
    FLOAT ; flReflectionsDelay;
    LONG ; lReverb;
    FLOAT ; flReverbDelay;
    FLOAT ; flDiffusion;
    FLOAT ; flDensity;
    FLOAT ; flHFReference;
)
(setq DSFXI3DL2Reverb _DSFXI3DL2Reverb)
;; } DSFXI3DL2Reverb
(setq LPDSFXI3DL2Reverb (string DSFXI3DL2Reverb "*"))
(setq LPCDSFXI3DL2Reverb (string DSFXI3DL2Reverb "*"))


;; interface IDirectSoundFXI3DL2Reverb: IUnknown
;; {
;;          DSRESULT SetAllParameters      (
;;      LPCDSFXI3DL2Reverb pcDsFxI3DL2Reverb
;; ) ;
;;     DSRESULT GetAllParameters      (
;;      LPDSFXI3DL2Reverb pDsFxI3DL2Reverb
;; ) ;
;;     DSRESULT SetPreset             (
;;     DWORD dwPreset
;; ) ;
;;     DSRESULT GetPreset             (
;;      LPDWORD pdwPreset
;; ) ;
;;     DSRESULT SetQuality            (
;;     LONG lQuality
;; ) ;
;;     DSRESULT GetQuality            (
;;      LONG* plQuality
;; ) ;
;; };

;; typedef struct _DSFXWavesReverb { {
(struct '_DSFXWavesReverb
    FLOAT ; fInGain;
    FLOAT ; fReverbMix;
    FLOAT ; fReverbTime;
    FLOAT ; fHighFreqRTRatio;
)
(setq DSFXWavesReverb _DSFXWavesReverb)
;; } DSFXWavesReverb
(setq LPDSFXWavesReverb (string DSFXWavesReverb "*"))
(setq LPCDSFXWavesReverb (string DSFXWavesReverb "*"))

;; interface IDirectSoundFXWavesReverb: IUnknown
;; {
;;          DSRESULT SetAllParameters      (
;;      LPCDSFXWavesReverb pcDsFxWavesReverb
;; ) ;
;;     DSRESULT GetAllParameters      (
;;      LPDSFXWavesReverb pDsFxWavesReverb
;; ) ;
;; };

;; typedef struct _DSCFXAec { {
(struct '_DSCFXAec
    BOOL ; fEnable
    BOOL ; fReset
)
(setq DSCFXAec _DSCFXAec)
;; } DSCFXAec
(setq LPDSCFXAec (string DSCFXAec "*"))
(setq LPCDSCFXAec (string DSCFXAec "*"))

;; interface IDirectSoundCaptureFXAec: IUnknown
;; {
;;          DSRESULT SetAllParameters      (
;;      LPCDSCFXAec pDscFxAec
;; ) ;
;;     DSRESULT GetAllParameters      (
;;      LPDSCFXAec pDscFxAec
;; ) ;
;; };

;; typedef struct _DSCFXNoiseSuppress { {
(struct '_DSCFXNoiseSuppress
    BOOL ; fEnable
    BOOL ; fReset
)
(setq DSCFXNoiseSuppress _DSCFXNoiseSuppress)
;; } DSCFXNoiseSuppress
(setq LPDSCFXNoiseSuppress (string DSCFXNoiseSuppress "*"))
(setq LPCDSCFXNoiseSuppress (string DSCFXNoiseSuppress "*"))

;; interface IDirectSoundCaptureFXNoiseSuppress: IUnknown
;; {
;;          DSRESULT SetAllParameters      (
;;      LPCDSCFXNoiseSuppress pcDscFxNoiseSuppress
;; ) ;
;;     DSRESULT GetAllParameters      (
;;      LPDSCFXNoiseSuppress pDscFxNoiseSuppress
;; ) ;
;; };


;; interface IDirectSoundFullDuplex: IUnknown
;; {
;;          DSRESULT Initialize      (
;;      LPCGUID pCaptureGuid,
;;       LPCGUID pRenderGuid,
;;       LPCDSCBUFFERDESC lpDscBufferDesc,
;;       LPCDSBUFFERDESC lpDsBufferDesc,
;;      HWND hWnd,
;;      DWORD dwLevel,
;;       LPLPDIRECTSOUNDCAPTUREBUFFER8 lplpDirectSoundCaptureBuffer8,
;;       LPLPDIRECTSOUNDBUFFER8 lplpDirectSoundBuffer8
;; ) ;
;; };










;; mask DWORD KSPROPERTY_SUPPORT_MASK {
(setq KSPROPERTY_SUPPORT_GET 0x00000001)
(setq KSPROPERTY_SUPPORT_SET 0x00000002)
;; };

;; interface IKsPropertySet: IUnknown
;; {
;;          DSRESULT  Get               (
;;     REFGUID rguidPropSet,
;;      ULONG ulId,
;;      LPVOID pInstanceData,
;;      ULONG ulInstanceLength,
;;       LPVOID pPropertyData,
;;      ULONG ulDataLength,
;;       ULONG* pulBytesReturned 
;; );
;;     DSRESULT  Set               (
;;     REFGUID rguidPropSet,
;;      ULONG ulId,
;;      LPVOID pInstanceData,
;;      ULONG ulInstanceLength,
;;      LPVOID pPropertyData,
;;      ULONG ulDataLength 
;; );
;;     DSRESULT  QuerySupport      (
;;     REFGUID rguidPropSet,
;;      ULONG ulId,
;;      ULONG* pulTypeSupport 
;; );
;; };

(setq LPKSPROPERTYSET (string IKsPropertySet "*"))





(setq LPDSENUMCALLBACKW LPVOID)
(setq LPDSENUMCALLBACKA LPVOID)

(import "DSOUND.DLL" "DirectSoundCreate" DSRESULT
    LPCGUID ; lpcGuid,
    (string LPDIRECTSOUND "*") ; ppDS,
    LPUNKNOWN ; pUnkOuter
)
(import "DSOUND.DLL" "DirectSoundEnumerateA" DSRESULT
    LPDSENUMCALLBACKA ; lpDSEnumCallback,
    LPVOID ; lpContext
)
(import "DSOUND.DLL" "DirectSoundEnumerateW" DSRESULT
    LPDSENUMCALLBACKW ; lpDSEnumCallback,
    LPVOID ; lpContext
)
(import "DSOUND.DLL" "DirectSoundCaptureCreate" DSRESULT
    LPCGUID ; lpcGUID,
    (string LPDIRECTSOUNDCAPTURE "*") ; lplpDSC,
    LPUNKNOWN ; pUnkOuter
)
(import "DSOUND.DLL" "DirectSoundCaptureEnumerateA" DSRESULT
    LPDSENUMCALLBACKA ; lpDSEnumCallback,
    LPVOID ; lpContext
)
(import "DSOUND.DLL" "DirectSoundCaptureEnumerateW" DSRESULT
    LPDSENUMCALLBACKW ; lpDSEnumCallback,
    LPVOID ; lpContext
)

(import "DSOUND.DLL" "DirectSoundCreate8" DSRESULT
    LPCGUID ; pcGuidDevice,
    (string LPDIRECTSOUND8 "*") ; ppDS8,
    LPUNKNOWN ; pUnkOuter
)
(import "DSOUND.DLL" "DirectSoundCaptureCreate8" DSRESULT
    LPCGUID ; pcGuidDevice,
    (string LPDIRECTSOUNDCAPTURE "*") ; ppDSC8,
    LPUNKNOWN ; pUnkOuter
)
(import "DSOUND.DLL" "DirectSoundFullDuplexCreate" DSRESULT
    LPCGUID ; pcGuidCaptureDevice,
    LPCGUID ; pcGuidRenderDevice,
    LPCDSCBUFFERDESC ; pcDSCBufferDesc,
    LPCDSBUFFERDESC ; pcDSBufferDesc,
    HWND ; hWnd,
    DWORD ; dwLevel,
    (string LPDIRECTSOUNDFULLDUPLEX "*") ; ppDSFD,
    (string LPDIRECTSOUNDCAPTUREBUFFER8 "*") ; ppDSCBuffer8,
    (string LPDIRECTSOUNDBUFFER8 "*") ; ppDSBuffer8,
    LPUNKNOWN ; pUnkOuter
)
(import "DSOUND.DLL" "GetDeviceID" DSRESULT
    LPCGUID ; pGuidSrc,
    LPGUID ; pGuidDest
)
