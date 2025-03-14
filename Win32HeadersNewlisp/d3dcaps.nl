(context 'WIN32)













(setq LPD3DENUMDEVICESCALLBACK (string VOID "*"))
(setq LPD3DENUMDEVICESCALLBACK7 (string VOID "*"))






;; mask DWORD d3ddevcapsFlags {
(setq D3DDEVCAPS_FLOATTLVERTEX 0x00000001L)
(setq D3DDEVCAPS_SORTINCREASINGZ 0x00000002L)
(setq D3DDEVCAPS_SORTDECREASINGZ 0X00000004L)
(setq D3DDEVCAPS_SORTEXACT 0x00000008L)
(setq D3DDEVCAPS_EXECUTESYSTEMMEMORY 0x00000010L)
(setq D3DDEVCAPS_EXECUTEVIDEOMEMORY 0x00000020L)
(setq D3DDEVCAPS_TLVERTEXSYSTEMMEMORY 0x00000040L)
(setq D3DDEVCAPS_TLVERTEXVIDEOMEMORY 0x00000080L)
(setq D3DDEVCAPS_TEXTURESYSTEMMEMORY 0x00000100L)
(setq D3DDEVCAPS_TEXTUREVIDEOMEMORY 0x00000200L)
(setq D3DDEVCAPS_DRAWPRIMTLVERTEX 0x00000400L)
(setq D3DDEVCAPS_CANRENDERAFTERFLIP 0x00000800L)
(setq D3DDEVCAPS_TEXTURENONLOCALVIDMEM 0x00001000L)
(setq D3DDEVCAPS_DRAWPRIMITIVES2 0x00002000L)
(setq D3DDEVCAPS_SEPARATETEXTUREMEMORIES 0x00004000L)
(setq D3DDEVCAPS_DRAWPRIMITIVES2EX 0x00008000L)
(setq D3DDEVCAPS_HWTRANSFORMANDLIGHT 0x00010000L)
(setq D3DDEVCAPS_CANBLTSYSTONONLOCAL 0x00020000L)
(setq D3DDEVCAPS_HWRASTERIZATION 0x00080000L)
;; };

;; mask DWORD d3dlightingmodelFlags {
(setq D3DLIGHTINGMODEL_RGB 0x00000001L)
(setq D3DLIGHTINGMODEL_MONO 0x00000002L)
;; };

;; mask DWORD d3dddFlags {
(setq D3DDD_COLORMODEL 0x00000001L)
(setq D3DDD_DEVCAPS 0x00000002L)
(setq D3DDD_TRANSFORMCAPS 0x00000004L)
(setq D3DDD_LIGHTINGCAPS 0x00000008L)
(setq D3DDD_BCLIPPING 0x00000010L)
(setq D3DDD_LINECAPS 0x00000020L)
(setq D3DDD_TRICAPS 0x00000040L)
(setq D3DDD_DEVICERENDERBITDEPTH 0x00000080L)
(setq D3DDD_DEVICEZBUFFERBITDEPTH 0x00000100L)
(setq D3DDD_MAXBUFFERSIZE 0x00000200L)
(setq D3DDD_MAXVERTEXCOUNT 0x00000400L)
;; };

;; mask DWORD d3dptexturecapsFlags {
(setq D3DPTEXTURECAPS_PERSPECTIVE 0x00000001L)
(setq D3DPTEXTURECAPS_POW2 0x00000002L)
(setq D3DPTEXTURECAPS_ALPHA 0x00000004L)
(setq D3DPTEXTURECAPS_TRANSPARENCY 0x00000008L)
(setq D3DPTEXTURECAPS_BORDER 0x00000010L)
(setq D3DPTEXTURECAPS_SQUAREONLY 0x00000020L)
(setq D3DPTEXTURECAPS_TEXREPEATNOTSCALEDBYSIZE 0x00000040L)
(setq D3DPTEXTURECAPS_ALPHAPALETTE 0x00000080L)
(setq D3DPTEXTURECAPS_NONPOW2CONDITIONAL 0x00000100L)
(setq D3DPTEXTURECAPS_PROJECTED 0x00000400L)
(setq D3DPTEXTURECAPS_CUBEMAP 0x00000800L)
(setq D3DPTEXTURECAPS_COLORKEYBLEND 0x00001000L)
;; };

;; mask DWORD d3dprastercapsFlags {
(setq D3DPRASTERCAPS_DITHER 0x00000001L)
(setq D3DPRASTERCAPS_ROP2 0x00000002L)
(setq D3DPRASTERCAPS_XOR 0x00000004L)
(setq D3DPRASTERCAPS_PAT 0x00000008L)
(setq D3DPRASTERCAPS_ZTEST 0x00000010L)
(setq D3DPRASTERCAPS_SUBPIXEL 0x00000020L)
(setq D3DPRASTERCAPS_SUBPIXELX 0x00000040L)
(setq D3DPRASTERCAPS_FOGVERTEX 0x00000080L)
(setq D3DPRASTERCAPS_FOGTABLE 0x00000100L)
(setq D3DPRASTERCAPS_STIPPLE 0x00000200L)
(setq D3DPRASTERCAPS_ANTIALIASSORTDEPENDENT 0x00000400L)
(setq D3DPRASTERCAPS_ANTIALIASSORTINDEPENDENT 0x00000800L)
(setq D3DPRASTERCAPS_ANTIALIASEDGES 0x00001000L)
(setq D3DPRASTERCAPS_MIPMAPLODBIAS 0x00002000L)
(setq D3DPRASTERCAPS_ZBIAS 0x00004000L)
(setq D3DPRASTERCAPS_ZBUFFERLESSHSR 0x00008000L)
(setq D3DPRASTERCAPS_FOGRANGE 0x00010000L)
(setq D3DPRASTERCAPS_ANISOTROPY 0x00020000L)
(setq D3DPRASTERCAPS_WBUFFER 0x00040000L)
(setq D3DPRASTERCAPS_TRANSLUCENTSORTINDEPENDENT 0x00080000L)
(setq D3DPRASTERCAPS_WFOG 0x00100000L)
(setq D3DPRASTERCAPS_ZFOG 0x00200000L)
;; };

;; mask DWORD d3dfvfcapsFlags {
(setq D3DFVFCAPS_TEXCOORDCOUNTMASK 0x0000ffffL)
(setq D3DFVFCAPS_DONOTSTRIPELEMENTS 0x00080000L)
;; };

;; mask DWORD d3ddebFlags {
(setq D3DDEB_BUFSIZE 0x00000001l)
(setq D3DDEB_CAPS 0x00000002l)
(setq D3DDEB_LPDATA 0x00000004l)
;; };

;; mask DWORD d3dptblendcapsFlags {
(setq D3DPTBLENDCAPS_DECAL 0x00000001L)
(setq D3DPTBLENDCAPS_MODULATE 0x00000002L)
(setq D3DPTBLENDCAPS_DECALALPHA 0x00000004L)
(setq D3DPTBLENDCAPS_MODULATEALPHA 0x00000008L)
(setq D3DPTBLENDCAPS_DECALMASK 0x00000010L)
(setq D3DPTBLENDCAPS_MODULATEMASK 0x00000020L)
(setq D3DPTBLENDCAPS_COPY 0x00000040L)
(setq D3DPTBLENDCAPS_ADD 0x00000080L)
;; };

;; mask DWORD d3dptaddresscapsFlags {
(setq D3DPTADDRESSCAPS_WRAP 0x00000001L)
(setq D3DPTADDRESSCAPS_MIRROR 0x00000002L)
(setq D3DPTADDRESSCAPS_CLAMP 0x00000004L)
(setq D3DPTADDRESSCAPS_BORDER 0x00000008L)
(setq D3DPTADDRESSCAPS_INDEPENDENTUV 0x00000010L)
;; };

;; mask DWORD d3dptfiltercapsFlags {
(setq D3DPTFILTERCAPS_NEAREST 0x00000001L)
(setq D3DPTFILTERCAPS_LINEAR 0x00000002L)
(setq D3DPTFILTERCAPS_MIPNEAREST 0x00000004L)
(setq D3DPTFILTERCAPS_MIPLINEAR 0x00000008L)
(setq D3DPTFILTERCAPS_LINEARMIPNEAREST 0x00000010L)
(setq D3DPTFILTERCAPS_LINEARMIPLINEAR 0x00000020L)
(setq D3DPTFILTERCAPS_MINFPOINT 0x00000100L)
(setq D3DPTFILTERCAPS_MINFLINEAR 0x00000200L)
(setq D3DPTFILTERCAPS_MINFANISOTROPIC 0x00000400L)
(setq D3DPTFILTERCAPS_MIPFPOINT 0x00010000L)
(setq D3DPTFILTERCAPS_MIPFLINEAR 0x00020000L)
(setq D3DPTFILTERCAPS_MAGFPOINT 0x01000000L)
(setq D3DPTFILTERCAPS_MAGFLINEAR 0x02000000L)
(setq D3DPTFILTERCAPS_MAGFANISOTROPIC 0x04000000L)
(setq D3DPTFILTERCAPS_MAGFAFLATCUBIC 0x08000000L)
(setq D3DPTFILTERCAPS_MAGFGAUSSIANCUBIC 0x10000000L)
;; };

;; mask DWORD d3ddebcapsFlags {
(setq D3DDEBCAPS_SYSTEMMEMORY 0x00000001l)
(setq D3DDEBCAPS_VIDEOMEMORY 0x00000002l)
(setq D3DDEBCAPS_MEM 3)
;; };

;; mask DWORD d3dpcmpcapsFlags {
(setq D3DPCMPCAPS_NEVER 0x00000001L)
(setq D3DPCMPCAPS_LESS 0x00000002L)
(setq D3DPCMPCAPS_EQUAL 0x00000004L)
(setq D3DPCMPCAPS_LESSEQUAL 0x00000008L)
(setq D3DPCMPCAPS_GREATER 0x00000010L)
(setq D3DPCMPCAPS_NOTEQUAL 0x00000020L)
(setq D3DPCMPCAPS_GREATEREQUAL 0x00000040L)
(setq D3DPCMPCAPS_ALWAYS 0x00000080L)
;; };

;; mask DWORD d3dtexopcapsFlags {
(setq D3DTEXOPCAPS_DISABLE 0x00000001L)
(setq D3DTEXOPCAPS_SELECTARG1 0x00000002L)
(setq D3DTEXOPCAPS_SELECTARG2 0x00000004L)
(setq D3DTEXOPCAPS_MODULATE 0x00000008L)
(setq D3DTEXOPCAPS_MODULATE2X 0x00000010L)
(setq D3DTEXOPCAPS_MODULATE4X 0x00000020L)
(setq D3DTEXOPCAPS_ADD 0x00000040L)
(setq D3DTEXOPCAPS_ADDSIGNED 0x00000080L)
(setq D3DTEXOPCAPS_ADDSIGNED2X 0x00000100L)
(setq D3DTEXOPCAPS_SUBTRACT 0x00000200L)
(setq D3DTEXOPCAPS_ADDSMOOTH 0x00000400L)
(setq D3DTEXOPCAPS_BLENDDIFFUSEALPHA 0x00000800L)
(setq D3DTEXOPCAPS_BLENDTEXTUREALPHA 0x00001000L)
(setq D3DTEXOPCAPS_BLENDFACTORALPHA 0x00002000L)
(setq D3DTEXOPCAPS_BLENDTEXTUREALPHAPM 0x00004000L)
(setq D3DTEXOPCAPS_BLENDCURRENTALPHA 0x00008000L)
(setq D3DTEXOPCAPS_PREMODULATE 0x00010000L)
(setq D3DTEXOPCAPS_MODULATEALPHA_ADDCOLOR 0x00020000L)
(setq D3DTEXOPCAPS_MODULATECOLOR_ADDALPHA 0x00040000L)
(setq D3DTEXOPCAPS_MODULATEINVALPHA_ADDCOLOR 0x00080000L)
(setq D3DTEXOPCAPS_MODULATEINVCOLOR_ADDALPHA 0x00100000L)
(setq D3DTEXOPCAPS_BUMPENVMAP 0x00200000L)
(setq D3DTEXOPCAPS_BUMPENVMAPLUMINANCE 0x00400000L)
(setq D3DTEXOPCAPS_DOTPRODUCT3 0x00800000L)
;; };

;; mask DWORD d3dvtxpcapsFlags {
(setq D3DVTXPCAPS_TEXGEN 0x00000001L)
(setq D3DVTXPCAPS_MATERIALSOURCE7 0x00000002L)
(setq D3DVTXPCAPS_VERTEXFOG 0x00000004L)
(setq D3DVTXPCAPS_DIRECTIONALLIGHTS 0x00000008L)
(setq D3DVTXPCAPS_POSITIONALLIGHTS 0x00000010L)
(setq D3DVTXPCAPS_LOCALVIEWER 0x00000020L)
;; };

;; mask DWORD d3dstencilcapsFlags {
(setq D3DSTENCILCAPS_KEEP 0x00000001L)
(setq D3DSTENCILCAPS_ZERO 0x00000002L)
(setq D3DSTENCILCAPS_REPLACE 0x00000004L)
(setq D3DSTENCILCAPS_INCRSAT 0x00000008L)
(setq D3DSTENCILCAPS_DECRSAT 0x00000010L)
(setq D3DSTENCILCAPS_INVERT 0x00000020L)
(setq D3DSTENCILCAPS_INCR 0x00000040L)
(setq D3DSTENCILCAPS_DECR 0x00000080L)
;; };

;; mask DWORD d3dpblendcapsFlags {
(setq D3DPBLENDCAPS_ZERO 0x00000001L)
(setq D3DPBLENDCAPS_ONE 0x00000002L)
(setq D3DPBLENDCAPS_SRCCOLOR 0x00000004L)
(setq D3DPBLENDCAPS_INVSRCCOLOR 0x00000008L)
(setq D3DPBLENDCAPS_SRCALPHA 0x00000010L)
(setq D3DPBLENDCAPS_INVSRCALPHA 0x00000020L)
(setq D3DPBLENDCAPS_DESTALPHA 0x00000040L)
(setq D3DPBLENDCAPS_INVDESTALPHA 0x00000080L)
(setq D3DPBLENDCAPS_DESTCOLOR 0x00000100L)
(setq D3DPBLENDCAPS_INVDESTCOLOR 0x00000200L)
(setq D3DPBLENDCAPS_SRCALPHASAT 0x00000400L)
(setq D3DPBLENDCAPS_BOTHSRCALPHA 0x00000800L)
(setq D3DPBLENDCAPS_BOTHINVSRCALPHA 0x00001000L)
;; };

;; mask DWORD d3dpshadecapsFlags {
(setq D3DPSHADECAPS_COLORFLATMONO 0x00000001L)
(setq D3DPSHADECAPS_COLORFLATRGB 0x00000002L)
(setq D3DPSHADECAPS_COLORGOURAUDMONO 0x00000004L)
(setq D3DPSHADECAPS_COLORGOURAUDRGB 0x00000008L)
(setq D3DPSHADECAPS_COLORPHONGMONO 0x00000010L)
(setq D3DPSHADECAPS_COLORPHONGRGB 0x00000020L)
(setq D3DPSHADECAPS_SPECULARFLATMONO 0x00000040L)
(setq D3DPSHADECAPS_SPECULARFLATRGB 0x00000080L)
(setq D3DPSHADECAPS_SPECULARGOURAUDMONO 0x00000100L)
(setq D3DPSHADECAPS_SPECULARGOURAUDRGB 0x00000200L)
(setq D3DPSHADECAPS_SPECULARPHONGMONO 0x00000400L)
(setq D3DPSHADECAPS_SPECULARPHONGRGB 0x00000800L)
(setq D3DPSHADECAPS_ALPHAFLATBLEND 0x00001000L)
(setq D3DPSHADECAPS_ALPHAFLATSTIPPLED 0x00002000L)
(setq D3DPSHADECAPS_ALPHAGOURAUDBLEND 0x00004000L)
(setq D3DPSHADECAPS_ALPHAGOURAUDSTIPPLED 0x00008000L)
(setq D3DPSHADECAPS_ALPHAPHONGBLEND 0x00010000L)
(setq D3DPSHADECAPS_ALPHAPHONGSTIPPLED 0x00020000L)
(setq D3DPSHADECAPS_FOGFLAT 0x00040000L)
(setq D3DPSHADECAPS_FOGGOURAUD 0x00080000L)
(setq D3DPSHADECAPS_FOGPHONG 0x00100000L)
;; };

;; mask DWORD d3dfdsFlags {
(setq D3DFDS_COLORMODEL 0x00000001L)
(setq D3DFDS_GUID 0x00000002L)
(setq D3DFDS_HARDWARE 0x00000004L)
(setq D3DFDS_TRIANGLES 0x00000008L)
(setq D3DFDS_LINES 0x00000010L)
(setq D3DFDS_MISCCAPS 0x00000020L)
(setq D3DFDS_RASTERCAPS 0x00000040L)
(setq D3DFDS_ZCMPCAPS 0x00000080L)
(setq D3DFDS_ALPHACMPCAPS 0x00000100L)
(setq D3DFDS_SRCBLENDCAPS 0x00000200L)
(setq D3DFDS_DSTBLENDCAPS 0x00000400L)
(setq D3DFDS_SHADECAPS 0x00000800L)
(setq D3DFDS_TEXTURECAPS 0x00001000L)
(setq D3DFDS_TEXTUREFILTERCAPS 0x00002000L)
(setq D3DFDS_TEXTUREBLENDCAPS 0x00004000L)
(setq D3DFDS_TEXTUREADDRESSCAPS 0x00008000L)
;; };

;; mask DWORD d3dlightcapsFlags {
(setq D3DLIGHTCAPS_POINT 0x00000001L)
(setq D3DLIGHTCAPS_SPOT 0x00000002L)
(setq D3DLIGHTCAPS_DIRECTIONAL 0x00000004L)
(setq D3DLIGHTCAPS_PARALLELPOINT 0x00000008L)
(setq D3DLIGHTCAPS_GLSPOT 0x00000010L)
;; };

;; mask DWORD d3dpmisccapsFlags {
(setq D3DPMISCCAPS_MASKPLANES 0x00000001L)
(setq D3DPMISCCAPS_MASKZ 0x00000002L)
(setq D3DPMISCCAPS_LINEPATTERNREP 0x00000004L)
(setq D3DPMISCCAPS_CONFORMANT 0x00000008L)
(setq D3DPMISCCAPS_CULLNONE 0x00000010L)
(setq D3DPMISCCAPS_CULLCW 0x00000020L)
(setq D3DPMISCCAPS_CULLCCW 0x00000040L)
;; };

;; mask DWORD d3dtransformcapsFlags {
(setq D3DTRANSFORMCAPS_CLIP 0x00000001L)
;; };













;; typedef struct _D3DDEVINFO_TEXTUREMANAGER { {
(struct '_D3DDEVINFO_TEXTUREMANAGER
    BOOL ; bThrashing;
    DWORD ; dwApproxBytesDownloaded;
    DWORD ; dwNumEvicts;
    DWORD ; dwNumVidCreates;
    DWORD ; dwNumTexturesUsed;
    DWORD ; dwNumUsedTexInVid;
    DWORD ; dwWorkingSet;
    DWORD ; dwWorkingSetBytes;
    DWORD ; dwTotalManaged;
    DWORD ; dwTotalBytes;
    DWORD ; dwLastPri;
)
(setq D3DDEVINFO_TEXTUREMANAGER _D3DDEVINFO_TEXTUREMANAGER)
;; } D3DDEVINFO_TEXTUREMANAGER
(setq LPD3DDEVINFO_TEXTUREMANAGER (string _D3DDEVINFO_TEXTUREMANAGER "*"))

;; typedef struct _D3DExecuteBufferDesc { {
(struct '_D3DExecuteBufferDesc
    DWORD ; dwSize;
    DWORD ; dwFlags;
    DWORD ; dwCaps;
    DWORD ; dwBufferSize;
    LPVOID ; lpData;
)
(setq D3DEXECUTEBUFFERDESC _D3DExecuteBufferDesc)
;; } D3DEXECUTEBUFFERDESC
(setq LPD3DEXECUTEBUFFERDESC (string _D3DExecuteBufferDesc "*"))

;; typedef struct _D3DLIGHTINGCAPS { {
(struct '_D3DLIGHTINGCAPS
    DWORD ; dwSize
    DWORD ; dwCaps;
    DWORD ; dwLightingModel;
    DWORD ; dwNumLights;
)
(setq D3DLIGHTINGCAPS _D3DLIGHTINGCAPS)
;; } D3DLIGHTINGCAPS
(setq LPD3DLIGHTINGCAPS (string _D3DLIGHTINGCAPS "*"))

;; typedef struct _D3DPrimCaps { {
(struct '_D3DPrimCaps
    DWORD ; dwSize
    DWORD ; dwMiscCaps;
    DWORD ; dwRasterCaps
    DWORD ; dwZCmpCaps
    DWORD ; dwSrcBlendCaps
    DWORD ; dwDestBlendCaps
    DWORD ; dwAlphaCmpCaps
    DWORD ; dwShadeCaps
    DWORD ; dwTextureCaps
    DWORD ; dwTextureFilterCaps
    DWORD ; dwTextureBlendCaps
    DWORD ; dwTextureAddressCaps
    DWORD ; dwStippleWidth;
    DWORD ; dwStippleHeight;
)
(setq D3DPRIMCAPS _D3DPrimCaps)
;; } D3DPRIMCAPS
(setq LPD3DPRIMCAPS (string _D3DPrimCaps "*"))

;; typedef struct _D3DFINDDEVICESEARCH { {
(struct '_D3DFINDDEVICESEARCH
    DWORD ; dwSize
    DWORD ; dwFlags
    BOOL ; bHardware
    D3DCOLORMODEL ; dcmColorModel
    GUID ; guid
    DWORD ; dwCaps
    D3DPRIMCAPS ; dpcPrimCaps
)
(setq D3DFINDDEVICESEARCH _D3DFINDDEVICESEARCH)
;; } D3DFINDDEVICESEARCH
(setq LPD3DFINDDEVICESEARCH (string _D3DFINDDEVICESEARCH "*"))

;; typedef struct _D3DTRANSFORMCAPS { {
(struct '_D3DTRANSFORMCAPS
    DWORD ; dwSize
    DWORD ; dwCaps
)
(setq D3DTRANSFORMCAPS _D3DTRANSFORMCAPS)
;; } D3DTRANSFORMCAPS
(setq LPD3DTRANSFORMCAPS (string _D3DTRANSFORMCAPS "*"))

;; typedef struct _D3DDEVINFO_TEXTURING { {
(struct '_D3DDEVINFO_TEXTURING
    DWORD ; dwNumLoads;
    DWORD ; dwApproxBytesLoaded;
    DWORD ; dwNumPreLoads;
    DWORD ; dwNumSet;
    DWORD ; dwNumCreates;
    DWORD ; dwNumDestroys;
    DWORD ; dwNumSetPriorities;
    DWORD ; dwNumSetLODs;
    DWORD ; dwNumLocks;
    DWORD ; dwNumGetDCs;
)
(setq D3DDEVINFO_TEXTURING _D3DDEVINFO_TEXTURING)
;; } D3DDEVINFO_TEXTURING
(setq LPD3DDEVINFO_TEXTURING (string _D3DDEVINFO_TEXTURING "*"))

;; typedef struct _D3DDeviceDesc { {
(struct '_D3DDeviceDesc
    DWORD ; dwSize;
    DWORD ; dwFlags;
    D3DCOLORMODEL ; dcmColorModel;
    DWORD ; dwDevCaps;
    D3DTRANSFORMCAPS ; dtcTransformCaps;
    BOOL ; bClipping;
    D3DLIGHTINGCAPS ; dlcLightingCaps;
    D3DPRIMCAPS ; dpcLineCaps
    D3DPRIMCAPS ; dpcTriCaps
    DWORD ; dwDeviceRenderBitDepth;
    DWORD ; dwDeviceZBufferBitDepth
    DWORD ; dwMaxBufferSize;
    DWORD ; dwMaxVertexCount;
    DWORD ; dwMinTextureWidth
    DWORD ; dwMinTextureHeight
    DWORD ; dwMaxTextureWidth
    DWORD ; dwMaxTextureHeight
    DWORD ; dwMinStippleWidth
    DWORD ; dwMaxStippleWidth
    DWORD ; dwMinStippleHeight
    DWORD ; dwMaxStippleHeight
    DWORD ; dwMaxTextureRepeat
    DWORD ; dwMaxTextureAspectRatio
    DWORD ; dwMaxAnisotropy

    D3DVALUE ; dvGuardBandLeft
    D3DVALUE ; dvGuardBandTop
    D3DVALUE ; dvGuardBandRight
    D3DVALUE ; dvGuardBandBottom
    D3DVALUE ; dvExtentsAdjust
    DWORD ; dwStencilCaps
    DWORD ; dwFVFCaps
    DWORD ; dwTextureOpCaps
    WORD ; wMaxTextureBlendStages
    WORD ; wMaxSimultaneousTextures
)
(setq D3DDEVICEDESC _D3DDeviceDesc)
;; } D3DDEVICEDESC
(setq LPD3DDEVICEDESC (string _D3DDeviceDesc "*"))
;; typedef struct _D3DDeviceDesc7 { {
(struct '_D3DDeviceDesc7
    DWORD ; dwDevCaps;
    D3DPRIMCAPS ; dpcLineCaps
    D3DPRIMCAPS ; dpcTriCaps
    DWORD ; dwDeviceRenderBitDepth;
    DWORD ; dwDeviceZBufferBitDepth

    DWORD ; dwMinTextureWidth
    DWORD ; dwMinTextureHeight
    DWORD ; dwMaxTextureWidth
    DWORD ; dwMaxTextureHeight

    DWORD ; dwMaxTextureRepeat
    DWORD ; dwMaxTextureAspectRatio
    DWORD ; dwMaxAnisotropy

    D3DVALUE ; dvGuardBandLeft
    D3DVALUE ; dvGuardBandTop
    D3DVALUE ; dvGuardBandRight
    D3DVALUE ; dvGuardBandBottom

    D3DVALUE ; dvExtentsAdjust
    DWORD ; dwStencilCaps

    DWORD ; dwFVFCaps
    DWORD ; dwTextureOpCaps
    WORD ; wMaxTextureBlendStages
    WORD ; wMaxSimultaneousTextures

    DWORD ; dwMaxActiveLights
    D3DVALUE ; dvMaxVertexW
    GUID ; deviceGUID

    WORD ; wMaxUserClipPlanes
    WORD ; wMaxVertexBlendMatrices

    DWORD ; dwVertexProcessingCaps

    DWORD ; dwReserved1
    DWORD ; dwReserved2
    DWORD ; dwReserved3
    DWORD ; dwReserved4
)
(setq D3DDEVICEDESC7 _D3DDeviceDesc7)
;; } D3DDEVICEDESC7
(setq LPD3DDEVICEDESC7 (string _D3DDeviceDesc7 "*"))

;; typedef struct _D3DFINDDEVICERESULT { {
(struct '_D3DFINDDEVICERESULT
    DWORD ; dwSize
    GUID ; guid;
    D3DDEVICEDESC ; ddHwDesc;
    D3DDEVICEDESC ; ddSwDesc;
)
(setq D3DFINDDEVICERESULT _D3DFINDDEVICERESULT)
;; } D3DFINDDEVICERESULT
(setq LPD3DFINDDEVICERESULT (string _D3DFINDDEVICERESULT "*"))





