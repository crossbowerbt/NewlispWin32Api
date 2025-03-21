(context 'WIN32)









;; module D3D8.DLL:
;; category Direct3D:

(load "d3d8types.nl")
(load "d3d8caps.nl")





;; struct __declspec(uuid("1dd9e8da-1c77-4d40-b0cf-98fefdff9512")) IDirect3D8;
(struct 'IDirect3D8)
;; struct __declspec(uuid("7385e5df-8fe8-41d5-86b6-d7b48547b6cf")) IDirect3DDevice8;
(struct 'IDirect3DDevice8)
;; struct __declspec(uuid("1b36bb7b-09b7-410a-b445-7d1430d7b33f")) IDirect3DResource8;
(struct 'IDirect3DResource8)
;; struct __declspec(uuid("b4211cfa-51b9-4a9f-ab78-db99b2bb678e")) IDirect3DBaseTexture8;
(struct 'IDirect3DBaseTexture8)
;; struct __declspec(uuid("e4cdd575-2866-4f01-b12e-7eece1ec9358")) IDirect3DTexture8;
(struct 'IDirect3DTexture8)
;; struct __declspec(uuid("3ee5b968-2aca-4c34-8bb5-7e0c3d19b750")) IDirect3DCubeTexture8;
(struct 'IDirect3DCubeTexture8)
;; struct __declspec(uuid("4b8aaafa-140f-42ba-9131-597eafaa2ead")) IDirect3DVolumeTexture8;
(struct 'IDirect3DVolumeTexture8)
;; struct __declspec(uuid("8aeeeac7-05f9-44d4-b591-000b0df1cb95")) IDirect3DVertexBuffer8;
(struct 'IDirect3DVertexBuffer8)
;; struct __declspec(uuid("0e689c9a-053d-44a0-9d92-db0e3d750f86")) IDirect3DIndexBuffer8;
(struct 'IDirect3DIndexBuffer8)
;; struct __declspec(uuid("b96eebca-b326-4ea5-882f-2ff5bae021dd")) IDirect3DSurface8;
(struct 'IDirect3DSurface8)
;; struct __declspec(uuid("bd7349f5-14f1-42e4-9c79-972380db40c0")) IDirect3DVolume8;
(struct 'IDirect3DVolume8)
;; struct __declspec(uuid("928c088b-76b9-4c6b-a536-a590853876cd")) IDirect3DSwapChain8;
(struct 'IDirect3DSwapChain8)






(setq LPDIRECT3D8 (string IDirect3D8 "*"))
(setq LPDIRECT3DDEVICE8 (string IDirect3DDevice8 "*"))
(setq LPDIRECT3DRESOURCE8 (string IDirect3DResource8 "*"))
(setq LPDIRECT3DBASETEXTURE8 (string IDirect3DBaseTexture8 "*"))
(setq LPDIRECT3DTEXTURE8 (string IDirect3DTexture8 "*"))
(setq LPDIRECT3DVOLUMETEXTURE8 (string IDirect3DVolumeTexture8 "*"))
(setq LPDIRECT3DCUBETEXTURE8 (string IDirect3DCubeTexture8 "*"))
(setq LPDIRECT3DVERTEXBUFFER8 (string IDirect3DVertexBuffer8 "*"))
(setq LPDIRECT3DINDEXBUFFER8 (string IDirect3DIndexBuffer8 "*"))
(setq LPDIRECT3DSURFACE8 (string IDirect3DSurface8 "*"))
(setq LPDIRECT3DVOLUME8 (string IDirect3DVolume8 "*"))
(setq LPDIRECT3DSWAPCHAIN8 (string IDirect3DSwapChain8 "*"))

(setq LPLPDIRECT3D8 (string IDirect3D8 "**"))
(setq LPLPDIRECT3DDEVICE8 (string IDirect3DDevice8 "**"))
(setq LPLPDIRECT3DRESOURCE8 (string IDirect3DResource8 "**"))
(setq LPLPDIRECT3DBASETEXTURE8 (string IDirect3DBaseTexture8 "**"))
(setq LPLPDIRECT3DTEXTURE8 (string IDirect3DTexture8 "**"))
(setq LPLPDIRECT3DVOLUMETEXTURE8 (string IDirect3DVolumeTexture8 "**"))
(setq LPLPDIRECT3DCUBETEXTURE8 (string IDirect3DCubeTexture8 "**"))
(setq LPLPDIRECT3DVERTEXBUFFER8 (string IDirect3DVertexBuffer8 "**"))
(setq LPLPDIRECT3DINDEXBUFFER8 (string IDirect3DIndexBuffer8 "**"))
(setq LPLPDIRECT3DSURFACE8 (string IDirect3DSurface8 "**"))
(setq LPLPDIRECT3DVOLUME8 (string IDirect3DVolume8 "**"))
(setq LPLPDIRECT3DSWAPCHAIN8 (string IDirect3DSwapChain8 "**"))

alias LPDIRECT3D8;
alias LPDIRECT3DDEVICE8;
alias LPDIRECT3DRESOURCE8;
alias LPDIRECT3DBASETEXTURE8;
alias LPDIRECT3DTEXTURE8;
alias LPDIRECT3DVOLUMETEXTURE8;
alias LPDIRECT3DCUBETEXTURE8;
alias LPDIRECT3DVERTEXBUFFER8;
alias LPDIRECT3DINDEXBUFFER8;
alias LPDIRECT3DSURFACE8;
alias LPDIRECT3DVOLUME8;
alias LPDIRECT3DSWAPCHAIN8;
alias LPLPDIRECT3D8;
alias LPLPDIRECT3DDEVICE8;
alias LPLPDIRECT3DRESOURCE8;
alias LPLPDIRECT3DBASETEXTURE8;
alias LPLPDIRECT3DTEXTURE8;
alias LPLPDIRECT3DVOLUMETEXTURE8;
alias LPLPDIRECT3DCUBETEXTURE8;
alias LPLPDIRECT3DVERTEXBUFFER8;
alias LPLPDIRECT3DINDEXBUFFER8;
alias LPLPDIRECT3DSURFACE8;
alias LPLPDIRECT3DVOLUME8;
alias LPLPDIRECT3DSWAPCHAIN8;





;; mask DWORD d3dAdaperIdentifierFlags8 {
(setq D3DENUM_NO_WHQL_LEVEL 0x00000002)
;; };

;; mask DWORD d3dSetPrivateDataFlags8 {
(setq D3DSPD_IUNKNOWN 0x00000001)
;; };

;; mask DWORD d3dSetCursorPositionFlags8 {
(setq D3DCURSOR_IMMEDIATE_UPDATE 0x00000001)
;; };





;; value LONG d3dCreateVersion8 {
(setq DX_VERSION_80 120)
(setq DX_VERSION_81 220)
;; };

;; value UINT d3dMode8 {
(setq D3DCURRENT_DISPLAY_MODE 0x00EFFFFF)
;; };

;; value DWORD d3dSetGammaRamp8 {
(setq D3DSGR_NO_CALIBRATION 0x00000000)
(setq D3DSGR_CALIBRATE 0x00000001)
;; };

;; value DWORD D3DRESULT8 {
(setq D3D_OK 0)
(setq D3DERR_WRONGTEXTUREFORMAT 0x88760818)
(setq D3DERR_UNSUPPORTEDCOLOROPERATION 0x88760819)
(setq D3DERR_UNSUPPORTEDCOLORARG 0x8876081a)
(setq D3DERR_UNSUPPORTEDALPHAOPERATION 0x8876081b)
(setq D3DERR_UNSUPPORTEDALPHAARG 0x8876081c)
(setq D3DERR_TOOMANYOPERATIONS 0x8876081d)
(setq D3DERR_CONFLICTINGTEXTUREFILTER 0x8876081e)
(setq D3DERR_UNSUPPORTEDFACTORVALUE 0x8876081f)
(setq D3DERR_CONFLICTINGRENDERSTATE 0x88760821)
(setq D3DERR_UNSUPPORTEDTEXTUREFILTER 0x88760822)
(setq D3DERR_CONFLICTINGTEXTUREPALETTE 0x88760826)
(setq D3DERR_DRIVERINTERNALERROR 0x88760827)
(setq D3DERR_NOTFOUND 0x88760866)
(setq D3DERR_MOREDATA 0x88760867)
(setq D3DERR_DEVICELOST 0x88760868)
(setq D3DERR_DEVICENOTRESET 0x88760869)
(setq D3DERR_NOTAVAILABLE 0x8876086a)
(setq D3DERR_OUTOFVIDEOMEMORY 0x8876017c)
(setq D3DERR_INVALIDDEVICE 0x8876086b)
(setq D3DERR_INVALIDCALL 0x8876086c)
(setq D3DERR_DRIVERINVALIDCALL 0x8876086d)
;; };





(import "D3D8.DLL" "Direct3DCreate8" LPDIRECT3D8
    d3dCreateVersion8 ; SDKVersion
)






;; interface IDirect3D8 : IUnknown
;; {
;;     D3DRESULT8 RegisterSoftwareDevice(
;;     LPVOID pInitializeFunction
;; );
;;     UINT       GetAdapterCount(
;;     
;; );
;;     D3DRESULT8 GetAdapterIdentifier(
;;     d3dAdapterID8 Adapter,
;;      d3dAdaperIdentifierFlags8 Flags,
;;      LPD3DADAPTER_IDENTIFIER8 pIdentifier
;; );
;;     UINT       GetAdapterModeCount(
;;     d3dAdapterID8 Adapter
;; );
;;     D3DRESULT8 EnumAdapterModes(
;;     d3dAdapterID8 Adapter,
;;      d3dMode8 Mode,
;;      LPD3DDISPLAYMODE pMode
;; );
;;     D3DRESULT8 GetAdapterDisplayMode(
;;     d3dAdapterID8 Adapter,
;;      LPD3DDISPLAYMODE pMode
;; );
;;     D3DRESULT8 CheckDeviceType(
;;     d3dAdapterID8 Adapter,
;;      D3DDEVTYPE CheckType,
;;      D3DFORMAT DisplayFormat,
;;      D3DFORMAT BackBufferFormat,
;;      BOOL Windowed
;; );
;;     D3DRESULT8 CheckDeviceFormat(
;;     d3dAdapterID8 Adapter,
;;      D3DDEVTYPE DeviceType,
;;      D3DFORMAT AdapterFormat,
;;      d3dUsage8 Usage,
;;      D3DRESOURCETYPE RType,
;;      D3DFORMAT CheckFormat
;; );
;;     D3DRESULT8 CheckDeviceMultiSampleType(
;;     d3dAdapterID8 Adapter,
;;      D3DDEVTYPE DeviceType,
;;      D3DFORMAT SurfaceFormat,
;;      BOOL Windowed,
;;      D3DMULTISAMPLE_TYPE MultiSampleType
;; );
;;     D3DRESULT8 CheckDepthStencilMatch(
;;     d3dAdapterID8 Adapter,
;;      D3DDEVTYPE DeviceType,
;;      D3DFORMAT AdapterFormat,
;;      D3DFORMAT RenderTargetFormat,
;;      D3DFORMAT DepthStencilFormat
;; );
;;     D3DRESULT8 GetDeviceCaps(
;;     d3dAdapterID8 Adapter,
;;      D3DDEVTYPE DeviceType,
;;      LPD3DCAPS8 pCaps
;; );
;;     HMONITOR   GetAdapterMonitor(
;;     d3dAdapterID8 Adapter
;; );
;;     D3DRESULT8 CreateDevice(
;;     d3dAdapterID8 Adapter,
;;      D3DDEVTYPE DeviceType,
;;      HWND hFocusWindow,
;;      d3dBehaviorFlags8 BehaviorFlags,
;;       LPD3DPRESENT_PARAMETERS pPresentationParameters,
;;       LPLPDIRECT3DDEVICE8 ppReturnedDeviceInterface
;; );
;; };

;; interface IDirect3DDevice8 : IUnknown
;; {
;;     D3DRESULT8 TestCooperativeLevel(
;;     
;; );
;;     UINT       GetAvailableTextureMem(
;;     
;; );
;;     D3DRESULT8 ResourceManagerDiscardBytes(
;;     DWORD Bytes
;; );
;;     D3DRESULT8 GetDirect3D(
;;      LPLPDIRECT3D8 ppD3D8
;; );
;;     D3DRESULT8 GetDeviceCaps(
;;      LPD3DCAPS8 pCaps
;; );
;;     D3DRESULT8 GetDisplayMode(
;;      LPD3DDISPLAYMODE pMode
;; );
;;     D3DRESULT8 GetCreationParameters(
;;      LPD3DDEVICE_CREATION_PARAMETERS pParameters
;; );
;;     D3DRESULT8 SetCursorProperties(
;;     UINT XHotSpot,
;;      UINT YHotSpot,
;;      LPDIRECT3DSURFACE8 pCursorBitmap
;; );
;;     void       SetCursorPosition(
;;     UINT XScreenSpace,
;;      UINT YScreenSpace,
;;      d3dSetCursorPositionFlags8 Flags
;; );
;;     BOOL       ShowCursor(
;;     BOOL bShow
;; );
;;     D3DRESULT8 CreateAdditionalSwapChain(
;;      LPD3DPRESENT_PARAMETERS pPresentationParameters,
;;      LPLPDIRECT3DSWAPCHAIN8 ppSwapChain
;; );
;;     D3DRESULT8 Reset(
;;      LPD3DPRESENT_PARAMETERS pPresentationParameters
;; );
;;     D3DRESULT8 Present(
;;     RECT* pSourceRect,
;;      RECT* pDestRect,
;;      HWND hDestWindowOverride,
;;      RGNDATA* pDirtyRegion
;; );
;;     D3DRESULT8 GetBackBuffer(
;;     UINT BackBuffer,
;;      D3DBACKBUFFER_TYPE Type,
;;       LPLPDIRECT3DSURFACE8 ppBackBuffer
;; );
;;     D3DRESULT8 GetRasterStatus(
;;     LPD3DRASTER_STATUS pRasterStatus
;; );
;;     void       SetGammaRamp(
;;     d3dSetGammaRamp8 Flags,
;;      LPD3DGAMMARAMP pRamp
;; );
;;     void       GetGammaRamp(
;;      LPD3DGAMMARAMP pRamp
;; );
;;     D3DRESULT8 CreateTexture(
;;     UINT Width,
;;      UINT Height,
;;      UINT Levels,
;;      d3dUsage8 Usage,
;;      D3DFORMAT Format,
;;      D3DPOOL Pool,
;;       LPLPDIRECT3DTEXTURE8 ppTexture
;; );
;;     D3DRESULT8 CreateVolumeTexture(
;;     UINT Width,
;;      UINT Height,
;;      UINT Depth,
;;      UINT Levels,
;;      d3dUsage8 Usage,
;;      D3DFORMAT Format,
;;      D3DPOOL Pool,
;;       LPLPDIRECT3DVOLUMETEXTURE8 ppVolumeTexture
;; );
;;     D3DRESULT8 CreateCubeTexture(
;;     UINT EdgeLength,
;;      UINT Levels,
;;      d3dUsage8 Usage,
;;      D3DFORMAT Format,
;;      D3DPOOL Pool,
;;       LPLPDIRECT3DCUBETEXTURE8 ppCubeTexture
;; );
;;     D3DRESULT8 CreateVertexBuffer(
;;     UINT Length,
;;      d3dUsage8 Usage,
;;      d3dFVF8 FVF,
;;      D3DPOOL Pool,
;;       LPLPDIRECT3DVERTEXBUFFER8 ppVertexBuffer
;; );
;;     D3DRESULT8 CreateIndexBuffer(
;;     UINT Length,
;;      d3dUsage8 Usage,
;;      D3DFORMAT Format,
;;      D3DPOOL Pool,
;;       LPLPDIRECT3DINDEXBUFFER8 ppIndexBuffer
;; );
;;     D3DRESULT8 CreateRenderTarget(
;;     UINT Width,
;;      UINT Height,
;;      D3DFORMAT Format,
;;      D3DMULTISAMPLE_TYPE MultiSample,
;;      BOOL Lockable,
;;       LPLPDIRECT3DSURFACE8 ppSurface
;; );
;;     D3DRESULT8 CreateDepthStencilSurface(
;;     UINT Width,
;;      UINT Height,
;;      D3DFORMAT Format,
;;      D3DMULTISAMPLE_TYPE MultiSample,
;;       LPLPDIRECT3DSURFACE8 ppSurface
;; );
;;     D3DRESULT8 CreateImageSurface(
;;     UINT Width,
;;      UINT Height,
;;      D3DFORMAT Format,
;;       LPLPDIRECT3DSURFACE8 ppSurface
;; );
;;     D3DRESULT8 CopyRects(
;;     LPDIRECT3DSURFACE8 pSourceSurface,
;;      RECT* pSourceRectsArray,
;;      UINT cRects,
;;      LPDIRECT3DSURFACE8 pDestinationSurface,
;;      POINT* pDestPointsArray
;; );
;;     D3DRESULT8 UpdateTexture(
;;     LPDIRECT3DBASETEXTURE8 pSourceTexture,
;;      LPDIRECT3DBASETEXTURE8 pDestinationTexture
;; );
;;     D3DRESULT8 GetFrontBuffer(
;;     LPDIRECT3DSURFACE8 pDestSurface
;; );
;;     D3DRESULT8 SetRenderTarget(
;;     LPDIRECT3DSURFACE8 pRenderTarget,
;;      LPDIRECT3DSURFACE8 pNewZStencil
;; );
;;     D3DRESULT8 GetRenderTarget(
;;      LPLPDIRECT3DSURFACE8 ppRenderTarget
;; );
;;     D3DRESULT8 GetDepthStencilSurface(
;;      LPLPDIRECT3DSURFACE8 ppZStencilSurface
;; );
;;     D3DRESULT8 BeginScene(
;;     
;; );
;;     D3DRESULT8 EndScene(
;;     
;; );
;;     D3DRESULT8 Clear(
;;     UINT Count,
;;      LPD3DRECT pRects,
;;      d3dClearFlags8 Flags,
;;      D3DCOLOR Color,
;;      float Z,
;;      DWORD Stencil
;; );
;;     D3DRESULT8 SetTransform(
;;     D3DTRANSFORMSTATETYPE8 State,
;;      LPD3DMATRIX8 pMatrix
;; );
;;     D3DRESULT8 GetTransform(
;;     D3DTRANSFORMSTATETYPE8 State,
;;       LPD3DMATRIX8 pMatrix
;; );
;;     D3DRESULT8 MultiplyTransform(
;;     D3DTRANSFORMSTATETYPE8 State,
;;      LPD3DMATRIX8 pMatrix
;; );
;;     D3DRESULT8 SetViewport(
;;     LPD3DVIEWPORT8 pViewport
;; );
;;     D3DRESULT8 GetViewport(
;;      LPD3DVIEWPORT8 pViewport
;; );
;;     D3DRESULT8 SetMaterial(
;;     LPD3DMATERIAL8 pMaterial
;; );
;;     D3DRESULT8 GetMaterial(
;;      LPD3DMATERIAL8 pMaterial
;; );
;;     D3DRESULT8 SetLight(
;;     DWORD Index,
;;      LPD3DLIGHT8 pLight
;; );
;;     D3DRESULT8 GetLight(
;;     DWORD Index,
;;       LPD3DLIGHT8 pLight
;; );
;;     D3DRESULT8 LightEnable(
;;     DWORD Index,
;;      BOOL Enable
;; );
;;     D3DRESULT8 GetLightEnable(
;;     DWORD Index,
;;       BOOL* pEnable
;; );
;;     D3DRESULT8 SetClipPlane(
;;     DWORD Index,
;;      float* pPlane
;; );
;;     D3DRESULT8 GetClipPlane(
;;     DWORD Index,
;;       float* pPlane
;; );
;;     D3DRESULT8 SetRenderState(
;;     D3DRENDERSTATETYPE8 State,
;;      DWORD Value
;; );
;;     D3DRESULT8 GetRenderState(
;;     D3DRENDERSTATETYPE8 State,
;;       LPDWORD pValue
;; );
;;     D3DRESULT8 BeginStateBlock(
;;     
;; );
;;     D3DRESULT8 EndStateBlock(
;;      LPDWORD pToken
;; );
;;     D3DRESULT8 ApplyStateBlock(
;;     DWORD Token
;; );
;;     D3DRESULT8 CaptureStateBlock(
;;     DWORD Token
;; );
;;     D3DRESULT8 DeleteStateBlock(
;;     DWORD Token
;; );
;;     D3DRESULT8 CreateStateBlock(
;;     D3DSTATEBLOCKTYPE8 Type,
;;       LPDWORD pToken
;; );
;;     D3DRESULT8 SetClipStatus(
;;     LPD3DCLIPSTATUS8 pClipStatus
;; );
;;     D3DRESULT8 GetClipStatus(
;;      LPD3DCLIPSTATUS8 pClipStatus
;; );
;;     D3DRESULT8 GetTexture(
;;     DWORD Stage,
;;       LPLPDIRECT3DBASETEXTURE8 ppTexture
;; );
;;     D3DRESULT8 SetTexture(
;;     DWORD Stage,
;;      LPDIRECT3DBASETEXTURE8 pTexture
;; );
;;     D3DRESULT8 GetTextureStageState(
;;     DWORD Stage,
;;      D3DTEXTURESTAGESTATETYPE8 Type,
;;       LPDWORD pValue
;; );
;;     D3DRESULT8 SetTextureStageState(
;;     DWORD Stage,
;;      D3DTEXTURESTAGESTATETYPE8 Type,
;;      DWORD Value
;; );
;;     D3DRESULT8 ValidateDevice(
;;      LPDWORD pNumPasses
;; );
;;     D3DRESULT8 GetInfo(
;;     DWORD DevInfoID,
;;       LPVOID pDevInfoStruct,
;;      DWORD DevInfoStructSize
;; );
;;     D3DRESULT8 SetPaletteEntries(
;;     UINT PaletteNumber,
;;      PALETTEENTRY* pEntries
;; );
;;     D3DRESULT8 GetPaletteEntries(
;;     UINT PaletteNumber,
;;       PALETTEENTRY* pEntries
;; );
;;     D3DRESULT8 SetCurrentTexturePalette(
;;     UINT PaletteNumber
;; );
;;     D3DRESULT8 GetCurrentTexturePalette(
;;      UINT* PaletteNumber
;; );
;;     D3DRESULT8 DrawPrimitive(
;;     D3DPRIMITIVETYPE8 PrimitiveType,
;;      UINT StartVertex,
;;      UINT PrimitiveCount
;; );
;;     D3DRESULT8 DrawIndexedPrimitive(
;;     D3DPRIMITIVETYPE8 PrimitiveType,
;;      UINT minIndex,
;;      UINT NumVertices,
;;      UINT startIndex,
;;      UINT primCount
;; );
;;     D3DRESULT8 DrawPrimitiveUP(
;;     D3DPRIMITIVETYPE8 PrimitiveType,
;;      UINT PrimitiveCount,
;;      LPVOID pVertexStreamZeroData,
;;      UINT VertexStreamZeroStride
;; );
;;     D3DRESULT8 DrawIndexedPrimitiveUP(
;;     D3DPRIMITIVETYPE8 PrimitiveType,
;;      UINT MinVertexIndex,
;;      UINT NumVertexIndices,
;;      UINT PrimitiveCount,
;;      LPVOID pIndexData,
;;      D3DFORMAT IndexDataFormat,
;;      LPVOID pVertexStreamZeroData,
;;      UINT VertexStreamZeroStride
;; );
;;     D3DRESULT8 ProcessVertices(
;;     UINT SrcStartIndex,
;;      UINT DestIndex,
;;      UINT VertexCount,
;;      LPDIRECT3DVERTEXBUFFER8 pDestBuffer,
;;      d3dProcessVerticesFlags Flags
;; );
;;     D3DRESULT8 CreateVertexShader(
;;     LPDWORD pDeclaration,
;;      LPDWORD pFunction,
;;       LPDWORD pHandle,
;;      d3dUsage8 Usage
;; );
;;     D3DRESULT8 SetVertexShader(
;;     DWORD Handle
;; );                 
;;     D3DRESULT8 GetVertexShader(
;;      LPDWORD pHandle
;; );
;;     D3DRESULT8 DeleteVertexShader(
;;     DWORD Handle
;; );
;;     D3DRESULT8 SetVertexShaderConstant(
;;     DWORD Register,
;;      LPVOID pConstantData,
;;      DWORD ConstantCount
;; );
;;     D3DRESULT8 GetVertexShaderConstant(
;;     DWORD Register,
;;       LPVOID pConstantData,
;;      DWORD ConstantCount
;; );
;;     D3DRESULT8 GetVertexShaderDeclaration(
;;     DWORD Handle,
;;       LPVOID pData,
;;       LPDWORD pSizeOfData
;; );
;;     D3DRESULT8 GetVertexShaderFunction(
;;     DWORD Handle,
;;       LPVOID pData,
;;       LPDWORD pSizeOfData
;; );
;;     D3DRESULT8 SetStreamSource(
;;     UINT StreamNumber,
;;      LPDIRECT3DVERTEXBUFFER8 pStreamData,
;;      UINT Stride
;; );
;;     D3DRESULT8 GetStreamSource(
;;     UINT StreamNumber,
;;       LPLPDIRECT3DVERTEXBUFFER8 ppStreamData,
;;       UINT* pStride
;; );
;;     D3DRESULT8 SetIndices(
;;     LPDIRECT3DINDEXBUFFER8 pIndexData,
;;      UINT BaseVertexIndex
;; );
;;     D3DRESULT8 GetIndices(
;;      LPLPDIRECT3DINDEXBUFFER8 ppIndexData,
;;       UINT* pBaseVertexIndex
;; );
;;     D3DRESULT8 CreatePixelShader(
;;     LPDWORD pFunction,
;;       LPDWORD pHandle
;; );
;;     D3DRESULT8 SetPixelShader(
;;     DWORD Handle
;; );
;;     D3DRESULT8 GetPixelShader(
;;      LPDWORD pHandle
;; );
;;     D3DRESULT8 DeletePixelShader(
;;     DWORD Handle
;; );
;;     D3DRESULT8 SetPixelShaderConstant(
;;     DWORD Register,
;;      LPVOID pConstantData,
;;      DWORD ConstantCount
;; );
;;     D3DRESULT8 GetPixelShaderConstant(
;;     DWORD Register,
;;       LPVOID pConstantData,
;;      DWORD ConstantCount
;; );
;;     D3DRESULT8 GetPixelShaderFunction(
;;     DWORD Handle,
;;       LPVOID pData,
;;       LPDWORD pSizeOfData
;; );
;;     D3DRESULT8 DrawRectPatch(
;;     UINT Handle,
;;      float* pNumSegs,
;;      LPD3DRECTPATCH_INFO pRectPatchInfo
;; );
;;     D3DRESULT8 DrawTriPatch(
;;     UINT Handle,
;;      float* pNumSegs,
;;      LPD3DTRIPATCH_INFO pTriPatchInfo
;; );
;;     D3DRESULT8 DeletePatch(
;;     UINT Handle
;; );
;; };


;; interface IDirect3DResource8 : IUnknown
;; {
;;     D3DRESULT8 GetDevice(
;;      LPLPDIRECT3DDEVICE8 ppDevice
;; );
;;     D3DRESULT8 SetPrivateData(
;;     REFGUID refguid,
;;      LPVOID pData,
;;      DWORD SizeOfData,
;;      d3dSetPrivateDataFlags8 Flags
;; );
;;     D3DRESULT8 GetPrivateData(
;;     REFGUID refguid,
;;      LPVOID pData,
;;      LPDWORD pSizeOfData
;; );
;;     D3DRESULT8 FreePrivateData(
;;     REFGUID refguid
;; );
;;     DWORD      SetPriority(
;;     DWORD PriorityNew
;; );
;;     DWORD      GetPriority(
;;     
;; );
;;     void       PreLoad(
;;     
;; );
;;     D3DRESOURCETYPE GetType(
;;     
;; );
;; };

;; interface IDirect3DBaseTexture8 : IDirect3DResource8
;; {
;;     DWORD      SetLOD(
;;     DWORD LODNew
;; );
;;     DWORD      GetLOD(
;;     
;; );
;;     DWORD      GetLevelCount(
;;     
;; );
;; };

;; interface IDirect3DTexture8 : IDirect3DBaseTexture8
;; {
;;     D3DRESULT8 GetLevelDesc(
;;     UINT Level,
;;       LPD3DSURFACE_DESC pDesc
;; );
;;     D3DRESULT8 GetSurfaceLevel(
;;     UINT Level,
;;       LPLPDIRECT3DSURFACE8 ppSurfaceLevel
;; );
;;     D3DRESULT8 LockRect(
;;     UINT Level,
;;       LPD3DLOCKED_RECT pLockedRect,
;;      RECT* pRect,
;;      d3dLockFlags8 Flags
;; );
;;     D3DRESULT8 UnlockRect(
;;     UINT Level
;; );
;;     D3DRESULT8 AddDirtyRect(
;;     RECT* pDirtyRect
;; );
;; };

;; interface IDirect3DVolumeTexture8 : IDirect3DBaseTexture8
;; {
;;     D3DRESULT8 GetLevelDesc(
;;     UINT Level,
;;       LPD3DVOLUME_DESC pDesc
;; );
;;     D3DRESULT8 GetVolumeLevel(
;;     UINT Level,
;;       LPLPDIRECT3DVOLUME8 ppVolumeLevel
;; );
;;     D3DRESULT8 LockBox(
;;     UINT Level,
;;       LPD3DLOCKED_BOX pLockedVolume,
;;      LPD3DBOX pBox,
;;      d3dLockFlags8 Flags
;; );
;;     D3DRESULT8 UnlockBox(
;;     UINT Level
;; );
;;     D3DRESULT8 AddDirtyBox(
;;     LPD3DBOX pDirtyBox
;; );
;; };

;; interface IDirect3DCubeTexture8 : IDirect3DBaseTexture8
;; {
;;     D3DRESULT8 GetLevelDesc(
;;     UINT Level,
;;       LPD3DSURFACE_DESC pDesc
;; );
;;     D3DRESULT8 GetCubeMapSurface(
;;     D3DCUBEMAP_FACES FaceType,
;;      UINT Level,
;;       LPLPDIRECT3DSURFACE8 ppCubeMapSurface
;; );
;;     D3DRESULT8 LockRect(
;;     D3DCUBEMAP_FACES FaceType,
;;      UINT Level,
;;       LPD3DLOCKED_RECT pLockedRect,
;;      RECT* pRect,
;;      d3dLockFlags8 Flags
;; );
;;     D3DRESULT8 UnlockRect(
;;     D3DCUBEMAP_FACES FaceType,
;;      UINT Level
;; );
;;     D3DRESULT8 AddDirtyRect(
;;     D3DCUBEMAP_FACES FaceType,
;;      RECT* pDirtyRect
;; );
;; };

;; interface IDirect3DVertexBuffer8 : IDirect3DResource8
;; {
;;     D3DRESULT8 Lock(
;;     UINT OffsetToLock,
;;      UINT SizeToLock,
;;       BYTE** ppbData,
;;      d3dLockFlags8 Flags
;; );
;;     D3DRESULT8 Unlock(
;;     
;; );
;;     D3DRESULT8 GetDesc(
;;      LPD3DVERTEXBUFFER_DESC pDesc
;; );
;; };

;; interface IDirect3DIndexBuffer8 : IDirect3DResource8
;; {
;;     D3DRESULT8 Lock(
;;     UINT OffsetToLock,
;;      UINT SizeToLock,
;;       BYTE** ppbData,
;;      d3dLockFlags8 Flags
;; );
;;     D3DRESULT8 Unlock(
;;     
;; );
;;     D3DRESULT8 GetDesc(
;;      LPD3DINDEXBUFFER_DESC pDesc
;; );
;; };

;; interface IDirect3DSurface8 : IUnknown
;; {
;;     D3DRESULT8 GetDevice(
;;      LPLPDIRECT3DDEVICE8 ppDevice
;; );
;;     D3DRESULT8 SetPrivateData(
;;     REFGUID refguid,
;;      LPVOID pData,
;;      DWORD SizeOfData,
;;      d3dSetPrivateDataFlags8 Flags
;; );
;;     D3DRESULT8 GetPrivateData(
;;     REFGUID refguid,
;;      LPVOID pData,
;;       LPDWORD pSizeOfData
;; );
;;     D3DRESULT8 FreePrivateData(
;;     REFGUID refguid
;; );
;;     D3DRESULT8 GetContainer(
;;     REFIID riid,
;;       LPVOID* ppContainer
;; );
;;     D3DRESULT8 GetDesc(
;;      LPD3DSURFACE_DESC pDesc
;; );
;;     D3DRESULT8 LockRect(
;;      LPD3DLOCKED_RECT pLockedRect,
;;      RECT* pRect,
;;      d3dLockFlags8 Flags
;; );
;;     D3DRESULT8 UnlockRect(
;;     
;; );
;; };

;; interface IDirect3DVolume8 : IUnknown
;; {
;;     D3DRESULT8 GetDevice(
;;      LPLPDIRECT3DDEVICE8 ppDevice
;; );
;;     D3DRESULT8 SetPrivateData(
;;     REFGUID refguid,
;;      LPVOID pData,
;;      DWORD SizeOfData,
;;      d3dSetPrivateDataFlags8 Flags
;; );
;;     D3DRESULT8 GetPrivateData(
;;     REFGUID refguid,
;;      LPVOID pData,
;;       LPDWORD pSizeOfData
;; );
;;     D3DRESULT8 FreePrivateData(
;;     REFGUID refguid
;; );
;;     D3DRESULT8 GetContainer(
;;     REFIID riid,
;;       LPVOID* ppContainer
;; );
;;     D3DRESULT8 GetDesc(
;;      LPD3DVOLUME_DESC pDesc
;; );
;;     D3DRESULT8 LockBox(
;;      LPD3DLOCKED_BOX pLockedVolume,
;;      LPD3DBOX pBox,
;;      d3dLockFlags8 Flags
;; );
;;     D3DRESULT8 UnlockBox(
;;     
;; );
;; };

;; interface IDirect3DSwapChain8 : IUnknown
;; {
;;     D3DRESULT8 Present(
;;     RECT* pSourceRect,
;;      RECT* pDestRect,
;;      HWND hDestWindowOverride,
;;      RGNDATA* pDirtyRegion
;; );
;;     D3DRESULT8 GetBackBuffer(
;;     UINT BackBuffer,
;;      D3DBACKBUFFER_TYPE Type,
;;       LPLPDIRECT3DSURFACE8 ppBackBuffer
;; );
;; };
