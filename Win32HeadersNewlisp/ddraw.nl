(context 'WIN32)

;; module DDRAW.DLL:
;; category DirectDraw:

;;  class __declspec(uuid("D7B70EE0-4340-11CF-B063-0020AFC2CD35")) DirectDraw;
(struct 'DirectDraw)
;;  class __declspec(uuid("3c305196-50db-11d3-9cfe-00c04fd930c5")) DirectDraw7;
(struct 'DirectDraw7)
;;  class __declspec(uuid("593817A0-7DB3-11CF-A2DE-00AA00b93356")) DirectDrawClipper;
(struct 'DirectDrawClipper)
;; struct __declspec(uuid("6C14DB80-A733-11CE-A521-0020AF0BE560")) IDirectDraw            ;
(struct 'IDirectDraw)
;; struct __declspec(uuid("B3A6F3E0-2B43-11CF-A2DE-00AA00B93356")) IDirectDraw2           ;
(struct 'IDirectDraw2)
;; struct __declspec(uuid("9c59509a-39bd-11d1-8c4a-00c04fd930c5")) IDirectDraw4           ;
(struct 'IDirectDraw4)
;; struct __declspec(uuid("15e65ec0-3b9c-11d2-b92f-00609797ea5b")) IDirectDraw7           ;
(struct 'IDirectDraw7)
;; struct __declspec(uuid("6c0f8a6c-2f3a-11d3-8f01-0000f8757fbc")) IDirectDrawRM          ;
(struct 'IDirectDrawRM)
;; struct __declspec(uuid("6C14DB81-A733-11CE-A521-0020AF0BE560")) IDirectDrawSurface     ;
(struct 'IDirectDrawSurface)
;; struct __declspec(uuid("57805885-6eec-11cf-9441-a82303c10e27")) IDirectDrawSurface2    ;
(struct 'IDirectDrawSurface2)
;; struct __declspec(uuid("DA044E00-69B2-11D0-A1D5-00AA00B8DFBB")) IDirectDrawSurface3    ;
(struct 'IDirectDrawSurface3)
;; struct __declspec(uuid("0B2B8630-AD35-11D0-8EA6-00609797EA5B")) IDirectDrawSurface4    ;
(struct 'IDirectDrawSurface4)
;; struct __declspec(uuid("06675a80-3b9b-11d2-b92f-00609797ea5b")) IDirectDrawSurface7    ;
(struct 'IDirectDrawSurface7)
;; struct __declspec(uuid("6C14DB84-A733-11CE-A521-0020AF0BE560")) IDirectDrawPalette     ;
(struct 'IDirectDrawPalette)
;; struct __declspec(uuid("6C14DB85-A733-11CE-A521-0020AF0BE560")) IDirectDrawClipper     ;
(struct 'IDirectDrawClipper)
;; struct __declspec(uuid("4B9F0EE0-0D7E-11D0-9B06-00A0C903A3B8")) IDirectDrawColorControl;
(struct 'IDirectDrawColorControl)
;; struct __declspec(uuid("69C11C3E-B46B-11D1-AD7A-00C04FC29B4E")) IDirectDrawGammaControl;
(struct 'IDirectDrawGammaControl)

(setq LPDIRECTDRAW (string IDirectDraw "*"))
(setq LPDIRECTDRAW2 (string IDirectDraw2 "*"))
(setq LPDIRECTDRAW4 (string IDirectDraw4 "*"))
(setq LPDIRECTDRAW7 (string IDirectDraw7 "*"))
(setq LPDIRECTDRAWSURFACE (string IDirectDrawSurface "*"))
(setq LPDIRECTDRAWSURFACE2 (string IDirectDrawSurface2 "*"))
(setq LPDIRECTDRAWSURFACE3 (string IDirectDrawSurface3 "*"))
(setq LPDIRECTDRAWSURFACE4 (string IDirectDrawSurface4 "*"))
(setq LPDIRECTDRAWSURFACE7 (string IDirectDrawSurface7 "*"))
(setq LPDIRECTDRAWPALETTE (string IDirectDrawPalette "*"))
(setq LPDIRECTDRAWCLIPPER (string IDirectDrawClipper "*"))
(setq LPDIRECTDRAWCOLORCONTROL (string IDirectDrawColorControl "*"))
(setq LPDIRECTDRAWGAMMACONTROL (string IDirectDrawGammaControl "*"))

(setq LPDDSURFACEDESC (string DDSURFACEDESC "*"))
(setq LPDDSURFACEDESC2 (string DDSURFACEDESC2 "*"))
(setq LPDDCOLORCONTROL (string DDCOLORCONTROL "*"))

(setq LPDDENUMCALLBACKW LPVOID)
(setq LPDDENUMCALLBACKA LPVOID)
(setq LPDDENUMCALLBACKEXW LPVOID)
(setq LPDDENUMCALLBACKEXA LPVOID)

(setq LPDDENUMMODESCALLBACK LPVOID)
(setq LPDDENUMMODESCALLBACK2 LPVOID)

(setq LPDDENUMSURFACESCALLBACK LPVOID)
(setq LPDDENUMSURFACESCALLBACK2 LPVOID)
(setq LPDDENUMSURFACESCALLBACK7 LPVOID)

;; mask DWORD DirectDrawOptSurfaceDescFlags {

(setq DDOSD_GUID 0x00000001l)


(setq DDOSD_COMPRESSION_RATIO 0x00000002l)


(setq DDOSD_SCAPS 0x00000004l)


(setq DDOSD_OSCAPS 0x00000008l)


(setq DDOSD_ALL 0x0000000fl)
;; };

;; mask DWORD DirectDrawOptSurfaceDescCapsFlags {

(setq DDOSDCAPS_OPTCOMPRESSED 0x00000001l)


(setq DDOSDCAPS_OPTREORDERED 0x00000002l)


(setq DDOSDCAPS_MONOLITHICMIPMAP 0x00000004l)
;; };

;; mask DWORD DirectDrawGetDeviceIdentifierFlags {

(setq DDGDI_GETHOSTIDENTIFIER 0x00000001L)
;; };



;; mask DWORD DirectDrawSurfaceDescFlags {

(setq DDSD_CAPS 0x00000001l)


(setq DDSD_HEIGHT 0x00000002l)


(setq DDSD_WIDTH 0x00000004l)


(setq DDSD_PITCH 0x00000008l)


(setq DDSD_BACKBUFFERCOUNT 0x00000020l)


(setq DDSD_ZBUFFERBITDEPTH 0x00000040l)


(setq DDSD_ALPHABITDEPTH 0x00000080l)



(setq DDSD_LPSURFACE 0x00000800l)


(setq DDSD_PIXELFORMAT 0x00001000l)


(setq DDSD_CKDESTOVERLAY 0x00002000l)


(setq DDSD_CKDESTBLT 0x00004000l)


(setq DDSD_CKSRCOVERLAY 0x00008000l)


(setq DDSD_CKSRCBLT 0x00010000l)


(setq DDSD_MIPMAPCOUNT 0x00020000l)


(setq DDSD_REFRESHRATE 0x00040000l)


(setq DDSD_LINEARSIZE 0x00080000l)


(setq DDSD_TEXTURESTAGE 0x00100000l)

(setq DDSD_FVF 0x00200000l)

(setq DDSD_SRCVBHANDLE 0x00400000l)

(setq DDSD_ALL 0x007ff9eel)
;; };

;; mask DWORD DirectDrawEnumerateExFlags {



(setq DDENUM_ATTACHEDSECONDARYDEVICES 0x00000001L)


(setq DDENUM_DETACHEDSECONDARYDEVICES 0x00000002L)


(setq DDENUM_NONDISPLAYDEVICES 0x00000004L)
;; };

;; value DWORD DirectDrawCreateFlags {
(setq DDCREATE_HARDWAREONLY 0x00000001L)
(setq DDCREATE_EMULATIONONLY 0x00000002L)
;; };

;; mask DWORD DirectDrawColorControlFlags {

(setq DDCOLOR_BRIGHTNESS 0x00000001l)


(setq DDCOLOR_CONTRAST 0x00000002l)


(setq DDCOLOR_HUE 0x00000004l)


(setq DDCOLOR_SATURATION 0x00000008l)


(setq DDCOLOR_SHARPNESS 0x00000010l)


(setq DDCOLOR_GAMMA 0x00000020l)


(setq DDCOLOR_COLORENABLE 0x00000040l)
;; };

;; mask DWORD DirectDrawCapsFlags {





(setq DDSCAPS_RESERVED1 0x00000001l)


(setq DDSCAPS_ALPHA 0x00000002l)


(setq DDSCAPS_BACKBUFFER 0x00000004l)


(setq DDSCAPS_COMPLEX 0x00000008l)


(setq DDSCAPS_FLIP 0x00000010l)


(setq DDSCAPS_FRONTBUFFER 0x00000020l)


(setq DDSCAPS_OFFSCREENPLAIN 0x00000040l)


(setq DDSCAPS_OVERLAY 0x00000080l)


(setq DDSCAPS_PALETTE 0x00000100l)


(setq DDSCAPS_PRIMARYSURFACE 0x00000200l)



(setq DDSCAPS_RESERVED3 0x00000400l)


(setq DDSCAPS_SYSTEMMEMORY 0x00000800l)


(setq DDSCAPS_TEXTURE 0x00001000l)


(setq DDSCAPS_3DDEVICE 0x00002000l)


(setq DDSCAPS_VIDEOMEMORY 0x00004000l)


(setq DDSCAPS_VISIBLE 0x00008000l)


(setq DDSCAPS_WRITEONLY 0x00010000l)


(setq DDSCAPS_ZBUFFER 0x00020000l)


(setq DDSCAPS_OWNDC 0x00040000l)


(setq DDSCAPS_LIVEVIDEO 0x00080000l)


(setq DDSCAPS_HWCODEC 0x00100000l)


(setq DDSCAPS_MODEX 0x00200000l)


(setq DDSCAPS_MIPMAP 0x00400000l)


(setq DDSCAPS_RESERVED2 0x00800000l)



(setq DDSCAPS_ALLOCONLOAD 0x04000000l)


(setq DDSCAPS_VIDEOPORT 0x08000000l)


(setq DDSCAPS_LOCALVIDMEM 0x10000000l)


(setq DDSCAPS_NONLOCALVIDMEM 0x20000000l)


(setq DDSCAPS_STANDARDVGAMODE 0x40000000l)


(setq DDSCAPS_OPTIMIZED 0x80000000l)
;; };



;; mask DWORD DirectDrawCapabilityFlags2 {

(setq DDSCAPS2_HARDWAREDEINTERLACE 0x00000002L)


(setq DDSCAPS2_HINTDYNAMIC 0x00000004L)


(setq DDSCAPS2_HINTSTATIC 0x00000008L)


(setq DDSCAPS2_TEXTUREMANAGE 0x00000010L)


(setq DDSCAPS2_RESERVED1 0x00000020L)
(setq DDSCAPS2_RESERVED2 0x00000040L)


(setq DDSCAPS2_OPAQUE 0x00000080L)


(setq DDSCAPS2_HINTANTIALIASING 0x00000100L)



(setq DDSCAPS2_CUBEMAP 0x00000200L)


(setq DDSCAPS2_CUBEMAP_POSITIVEX 0x00000400L)
(setq DDSCAPS2_CUBEMAP_NEGATIVEX 0x00000800L)
(setq DDSCAPS2_CUBEMAP_POSITIVEY 0x00001000L)
(setq DDSCAPS2_CUBEMAP_NEGATIVEY 0x00002000L)
(setq DDSCAPS2_CUBEMAP_POSITIVEZ 0x00004000L)
(setq DDSCAPS2_CUBEMAP_NEGATIVEZ 0x00008000L)


(setq DDSCAPS2_MIPMAPSUBLEVEL 0x00010000L)


(setq DDSCAPS2_D3DTEXTUREMANAGE 0x00020000L)


(setq DDSCAPS2_DONOTPERSIST 0x00040000L)


(setq DDSCAPS2_STEREOSURFACELEFT 0x00080000L)
;; };

;; mask DWORD DirectDrawDriverCapsFlags {



(setq DDCAPS_3D 0x00000001l)


(setq DDCAPS_ALIGNBOUNDARYDEST 0x00000002l)


(setq DDCAPS_ALIGNSIZEDEST 0x00000004l)

(setq DDCAPS_ALIGNBOUNDARYSRC 0x00000008l)


(setq DDCAPS_ALIGNSIZESRC 0x00000010l)


(setq DDCAPS_ALIGNSTRIDE 0x00000020l)


(setq DDCAPS_BLT 0x00000040l)


(setq DDCAPS_BLTQUEUE 0x00000080l)


(setq DDCAPS_BLTFOURCC 0x00000100l)


(setq DDCAPS_BLTSTRETCH 0x00000200l)


(setq DDCAPS_GDI 0x00000400l)


(setq DDCAPS_OVERLAY 0x00000800l)


(setq DDCAPS_OVERLAYCANTCLIP 0x00001000l)


(setq DDCAPS_OVERLAYFOURCC 0x00002000l)


(setq DDCAPS_OVERLAYSTRETCH 0x00004000l)


(setq DDCAPS_PALETTE 0x00008000l)


(setq DDCAPS_PALETTEVSYNC 0x00010000l)


(setq DDCAPS_READSCANLINE 0x00020000l)



(setq DDCAPS_RESERVED1 0x00040000l)


(setq DDCAPS_VBI 0x00080000l)


(setq DDCAPS_ZBLTS 0x00100000l)


(setq DDCAPS_ZOVERLAYS 0x00200000l)


(setq DDCAPS_COLORKEY 0x00400000l)


(setq DDCAPS_ALPHA 0x00800000l)


(setq DDCAPS_COLORKEYHWASSIST 0x01000000l)


(setq DDCAPS_NOHARDWARE 0x02000000l)


(setq DDCAPS_BLTCOLORFILL 0x04000000l)


(setq DDCAPS_BANKSWITCHED 0x08000000l)


(setq DDCAPS_BLTDEPTHFILL 0x10000000l)


(setq DDCAPS_CANCLIP 0x20000000l)


(setq DDCAPS_CANCLIPSTRETCHED 0x40000000l)


(setq DDCAPS_CANBLTSYSMEM 0x80000000l)
;; };


;; mask DWORD DirectDrawDriverCapsFlags2 {



(setq DDCAPS2_CERTIFIED 0x00000001l)


(setq DDCAPS2_NO2DDURING3DSCENE 0x00000002l)


(setq DDCAPS2_VIDEOPORT 0x00000004l)


(setq DDCAPS2_AUTOFLIPOVERLAY 0x00000008l)


(setq DDCAPS2_CANBOBINTERLEAVED 0x00000010l)


(setq DDCAPS2_CANBOBNONINTERLEAVED 0x00000020l)


(setq DDCAPS2_COLORCONTROLOVERLAY 0x00000040l)


(setq DDCAPS2_COLORCONTROLPRIMARY 0x00000080l)


(setq DDCAPS2_CANDROPZ16BIT 0x00000100l)


(setq DDCAPS2_NONLOCALVIDMEM 0x00000200l)


(setq DDCAPS2_NONLOCALVIDMEMCAPS 0x00000400l)


(setq DDCAPS2_NOPAGELOCKREQUIRED 0x00000800l)


(setq DDCAPS2_WIDESURFACES 0x00001000l)


(setq DDCAPS2_CANFLIPODDEVEN 0x00002000l)


(setq DDCAPS2_CANBOBHARDWARE 0x00004000l)


(setq DDCAPS2_COPYFOURCC 0x00008000l)



(setq DDCAPS2_PRIMARYGAMMA 0x00020000l)


(setq DDCAPS2_CANRENDERWINDOWED 0x00080000l)


(setq DDCAPS2_CANCALIBRATEGAMMA 0x00100000l)


(setq DDCAPS2_FLIPINTERVAL 0x00200000l)


(setq DDCAPS2_FLIPNOVSYNC 0x00400000l)


(setq DDCAPS2_CANMANAGETEXTURE 0x00800000l)


(setq DDCAPS2_TEXMANINNONLOCALVIDMEM 0x01000000l)


(setq DDCAPS2_STEREO 0x02000000L)


(setq DDCAPS2_SYSTONONLOCAL_AS_SYSTOLOCAL 0x04000000L)
;; };


;; mask DWORD DirectDrawFxAlphaCapsFlags {



(setq DDFXALPHACAPS_BLTALPHAEDGEBLEND 0x00000001l)


(setq DDFXALPHACAPS_BLTALPHAPIXELS 0x00000002l)


(setq DDFXALPHACAPS_BLTALPHAPIXELSNEG 0x00000004l)


(setq DDFXALPHACAPS_BLTALPHASURFACES 0x00000008l)


(setq DDFXALPHACAPS_BLTALPHASURFACESNEG 0x00000010l)


(setq DDFXALPHACAPS_OVERLAYALPHAEDGEBLEND 0x00000020l)


(setq DDFXALPHACAPS_OVERLAYALPHAPIXELS 0x00000040l)


(setq DDFXALPHACAPS_OVERLAYALPHAPIXELSNEG 0x00000080l)


(setq DDFXALPHACAPS_OVERLAYALPHASURFACES 0x00000100l)


(setq DDFXALPHACAPS_OVERLAYALPHASURFACESNEG 0x00000200l)
;; };

;; mask DWORD DirectDrawFxCapsFlags {



(setq DDFXCAPS_BLTARITHSTRETCHY 0x00000020l)


(setq DDFXCAPS_BLTARITHSTRETCHYN 0x00000010l)


(setq DDFXCAPS_BLTMIRRORLEFTRIGHT 0x00000040l)


(setq DDFXCAPS_BLTMIRRORUPDOWN 0x00000080l)


(setq DDFXCAPS_BLTROTATION 0x00000100l)


(setq DDFXCAPS_BLTROTATION90 0x00000200l)


(setq DDFXCAPS_BLTSHRINKX 0x00000400l)


(setq DDFXCAPS_BLTSHRINKXN 0x00000800l)


(setq DDFXCAPS_BLTSHRINKY 0x00001000l)


(setq DDFXCAPS_BLTSHRINKYN 0x00002000l)


(setq DDFXCAPS_BLTSTRETCHX 0x00004000l)


(setq DDFXCAPS_BLTSTRETCHXN 0x00008000l)


(setq DDFXCAPS_BLTSTRETCHY 0x00010000l)


(setq DDFXCAPS_BLTSTRETCHYN 0x00020000l)


(setq DDFXCAPS_OVERLAYARITHSTRETCHY 0x00040000l)


(setq DDFXCAPS_OVERLAYARITHSTRETCHYN 0x00000008l)


(setq DDFXCAPS_OVERLAYSHRINKX 0x00080000l)


(setq DDFXCAPS_OVERLAYSHRINKXN 0x00100000l)


(setq DDFXCAPS_OVERLAYSHRINKY 0x00200000l)


(setq DDFXCAPS_OVERLAYSHRINKYN 0x00400000l)


(setq DDFXCAPS_OVERLAYSTRETCHX 0x00800000l)


(setq DDFXCAPS_OVERLAYSTRETCHXN 0x01000000l)


(setq DDFXCAPS_OVERLAYSTRETCHY 0x02000000l)


(setq DDFXCAPS_OVERLAYSTRETCHYN 0x04000000l)


(setq DDFXCAPS_OVERLAYMIRRORLEFTRIGHT 0x08000000l)


(setq DDFXCAPS_OVERLAYMIRRORUPDOWN 0x10000000l)


(setq DDFXCAPS_BLTALPHA 0x00000001l)



(setq DDFXCAPS_OVERLAYALPHA 0x00000004l)

;; };

;; mask DWORD DirectDrawStereoViewCapsFlags {




(setq DDSVCAPS_RESERVED1 0x00000001l)


(setq DDSVCAPS_RESERVED2 0x00000002l)


(setq DDSVCAPS_RESERVED3 0x00000004l)


(setq DDSVCAPS_RESERVED4 0x00000008l)



(setq DDSVCAPS_STEREOSEQUENTIAL 0x00000010L)

;; };


;; mask DWORD DirectDrawPaletteCapsFlags {



(setq DDPCAPS_4BIT 0x00000001l)


(setq DDPCAPS_8BITENTRIES 0x00000002l)


(setq DDPCAPS_8BIT 0x00000004l)


(setq DDPCAPS_INITIALIZE 0x00000000l)


(setq DDPCAPS_PRIMARYSURFACE 0x00000010l)


(setq DDPCAPS_PRIMARYSURFACELEFT 0x00000020l)


(setq DDPCAPS_ALLOW256 0x00000040l)


(setq DDPCAPS_VSYNC 0x00000080l)


(setq DDPCAPS_1BIT 0x00000100l)


(setq DDPCAPS_2BIT 0x00000200l)


(setq DDPCAPS_ALPHA 0x00000400l)
;; };










;; value DWORD DirectDrawSurfaceSetPrivateDataConstants {

(setq DDSPD_IUNKNOWNPOINTER 0x00000001L)


(setq DDSPD_VOLATILE 0x00000002L)
;; };


;; value DWORD DirectDrawSurfaceSetPaletteConstants {






(setq DDBD_1 0x00004000l)


(setq DDBD_2 0x00002000l)


(setq DDBD_4 0x00001000l)


(setq DDBD_8 0x00000800l)


(setq DDBD_16 0x00000400l)


(setq DDBD_24 0X00000200l)


(setq DDBD_32 0x00000100l)
;; };

;; mask DWORD DirectDrawSurfaceSetGetColorKeyFlags {



(setq DDCKEY_COLORSPACE 0x00000001l)


(setq DDCKEY_DESTBLT 0x00000002l)


(setq DDCKEY_DESTOVERLAY 0x00000004l)


(setq DDCKEY_SRCBLT 0x00000008l)


(setq DDCKEY_SRCOVERLAY 0x00000010l)
;; };

;; mask DWORD DirectDrawColorKeyCapsFlags {



(setq DDCKEYCAPS_DESTBLT 0x00000001l)


(setq DDCKEYCAPS_DESTBLTCLRSPACE 0x00000002l)


(setq DDCKEYCAPS_DESTBLTCLRSPACEYUV 0x00000004l)


(setq DDCKEYCAPS_DESTBLTYUV 0x00000008l)


(setq DDCKEYCAPS_DESTOVERLAY 0x00000010l)


(setq DDCKEYCAPS_DESTOVERLAYCLRSPACE 0x00000020l)


(setq DDCKEYCAPS_DESTOVERLAYCLRSPACEYUV 0x00000040l)


(setq DDCKEYCAPS_DESTOVERLAYONEACTIVE 0x00000080l)


(setq DDCKEYCAPS_DESTOVERLAYYUV 0x00000100l)


(setq DDCKEYCAPS_SRCBLT 0x00000200l)


(setq DDCKEYCAPS_SRCBLTCLRSPACE 0x00000400l)


(setq DDCKEYCAPS_SRCBLTCLRSPACEYUV 0x00000800l)


(setq DDCKEYCAPS_SRCBLTYUV 0x00001000l)


(setq DDCKEYCAPS_SRCOVERLAY 0x00002000l)


(setq DDCKEYCAPS_SRCOVERLAYCLRSPACE 0x00004000l)


(setq DDCKEYCAPS_SRCOVERLAYCLRSPACEYUV 0x00008000l)


(setq DDCKEYCAPS_SRCOVERLAYONEACTIVE 0x00010000l)


(setq DDCKEYCAPS_SRCOVERLAYYUV 0x00020000l)


(setq DDCKEYCAPS_NOCOSTOVERLAY 0x00040000l)
;; };

;; mask DWORD DirectDrawPixelFormatFlags {



(setq DDPF_ALPHAPIXELS 0x00000001l)


(setq DDPF_ALPHA 0x00000002l)


(setq DDPF_FOURCC 0x00000004l)


(setq DDPF_PALETTEINDEXED4 0x00000008l)


(setq DDPF_PALETTEINDEXEDTO8 0x00000010l)


(setq DDPF_PALETTEINDEXED8 0x00000020l)


(setq DDPF_RGB 0x00000040l)


(setq DDPF_COMPRESSED 0x00000080l)


(setq DDPF_RGBTOYUV 0x00000100l)


(setq DDPF_YUV 0x00000200l)


(setq DDPF_ZBUFFER 0x00000400l)


(setq DDPF_PALETTEINDEXED1 0x00000800l)


(setq DDPF_PALETTEINDEXED2 0x00001000l)


(setq DDPF_ZPIXELS 0x00002000l)


(setq DDPF_STENCILBUFFER 0x00004000l)


(setq DDPF_ALPHAPREMULT 0x00008000l)



(setq DDPF_LUMINANCE 0x00020000l)


(setq DDPF_BUMPLUMINANCE 0x00040000l)


(setq DDPF_BUMPDUDV 0x00080000l)
;; };



;; mask DWORD DirectDrawEnumSurfacesFlags {



(setq DDENUMSURFACES_ALL 0x00000001l)


(setq DDENUMSURFACES_MATCH 0x00000002l)


(setq DDENUMSURFACES_NOMATCH 0x00000004l)


(setq DDENUMSURFACES_CANBECREATED 0x00000008l)


(setq DDENUMSURFACES_DOESEXIST 0x00000010l)
;; };

;; mask DWORD DirectDrawSetDisplayModeFlags {



(setq DDSDM_STANDARDVGAMODE 0x00000001l)
;; };

;; mask DWORD DirectDrawEnumDisplayModesFlags {



(setq DDEDM_REFRESHRATES 0x00000001l)


(setq DDEDM_STANDARDVGAMODES 0x00000002L)

;; };

;; mask DWORD DirectDrawSetCooperativeLevelFlags {




(setq DDSCL_FULLSCREEN 0x00000001l)


(setq DDSCL_ALLOWREBOOT 0x00000002l)


(setq DDSCL_NOWINDOWCHANGES 0x00000004l)


(setq DDSCL_NORMAL 0x00000008l)


(setq DDSCL_EXCLUSIVE 0x00000010l)



(setq DDSCL_ALLOWMODEX 0x00000040l)


(setq DDSCL_SETFOCUSWINDOW 0x00000080l)


(setq DDSCL_SETDEVICEWINDOW 0x00000100l)


(setq DDSCL_CREATEDEVICEWINDOW 0x00000200l)


(setq DDSCL_MULTITHREADED 0x00000400l)


(setq DDSCL_FPUSETUP 0x00000800l)


(setq DDSCL_FPUPRESERVE 0x00001000l)
;; };

;; mask DWORD DirectDrawBltFlags {



(setq DDBLT_ALPHADEST 0x00000001l)


(setq DDBLT_ALPHADESTCONSTOVERRIDE 0x00000002l)


(setq DDBLT_ALPHADESTNEG 0x00000004l)


(setq DDBLT_ALPHADESTSURFACEOVERRIDE 0x00000008l)


(setq DDBLT_ALPHAEDGEBLEND 0x00000010l)


(setq DDBLT_ALPHASRC 0x00000020l)


(setq DDBLT_ALPHASRCCONSTOVERRIDE 0x00000040l)


(setq DDBLT_ALPHASRCNEG 0x00000080l)


(setq DDBLT_ALPHASRCSURFACEOVERRIDE 0x00000100l)


(setq DDBLT_ASYNC 0x00000200l)


(setq DDBLT_COLORFILL 0x00000400l)


(setq DDBLT_DDFX 0x00000800l)


(setq DDBLT_DDROPS 0x00001000l)


(setq DDBLT_KEYDEST 0x00002000l)


(setq DDBLT_KEYDESTOVERRIDE 0x00004000l)


(setq DDBLT_KEYSRC 0x00008000l)


(setq DDBLT_KEYSRCOVERRIDE 0x00010000l)


(setq DDBLT_ROP 0x00020000l)


(setq DDBLT_ROTATIONANGLE 0x00040000l)


(setq DDBLT_ZBUFFER 0x00080000l)


(setq DDBLT_ZBUFFERDESTCONSTOVERRIDE 0x00100000l)


(setq DDBLT_ZBUFFERDESTOVERRIDE 0x00200000l)


(setq DDBLT_ZBUFFERSRCCONSTOVERRIDE 0x00400000l)


(setq DDBLT_ZBUFFERSRCOVERRIDE 0x00800000l)


(setq DDBLT_WAIT 0x01000000l)


(setq DDBLT_DEPTHFILL 0x02000000l)



(setq DDBLT_DONOTWAIT 0x08000000l)
;; };


;; mask DWORD DirectDrawBltFastFlags {


(setq DDBLTFAST_NOCOLORKEY 0x00000000)
(setq DDBLTFAST_SRCCOLORKEY 0x00000001)
(setq DDBLTFAST_DESTCOLORKEY 0x00000002)
(setq DDBLTFAST_WAIT 0x00000010)
(setq DDBLTFAST_DONOTWAIT 0x00000020)
;; };

;; mask DWORD DirectDrawFlipFlags {


(setq DDFLIP_WAIT 0x00000001L)


(setq DDFLIP_EVEN 0x00000002L)


(setq DDFLIP_ODD 0x00000004L)


(setq DDFLIP_NOVSYNC 0x00000008L)





(setq DDFLIP_INTERVAL2 0x02000000L)



(setq DDFLIP_INTERVAL3 0x03000000L)



(setq DDFLIP_INTERVAL4 0x04000000L)


(setq DDFLIP_STEREO 0x00000010L)


(setq DDFLIP_DONOTWAIT 0x00000020L)

;; };

;; mask DWORD DirectDrawSurfaceOverlayFlags {



(setq DDOVER_ALPHADEST 0x00000001l)


(setq DDOVER_ALPHADESTCONSTOVERRIDE 0x00000002l)


(setq DDOVER_ALPHADESTNEG 0x00000004l)


(setq DDOVER_ALPHADESTSURFACEOVERRIDE 0x00000008l)


(setq DDOVER_ALPHAEDGEBLEND 0x00000010l)


(setq DDOVER_ALPHASRC 0x00000020l)


(setq DDOVER_ALPHASRCCONSTOVERRIDE 0x00000040l)


(setq DDOVER_ALPHASRCNEG 0x00000080l)


(setq DDOVER_ALPHASRCSURFACEOVERRIDE 0x00000100l)


(setq DDOVER_HIDE 0x00000200l)


(setq DDOVER_KEYDEST 0x00000400l)


(setq DDOVER_KEYDESTOVERRIDE 0x00000800l)


(setq DDOVER_KEYSRC 0x00001000l)


(setq DDOVER_KEYSRCOVERRIDE 0x00002000l)


(setq DDOVER_SHOW 0x00004000l)


(setq DDOVER_ADDDIRTYRECT 0x00008000l)


(setq DDOVER_REFRESHDIRTYRECTS 0x00010000l)


(setq DDOVER_REFRESHALL 0x00020000l)



(setq DDOVER_DDFX 0x00080000l)


(setq DDOVER_AUTOFLIP 0x00100000l)


(setq DDOVER_BOB 0x00200000l)


(setq DDOVER_OVERRIDEBOBWEAVE 0x00400000l)


(setq DDOVER_INTERLEAVED 0x00800000l)


(setq DDOVER_BOBHARDWARE 0x01000000l)


(setq DDOVER_ARGBSCALEFACTORS 0x02000000l)


(setq DDOVER_DEGRADEARGBSCALING 0x04000000l)
;; };


;; mask DWORD DirectDrawSurfaceLockFlags {



(setq DDLOCK_SURFACEMEMORYPTR 0x00000000L)


(setq DDLOCK_WAIT 0x00000001L)


(setq DDLOCK_EVENT 0x00000002L)


(setq DDLOCK_READONLY 0x00000010L)


(setq DDLOCK_WRITEONLY 0x00000020L)



(setq DDLOCK_NOSYSLOCK 0x00000800L)


(setq DDLOCK_NOOVERWRITE 0x00001000L)


(setq DDLOCK_DISCARDCONTENTS 0x00002000L)

(setq DDLOCK_OKTOSWAP 0x00002000L)


(setq DDLOCK_DONOTWAIT 0x00004000L)

;; };













;; mask DWORD DirectDrawSurfaceBltFxFlags {

(setq DDBLTFX_ARITHSTRETCHY 0x00000001l)


(setq DDBLTFX_MIRRORLEFTRIGHT 0x00000002l)


(setq DDBLTFX_MIRRORUPDOWN 0x00000004l)


(setq DDBLTFX_NOTEARING 0x00000008l)


(setq DDBLTFX_ROTATE180 0x00000010l)


(setq DDBLTFX_ROTATE270 0x00000020l)


(setq DDBLTFX_ROTATE90 0x00000040l)


(setq DDBLTFX_ZBUFFERRANGE 0x00000080l)


(setq DDBLTFX_ZBUFFERBASEDEST 0x00000100l)
;; };

;; mask DWORD DirectDrawOverlayFxFlags {



(setq DDOVERFX_ARITHSTRETCHY 0x00000001l)


(setq DDOVERFX_MIRRORLEFTRIGHT 0x00000002l)


(setq DDOVERFX_MIRRORUPDOWN 0x00000004l)

;; };

;; mask DWORD DirectDrawWaitForVerticalBlankFlags {




(setq DDWAITVB_BLOCKBEGIN 0x00000001l)


(setq DDWAITVB_BLOCKBEGINEVENT 0x00000002l)


(setq DDWAITVB_BLOCKEND 0x00000004l)

 
)

;; mask DWORD DirectDrawGetFlipStatusFlags {



(setq DDGFS_CANFLIP 0x00000001l)


(setq DDGFS_ISFLIPDONE 0x00000002l)
;; };

;; mask DWORD DirectDrawGetBltStatusFlags {



(setq DDGBS_CANBLT 0x00000001l)


(setq DDGBS_ISBLTDONE 0x00000002l)

;; };

;; mask DWORD DirectDrawEnumOverlayZOrderFlags {




(setq DDENUMOVERLAYZ_BACKTOFRONT 0x00000000l)


(setq DDENUMOVERLAYZ_FRONTTOBACK 0x00000001l)

;; };

;; mask DWORD DirectDrawUpdateOverlayZOrderFlags {



(setq DDOVERZ_SENDTOFRONT 0x00000000l)


(setq DDOVERZ_SENDTOBACK 0x00000001l)


(setq DDOVERZ_MOVEFORWARD 0x00000002l)


(setq DDOVERZ_MOVEBACKWARD 0x00000003l)


(setq DDOVERZ_INSERTINFRONTOF 0x00000004l)


(setq DDOVERZ_INSERTINBACKOF 0x00000005l)
;; };

;; mask DWORD DirectDrawSetGammaRampFlags {



(setq DDSGR_CALIBRATE 0x00000001L)

;; };

;; mask DWORD DirectDrawStartModeTestFlags {




(setq DDSMT_ISTESTREQUIRED 0x00000001L)

;; };

;; mask DWORD DirectDrawEvaluateModeFlags {




(setq DDEM_MODEPASSED 0x00000001L)


(setq DDEM_MODEFAILED 0x00000002L)

;; };

;; value DWORD DDRESULT {



(setq DD_OK 0)
(setq DD_FALSE 1)




(setq DDERR_ALREADYINITIALIZED 0x88760005)


(setq DDERR_CANNOTATTACHSURFACE 0x8876000A)


(setq DDERR_CANNOTDETACHSURFACE 0x88760014)


(setq DDERR_CURRENTLYNOTAVAIL 0x88760028)


(setq DDERR_EXCEPTION 0x88760037)


(setq DDERR_GENERIC 0x80004005L)


(setq DDERR_HEIGHTALIGN 0x8876005A)


(setq DDERR_INCOMPATIBLEPRIMARY 0x8876005F)


(setq DDERR_INVALIDCAPS 0x88760064)


(setq DDERR_INVALIDCLIPLIST 0x8876006E)


(setq DDERR_INVALIDMODE 0x88760078)


(setq DDERR_INVALIDOBJECT 0x88760082)


(setq DDERR_INVALIDPARAMS 0x80070057L)


(setq DDERR_INVALIDPIXELFORMAT 0x88760091)


(setq DDERR_INVALIDRECT 0x88760096)


(setq DDERR_LOCKEDSURFACES 0x887600A0)


(setq DDERR_NO3D 0x887600AA)


(setq DDERR_NOALPHAHW 0x887600B4)


(setq DDERR_NOSTEREOHARDWARE 0x887600B5)


(setq DDERR_NOSURFACELEFT 0x887600B6)




(setq DDERR_NOCLIPLIST 0x887600CD)


(setq DDERR_NOCOLORCONVHW 0x887600D2)


(setq DDERR_NOCOOPERATIVELEVELSET 0x887600D4)


(setq DDERR_NOCOLORKEY 0x887600D7)


(setq DDERR_NOCOLORKEYHW 0x887600DC)


(setq DDERR_NODIRECTDRAWSUPPORT 0x887600DE)


(setq DDERR_NOEXCLUSIVEMODE 0x887600E1)


(setq DDERR_NOFLIPHW 0x887600E6)


(setq DDERR_NOGDI 0x887600F0)


(setq DDERR_NOMIRRORHW 0x887600FA)


(setq DDERR_NOTFOUND 0x887600FF)


(setq DDERR_NOOVERLAYHW 0x88760104)


(setq DDERR_OVERLAPPINGRECTS 0x8876010E)


(setq DDERR_NORASTEROPHW 0x88760118)


(setq DDERR_NOROTATIONHW 0x88760122)


(setq DDERR_NOSTRETCHHW 0x88760136)


(setq DDERR_NOT4BITCOLOR 0x8876013C)


(setq DDERR_NOT4BITCOLORINDEX 0x8876013D)


(setq DDERR_NOT8BITCOLOR 0x88760140)


(setq DDERR_NOTEXTUREHW 0x8876014A)


(setq DDERR_NOVSYNCHW 0x8876014F)


(setq DDERR_NOZBUFFERHW 0x88760154)


(setq DDERR_NOZOVERLAYHW 0x8876015E)


(setq DDERR_OUTOFCAPS 0x88760168)


(setq DDERR_OUTOFMEMORY 0x8007000EL)


(setq DDERR_OUTOFVIDEOMEMORY 0x8876017C)


(setq DDERR_OVERLAYCANTCLIP 0x8876017E)


(setq DDERR_OVERLAYCOLORKEYONLYONEACTIVE 0x88760180)


(setq DDERR_PALETTEBUSY 0x88760183)


(setq DDERR_COLORKEYNOTSET 0x88760190)


(setq DDERR_SURFACEALREADYATTACHED 0x8876019A)


(setq DDERR_SURFACEALREADYDEPENDENT 0x887601A4)


(setq DDERR_SURFACEBUSY 0x887601AE)


(setq DDERR_CANTLOCKSURFACE 0x887601B3)


(setq DDERR_SURFACEISOBSCURED 0x887601B8)


(setq DDERR_SURFACELOST 0x887601C2)


(setq DDERR_SURFACENOTATTACHED 0x887601CC)


(setq DDERR_TOOBIGHEIGHT 0x887601D6)


(setq DDERR_TOOBIGSIZE 0x887601E0)


(setq DDERR_TOOBIGWIDTH 0x887601EA)


(setq DDERR_UNSUPPORTED 0x80004001L)


(setq DDERR_UNSUPPORTEDFORMAT 0x887601FE)


(setq DDERR_UNSUPPORTEDMASK 0x88760208)


(setq DDERR_INVALIDSTREAM 0x88760209)


(setq DDERR_VERTICALBLANKINPROGRESS 0x88760219)


(setq DDERR_WASSTILLDRAWING 0x8876021C)



(setq DDERR_DDSCAPSCOMPLEXREQUIRED 0x8876021E)



(setq DDERR_XALIGN 0x88760230)


(setq DDERR_INVALIDDIRECTDRAWGUID 0x88760231)


(setq DDERR_DIRECTDRAWALREADYCREATED 0x88760232)


(setq DDERR_NODIRECTDRAWHW 0x88760233)


(setq DDERR_PRIMARYSURFACEALREADYEXISTS 0x88760234)


(setq DDERR_NOEMULATION 0x88760235)


(setq DDERR_REGIONTOOSMALL 0x88760236)


(setq DDERR_CLIPPERISUSINGHWND 0x88760237)


(setq DDERR_NOCLIPPERATTACHED 0x88760238)


(setq DDERR_NOHWND 0x88760239)


(setq DDERR_HWNDSUBCLASSED 0x8876023A)


(setq DDERR_HWNDALREADYSET 0x8876023B)


(setq DDERR_NOPALETTEATTACHED 0x8876023C)


(setq DDERR_NOPALETTEHW 0x8876023D)


(setq DDERR_BLTFASTCANTCLIP 0x8876023E)


(setq DDERR_NOBLTHW 0x8876023F)


(setq DDERR_NODDROPSHW 0x88760240)


(setq DDERR_OVERLAYNOTVISIBLE 0x88760241)


(setq DDERR_NOOVERLAYDEST 0x88760242)


(setq DDERR_INVALIDPOSITION 0x88760243)


(setq DDERR_NOTAOVERLAYSURFACE 0x88760244)


(setq DDERR_EXCLUSIVEMODEALREADYSET 0x88760245)


(setq DDERR_NOTFLIPPABLE 0x88760246)


(setq DDERR_CANTDUPLICATE 0x88760247)


(setq DDERR_NOTLOCKED 0x88760248)


(setq DDERR_CANTCREATEDC 0x88760249)


(setq DDERR_NODC 0x8876024A)


(setq DDERR_WRONGMODE 0x8876024B)


(setq DDERR_IMPLICITLYCREATED 0x8876024C)


(setq DDERR_NOTPALETTIZED 0x8876024D)



(setq DDERR_UNSUPPORTEDMODE 0x8876024E)


(setq DDERR_NOMIPMAPHW 0x8876024F)


(setq DDERR_INVALIDSURFACETYPE 0x88760250)



(setq DDERR_NOOPTIMIZEHW 0x88760258)


(setq DDERR_NOTLOADED 0x88760259)


(setq DDERR_NOFOCUSWINDOW 0x8876025A)


(setq DDERR_NOTONMIPMAPSUBLEVEL 0x8876025B)


(setq DDERR_DCALREADYCREATED 0x8876026C)


(setq DDERR_NONONLOCALVIDMEM 0x88760276)


(setq DDERR_CANTPAGELOCK 0x88760280)



(setq DDERR_CANTPAGEUNLOCK 0x88760294)


(setq DDERR_NOTPAGELOCKED 0x887602A8)


(setq DDERR_MOREDATA 0x887602B2)


(setq DDERR_EXPIRED 0x887602B3)


(setq DDERR_TESTFINISHED 0x887602B4)


(setq DDERR_NEWMODE 0x887602B5)


(setq DDERR_D3DNOTINITIALIZED 0x887602B6)


(setq DDERR_VIDEONOTACTIVE 0x887602B7)


(setq DDERR_NOMONITORINFORMATION 0x887602B8)


(setq DDERR_NODRIVERSUPPORT 0x887602B9)


(setq DDERR_DEVICEDOESNTOWNSURFACE 0x887602BB)




(setq DDERR_NOTINITIALIZED 0x800401F0L)

;; };

;; typedef struct _DDARGB { {
(struct '_DDARGB
    BYTE ; blue
    BYTE ; green
    BYTE ; red
    BYTE ; alpha
)
(setq DDARGB _DDARGB)
;; } DDARGB

(setq LPDDARGB (string DDARGB "*"))


;; typedef struct _DDRGBA { {
(struct '_DDRGBA
    BYTE ; red
    BYTE ; green
    BYTE ; blue
    BYTE ; alpha
)
(setq DDRGBA _DDRGBA)
;; } DDRGBA

(setq LPDDRGBA (string DDRGBA "*"))



;; typedef struct _DDCOLORKEY { {
(struct '_DDCOLORKEY
    DWORD ; dwColorSpaceLowValue;
    DWORD ; dwColorSpaceHighValue;
    } ; DDCOLORKEY

(setq LPDDCOLORKEY (string DDCOLORKEY "*"))


;; typedef struct _DDBLTFX { {
(struct '_DDBLTFX
    DWORD ; dwSize;
    DWORD ; dwDDFX;
    DWORD ; dwROP;
    DWORD ; dwDDROP;
    DWORD ; dwRotationAngle;
    DWORD ; dwZBufferOpCode;
    DWORD ; dwZBufferLow;
    DWORD ; dwZBufferHigh;
    DWORD ; dwZBufferBaseDest;
    DWORD ; dwZDestConstBitDepth;
    DWORD ; dwZDestConst;
    DWORD ; dwZSrcConstBitDepth;
    DWORD ; dwZSrcConst;
    DWORD ; dwAlphaEdgeBlendBitDepth;
    DWORD ; dwAlphaEdgeBlend;
    DWORD ; dwReserved
    DWORD ; dwAlphaDestConstBitDepth;
    DWORD ; dwAlphaDestConst;
    DWORD ; dwAlphaSrcConstBitDepth;
    DWORD ; dwAlphaSrcConst;
    DWORD ; dwFillColorDepthPixel;
    DDCOLORKEY ; ddckDestColorkey;
    DDCOLORKEY ; ddckSrcColorkey;
)
(setq DDBLTFX _DDBLTFX)
;; } DDBLTFX

(setq LPDDBLTFX (string DDBLTFX "*"))

(setq LPDDCAPS LPVOID)


;; typedef struct _DDSCAPS { {
(struct '_DDSCAPS
    DWORD ; dwCaps;
)
(setq DDSCAPS _DDSCAPS)
;; } DDSCAPS

(setq LPDDSCAPS (string DDSCAPS "*"))



;; typedef struct _DDOSCAPS { {
(struct '_DDOSCAPS
    DWORD ; dwCaps;
)
(setq DDOSCAPS _DDOSCAPS)
;; } DDOSCAPS

(setq LPDDOSCAPS (string DDOSCAPS "*"))


;; typedef struct _DDSCAPSEX { {
(struct '_DDSCAPSEX
    DWORD ; dwCaps2
    DWORD ; dwCaps3
    DWORD ; dwCaps4
)
(setq DDSCAPSEX _DDSCAPSEX)
;; } DDSCAPSEX
(setq LPDDSCAPSEX (string _DDSCAPSEX "*"))


;; typedef struct _DDSCAPS2 { {
(struct '_DDSCAPS2
    DWORD ; dwCaps;
    DWORD ; dwCaps2
    DWORD ; dwCaps3
    DWORD ; dwCaps4
)
(setq DDSCAPS2 _DDSCAPS2)
;; } DDSCAPS2

(setq LPDDSCAPS2 (string DDSCAPS2 "*"))

;; typedef struct _DDCAPS_DX1 { {
(struct '_DDCAPS_DX1
    DWORD ; dwSize;
    DWORD ; dwCaps;
    DWORD ; dwCaps2;
    DWORD ; dwCKeyCaps;
    DWORD ; dwFXCaps;
    DWORD ; dwFXAlphaCaps;
    DWORD ; dwPalCaps;
    DWORD ; dwSVCaps;
    DWORD ; dwAlphaBltConstBitDepths;
    DWORD ; dwAlphaBltPixelBitDepths;
    DWORD ; dwAlphaBltSurfaceBitDepths;
    DWORD ; dwAlphaOverlayConstBitDepths;
    DWORD ; dwAlphaOverlayPixelBitDepths;
    DWORD ; dwAlphaOverlaySurfaceBitDepths;
    DWORD ; dwZBufferBitDepths;
    DWORD ; dwVidMemTotal;
    DWORD ; dwVidMemFree;
    DWORD ; dwMaxVisibleOverlays;
    DWORD ; dwCurrVisibleOverlays;
    DWORD ; dwNumFourCCCodes;
    DWORD ; dwAlignBoundarySrc;
    DWORD ; dwAlignSizeSrc;
    DWORD ; dwAlignBoundaryDest;
    DWORD ; dwAlignSizeDest;
    DWORD ; dwAlignStrideAlign;
    DWORD ; dwRops;
    DDSCAPS ; ddsCaps;
    DWORD ; dwMinOverlayStretch;
    DWORD ; dwMaxOverlayStretch;
    DWORD ; dwMinLiveVideoStretch;
    DWORD ; dwMaxLiveVideoStretch;
    DWORD ; dwMinHwCodecStretch;
    DWORD ; dwMaxHwCodecStretch;
    DWORD ; dwReserved1;
    DWORD ; dwReserved2;
    DWORD ; dwReserved3;
)
(setq DDCAPS_DX1 _DDCAPS_DX1)
;; } DDCAPS_DX1
(setq LPDDCAPS_DX1 (string _DDCAPS_DX1 "*"))


;; typedef struct _DDCAPS_DX3 { {
(struct '_DDCAPS_DX3
    DWORD ; dwSize;
    DWORD ; dwCaps;
    DWORD ; dwCaps2;
    DWORD ; dwCKeyCaps;
    DWORD ; dwFXCaps;
    DWORD ; dwFXAlphaCaps;
    DWORD ; dwPalCaps;
    DWORD ; dwSVCaps;
    DWORD ; dwAlphaBltConstBitDepths;
    DWORD ; dwAlphaBltPixelBitDepths;
    DWORD ; dwAlphaBltSurfaceBitDepths;
    DWORD ; dwAlphaOverlayConstBitDepths;
    DWORD ; dwAlphaOverlayPixelBitDepths;
    DWORD ; dwAlphaOverlaySurfaceBitDepths;
    DWORD ; dwZBufferBitDepths;
    DWORD ; dwVidMemTotal;
    DWORD ; dwVidMemFree;
    DWORD ; dwMaxVisibleOverlays;
    DWORD ; dwCurrVisibleOverlays;
    DWORD ; dwNumFourCCCodes;
    DWORD ; dwAlignBoundarySrc;
    DWORD ; dwAlignSizeSrc;
    DWORD ; dwAlignBoundaryDest;
    DWORD ; dwAlignSizeDest;
    DWORD ; dwAlignStrideAlign;
    DWORD ; dwRops;
    DDSCAPS ; ddsCaps;
    DWORD ; dwMinOverlayStretch;
    DWORD ; dwMaxOverlayStretch;
    DWORD ; dwMinLiveVideoStretch;
    DWORD ; dwMaxLiveVideoStretch;
    DWORD ; dwMinHwCodecStretch;
    DWORD ; dwMaxHwCodecStretch;
    DWORD ; dwReserved1;
    DWORD ; dwReserved2;
    DWORD ; dwReserved3;
    DWORD ; dwSVBCaps;
    DWORD ; dwSVBCKeyCaps;
    DWORD ; dwSVBFXCaps;
    DWORD ; dwSVBRops
    DWORD ; dwVSBCaps;
    DWORD ; dwVSBCKeyCaps;
    DWORD ; dwVSBFXCaps;
    DWORD ; dwVSBRops
    DWORD ; dwSSBCaps;
    DWORD ; dwSSBCKeyCaps;
    DWORD ; dwSSBFXCaps;
    DWORD ; dwSSBRops
    DWORD ; dwReserved4;
    DWORD ; dwReserved5;
    DWORD ; dwReserved6;
)
(setq DDCAPS_DX3 _DDCAPS_DX3)
;; } DDCAPS_DX3
(setq LPDDCAPS_DX3 (string _DDCAPS_DX3 "*"))


;; typedef struct _DDCAPS_DX5 { {
(struct '_DDCAPS_DX5
 DWORD   dwSize;                 
 DWORD   dwCaps;                 
 DWORD   dwCaps2;                
 DWORD   dwCKeyCaps;             
 DWORD   dwFXCaps;               
 DWORD   dwFXAlphaCaps;          
 DWORD   dwPalCaps;              
 DWORD   dwSVCaps;               
 DWORD   dwAlphaBltConstBitDepths;       
 DWORD   dwAlphaBltPixelBitDepths;       
 DWORD   dwAlphaBltSurfaceBitDepths;     
 DWORD   dwAlphaOverlayConstBitDepths;   
 DWORD   dwAlphaOverlayPixelBitDepths;   
 DWORD   dwAlphaOverlaySurfaceBitDepths; 
 DWORD   dwZBufferBitDepths;             
 DWORD   dwVidMemTotal;          
 DWORD   dwVidMemFree;           
 DWORD   dwMaxVisibleOverlays;   
 DWORD   dwCurrVisibleOverlays;  
 DWORD   dwNumFourCCCodes;       
 DWORD   dwAlignBoundarySrc;     
 DWORD   dwAlignSizeSrc;         
 DWORD   dwAlignBoundaryDest;    
 DWORD   dwAlignSizeDest;        
 DWORD   dwAlignStrideAlign;     
 DWORD   dwRops;   
 DDSCAPS ddsCaps;                
 DWORD   dwMinOverlayStretch;    
 DWORD   dwMaxOverlayStretch;    
 DWORD   dwMinLiveVideoStretch;  
 DWORD   dwMaxLiveVideoStretch;  
 DWORD   dwMinHwCodecStretch;    
 DWORD   dwMaxHwCodecStretch;    
 DWORD   dwReserved1;            
 DWORD   dwReserved2;            
 DWORD   dwReserved3;            
 DWORD   dwSVBCaps;              
 DWORD   dwSVBCKeyCaps;          
 DWORD   dwSVBFXCaps;            
 DWORD   dwSVBRops;
 DWORD   dwVSBCaps;              
 DWORD   dwVSBCKeyCaps;          
 DWORD   dwVSBFXCaps;            
 DWORD   dwVSBRops;
 DWORD   dwSSBCaps;              
 DWORD   dwSSBCKeyCaps;          
 DWORD   dwSSBFXCaps;            
 DWORD   dwSSBRops;

 DWORD   dwMaxVideoPorts;        
 DWORD   dwCurrVideoPorts;       
 DWORD   dwSVBCaps2;             
 DWORD   dwNLVBCaps;               
 DWORD   dwNLVBCaps2;              
 DWORD   dwNLVBCKeyCaps;           
 DWORD   dwNLVBFXCaps;             
 DWORD   dwNLVBRops; 
)
(setq DDCAPS_DX5 _DDCAPS_DX5)
;; } DDCAPS_DX5
(setq LPDDCAPS_DX5 (string _DDCAPS_DX5 "*"))

;; typedef struct _DDCAPS_DX6 { {
(struct '_DDCAPS_DX6
 DWORD   dwSize;                 
 DWORD   dwCaps;                 
 DWORD   dwCaps2;                
 DWORD   dwCKeyCaps;             
 DWORD   dwFXCaps;               
 DWORD   dwFXAlphaCaps;          
 DWORD   dwPalCaps;              
 DWORD   dwSVCaps;               
 DWORD   dwAlphaBltConstBitDepths;       
 DWORD   dwAlphaBltPixelBitDepths;       
 DWORD   dwAlphaBltSurfaceBitDepths;     
 DWORD   dwAlphaOverlayConstBitDepths;   
 DWORD   dwAlphaOverlayPixelBitDepths;   
 DWORD   dwAlphaOverlaySurfaceBitDepths; 
 DWORD   dwZBufferBitDepths;             
 DWORD   dwVidMemTotal;          
 DWORD   dwVidMemFree;           
 DWORD   dwMaxVisibleOverlays;   
 DWORD   dwCurrVisibleOverlays;  
 DWORD   dwNumFourCCCodes;       
 DWORD   dwAlignBoundarySrc;     
 DWORD   dwAlignSizeSrc;         
 DWORD   dwAlignBoundaryDest;    
 DWORD   dwAlignSizeDest;        
 DWORD   dwAlignStrideAlign;     
 DWORD   dwRops;   
 DDSCAPS ddsOldCaps;             
 DWORD   dwMinOverlayStretch;    
 DWORD   dwMaxOverlayStretch;    
 DWORD   dwMinLiveVideoStretch;  
 DWORD   dwMaxLiveVideoStretch;  
 DWORD   dwMinHwCodecStretch;    
 DWORD   dwMaxHwCodecStretch;    
 DWORD   dwReserved1;            
 DWORD   dwReserved2;            
 DWORD   dwReserved3;            
 DWORD   dwSVBCaps;              
 DWORD   dwSVBCKeyCaps;          
 DWORD   dwSVBFXCaps;            
 DWORD   dwSVBRops;
 DWORD   dwVSBCaps;              
 DWORD   dwVSBCKeyCaps;          
 DWORD   dwVSBFXCaps;            
 DWORD   dwVSBRops;
 DWORD   dwSSBCaps;              
 DWORD   dwSSBCKeyCaps;          
 DWORD   dwSSBFXCaps;            
 DWORD   dwSSBRops;
 DWORD   dwMaxVideoPorts;        
 DWORD   dwCurrVideoPorts;       
 DWORD   dwSVBCaps2;             
 DWORD   dwNLVBCaps;               
 DWORD   dwNLVBCaps2;              
 DWORD   dwNLVBCKeyCaps;           
 DWORD   dwNLVBFXCaps;             
 DWORD   dwNLVBRops; 

 DDSCAPS2 ddsCaps;               
)
(setq DDCAPS_DX6 _DDCAPS_DX6)
;; } DDCAPS_DX6
(setq LPDDCAPS_DX6 (string _DDCAPS_DX6 "*"))

;; typedef struct _DDCAPS_DX7 { {
(struct '_DDCAPS_DX7
 DWORD   dwSize;                 
 DWORD   dwCaps;                 
 DWORD   dwCaps2;                
 DWORD   dwCKeyCaps;             
 DWORD   dwFXCaps;               
 DWORD   dwFXAlphaCaps;          
 DWORD   dwPalCaps;              
 DWORD   dwSVCaps;               
 DWORD   dwAlphaBltConstBitDepths;       
 DWORD   dwAlphaBltPixelBitDepths;       
 DWORD   dwAlphaBltSurfaceBitDepths;     
 DWORD   dwAlphaOverlayConstBitDepths;   
 DWORD   dwAlphaOverlayPixelBitDepths;   
 DWORD   dwAlphaOverlaySurfaceBitDepths; 
 DWORD   dwZBufferBitDepths;             
 DWORD   dwVidMemTotal;          
 DWORD   dwVidMemFree;           
 DWORD   dwMaxVisibleOverlays;   
 DWORD   dwCurrVisibleOverlays;  
 DWORD   dwNumFourCCCodes;       
 DWORD   dwAlignBoundarySrc;     
 DWORD   dwAlignSizeSrc;         
 DWORD   dwAlignBoundaryDest;    
 DWORD   dwAlignSizeDest;        
 DWORD   dwAlignStrideAlign;     
 DWORD   dwRops;   
 DDSCAPS ddsOldCaps;             
 DWORD   dwMinOverlayStretch;    
 DWORD   dwMaxOverlayStretch;    
 DWORD   dwMinLiveVideoStretch;  
 DWORD   dwMaxLiveVideoStretch;  
 DWORD   dwMinHwCodecStretch;    
 DWORD   dwMaxHwCodecStretch;    
 DWORD   dwReserved1;            
 DWORD   dwReserved2;            
 DWORD   dwReserved3;            
 DWORD   dwSVBCaps;              
 DWORD   dwSVBCKeyCaps;          
 DWORD   dwSVBFXCaps;            
 DWORD   dwSVBRops;
 DWORD   dwVSBCaps;              
 DWORD   dwVSBCKeyCaps;          
 DWORD   dwVSBFXCaps;            
 DWORD   dwVSBRops;
 DWORD   dwSSBCaps;              
 DWORD   dwSSBCKeyCaps;          
 DWORD   dwSSBFXCaps;            
 DWORD   dwSSBRops;
 DWORD   dwMaxVideoPorts;        
 DWORD   dwCurrVideoPorts;       
 DWORD   dwSVBCaps2;             
 DWORD   dwNLVBCaps;               
 DWORD   dwNLVBCaps2;              
 DWORD   dwNLVBCKeyCaps;           
 DWORD   dwNLVBFXCaps;             
 DWORD   dwNLVBRops; 

 DDSCAPS2 ddsCaps;               
)
(setq DDCAPS_DX7 _DDCAPS_DX7)
;; } DDCAPS_DX7
(setq LPDDCAPS_DX7 (string _DDCAPS_DX7 "*"))


;; typedef struct _DDPIXELFORMAT { {
(struct '_DDPIXELFORMAT
    DWORD ; dwSize;
    DWORD ; dwFlags;
    DWORD ; dwFourCC;
    DWORD ; dwRGBBitCountOrDepth;
    DWORD ; dwRBitMask;
    DWORD ; dwGBitMask;
    DWORD ; dwBBitMask;
    DWORD ; dwRGBAlphaBitMask;
)
(setq DDPIXELFORMAT _DDPIXELFORMAT)
;; } DDPIXELFORMAT

(setq LPDDPIXELFORMAT (string DDPIXELFORMAT "*"))


;; typedef struct _DDOVERLAYFX { {
(struct '_DDOVERLAYFX
    DWORD ; dwSize;
    DWORD ; dwAlphaEdgeBlendBitDepth;
    DWORD ; dwAlphaEdgeBlend;
    DWORD ; dwReserved
    DWORD ; dwAlphaDestConstBitDepth;
    DWORD ; dwAlphaDestConst;
    DWORD ; dwAlphaSrcConstBitDepth;
    DWORD ; dwAlphaSrcConst;
    DDCOLORKEY ; dckDestColorkey;
    DDCOLORKEY ; dckSrcColorkey;
    DWORD ; dwDDFX;
    DWORD ; dwFlags;
)
(setq DDOVERLAYFX _DDOVERLAYFX)
;; } DDOVERLAYFX

(setq LPDDOVERLAYFX (string DDOVERLAYFX "*"))



;; typedef struct _DDBLTBATCH { {
(struct '_DDBLTBATCH
    LPRECT ; lprDest
    LPDIRECTDRAWSURFACE ; lpDDSSrc
    LPRECT ; lprSrc
    DWORD ; dwFlags
    LPDDBLTFX ; lpDDBltFx
)
(setq DDBLTBATCH _DDBLTBATCH)
;; } DDBLTBATCH

(setq LPDDBLTBATCH (string DDBLTBATCH "*"))



;; typedef struct _DDGAMMARAMP { {
(struct '_DDGAMMARAMP
    WORD ; red
    WORD ; green
    WORD ; blue
)
(setq DDGAMMARAMP _DDGAMMARAMP)
;; } DDGAMMARAMP
(setq LPDDGAMMARAMP (string DDGAMMARAMP "*"))



;; typedef struct tagDDDEVICEIDENTIFIER { {
(struct 'tagDDDEVICEIDENTIFIER

    char ; szDriver
    char ; szDescription


    LARGE_INTEGER ; liDriverVersion;



    DWORD ; dwVendorId
    DWORD ; dwDeviceId
    DWORD ; dwSubSysId
    DWORD ; dwRevision


    GUID ; guidDeviceIdentifier
)
(setq DDDEVICEIDENTIFIER tagDDDEVICEIDENTIFIER)
;; } DDDEVICEIDENTIFIER
(setq LPDDDEVICEIDENTIFIER (string tagDDDEVICEIDENTIFIER "*"))

;; typedef struct tagDDDEVICEIDENTIFIER2 { {
(struct 'tagDDDEVICEIDENTIFIER2

    char ; szDriver
    char ; szDescription


    LARGE_INTEGER ; liDriverVersion;



    DWORD ; dwVendorId
    DWORD ; dwDeviceId
    DWORD ; dwSubSysId
    DWORD ; dwRevision


    GUID ; guidDeviceIdentifier


    DWORD ; dwWHQLLevel

)
(setq DDDEVICEIDENTIFIER2 tagDDDEVICEIDENTIFIER2)
;; } DDDEVICEIDENTIFIER2
(setq LPDDDEVICEIDENTIFIER2 (string tagDDDEVICEIDENTIFIER2 "*"))




;; typedef struct _DDSURFACEDESC { {
(struct '_DDSURFACEDESC
    DWORD ; dwSize;
    DWORD ; dwFlags;
    DWORD ; dwHeight;
    DWORD ; dwWidth;
    LONG ; lPitch;
    DWORD ; dwBackBufferCount;
    DWORD ; dwMipMapCount;
    DWORD ; dwAlphaBitDepth;
    DWORD ; dwReserved;
    LPVOID ; lpSurface;
    DDCOLORKEY ; ddckCKDestOverlay;
    DDCOLORKEY ; ddckCKDestBlt;
    DDCOLORKEY ; ddckCKSrcOverlay;
    DDCOLORKEY ; ddckCKSrcBlt;
    DDPIXELFORMAT ; ddpfPixelFormat;
    DDSCAPS ; ddsCaps;
)
(setq DDSURFACEDESC _DDSURFACEDESC)
;; } DDSURFACEDESC


;; typedef struct _DDSURFACEDESC2 { {
(struct '_DDSURFACEDESC2
    DWORD ; dwSize;
    DWORD ; dwFlags;
    DWORD ; dwHeight;
    DWORD ; dwWidth;
    LONG ; lPitch;
    DWORD ; dwBackBufferCount;
    DWORD ; dwMipMapCount;
    DWORD ; dwAlphaBitDepth;
    DWORD ; dwReserved;
    LPVOID ; lpSurface;
    DDCOLORKEY ; ddckCKDestOverlay;
    DDCOLORKEY ; ddckCKDestBlt;
    DDCOLORKEY ; ddckCKSrcOverlay;
    DDCOLORKEY ; ddckCKSrcBlt;
    DDPIXELFORMAT ; ddpfPixelFormat;
    DDSCAPS2 ; ddsCaps;
    DWORD ; dwTextureStage;
)
(setq DDSURFACEDESC2 _DDSURFACEDESC2)
;; } DDSURFACEDESC2



;; typedef struct _DDOPTSURFACEDESC { {
(struct '_DDOPTSURFACEDESC
    DWORD ; dwSize;
    DirectDrawOptSurfaceDescFlags ; dwFlags;
    DDSCAPS2 ; ddSCaps;
    DDOSCAPS ; ddOSCaps;
    GUID ; guid;
    DWORD ; dwCompressionRatio;
)
(setq DDOPTSURFACEDESC _DDOPTSURFACEDESC)
;; } DDOPTSURFACEDESC


;; typedef struct _DDCOLORCONTROL { {
(struct '_DDCOLORCONTROL
    DWORD ; dwSize
    DirectDrawColorControlFlags ; dwFlags
    LONG ; lBrightness
    LONG ; lContrast
    LONG ; lHue
    LONG ; lSaturation
    LONG ; lSharpness
    LONG ; lGamma
    LONG ; lColorEnable
    DWORD ; dwReserved1
)
(setq DDCOLORCONTROL _DDCOLORCONTROL)
;; } DDCOLORCONTROL




;; interface IDirectDraw : IUnknown
;; {
;;          DDRESULT Compact(
;;     
;; );
;;     DDRESULT CreateClipper(
;;      DWORD dwFlags,
;;       LPDIRECTDRAWCLIPPER* lplpDDClipper,
;;      IUnknown * pUnkOuter 
;; );
;;     DDRESULT CreatePalette(
;;      DirectDrawPaletteCapsFlags dwFlags,
;;      LPPALETTEENTRY lpDDColorArray,
;;       LPDIRECTDRAWPALETTE* lplpDDPalette,
;;      IUnknown * pUnkOuter
;; );
;;     DDRESULT CreateSurface(
;;       LPDDSURFACEDESC lpDDSurfaceDesc,
;;       LPDIRECTDRAWSURFACE* lplpDDSurface,
;;      IUnknown * pUnkOuter
;; );
;;     DDRESULT DuplicateSurface(
;;      LPDIRECTDRAWSURFACE lpDDSurface,
;;       LPDIRECTDRAWSURFACE* lplpDupDDSurface 
;; );
;;     DDRESULT EnumDisplayModes(
;;      DirectDrawEnumDisplayModesFlags dwFlags,
;;      LPDDSURFACEDESC lpDDSurfaceDesc,
;;      LPVOID lpContext,
;;      LPDDENUMMODESCALLBACK lpEnumModesCallback 
;; );
;;     DDRESULT EnumSurfaces(
;;      DirectDrawEnumSurfacesFlags dwFlags,
;;      LPDDSURFACEDESC lpDDSurfaceDesc,
;;      LPVOID lpContext,
;;      LPDDENUMSURFACESCALLBACK lpEnumSurfacesCallback  
;; );
;;     DDRESULT FlipToGDISurface(
;;     
;; );
;;     DDRESULT GetCaps(
;;       LPDDCAPS lpDDDriverCaps,
;;       LPDDCAPS lpDDHELCaps
;; );
;;     DDRESULT GetDisplayMode(
;;       LPDDSURFACEDESC lpDDSurfaceDesc 
;; );
;;     DDRESULT GetFourCCCodes(
;;        LPDWORD lpNumCodes,
;;      LPDWORD lpCodes 
;; );
;;     DDRESULT GetGDISurface(
;;       LPDIRECTDRAWSURFACE* lplpGDIDDSSurface 
;; );
;;     DDRESULT GetMonitorFrequency(
;;       LPDWORD lpdwFrequency 
;; );
;;     DDRESULT GetScanLine(
;;       LPDWORD lpdwScanLine 
;; );
;;     DDRESULT GetVerticalBlankStatus(
;;       LPBOOL lpbIsInVB 
;; );
;;     DDRESULT Initialize(
;;      GUID* lpGUID 
;; );
;;     DDRESULT RestoreDisplayMode(
;;     
;; );
;;     DDRESULT SetCooperativeLevel(
;;      HWND hWnd,
;;      DirectDrawSetCooperativeLevelFlags dwFlags  
;; );
;;     DDRESULT SetDisplayMode(
;;      DWORD dwWidth,
;;      DWORD dwHeight,
;;      DWORD dwBPP 
;; );
;;     DDRESULT WaitForVerticalBlank(
;;      DirectDrawWaitForVerticalBlankFlags dwFlags,
;;      HANDLE hEvent 
;; );
;; };

;; interface IDirectDraw2 : IUnknown
;; {
;;          DDRESULT Compact(
;;     
;; );
;;     DDRESULT CreateClipper(
;;      DWORD dwFlags,
;;       LPDIRECTDRAWCLIPPER* lplpDDClipper,
;;      IUnknown * pUnkOuter 
;; );
;;     DDRESULT CreatePalette(
;;      DirectDrawPaletteCapsFlags dwFlags,
;;      LPPALETTEENTRY lpDDColorArray,
;;       LPDIRECTDRAWPALETTE* lplpDDPalette,
;;      IUnknown * pUnkOuter
;; );
;;     DDRESULT CreateSurface(
;;       LPDDSURFACEDESC lpDDSurfaceDesc,
;;       LPDIRECTDRAWSURFACE* lplpDDSurface,
;;      IUnknown * pUnkOuter
;; );
;;     DDRESULT DuplicateSurface(
;;      LPDIRECTDRAWSURFACE lpDDSurface,
;;       LPDIRECTDRAWSURFACE* lplpDupDDSurface 
;; );
;;     DDRESULT EnumDisplayModes(
;;      DirectDrawEnumDisplayModesFlags dwFlags,
;;      LPDDSURFACEDESC lpDDSurfaceDesc,
;;      LPVOID lpContext,
;;      LPDDENUMMODESCALLBACK lpEnumModesCallback 
;; );
;;     DDRESULT EnumSurfaces(
;;      DirectDrawEnumSurfacesFlags dwFlags,
;;      LPDDSURFACEDESC lpDDSurfaceDesc,
;;      LPVOID lpContext,
;;      LPDDENUMSURFACESCALLBACK lpEnumSurfacesCallback  
;; );
;;     DDRESULT FlipToGDISurface(
;;     
;; );
;;     DDRESULT GetCaps(
;;       LPDDCAPS lpDDDriverCaps,
;;       LPDDCAPS lpDDHELCaps
;; );
;;     DDRESULT GetDisplayMode(
;;       LPDDSURFACEDESC lpDDSurfaceDesc 
;; );
;;     DDRESULT GetFourCCCodes(
;;        LPDWORD lpNumCodes,
;;      LPDWORD lpCodes 
;; );
;;     DDRESULT GetGDISurface(
;;       LPDIRECTDRAWSURFACE* lplpGDIDDSSurface 
;; );
;;     DDRESULT GetMonitorFrequency(
;;       LPDWORD lpdwFrequency 
;; );
;;     DDRESULT GetScanLine(
;;       LPDWORD lpdwScanLine 
;; );
;;     DDRESULT GetVerticalBlankStatus(
;;       LPBOOL lpbIsInVB 
;; );
;;     DDRESULT Initialize(
;;      GUID* lpGUID 
;; );
;;     DDRESULT RestoreDisplayMode(
;;     
;; );
;;     DDRESULT SetCooperativeLevel(
;;      HWND hWnd,
;;      DirectDrawSetCooperativeLevelFlags dwFlags  
;; );
;;     DDRESULT SetDisplayMode(
;;      DWORD dwWidth,
;;      DWORD dwHeight,
;;      DWORD dwBPP,
;;      DWORD dwRefreshRate,
;;      DirectDrawSetDisplayModeFlags dwFlags 
;; );
;;     DDRESULT WaitForVerticalBlank(
;;      DirectDrawWaitForVerticalBlankFlags dwFlags,
;;      HANDLE hEvent 
;; );
;;          DDRESULT GetAvailableVidMem(
;;      LPDDSCAPS lpDDSCaps,
;;       LPDWORD lpdwTotal,
;;       LPDWORD lpdwFree 
;; );
;; };

;; interface IDirectDraw4 : IUnknown
;; {
;;          DDRESULT Compact(
;;     
;; );
;;     DDRESULT CreateClipper(
;;      DWORD dwFlags,
;;       LPDIRECTDRAWCLIPPER* lplpDDClipper,
;;      IUnknown * pUnkOuter 
;; );
;;     DDRESULT CreatePalette(
;;      DirectDrawPaletteCapsFlags dwFlags,
;;      LPPALETTEENTRY lpDDColorArray,
;;       LPDIRECTDRAWPALETTE* lplpDDPalette,
;;      IUnknown * pUnkOuter
;; );
;;     DDRESULT CreateSurface(
;;       LPDDSURFACEDESC2 lpDDSurfaceDesc,
;;       LPDIRECTDRAWSURFACE4* lplpDDSurface,
;;      IUnknown * pUnkOuter
;; );
;;     DDRESULT DuplicateSurface(
;;      LPDIRECTDRAWSURFACE4 lpDDSurface,
;;       LPDIRECTDRAWSURFACE4* lplpDupDDSurface 
;; );
;;     DDRESULT EnumDisplayModes(
;;      DirectDrawEnumDisplayModesFlags dwFlags,
;;      LPDDSURFACEDESC2 lpDDSurfaceDesc,
;;      LPVOID lpContext,
;;      LPDDENUMMODESCALLBACK2 lpEnumModesCallback 
;; );
;;     DDRESULT EnumSurfaces(
;;      DirectDrawEnumSurfacesFlags dwFlags,
;;      LPDDSURFACEDESC2 lpDDSurfaceDesc,
;;      LPVOID lpContext,
;;      LPDDENUMSURFACESCALLBACK2 lpEnumSurfacesCallback  
;; );
;;     DDRESULT FlipToGDISurface(
;;     
;; );
;;     DDRESULT GetCaps(
;;       LPDDCAPS lpDDDriverCaps,
;;       LPDDCAPS lpDDHELCaps
;; );
;;     DDRESULT GetDisplayMode(
;;       LPDDSURFACEDESC2 lpDDSurfaceDesc 
;; );
;;     DDRESULT GetFourCCCodes(
;;        LPDWORD lpNumCodes,
;;      LPDWORD lpCodes 
;; );
;;     DDRESULT GetGDISurface(
;;       LPDIRECTDRAWSURFACE4* lplpGDIDDSSurface 
;; );
;;     DDRESULT GetMonitorFrequency(
;;       LPDWORD lpdwFrequency 
;; );
;;     DDRESULT GetScanLine(
;;       LPDWORD lpdwScanLine 
;; );
;;     DDRESULT GetVerticalBlankStatus(
;;       LPBOOL lpbIsInVB 
;; );
;;     DDRESULT Initialize(
;;      GUID* lpGUID 
;; );
;;     DDRESULT RestoreDisplayMode(
;;     
;; );
;;     DDRESULT SetCooperativeLevel(
;;      HWND hWnd,
;;      DirectDrawSetCooperativeLevelFlags dwFlags  
;; );
;;     DDRESULT SetDisplayMode(
;;      DWORD dwWidth,
;;      DWORD dwHeight,
;;      DWORD dwBPP,
;;      DWORD dwRefreshRate,
;;      DirectDrawSetDisplayModeFlags dwFlags 
;; );
;;     DDRESULT WaitForVerticalBlank(
;;      DirectDrawWaitForVerticalBlankFlags dwFlags,
;;      HANDLE hEvent 
;; );
;;          DDRESULT GetAvailableVidMem(
;;      LPDDSCAPS2 lpDDSCaps,
;;       LPDWORD lpdwTotal,
;;       LPDWORD lpdwFree 
;; );
;;          DDRESULT GetSurfaceFromDC(
;;      HDC hdc,
;;       LPDIRECTDRAWSURFACE4* lpDDSurface 
;; );
;;     DDRESULT RestoreAllSurfaces(
;;     
;; );
;;     DDRESULT TestCooperativeLevel(
;;     
;; );
;;     DDRESULT GetDeviceIdentifier(
;;      LPDDDEVICEIDENTIFIER lpDDDI,
;;      DirectDrawGetDeviceIdentifierFlags dwFlags 
;; );
;; };

;; interface IDirectDraw7 : IUnknown
;; {
;;          DDRESULT Compact(
;;     
;; );
;;     DDRESULT CreateClipper(
;;      DWORD dwFlags,
;;       LPDIRECTDRAWCLIPPER* lplpDDClipper,
;;      IUnknown * pUnkOuter 
;; );
;;     DDRESULT CreatePalette(
;;      DirectDrawPaletteCapsFlags dwFlags,
;;      LPPALETTEENTRY lpDDColorArray,
;;       LPDIRECTDRAWPALETTE* lplpDDPalette,
;;      IUnknown * pUnkOuter
;; );
;;     DDRESULT CreateSurface(
;;       LPDDSURFACEDESC2 lpDDSurfaceDesc,
;;       LPDIRECTDRAWSURFACE7* lplpDDSurface,
;;      IUnknown * pUnkOuter
;; );
;;     DDRESULT DuplicateSurface(
;;      LPDIRECTDRAWSURFACE4 lpDDSurface,
;;       LPDIRECTDRAWSURFACE7* lplpDupDDSurface 
;; );
;;     DDRESULT EnumDisplayModes(
;;      DirectDrawEnumDisplayModesFlags dwFlags,
;;      LPDDSURFACEDESC2 lpDDSurfaceDesc,
;;      LPVOID lpContext,
;;      LPDDENUMMODESCALLBACK2 lpEnumModesCallback 
;; );
;;     DDRESULT EnumSurfaces(
;;      DirectDrawEnumSurfacesFlags dwFlags,
;;      LPDDSURFACEDESC2 lpDDSurfaceDesc,
;;      LPVOID lpContext,
;;      LPDDENUMSURFACESCALLBACK2 lpEnumSurfacesCallback  
;; );
;;     DDRESULT FlipToGDISurface(
;;     
;; );
;;     DDRESULT GetCaps(
;;       LPDDCAPS lpDDDriverCaps,
;;       LPDDCAPS lpDDHELCaps
;; );
;;     DDRESULT GetDisplayMode(
;;       LPDDSURFACEDESC2 lpDDSurfaceDesc 
;; );
;;     DDRESULT GetFourCCCodes(
;;        LPDWORD lpNumCodes,
;;      LPDWORD lpCodes 
;; );
;;     DDRESULT GetGDISurface(
;;       LPDIRECTDRAWSURFACE7* lplpGDIDDSSurface 
;; );
;;     DDRESULT GetMonitorFrequency(
;;       LPDWORD lpdwFrequency 
;; );
;;     DDRESULT GetScanLine(
;;       LPDWORD lpdwScanLine 
;; );
;;     DDRESULT GetVerticalBlankStatus(
;;       LPBOOL lpbIsInVB 
;; );
;;     DDRESULT Initialize(
;;      GUID* lpGUID 
;; );
;;     DDRESULT RestoreDisplayMode(
;;     
;; );
;;     DDRESULT SetCooperativeLevel(
;;      HWND hWnd,
;;      DirectDrawSetCooperativeLevelFlags dwFlags  
;; );
;;     DDRESULT SetDisplayMode(
;;      DWORD dwWidth,
;;      DWORD dwHeight,
;;      DWORD dwBPP,
;;      DWORD dwRefreshRate,
;;      DirectDrawSetDisplayModeFlags dwFlags 
;; );
;;     DDRESULT WaitForVerticalBlank(
;;      DirectDrawWaitForVerticalBlankFlags dwFlags,
;;      HANDLE hEvent 
;; );
;;          DDRESULT GetAvailableVidMem(
;;      LPDDSCAPS2 lpDDSCaps,
;;       LPDWORD lpdwTotal,
;;       LPDWORD lpdwFree 
;; );
;;          DDRESULT GetSurfaceFromDC(
;;      HDC hdc,
;;       LPDIRECTDRAWSURFACE7* lpDDSurface 
;; );
;;     DDRESULT RestoreAllSurfaces(
;;     
;; );
;;     DDRESULT TestCooperativeLevel(
;;     
;; );
;;     DDRESULT GetDeviceIdentifier(
;;      LPDDDEVICEIDENTIFIER2 lpDDDI,
;;      DirectDrawGetDeviceIdentifierFlags dwFlags 
;; );
;;          DDRESULT StartModeTest(
;;      LPSIZE lpModesToTest,
;;      DWORD dwNumEntries,
;;      DirectDrawStartModeTestFlags dwFlags
;; );
;;     DDRESULT EvaluateMode(
;;      DirectDrawEvaluateModeFlags dwFlags,
;;       DWORD* pSecondsUntilTimeout 
;; );
;; };

;; interface IDirectDrawPalette : IUnknown
;; {
;;          DDRESULT GetCaps(
;;       DirectDrawPaletteCapsFlags* lpdwCaps
;; );
;;     DDRESULT GetEntries(
;;      DWORD dwFlags,
;;      DWORD dwBase,
;;      DWORD dwNumEntries,
;;      LPPALETTEENTRY lpEntries 
;; );
;;     DDRESULT Initialize(
;;      LPDIRECTDRAW lpDD,
;;      DWORD dwFlags,
;;      LPPALETTEENTRY lpDDColorTable 
;; );
;;     DDRESULT SetEntries(
;;      DWORD dwFlags,
;;      DWORD dwStartingEntry,
;;      DWORD dwCount,
;;      LPPALETTEENTRY lpEntries 
;; );
;; };


;; interface IDirectDrawClipper : IUnknown
;; {
;;          DDRESULT GetClipList(
;;      LPRECT lpRect,
;;      LPRGNDATA lpClipList,
;;       LPDWORD lpdwSize 
;; );
;;     DDRESULT GetHWnd(
;;       HWND* hWnd
;; );
;;     DDRESULT Initialize(
;;      LPDIRECTDRAW lpDD,
;;      DWORD dwFlags 
;; );
;;     DDRESULT IsClipListChanged(
;;       BOOL* lpbChanged 
;; );
;;     DDRESULT SetClipList(
;;      LPRGNDATA lpClipList,
;;      DWORD dwFlags 
;; );
;;     DDRESULT SetHWnd(
;;      DWORD dwFlags,
;;      HWND hWnd 
;; );
;; };


;; interface IDirectDrawSurface : IUnknown
;; {
;;          DDRESULT AddAttachedSurface(
;;      LPDIRECTDRAWSURFACE lpDDSAttachedSurface 
;; );
;;     DDRESULT AddOverlayDirtyRect(
;;      LPRECT lpRect 
;; );
;;     DDRESULT Blt(
;;      LPRECT lpDestRect,
;;      LPDIRECTDRAWSURFACE lpDDSrcSurface,
;;      LPRECT lpSrcRect,
;;      DirectDrawBltFlags dwFlags,
;;      LPDDBLTFX lpDDBltFx 
;; );
;;     DDRESULT BltBatch(
;;      LPDDBLTBATCH lpDDBltBatch,
;;      DWORD dwCount,
;;      DWORD dwFlags 
;; );
;;     DDRESULT BltFast(
;;      DWORD dwX,
;;      DWORD dwY,
;;      LPDIRECTDRAWSURFACE lpDDSrcSurface,
;;      LPRECT lpSrcRect,
;;      DWORD dwTrans 
;; );
;;     DDRESULT DeleteAttachedSurface(
;;      DWORD dwFlags,
;;      LPDIRECTDRAWSURFACE lpDDSurface 
;; );
;;     DDRESULT EnumAttachedSurfaces(
;;      LPVOID lpContext,
;;      LPDDENUMSURFACESCALLBACK lpEnumSurfacesCallback 
;; );
;;     DDRESULT EnumOverlayZOrders(
;;      DirectDrawEnumOverlayZOrderFlags dwFlags,
;;      LPVOID lpContext,
;;      LPDDENUMSURFACESCALLBACK lpfnCallback 
;; );
;;     DDRESULT Flip(
;;      LPDIRECTDRAWSURFACE lpDDSurfaceTargetOverride,
;;      DirectDrawFlipFlags dwFlags 
;; );
;;     DDRESULT GetAttachedSurface(
;;      LPDDSCAPS lpDDSCaps,
;;       LPDIRECTDRAWSURFACE* lplpDDAttachedSurface
;; );
;;     DDRESULT GetBltStatus(
;;      DirectDrawGetBltStatusFlags dwFlags 
;; );
;;     DDRESULT GetCaps(
;;       LPDDSCAPS lpDDSCaps 
;; );
;;     DDRESULT GetClipper(
;;       LPDIRECTDRAWCLIPPER* lplpDDClipper 
;; );
;;     DDRESULT GetColorKey(
;;      DirectDrawSurfaceSetGetColorKeyFlags dwFlags,
;;       LPDDCOLORKEY lpDDColorKey 
;; );
;;     DDRESULT GetDC(
;;       HDC* phDC 
;; );
;;     DDRESULT GetFlipStatus(
;;      DWORD dwFlags 
;; );
;;     DDRESULT GetOverlayPosition(
;;       LPLONG lplX,
;;       LPLONG lplY 
;; );
;;     DDRESULT GetPalette(
;;       LPDIRECTDRAWPALETTE* lplpDDPalette 
;; );
;;     DDRESULT GetPixelFormat(
;;       LPDDPIXELFORMAT lpDDPixelFormat 
;; );
;;     DDRESULT GetSurfaceDesc(
;;       LPDDSURFACEDESC lpDDSurfaceDesc 
;; );
;;     DDRESULT Initialize(
;;      LPDIRECTDRAW lpDD,
;;      LPDDSURFACEDESC lpDDSurfaceDesc 
;; );
;;     DDRESULT IsLost(
;;     
;; );
;;     DDRESULT Lock(
;;      LPRECT lpDestRect,
;;     LPDDSURFACEDESC lpDDSurfaceDesc,
;;      DirectDrawSurfaceLockFlags dwFlags,
;;      HANDLE hEvent 
;; );
;;     DDRESULT ReleaseDC(
;;      HDC hDC 
;; );
;;     DDRESULT Restore(
;;     
;; );
;;     DDRESULT SetClipper(
;;      LPDIRECTDRAWCLIPPER lpDDClipper 
;; );
;;     DDRESULT SetColorKey(
;;      DirectDrawSurfaceSetGetColorKeyFlags dwFlags,
;;       LPDDCOLORKEY lpDDColorKey 
;; );
;;     DDRESULT SetOverlayPosition(
;;      LONG lX,
;;      LONG lY 
;; );
;;     DDRESULT SetPalette(
;;      LPDIRECTDRAWPALETTE lpDDPalette 
;; );
;;     DDRESULT Unlock(
;;      LPVOID lp 
;; );
;;     DDRESULT UpdateOverlay(
;;      LPRECT lpSrcRect,
;;      LPDIRECTDRAWSURFACE lpDDDestSurface,
;;      LPRECT lpDestRect,
;;      DirectDrawSurfaceOverlayFlags dwFlags,
;;      LPDDOVERLAYFX lpDDOverlayFx 
;; );
;;     DDRESULT UpdateOverlayDisplay(
;;      DWORD dwFlags 
;; );
;;     DDRESULT UpdateOverlayZOrder(
;;      DirectDrawUpdateOverlayZOrderFlags dwFlags,
;;      LPDIRECTDRAWSURFACE lpDDSReference 
;; );
;; };


;; interface IDirectDrawSurface2 : IUnknown
;; {
;;          DDRESULT AddAttachedSurface(
;;      LPDIRECTDRAWSURFACE2 lpDDSAttachedSurface 
;; );
;;     DDRESULT AddOverlayDirtyRect(
;;      LPRECT lpRect 
;; );
;;     DDRESULT Blt(
;;      LPRECT lpDestRect,
;;      LPDIRECTDRAWSURFACE2 lpDDSrcSurface,
;;      LPRECT lpSrcRect,
;;      DirectDrawBltFlags dwFlags,
;;      LPDDBLTFX lpDDBltFx 
;; );
;;     DDRESULT BltBatch(
;;      LPDDBLTBATCH lpDDBltBatch,
;;      DWORD dwCount,
;;      DWORD dwFlags 
;; );
;;     DDRESULT BltFast(
;;      DWORD dwX,
;;      DWORD dwY,
;;      LPDIRECTDRAWSURFACE2 lpDDSrcSurface,
;;      LPRECT lpSrcRect,
;;      DWORD dwTrans 
;; );
;;     DDRESULT DeleteAttachedSurface(
;;      DWORD dwFlags,
;;      LPDIRECTDRAWSURFACE2 lpDDSurface 
;; );
;;     DDRESULT EnumAttachedSurfaces(
;;      LPVOID lpContext,
;;      LPDDENUMSURFACESCALLBACK lpEnumSurfacesCallback 
;; );
;;     DDRESULT EnumOverlayZOrders(
;;      DirectDrawEnumOverlayZOrderFlags dwFlags,
;;      LPVOID lpContext,
;;      LPDDENUMSURFACESCALLBACK lpfnCallback 
;; );
;;     DDRESULT Flip(
;;      LPDIRECTDRAWSURFACE2 lpDDSurfaceTargetOverride,
;;      DirectDrawFlipFlags dwFlags 
;; );
;;     DDRESULT GetAttachedSurface(
;;      LPDDSCAPS lpDDSCaps,
;;       LPDIRECTDRAWSURFACE2* lplpDDAttachedSurface
;; );
;;     DDRESULT GetBltStatus(
;;      DirectDrawGetBltStatusFlags dwFlags 
;; );
;;     DDRESULT GetCaps(
;;       LPDDSCAPS lpDDSCaps 
;; );
;;     DDRESULT GetClipper(
;;       LPDIRECTDRAWCLIPPER* lplpDDClipper 
;; );
;;     DDRESULT GetColorKey(
;;      DirectDrawSurfaceSetGetColorKeyFlags dwFlags,
;;       LPDDCOLORKEY lpDDColorKey 
;; );
;;     DDRESULT GetDC(
;;       HDC* phDC 
;; );
;;     DDRESULT GetFlipStatus(
;;      DWORD dwFlags 
;; );
;;     DDRESULT GetOverlayPosition(
;;       LPLONG lplX,
;;       LPLONG lplY 
;; );
;;     DDRESULT GetPalette(
;;       LPDIRECTDRAWPALETTE* lplpDDPalette 
;; );
;;     DDRESULT GetPixelFormat(
;;       LPDDPIXELFORMAT lpDDPixelFormat 
;; );
;;     DDRESULT GetSurfaceDesc(
;;       LPDDSURFACEDESC lpDDSurfaceDesc 
;; );
;;     DDRESULT Initialize(
;;      LPDIRECTDRAW lpDD,
;;      LPDDSURFACEDESC lpDDSurfaceDesc 
;; );
;;     DDRESULT IsLost(
;;     
;; );
;;     DDRESULT Lock(
;;      LPRECT lpDestRect,
;;     LPDDSURFACEDESC lpDDSurfaceDesc,
;;      DirectDrawSurfaceLockFlags dwFlags,
;;      HANDLE hEvent 
;; );
;;     DDRESULT ReleaseDC(
;;      HDC hDC 
;; );
;;     DDRESULT Restore(
;;     
;; );
;;     DDRESULT SetClipper(
;;      LPDIRECTDRAWCLIPPER lpDDClipper 
;; );
;;     DDRESULT SetColorKey(
;;      DirectDrawSurfaceSetGetColorKeyFlags dwFlags,
;;       LPDDCOLORKEY lpDDColorKey 
;; );
;;     DDRESULT SetOverlayPosition(
;;      LONG lX,
;;      LONG lY 
;; );
;;     DDRESULT SetPalette(
;;      LPDIRECTDRAWPALETTE lpDDPalette 
;; );
;;     DDRESULT Unlock(
;;      LPVOID lp 
;; );
;;     DDRESULT UpdateOverlay(
;;      LPRECT lpSrcRect,
;;      LPDIRECTDRAWSURFACE2 lpDDDestSurface,
;;      LPRECT lpDestRect,
;;      DirectDrawSurfaceOverlayFlags dwFlags,
;;      LPDDOVERLAYFX lpDDOverlayFx 
;; );
;;     DDRESULT UpdateOverlayDisplay(
;;      DWORD dwFlags 
;; );
;;     DDRESULT UpdateOverlayZOrder(
;;      DirectDrawUpdateOverlayZOrderFlags dwFlags,
;;      LPDIRECTDRAWSURFACE2 lpDDSReference 
;; );
;;          DDRESULT GetDDInterface(
;;       IUnknown* lplpDD 
;; );
;;     DDRESULT PageLock(
;;      DWORD dwFlags 
;; );
;;     DDRESULT PageUnlock(
;;      DWORD dwFlags 
;; );
;; };


;; interface IDirectDrawSurface3 : IUnknown
;; {
;;          DDRESULT AddAttachedSurface(
;;      LPDIRECTDRAWSURFACE3 lpDDSAttachedSurface 
;; );
;;     DDRESULT AddOverlayDirtyRect(
;;      LPRECT lpRect 
;; );
;;     DDRESULT Blt(
;;      LPRECT lpDestRect,
;;      LPDIRECTDRAWSURFACE3 lpDDSrcSurface,
;;      LPRECT lpSrcRect,
;;      DirectDrawBltFlags dwFlags,
;;      LPDDBLTFX lpDDBltFx 
;; );
;;     DDRESULT BltBatch(
;;      LPDDBLTBATCH lpDDBltBatch,
;;      DWORD dwCount,
;;      DWORD dwFlags 
;; );
;;     DDRESULT BltFast(
;;      DWORD dwX,
;;      DWORD dwY,
;;      LPDIRECTDRAWSURFACE3 lpDDSrcSurface,
;;      LPRECT lpSrcRect,
;;      DWORD dwTrans 
;; );
;;     DDRESULT DeleteAttachedSurface(
;;      DWORD dwFlags,
;;      LPDIRECTDRAWSURFACE3 lpDDSurface 
;; );
;;     DDRESULT EnumAttachedSurfaces(
;;      LPVOID lpContext,
;;      LPDDENUMSURFACESCALLBACK lpEnumSurfacesCallback 
;; );
;;     DDRESULT EnumOverlayZOrders(
;;      DirectDrawEnumOverlayZOrderFlags dwFlags,
;;      LPVOID lpContext,
;;      LPDDENUMSURFACESCALLBACK lpfnCallback 
;; );
;;     DDRESULT Flip(
;;      LPDIRECTDRAWSURFACE3 lpDDSurfaceTargetOverride,
;;      DirectDrawFlipFlags dwFlags 
;; );
;;     DDRESULT GetAttachedSurface(
;;      LPDDSCAPS lpDDSCaps,
;;       LPDIRECTDRAWSURFACE3* lplpDDAttachedSurface
;; );
;;     DDRESULT GetBltStatus(
;;      DirectDrawGetBltStatusFlags dwFlags 
;; );
;;     DDRESULT GetCaps(
;;       LPDDSCAPS lpDDSCaps 
;; );
;;     DDRESULT GetClipper(
;;       LPDIRECTDRAWCLIPPER* lplpDDClipper 
;; );
;;     DDRESULT GetColorKey(
;;      DirectDrawSurfaceSetGetColorKeyFlags dwFlags,
;;       LPDDCOLORKEY lpDDColorKey 
;; );
;;     DDRESULT GetDC(
;;       HDC* phDC 
;; );
;;     DDRESULT GetFlipStatus(
;;      DWORD dwFlags 
;; );
;;     DDRESULT GetOverlayPosition(
;;       LPLONG lplX,
;;       LPLONG lplY 
;; );
;;     DDRESULT GetPalette(
;;       LPDIRECTDRAWPALETTE* lplpDDPalette 
;; );
;;     DDRESULT GetPixelFormat(
;;       LPDDPIXELFORMAT lpDDPixelFormat 
;; );
;;     DDRESULT GetSurfaceDesc(
;;       LPDDSURFACEDESC lpDDSurfaceDesc 
;; );
;;     DDRESULT Initialize(
;;      LPDIRECTDRAW lpDD,
;;      LPDDSURFACEDESC lpDDSurfaceDesc 
;; );
;;     DDRESULT IsLost(
;;     
;; );
;;     DDRESULT Lock(
;;      LPRECT lpDestRect,
;;     LPDDSURFACEDESC lpDDSurfaceDesc,
;;      DirectDrawSurfaceLockFlags dwFlags,
;;      HANDLE hEvent 
;; );
;;     DDRESULT ReleaseDC(
;;      HDC hDC 
;; );
;;     DDRESULT Restore(
;;     
;; );
;;     DDRESULT SetClipper(
;;      LPDIRECTDRAWCLIPPER lpDDClipper 
;; );
;;     DDRESULT SetColorKey(
;;      DirectDrawSurfaceSetGetColorKeyFlags dwFlags,
;;       LPDDCOLORKEY lpDDColorKey 
;; );
;;     DDRESULT SetOverlayPosition(
;;      LONG lX,
;;      LONG lY 
;; );
;;     DDRESULT SetPalette(
;;      LPDIRECTDRAWPALETTE lpDDPalette 
;; );
;;     DDRESULT Unlock(
;;      LPVOID lp 
;; );
;;     DDRESULT UpdateOverlay(
;;      LPRECT lpSrcRect,
;;      LPDIRECTDRAWSURFACE3 lpDDDestSurface,
;;      LPRECT lpDestRect,
;;      DirectDrawSurfaceOverlayFlags dwFlags,
;;      LPDDOVERLAYFX lpDDOverlayFx 
;; );
;;     DDRESULT UpdateOverlayDisplay(
;;      DWORD dwFlags 
;; );
;;     DDRESULT UpdateOverlayZOrder(
;;      DirectDrawUpdateOverlayZOrderFlags dwFlags,
;;      LPDIRECTDRAWSURFACE3 lpDDSReference 
;; );
;;          DDRESULT GetDDInterface(
;;       IUnknown* lplpDD 
;; );
;;     DDRESULT PageLock(
;;      DWORD dwFlags 
;; );
;;     DDRESULT PageUnlock(
;;      DWORD dwFlags 
;; );
;;          DDRESULT SetSurfaceDesc(
;;      LPDDSURFACEDESC lpDDSD,
;;      DWORD dwFlags 
;; );
;; };



;; interface IDirectDrawSurface4 : IUnknown
;; {
;;          DDRESULT AddAttachedSurface(
;;      LPDIRECTDRAWSURFACE4 lpDDSAttachedSurface 
;; );
;;     DDRESULT AddOverlayDirtyRect(
;;      LPRECT lpRect 
;; );
;;     DDRESULT Blt(
;;      LPRECT lpDestRect,
;;      LPDIRECTDRAWSURFACE4 lpDDSrcSurface,
;;      LPRECT lpSrcRect,
;;      DirectDrawBltFlags dwFlags,
;;      LPDDBLTFX lpDDBltFx 
;; );
;;     DDRESULT BltBatch(
;;      LPDDBLTBATCH lpDDBltBatch,
;;      DWORD dwCount,
;;      DWORD dwFlags 
;; );
;;     DDRESULT BltFast(
;;      DWORD dwX,
;;      DWORD dwY,
;;      LPDIRECTDRAWSURFACE4 lpDDSrcSurface,
;;      LPRECT lpSrcRect,
;;      DWORD dwTrans 
;; );
;;     DDRESULT DeleteAttachedSurface(
;;      DWORD dwFlags,
;;      LPDIRECTDRAWSURFACE4 lpDDSurface 
;; );
;;     DDRESULT EnumAttachedSurfaces(
;;      LPVOID lpContext,
;;      LPDDENUMSURFACESCALLBACK2 lpEnumSurfacesCallback 
;; );
;;     DDRESULT EnumOverlayZOrders(
;;      DirectDrawEnumOverlayZOrderFlags dwFlags,
;;      LPVOID lpContext,
;;      LPDDENUMSURFACESCALLBACK2 lpfnCallback 
;; );
;;     DDRESULT Flip(
;;      LPDIRECTDRAWSURFACE4 lpDDSurfaceTargetOverride,
;;      DirectDrawFlipFlags dwFlags 
;; );
;;     DDRESULT GetAttachedSurface(
;;      LPDDSCAPS lpDDSCaps,
;;       LPDIRECTDRAWSURFACE4* lplpDDAttachedSurface
;; );
;;     DDRESULT GetBltStatus(
;;      DirectDrawGetBltStatusFlags dwFlags 
;; );
;;     DDRESULT GetCaps(
;;       LPDDSCAPS lpDDSCaps 
;; );
;;     DDRESULT GetClipper(
;;       LPDIRECTDRAWCLIPPER* lplpDDClipper 
;; );
;;     DDRESULT GetColorKey(
;;      DirectDrawSurfaceSetGetColorKeyFlags dwFlags,
;;       LPDDCOLORKEY lpDDColorKey 
;; );
;;     DDRESULT GetDC(
;;       HDC* phDC 
;; );
;;     DDRESULT GetFlipStatus(
;;      DWORD dwFlags 
;; );
;;     DDRESULT GetOverlayPosition(
;;       LPLONG lplX,
;;       LPLONG lplY 
;; );
;;     DDRESULT GetPalette(
;;       LPDIRECTDRAWPALETTE* lplpDDPalette 
;; );
;;     DDRESULT GetPixelFormat(
;;       LPDDPIXELFORMAT lpDDPixelFormat 
;; );
;;     DDRESULT GetSurfaceDesc(
;;       LPDDSURFACEDESC2 lpDDSurfaceDesc 
;; );
;;     DDRESULT Initialize(
;;      LPDIRECTDRAW lpDD,
;;      LPDDSURFACEDESC2 lpDDSurfaceDesc 
;; );
;;     DDRESULT IsLost(
;;     
;; );
;;     DDRESULT Lock(
;;      LPRECT lpDestRect,
;;     LPDDSURFACEDESC2 lpDDSurfaceDesc,
;;      DirectDrawSurfaceLockFlags dwFlags,
;;      HANDLE hEvent 
;; );
;;     DDRESULT ReleaseDC(
;;      HDC hDC 
;; );
;;     DDRESULT Restore(
;;     
;; );
;;     DDRESULT SetClipper(
;;      LPDIRECTDRAWCLIPPER lpDDClipper 
;; );
;;     DDRESULT SetColorKey(
;;      DirectDrawSurfaceSetGetColorKeyFlags dwFlags,
;;       LPDDCOLORKEY lpDDColorKey 
;; );
;;     DDRESULT SetOverlayPosition(
;;      LONG lX,
;;      LONG lY 
;; );
;;     DDRESULT SetPalette(
;;      LPDIRECTDRAWPALETTE lpDDPalette 
;; );
;;     DDRESULT Unlock(
;;      LPVOID lp 
;; );
;;     DDRESULT UpdateOverlay(
;;      LPRECT lpSrcRect,
;;      LPDIRECTDRAWSURFACE4 lpDDDestSurface,
;;      LPRECT lpDestRect,
;;      DirectDrawSurfaceOverlayFlags dwFlags,
;;      LPDDOVERLAYFX lpDDOverlayFx 
;; );
;;     DDRESULT UpdateOverlayDisplay(
;;      DWORD dwFlags 
;; );
;;     DDRESULT UpdateOverlayZOrder(
;;      DirectDrawUpdateOverlayZOrderFlags dwFlags,
;;      LPDIRECTDRAWSURFACE4 lpDDSReference 
;; );
;;          DDRESULT GetDDInterface(
;;       IUnknown* lplpDD 
;; );
;;     DDRESULT PageLock(
;;      DWORD dwFlags 
;; );
;;     DDRESULT PageUnlock(
;;      DWORD dwFlags 
;; );
;;          DDRESULT SetSurfaceDesc(
;;      LPDDSURFACEDESC2 lpDDSD,
;;      DWORD dwFlags 
;; );
;;          DDRESULT SetPrivateData(
;;      REFGUID guidTag,
;;      LPVOID lpData,
;;      DWORD cbSize,
;;      DWORD dwFlags 
;; );
;;     DDRESULT GetPrivateData(
;;      REFGUID guidTag,
;;      LPVOID lpData,
;;       LPDWORD lpcbBufferSize 
;; );
;;     DDRESULT FreePrivateData(
;;      REFGUID guidTag 
;; );
;;     DDRESULT GetUniquenessValue(
;;       LPDWORD lpValue 
;; );
;;     DDRESULT ChangeUniquenessValue(
;;     
;; );
;; };


;; interface IDirectDrawSurface7 : IUnknown
;; {
;;          DDRESULT AddAttachedSurface(
;;      LPDIRECTDRAWSURFACE7 lpDDSAttachedSurface 
;; );
;;     DDRESULT AddOverlayDirtyRect(
;;      LPRECT lpRect 
;; );
;;     DDRESULT Blt(
;;      LPRECT lpDestRect,
;;      LPDIRECTDRAWSURFACE7 lpDDSrcSurface,
;;      LPRECT lpSrcRect,
;;      DirectDrawBltFlags dwFlags,
;;      LPDDBLTFX lpDDBltFx 
;; );
;;     DDRESULT BltBatch(
;;      LPDDBLTBATCH lpDDBltBatch,
;;      DWORD dwCount,
;;      DWORD dwFlags 
;; );
;;     DDRESULT BltFast(
;;      DWORD dwX,
;;      DWORD dwY,
;;      LPDIRECTDRAWSURFACE7 lpDDSrcSurface,
;;      LPRECT lpSrcRect,
;;      DWORD dwTrans 
;; );
;;     DDRESULT DeleteAttachedSurface(
;;      DWORD dwFlags,
;;      LPDIRECTDRAWSURFACE7 lpDDSurface 
;; );
;;     DDRESULT EnumAttachedSurfaces(
;;      LPVOID lpContext,
;;      LPDDENUMSURFACESCALLBACK7 lpEnumSurfacesCallback 
;; );
;;     DDRESULT EnumOverlayZOrders(
;;      DirectDrawEnumOverlayZOrderFlags dwFlags,
;;      LPVOID lpContext,
;;      LPDDENUMSURFACESCALLBACK7 lpfnCallback 
;; );
;;     DDRESULT Flip(
;;      LPDIRECTDRAWSURFACE7 lpDDSurfaceTargetOverride,
;;      DirectDrawFlipFlags dwFlags 
;; );
;;     DDRESULT GetAttachedSurface(
;;      LPDDSCAPS2 lpDDSCaps,
;;       LPDIRECTDRAWSURFACE7* lplpDDAttachedSurface
;; );
;;     DDRESULT GetBltStatus(
;;      DirectDrawGetBltStatusFlags dwFlags 
;; );
;;     DDRESULT GetCaps(
;;       LPDDSCAPS2 lpDDSCaps 
;; );
;;     DDRESULT GetClipper(
;;       LPDIRECTDRAWCLIPPER* lplpDDClipper 
;; );
;;     DDRESULT GetColorKey(
;;      DirectDrawSurfaceSetGetColorKeyFlags dwFlags,
;;       LPDDCOLORKEY lpDDColorKey 
;; );
;;     DDRESULT GetDC(
;;       HDC* phDC 
;; );
;;     DDRESULT GetFlipStatus(
;;      DWORD dwFlags 
;; );
;;     DDRESULT GetOverlayPosition(
;;       LPLONG lplX,
;;       LPLONG lplY 
;; );
;;     DDRESULT GetPalette(
;;       LPDIRECTDRAWPALETTE* lplpDDPalette 
;; );
;;     DDRESULT GetPixelFormat(
;;       LPDDPIXELFORMAT lpDDPixelFormat 
;; );
;;     DDRESULT GetSurfaceDesc(
;;       LPDDSURFACEDESC2 lpDDSurfaceDesc 
;; );
;;     DDRESULT Initialize(
;;      LPDIRECTDRAW lpDD,
;;      LPDDSURFACEDESC2 lpDDSurfaceDesc 
;; );
;;     DDRESULT IsLost(
;;     
;; );
;;     DDRESULT Lock(
;;      LPRECT lpDestRect,
;;     LPDDSURFACEDESC2 lpDDSurfaceDesc,
;;      DirectDrawSurfaceLockFlags dwFlags,
;;      HANDLE hEvent 
;; );
;;     DDRESULT ReleaseDC(
;;      HDC hDC 
;; );
;;     DDRESULT Restore(
;;     
;; );
;;     DDRESULT SetClipper(
;;      LPDIRECTDRAWCLIPPER lpDDClipper 
;; );
;;     DDRESULT SetColorKey(
;;      DirectDrawSurfaceSetGetColorKeyFlags dwFlags,
;;       LPDDCOLORKEY lpDDColorKey 
;; );
;;     DDRESULT SetOverlayPosition(
;;      LONG lX,
;;      LONG lY 
;; );
;;     DDRESULT SetPalette(
;;      LPDIRECTDRAWPALETTE lpDDPalette 
;; );
;;     DDRESULT Unlock(
;;      LPVOID lp 
;; );
;;     DDRESULT UpdateOverlay(
;;      LPRECT lpSrcRect,
;;      LPDIRECTDRAWSURFACE7 lpDDDestSurface,
;;      LPRECT lpDestRect,
;;      DirectDrawSurfaceOverlayFlags dwFlags,
;;      LPDDOVERLAYFX lpDDOverlayFx 
;; );
;;     DDRESULT UpdateOverlayDisplay(
;;      DWORD dwFlags 
;; );
;;     DDRESULT UpdateOverlayZOrder(
;;      DirectDrawUpdateOverlayZOrderFlags dwFlags,
;;      LPDIRECTDRAWSURFACE7 lpDDSReference 
;; );
;;          DDRESULT GetDDInterface(
;;       IUnknown* lplpDD 
;; );
;;     DDRESULT PageLock(
;;      DWORD dwFlags 
;; );
;;     DDRESULT PageUnlock(
;;      DWORD dwFlags 
;; );
;;          DDRESULT SetSurfaceDesc(
;;      LPDDSURFACEDESC2 lpDDSD,
;;      DWORD dwFlags 
;; );
;;          DDRESULT SetPrivateData(
;;      REFGUID guidTag,
;;      LPVOID lpData,
;;      DWORD cbSize,
;;      DWORD dwFlags 
;; );
;;     DDRESULT GetPrivateData(
;;      REFGUID guidTag,
;;      LPVOID lpData,
;;       LPDWORD lpcbBufferSize 
;; );
;;     DDRESULT FreePrivateData(
;;      REFGUID guidTag 
;; );
;;     DDRESULT GetUniquenessValue(
;;       LPDWORD lpValue 
;; );
;;     DDRESULT ChangeUniquenessValue(
;;     
;; );
;;          DDRESULT SetPriority(
;;      DWORD dwPriority 
;; );
;;     DDRESULT GetPriority(
;;       LPDWORD lpdwPriority 
;; );
;;     DDRESULT SetLOD(
;;      DWORD dwMaxLOD 
;; );
;;     DDRESULT GetLOD(
;;       LPDWORD lpdwMaxLOD 
;; );
;; };


;; interface IDirectDrawColorControl : IUnknown
;; {
;;          DDRESULT GetColorControls(
;;      LPDDCOLORCONTROL lpColorControl 
;; );
;;     DDRESULT SetColorControls(
;;      LPDDCOLORCONTROL lpColorControl 
;; );
;; };


;; interface IDirectDrawGammaControl : IUnknown
;; {
;;          DDRESULT GetGammaRamp(
;;      DWORD dwFlags,
;;      LPDDGAMMARAMP lpRampData 
;; );
;;     DDRESULT SetGammaRamp(
;;      DirectDrawSetGammaRampFlags dwFlags,
;;      LPDDGAMMARAMP lpRampData 
;; );
;; };

(import "DDRAW.DLL" "DirectDrawEnumerateW" DDRESULT
    LPDDENUMCALLBACKW ; lpCallback,
    LPVOID ; lpContext
)
(import "DDRAW.DLL" "DirectDrawEnumerateA" DDRESULT
    LPDDENUMCALLBACKA ; lpCallback,
    LPVOID ; lpContext
)
(import "DDRAW.DLL" "DirectDrawEnumerateExW" DDRESULT
    LPDDENUMCALLBACKEXW ; lpCallback,
    LPVOID ; lpContext,
    DirectDrawEnumerateExFlags ; dwFlags
)
(import "DDRAW.DLL" "DirectDrawEnumerateExA" DDRESULT
    LPDDENUMCALLBACKEXA ; lpCallback,
    LPVOID ; lpContext,
    DirectDrawEnumerateExFlags ; dwFlags
)

(import "DDRAW.DLL" "DirectDrawCreate" DDRESULT
    DirectDrawCreateFlags ; lpGUID,
    (string LPDIRECTDRAW "*") ; lplpDD,
    (string IUnknown "*") ; pUnkOuter
)
(import "DDRAW.DLL" "DirectDrawCreateEx" DDRESULT
    DirectDrawCreateFlags ; lpGuid,
    (string COM_INTERFACE_PTR "*") ; lplpDD,
    REFIID ; iid,
    (string IUnknown "*") ; pUnkOuter
)
(import "DDRAW.DLL" "DirectDrawCreateClipper" DDRESULT
    DWORD ; dwFlags,
    (string LPDIRECTDRAWCLIPPER "*") ; lplpDDClipper,
    (string IUnknown "*") ; pUnkOuter
)

(import "DDRAW.DLL" "DllGetClassObject" HRESULT
  REFCLSID rclsid,
     ; 
   REFIID riid,
     ; 
    (string COM_INTERFACE_PTR "*") ; ppv
