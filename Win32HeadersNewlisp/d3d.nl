(context 'WIN32)

;; module D3D.DLL:
;; category Direct3D:

(load "d3dtypes.nl")
(load "d3dcaps.nl")





;; struct __declspec(uuid("64108800-957D-11D0-89AB-00A0C9054129")) IDirect3DDevice;
(struct 'IDirect3DDevice)
;; struct __declspec(uuid("2CDCD9E0-25A0-11CF-A31A-00AA00B93356")) IDirect3DTexture;
(struct 'IDirect3DTexture)
;; struct __declspec(uuid("93281500-8CF8-11D0-89AB-00A0C9054129")) IDirect3DViewport2;
(struct 'IDirect3DViewport2)
;; struct __declspec(uuid("6AAE1EC1-662A-11D0-889D-00AA00BBB76A")) IDirect3D2;
(struct 'IDirect3D2)
;; struct __declspec(uuid("B0AB3B61-33D7-11D1-A981-00C04FD7B174")) IDirect3DViewport3;
(struct 'IDirect3DViewport3)
;; struct __declspec(uuid("F5049E78-4861-11D2-A407-00A0C90629A8")) IDirect3DTnLHalDevice;
(struct 'IDirect3DTnLHalDevice)
;; struct __declspec(uuid("BB223240-E72B-11D0-A9B4-00AA00C0993E")) IDirect3D3;
(struct 'IDirect3D3)
;; struct __declspec(uuid("F5049E77-4861-11D2-A407-00A0C90629A8")) IDirect3D7;
(struct 'IDirect3D7)
;; struct __declspec(uuid("7A503555-4A83-11D1-A5DB-00A0C90367F8")) IDirect3DVertexBuffer;
(struct 'IDirect3DVertexBuffer)
;; struct __declspec(uuid("4417C142-33AD-11CF-816F-0000C020156E")) IDirect3DLight;
(struct 'IDirect3DLight)
;; struct __declspec(uuid("4417C146-33AD-11CF-816F-0000C020156E")) IDirect3DViewport;
(struct 'IDirect3DViewport)
;; struct __declspec(uuid("3BBA0080-2421-11CF-A31A-00AA00B93356")) IDirect3D;
(struct 'IDirect3D)
;; struct __declspec(uuid("F2086B20-259F-11CF-A31A-00AA00B93356")) IDirect3DRampDevice;
(struct 'IDirect3DRampDevice)
;; struct __declspec(uuid("93281503-8CF8-11D0-89AB-00A0C9054129")) IDirect3DMaterial2;
(struct 'IDirect3DMaterial2)
;; struct __declspec(uuid("CA9C46F4-D3C5-11D1-B75A-00600852B312")) IDirect3DMaterial3;
(struct 'IDirect3DMaterial3)
;; struct __declspec(uuid("881949A1-D6F3-11D0-89AB-00A0C9054129")) IDirect3DMMXDevice;
(struct 'IDirect3DMMXDevice)
;; struct __declspec(uuid("93281501-8CF8-11D0-89AB-00A0C9054129")) IDirect3DDevice2;
(struct 'IDirect3DDevice2)
;; struct __declspec(uuid("B0AB3B60-33D7-11D1-A981-00C04FD7B174")) IDirect3DDevice3;
(struct 'IDirect3DDevice3)
;; struct __declspec(uuid("93281502-8CF8-11D0-89AB-00A0C9054129")) IDirect3DTexture2;
(struct 'IDirect3DTexture2)
;; struct __declspec(uuid("84E63DE0-46AA-11CF-816F-0000C020156E")) IDirect3DHALDevice;
(struct 'IDirect3DHALDevice)
;; struct __declspec(uuid("F5049E79-4861-11D2-A407-00A0C90629A8")) IDirect3DDevice7;
(struct 'IDirect3DDevice7)
;; struct __declspec(uuid("8767DF22-BACC-11D1-8969-00A0C90629A8")) IDirect3DNullDevice;
(struct 'IDirect3DNullDevice)
;; struct __declspec(uuid("A4665C60-2673-11CF-A31A-00AA00B93356")) IDirect3DRGBDevice;
(struct 'IDirect3DRGBDevice)
;; struct __declspec(uuid("4417C145-33AD-11CF-816F-0000C020156E")) IDirect3DExecuteBuffer;
(struct 'IDirect3DExecuteBuffer)
;; struct __declspec(uuid("50936643-13E9-11D1-89AA-00A0C9054129")) IDirect3DRefDevice;
(struct 'IDirect3DRefDevice)
;; struct __declspec(uuid("F5049E7D-4861-11D2-A407-00A0C90629A8")) IDirect3DVertexBuffer7;
(struct 'IDirect3DVertexBuffer7)
;; struct __declspec(uuid("4417C144-33AD-11CF-816F-0000C020156E")) IDirect3DMaterial;
(struct 'IDirect3DMaterial)






(setq LPDIRECT3D (string IDirect3D "*"))
(setq LPDIRECT3DDEVICE (string IDirect3DDevice "*"))
(setq LPDIRECT3DEXECUTEBUFFER (string IDirect3DExecuteBuffer "*"))
(setq LPDIRECT3DLIGHT (string IDirect3DLight "*"))
(setq LPDIRECT3DMATERIAL (string IDirect3DMaterial "*"))
(setq LPDIRECT3DTEXTURE (string IDirect3DTexture "*"))
(setq LPDIRECT3DVIEWPORT (string IDirect3DViewport "*"))
(setq LPDIRECT3D2 (string IDirect3D2 "*"))
(setq LPDIRECT3DDEVICE2 (string IDirect3DDevice2 "*"))
(setq LPDIRECT3DMATERIAL2 (string IDirect3DMaterial2 "*"))
(setq LPDIRECT3DTEXTURE2 (string IDirect3DTexture2 "*"))
(setq LPDIRECT3DVIEWPORT2 (string IDirect3DViewport2 "*"))
(setq LPDIRECT3D3 (string IDirect3D3 "*"))
(setq LPDIRECT3DDEVICE3 (string IDirect3DDevice3 "*"))
(setq LPDIRECT3DMATERIAL3 (string IDirect3DMaterial3 "*"))
(setq LPDIRECT3DVIEWPORT3 (string IDirect3DViewport3 "*"))
(setq LPDIRECT3DVERTEXBUFFER (string IDirect3DVertexBuffer "*"))
(setq LPDIRECT3D7 (string IDirect3D7 "*"))
(setq LPDIRECT3DDEVICE7 (string IDirect3DDevice7 "*"))
(setq LPDIRECT3DVERTEXBUFFER7 (string IDirect3DVertexBuffer7 "*"))
(setq IDIRECT3D IDirect3D)
(setq LPIDIRECT3D (string IDirect3D "*"))
(setq LPLPIDIRECT3D (string IDirect3D "**"))
(setq IDIRECT3D2 IDirect3D2)
(setq LPIDIRECT3D2 (string IDirect3D2 "*"))
(setq LPLPIDIRECT3D2 (string IDirect3D2 "**"))
(setq IDIRECT3D3 IDirect3D3)
(setq LPIDIRECT3D3 (string IDirect3D3 "*"))
(setq LPLPIDIRECT3D3 (string IDirect3D3 "**"))
(setq IDIRECT3D7 IDirect3D7)
(setq LPIDIRECT3D7 (string IDirect3D7 "*"))
(setq LPLPIDIRECT3D7 (string IDirect3D7 "**"))
(setq IDIRECT3DDEVICE IDirect3DDevice)
(setq LPIDIRECT3DDEVICE (string IDirect3DDevice "*"))
(setq LPLPIDIRECT3DDEVICE (string IDirect3DDevice "**"))
(setq IDIRECT3DDEVICE2 IDirect3DDevice2)
(setq LPIDIRECT3DDEVICE2 (string IDirect3DDevice2 "*"))
(setq LPLPIDIRECT3DDEVICE2 (string IDirect3DDevice2 "**"))
(setq IDIRECT3DDEVICE3 IDirect3DDevice3)
(setq LPIDIRECT3DDEVICE3 (string IDirect3DDevice3 "*"))
(setq LPLPIDIRECT3DDEVICE3 (string IDirect3DDevice3 "**"))
(setq IDIRECT3DDEVICE7 IDirect3DDevice7)
(setq LPIDIRECT3DDEVICE7 (string IDirect3DDevice7 "*"))
(setq LPLPIDIRECT3DDEVICE7 (string IDirect3DDevice7 "**"))
(setq IDIRECT3DEXECUTEBUFFER IDirect3DExecuteBuffer)
(setq LPIDIRECT3DEXECUTEBUFFER (string IDirect3DExecuteBuffer "*"))
(setq LPLPIDIRECT3DEXECUTEBUFFER (string IDirect3DExecuteBuffer "**"))
(setq IDIRECT3DLIGHT IDirect3DLight)
(setq LPIDIRECT3DLIGHT (string IDirect3DLight "*"))
(setq LPLPIDIRECT3DLIGHT (string IDirect3DLight "**"))
(setq IDIRECT3DMATERIAL IDirect3DMaterial)
(setq LPIDIRECT3DMATERIAL (string IDirect3DMaterial "*"))
(setq LPLPIDIRECT3DMATERIAL (string IDirect3DMaterial "**"))
(setq IDIRECT3DMATERIAL2 IDirect3DMaterial2)
(setq LPIDIRECT3DMATERIAL2 (string IDirect3DMaterial2 "*"))
(setq LPLPIDIRECT3DMATERIAL2 (string IDirect3DMaterial2 "**"))
(setq IDIRECT3DMATERIAL3 IDirect3DMaterial3)
(setq LPIDIRECT3DMATERIAL3 (string IDirect3DMaterial3 "*"))
(setq LPLPIDIRECT3DMATERIAL3 (string IDirect3DMaterial3 "**"))
(setq IDIRECT3DTEXTURE IDirect3DTexture)
(setq LPIDIRECT3DTEXTURE (string IDirect3DTexture "*"))
(setq LPLPIDIRECT3DTEXTURE (string IDirect3DTexture "**"))
(setq IDIRECT3DTEXTURE2 IDirect3DTexture2)
(setq LPIDIRECT3DTEXTURE2 (string IDirect3DTexture2 "*"))
(setq LPLPIDIRECT3DTEXTURE2 (string IDirect3DTexture2 "**"))
(setq IDIRECT3DVIEWPORT IDirect3DViewport)
(setq LPIDIRECT3DVIEWPORT (string IDirect3DViewport "*"))
(setq LPLPIDIRECT3DVIEWPORT (string IDirect3DViewport "**"))
(setq IDIRECT3DVIEWPORT2 IDirect3DViewport2)
(setq LPIDIRECT3DVIEWPORT2 (string IDirect3DViewport2 "*"))
(setq LPLPIDIRECT3DVIEWPORT2 (string IDirect3DViewport2 "**"))
(setq IDIRECT3DVIEWPORT3 IDirect3DViewport3)
(setq LPIDIRECT3DVIEWPORT3 (string IDirect3DViewport3 "*"))
(setq LPLPIDIRECT3DVIEWPORT3 (string IDirect3DViewport3 "**"))
(setq IDIRECT3DVERTEXBUFFER IDirect3DVertexBuffer)
(setq LPIDIRECT3DVERTEXBUFFER (string IDirect3DVertexBuffer "*"))
(setq LPLPIDIRECT3DVERTEXBUFFER (string IDirect3DVertexBuffer "**"))
(setq IDIRECT3DVERTEXBUFFER7 IDirect3DVertexBuffer7)
(setq LPIDIRECT3DVERTEXBUFFER7 (string IDirect3DVertexBuffer7 "*"))
(setq LPLPIDIRECT3DVERTEXBUFFER7 (string IDirect3DVertexBuffer7 "**"))






;; mask DWORD d3dnextFlags {
(setq D3DNEXT_NEXT 0x00000001l)
(setq D3DNEXT_HEAD 0x00000002l)
(setq D3DNEXT_TAIL 0x00000004l)
;; };

;; mask DWORD direct3dFlags {
(setq DIRECT3D_VERSION 0x0700)
;; };

;; mask DWORD D3D7RESULT {
(setq D3D_OK 0)
(setq D3DERR_BADMAJORVERSION 0x887602BCL)
(setq D3DERR_BADMINORVERSION 0x887602BDL)
(setq D3DERR_INVALID_DEVICE 0x887602C1L)
(setq D3DERR_INITFAILED 0x887602C2L)
(setq D3DERR_DEVICEAGGREGATED 0x887602C3L)
(setq D3DERR_EXECUTE_CREATE_FAILED 0x887602C6L)
(setq D3DERR_EXECUTE_DESTROY_FAILED 0x887602C7L)
(setq D3DERR_EXECUTE_LOCK_FAILED 0x887602C8L)
(setq D3DERR_EXECUTE_UNLOCK_FAILED 0x887602C9L)
(setq D3DERR_EXECUTE_LOCKED 0x887602CAL)
(setq D3DERR_EXECUTE_NOT_LOCKED 0x887602CBL)
(setq D3DERR_EXECUTE_FAILED 0x887602CCL)
(setq D3DERR_EXECUTE_CLIPPED_FAILED 0x887602CDL)
(setq D3DERR_TEXTURE_NO_SUPPORT 0x887602D0L)
(setq D3DERR_TEXTURE_CREATE_FAILED 0x887602D1L)
(setq D3DERR_TEXTURE_DESTROY_FAILED 0x887602D2L)
(setq D3DERR_TEXTURE_LOCK_FAILED 0x887602D3L)
(setq D3DERR_TEXTURE_UNLOCK_FAILED 0x887602D4L)
(setq D3DERR_TEXTURE_LOAD_FAILED 0x887602D5L)
(setq D3DERR_TEXTURE_SWAP_FAILED 0x887602D6L)
(setq D3DERR_TEXTURE_LOCKED 0x887602D7L)
(setq D3DERR_TEXTURE_NOT_LOCKED 0x887602D8L)
(setq D3DERR_TEXTURE_GETSURF_FAILED 0x887602D9L)
(setq D3DERR_MATRIX_CREATE_FAILED 0x887602DAL)
(setq D3DERR_MATRIX_DESTROY_FAILED 0x887602DBL)
(setq D3DERR_MATRIX_SETDATA_FAILED 0x887602DCL)
(setq D3DERR_MATRIX_GETDATA_FAILED 0x887602DDL)
(setq D3DERR_SETVIEWPORTDATA_FAILED 0x887602DEL)
(setq D3DERR_INVALIDCURRENTVIEWPORT 0x887602DFL)
(setq D3DERR_INVALIDPRIMITIVETYPE 0x887602E0L)
(setq D3DERR_INVALIDVERTEXTYPE 0x887602E1L)
(setq D3DERR_TEXTURE_BADSIZE 0x887602E2L)
(setq D3DERR_INVALIDRAMPTEXTURE 0x887602E3L)
(setq D3DERR_MATERIAL_CREATE_FAILED 0x887602E4L)
(setq D3DERR_MATERIAL_DESTROY_FAILED 0x887602E5L)
(setq D3DERR_MATERIAL_SETDATA_FAILED 0x887602E6L)
(setq D3DERR_MATERIAL_GETDATA_FAILED 0x887602E7L)
(setq D3DERR_INVALIDPALETTE 0x887602E8L)
(setq D3DERR_ZBUFF_NEEDS_SYSTEMMEMORY 0x887602E9L)
(setq D3DERR_ZBUFF_NEEDS_VIDEOMEMORY 0x887602EAL)
(setq D3DERR_SURFACENOTINVIDMEM 0x887602EBL)
(setq D3DERR_LIGHT_SET_FAILED 0x887602EEL)
(setq D3DERR_LIGHTHASVIEWPORT 0x887602EFL)
(setq D3DERR_LIGHTNOTINTHISVIEWPORT 0x887602F0L)
(setq D3DERR_SCENE_IN_SCENE 0x887602F8L)
(setq D3DERR_SCENE_NOT_IN_SCENE 0x887602F9L)
(setq D3DERR_SCENE_BEGIN_FAILED 0x887602FAL)
(setq D3DERR_SCENE_END_FAILED 0x887602FBL)
(setq D3DERR_INBEGIN 0x88760302L)
(setq D3DERR_NOTINBEGIN 0x88760303L)
(setq D3DERR_NOVIEWPORTS 0x88760304L)
(setq D3DERR_VIEWPORTDATANOTSET 0x88760305L)
(setq D3DERR_VIEWPORTHASNODEVICE 0x88760306L)
(setq D3DERR_NOCURRENTVIEWPORT 0x88760307L)
(setq D3DERR_INVALIDVERTEXFORMAT 0x88760800L)
(setq D3DERR_COLORKEYATTACHED 0x88760802L)
(setq D3DERR_VERTEXBUFFEROPTIMIZED 0x8876080CL)
(setq D3DERR_VBUF_CREATE_FAILED 0x8876080DL)
(setq D3DERR_VERTEXBUFFERLOCKED 0x8876080EL)
(setq D3DERR_VERTEXBUFFERUNLOCKFAILED 0x8876080FL)
(setq D3DERR_ZBUFFER_NOTPRESENT 0x88760816L)
(setq D3DERR_STENCILBUFFER_NOTPRESENT 0x88760817L)
(setq D3DERR_WRONGTEXTUREFORMAT 0x88760818L)
(setq D3DERR_UNSUPPORTEDCOLOROPERATION 0x88760819L)
(setq D3DERR_UNSUPPORTEDCOLORARG 0x8876081AL)
(setq D3DERR_UNSUPPORTEDALPHAOPERATION 0x8876081BL)
(setq D3DERR_UNSUPPORTEDALPHAARG 0x8876081CL)
(setq D3DERR_TOOMANYOPERATIONS 0x8876081DL)
(setq D3DERR_CONFLICTINGTEXTUREFILTER 0x8876081EL)
(setq D3DERR_UNSUPPORTEDFACTORVALUE 0x8876081FL)
(setq D3DERR_CONFLICTINGRENDERSTATE 0x88760821L)
(setq D3DERR_UNSUPPORTEDTEXTUREFILTER 0x88760822L)
(setq D3DERR_TOOMANYPRIMITIVES 0x88760823L)
(setq D3DERR_INVALIDMATRIX 0x88760824L)
(setq D3DERR_TOOMANYVERTICES 0x88760825L)
(setq D3DERR_CONFLICTINGTEXTUREPALETTE 0x88760826L)
(setq D3DERR_INVALIDSTATEBLOCK 0x88760834L)
(setq D3DERR_INBEGINSTATEBLOCK 0x88760835L)
(setq D3DERR_NOTINBEGINSTATEBLOCK 0x88760836L)
;; };

;; mask DWORD d3ddpFlags {
(setq D3DDP_WAIT 0x00000001l)
(setq D3DDP_OUTOFORDER 0x00000002l)
(setq D3DDP_DONOTCLIP 0x00000004l)
(setq D3DDP_DONOTUPDATEEXTENTS 0x00000008l)
(setq D3DDP_DONOTLIGHT 0x00000010l)
;; };



















;; interface IDirect3DDevice7 : IUnknown
;; {
;;     D3D7RESULT GetCaps(
;;      LPD3DDEVICEDESC7 arg0
;; );
;;     D3D7RESULT EnumTextureFormats(
;;     LPD3DENUMPIXELFORMATSCALLBACK arg0,
;;      LPVOID arg1
;; );
;;     D3D7RESULT BeginScene(
;;     
;; );
;;     D3D7RESULT EndScene(
;;     
;; );
;;     D3D7RESULT GetDirect3D(
;;      LPDIRECT3D7* arg0
;; );
;;     D3D7RESULT SetRenderTarget(
;;     LPDIRECTDRAWSURFACE7 arg0,
;;      DWORD arg1
;; );
;;     D3D7RESULT GetRenderTarget(
;;      LPDIRECTDRAWSURFACE7* arg0
;; );
;;     D3D7RESULT Clear(
;;     DWORD arg0,
;;      LPD3DRECT arg1,
;;      DWORD arg2,
;;      D3DCOLOR arg3,
;;      D3DVALUE arg4,
;;      DWORD arg5
;; );
;;     D3D7RESULT SetTransform(
;;     D3DTRANSFORMSTATETYPE arg0,
;;      LPD3DMATRIX arg1
;; );
;;     D3D7RESULT GetTransform(
;;     D3DTRANSFORMSTATETYPE arg0,
;;       LPD3DMATRIX arg1
;; );
;;     D3D7RESULT SetViewport(
;;     LPD3DVIEWPORT7 arg0
;; );
;;     D3D7RESULT MultiplyTransform(
;;     D3DTRANSFORMSTATETYPE arg0,
;;      LPD3DMATRIX arg1
;; );
;;     D3D7RESULT GetViewport(
;;      LPD3DVIEWPORT7 arg0
;; );
;;     D3D7RESULT SetMaterial(
;;     LPD3DMATERIAL7 arg0
;; );
;;     D3D7RESULT GetMaterial(
;;      LPD3DMATERIAL7 arg0
;; );
;;     D3D7RESULT SetLight(
;;     DWORD arg0,
;;      LPD3DLIGHT7 arg1
;; );
;;     D3D7RESULT GetLight(
;;     DWORD arg0,
;;      LPD3DLIGHT7 arg1
;; );
;;     D3D7RESULT SetRenderState(
;;     D3DRENDERSTATETYPE arg0,
;;      DWORD arg1
;; );
;;     D3D7RESULT GetRenderState(
;;     D3DRENDERSTATETYPE arg0,
;;       LPDWORD arg1
;; );
;;     D3D7RESULT BeginStateBlock(
;;     
;; );
;;     D3D7RESULT EndStateBlock(
;;      LPDWORD arg0
;; );
;;     D3D7RESULT PreLoad(
;;     LPDIRECTDRAWSURFACE7 arg0
;; );
;;     D3D7RESULT DrawPrimitive(
;;     D3DPRIMITIVETYPE arg0,
;;      DWORD arg1,
;;      LPVOID arg2,
;;      DWORD arg3,
;;      DWORD arg4
;; );
;;     D3D7RESULT DrawIndexedPrimitive(
;;     D3DPRIMITIVETYPE arg0,
;;      DWORD arg1,
;;      LPVOID arg2,
;;      DWORD arg3,
;;      LPWORD arg4,
;;      DWORD arg5,
;;      DWORD arg6
;; );
;;     D3D7RESULT SetClipStatus(
;;     LPD3DCLIPSTATUS arg0
;; );
;;     D3D7RESULT GetClipStatus(
;;      LPD3DCLIPSTATUS arg0
;; );
;;     D3D7RESULT DrawPrimitiveStrided(
;;     D3DPRIMITIVETYPE arg0,
;;      DWORD arg1,
;;      LPD3DDRAWPRIMITIVESTRIDEDDATA arg2,
;;      DWORD arg3,
;;      DWORD arg4
;; );
;;     D3D7RESULT DrawIndexedPrimitiveStrided(
;;     D3DPRIMITIVETYPE arg0,
;;      DWORD arg1,
;;      LPD3DDRAWPRIMITIVESTRIDEDDATA arg2,
;;      DWORD arg3,
;;      LPWORD arg4,
;;      DWORD arg5,
;;      DWORD arg6
;; );
;;     D3D7RESULT DrawPrimitiveVB(
;;     D3DPRIMITIVETYPE arg0,
;;      LPDIRECT3DVERTEXBUFFER7 arg1,
;;      DWORD arg2,
;;      DWORD arg3,
;;      DWORD arg4
;; );
;;     D3D7RESULT DrawIndexedPrimitiveVB(
;;     D3DPRIMITIVETYPE arg0,
;;      LPDIRECT3DVERTEXBUFFER7 arg1,
;;      DWORD arg2,
;;      DWORD arg3,
;;      LPWORD arg4,
;;      DWORD arg5,
;;      DWORD arg6
;; );
;;     D3D7RESULT ComputeSphereVisibility(
;;     LPD3DVECTOR arg0,
;;      LPD3DVALUE arg1,
;;      DWORD arg2,
;;      DWORD arg3,
;;      LPDWORD arg4
;; );
;;     D3D7RESULT GetTexture(
;;     DWORD arg0,
;;       LPDIRECTDRAWSURFACE7* arg1
;; );
;;     D3D7RESULT SetTexture(
;;     DWORD arg0,
;;      LPDIRECTDRAWSURFACE7 arg1
;; );
;;     D3D7RESULT GetTextureStageState(
;;     DWORD arg0,
;;      D3DTEXTURESTAGESTATETYPE arg1,
;;       LPDWORD arg2
;; );
;;     D3D7RESULT SetTextureStageState(
;;     DWORD arg0,
;;      D3DTEXTURESTAGESTATETYPE arg1,
;;      DWORD arg2
;; );
;;     D3D7RESULT ValidateDevice(
;;      LPDWORD arg0
;; );
;;     D3D7RESULT ApplyStateBlock(
;;     DWORD arg0
;; );
;;     D3D7RESULT CaptureStateBlock(
;;     DWORD arg0
;; );
;;     D3D7RESULT DeleteStateBlock(
;;     DWORD arg0
;; );
;;     D3D7RESULT CreateStateBlock(
;;     D3DSTATEBLOCKTYPE arg0,
;;       LPDWORD arg1
;; );
;;     D3D7RESULT Load(
;;     LPDIRECTDRAWSURFACE7 arg0,
;;      LPPOINT arg1,
;;      LPDIRECTDRAWSURFACE7 arg2,
;;      LPRECT arg3,
;;      DWORD arg4
;; );
;;     D3D7RESULT LightEnable(
;;     DWORD arg0,
;;      BOOL arg1
;; );
;;     D3D7RESULT GetLightEnable(
;;     DWORD arg0,
;;       BOOL* arg1
;; );
;;     D3D7RESULT SetClipPlane(
;;     DWORD arg0,
;;      D3DVALUE* arg1
;; );
;;     D3D7RESULT GetClipPlane(
;;     DWORD arg0,
;;       D3DVALUE* arg1
;; );
;;     D3D7RESULT GetInfo(
;;     DWORD arg0,
;;       LPVOID arg1,
;;      DWORD arg2
;; );
;; };

;; interface IDirect3D7 : IUnknown
;; {
;;     D3D7RESULT EnumDevices(
;;     LPD3DENUMDEVICESCALLBACK7 arg0,
;;      LPVOID arg1
;; );
;;     D3D7RESULT CreateDevice(
;;     REFCLSID arg0,
;;      LPDIRECTDRAWSURFACE7 arg1,
;;       LPDIRECT3DDEVICE7* arg2
;; );
;;     D3D7RESULT CreateVertexBuffer(
;;     LPD3DVERTEXBUFFERDESC arg0,
;;       LPDIRECT3DVERTEXBUFFER7* arg1,
;;      DWORD arg2
;; );
;;     D3D7RESULT EnumZBufferFormats(
;;     REFCLSID arg0,
;;      LPD3DENUMPIXELFORMATSCALLBACK arg1,
;;      LPVOID arg2
;; );
;;     D3D7RESULT EvictManagedTextures(
;;     
;; );
;; };

;; interface IDirect3DVertexBuffer : IUnknown
;; {
;;     D3D7RESULT Lock(
;;     DWORD arg0,
;;      LPVOID* arg1,
;;      LPDWORD arg2
;; );
;;     D3D7RESULT Unlock(
;;     
;; );
;;     D3D7RESULT ProcessVertices(
;;     DWORD arg0,
;;      DWORD arg1,
;;      DWORD arg2,
;;      LPDIRECT3DVERTEXBUFFER arg3,
;;      DWORD arg4,
;;      LPDIRECT3DDEVICE3 arg5,
;;      DWORD arg6
;; );
;;     D3D7RESULT GetVertexBufferDesc(
;;      LPD3DVERTEXBUFFERDESC arg0
;; );
;;     D3D7RESULT Optimize(
;;     LPDIRECT3DDEVICE3 arg0,
;;      DWORD arg1
;; );
;; };

;; interface IDirect3DLight : IUnknown
;; {
;;     D3D7RESULT Initialize(
;;     LPDIRECT3D arg0
;; );
;;     D3D7RESULT SetLight(
;;     LPD3DLIGHT arg0
;; );
;;     D3D7RESULT GetLight(
;;      LPD3DLIGHT arg0
;; );
;; };

;; interface IDirect3DExecuteBuffer : IUnknown
;; {
;;     D3D7RESULT Initialize(
;;     LPDIRECT3DDEVICE arg0,
;;      LPD3DEXECUTEBUFFERDESC arg1
;; );
;;     D3D7RESULT Lock(
;;     LPD3DEXECUTEBUFFERDESC arg0
;; );
;;     D3D7RESULT Unlock(
;;     
;; );
;;     D3D7RESULT SetExecuteData(
;;     LPD3DEXECUTEDATA arg0
;; );
;;     D3D7RESULT GetExecuteData(
;;      LPD3DEXECUTEDATA arg0
;; );
;;     D3D7RESULT Validate(
;;     LPDWORD arg0,
;;      LPD3DVALIDATECALLBACK arg1,
;;      LPVOID arg2,
;;      DWORD arg3
;; );
;;     D3D7RESULT Optimize(
;;     DWORD arg0
;; );
;; };

;; interface IDirect3DVertexBuffer7 : IUnknown
;; {
;;     D3D7RESULT Lock(
;;     DWORD arg0,
;;      LPVOID* arg1,
;;      LPDWORD arg2
;; );
;;     D3D7RESULT Unlock(
;;     
;; );
;;     D3D7RESULT ProcessVertices(
;;     DWORD arg0,
;;      DWORD arg1,
;;      DWORD arg2,
;;      LPDIRECT3DVERTEXBUFFER7 arg3,
;;      DWORD arg4,
;;      LPDIRECT3DDEVICE7 arg5,
;;      DWORD arg6
;; );
;;     D3D7RESULT GetVertexBufferDesc(
;;      LPD3DVERTEXBUFFERDESC arg0
;; );
;;     D3D7RESULT Optimize(
;;     LPDIRECT3DDEVICE7 arg0,
;;      DWORD arg1
;; );
;;     D3D7RESULT ProcessVerticesStrided(
;;     DWORD arg0,
;;      DWORD arg1,
;;      DWORD arg2,
;;      LPD3DDRAWPRIMITIVESTRIDEDDATA arg3,
;;      DWORD arg4,
;;      LPDIRECT3DDEVICE7 arg5,
;;      DWORD arg6
;; );
;; };

;; interface IDirect3DMaterial : IUnknown
;; {
;;     D3D7RESULT Initialize(
;;     LPDIRECT3D arg0
;; );
;;     D3D7RESULT SetMaterial(
;;     LPD3DMATERIAL arg0
;; );
;;     D3D7RESULT GetMaterial(
;;      LPD3DMATERIAL arg0
;; );
;;     D3D7RESULT GetHandle(
;;     LPDIRECT3DDEVICE arg0,
;;       LPD3DMATERIALHANDLE arg1
;; );
;;     D3D7RESULT Reserve(
;;     
;; );
;;     D3D7RESULT Unreserve(
;;     
;; );
;; };

;; interface IDirect3DViewport : IUnknown
;; {
;;     D3D7RESULT Initialize(
;;     LPDIRECT3D arg0
;; );
;;     D3D7RESULT GetViewport(
;;      LPD3DVIEWPORT arg0
;; );
;;     D3D7RESULT SetViewport(
;;     LPD3DVIEWPORT arg0
;; );
;;     D3D7RESULT TransformVertices(
;;     DWORD arg0,
;;      LPD3DTRANSFORMDATA arg1,
;;      DWORD arg2,
;;      LPDWORD arg3
;; );
;;     D3D7RESULT LightElements(
;;     DWORD arg0,
;;      LPD3DLIGHTDATA arg1
;; );
;;     D3D7RESULT SetBackground(
;;     D3DMATERIALHANDLE arg0
;; );
;;     D3D7RESULT GetBackground(
;;      LPD3DMATERIALHANDLE arg0,
;;       LPBOOL arg1
;; );
;;     D3D7RESULT SetBackgroundDepth(
;;     LPDIRECTDRAWSURFACE arg0
;; );
;;     D3D7RESULT GetBackgroundDepth(
;;      LPDIRECTDRAWSURFACE* arg0,
;;       LPBOOL arg1
;; );
;;     D3D7RESULT Clear(
;;     DWORD arg0,
;;      LPD3DRECT arg1,
;;      DWORD arg2
;; );
;;     D3D7RESULT AddLight(
;;     LPDIRECT3DLIGHT arg0
;; );
;;     D3D7RESULT DeleteLight(
;;     LPDIRECT3DLIGHT arg0
;; );
;;     D3D7RESULT NextLight(
;;     LPDIRECT3DLIGHT arg0,
;;       LPDIRECT3DLIGHT* arg1,
;;      DWORD arg2
;; );
;; };

;; interface IDirect3D : IUnknown
;; {
;;     D3D7RESULT Initialize(
;;     REFCLSID arg0
;; );
;;     D3D7RESULT EnumDevices(
;;     LPD3DENUMDEVICESCALLBACK arg0,
;;      LPVOID arg1
;; );
;;     D3D7RESULT CreateLight(
;;      LPDIRECT3DLIGHT* arg0,
;;      IUnknown* arg1
;; );
;;     D3D7RESULT CreateMaterial(
;;      LPDIRECT3DMATERIAL* arg0,
;;      IUnknown* arg1
;; );
;;     D3D7RESULT CreateViewport(
;;      LPDIRECT3DVIEWPORT* arg0,
;;      IUnknown* arg1
;; );
;;     D3D7RESULT FindDevice(
;;     LPD3DFINDDEVICESEARCH arg0,
;;      LPD3DFINDDEVICERESULT arg1
;; );
;; };

;; interface IDirect3DDevice : IUnknown
;; {
;;     D3D7RESULT Initialize(
;;     LPDIRECT3D arg0,
;;      LPGUID arg1,
;;      LPD3DDEVICEDESC arg2
;; );
;;     D3D7RESULT GetCaps(
;;      LPD3DDEVICEDESC arg0,
;;       LPD3DDEVICEDESC arg1
;; );
;;     D3D7RESULT SwapTextureHandles(
;;     LPDIRECT3DTEXTURE arg0,
;;      LPDIRECT3DTEXTURE arg1
;; );
;;     D3D7RESULT CreateExecuteBuffer(
;;     LPD3DEXECUTEBUFFERDESC arg0,
;;       LPDIRECT3DEXECUTEBUFFER* arg1,
;;      IUnknown* arg2
;; );
;;     D3D7RESULT GetStats(
;;     LPD3DSTATS arg0
;; );
;;     D3D7RESULT Execute(
;;     LPDIRECT3DEXECUTEBUFFER arg0,
;;      LPDIRECT3DVIEWPORT arg1,
;;      DWORD arg2
;; );
;;     D3D7RESULT AddViewport(
;;     LPDIRECT3DVIEWPORT arg0
;; );
;;     D3D7RESULT DeleteViewport(
;;     LPDIRECT3DVIEWPORT arg0
;; );
;;     D3D7RESULT NextViewport(
;;     LPDIRECT3DVIEWPORT arg0,
;;       LPDIRECT3DVIEWPORT* arg1,
;;      DWORD arg2
;; );
;;     D3D7RESULT Pick(
;;     LPDIRECT3DEXECUTEBUFFER arg0,
;;      LPDIRECT3DVIEWPORT arg1,
;;      DWORD arg2,
;;      LPD3DRECT arg3
;; );
;;     D3D7RESULT GetPickRecords(
;;     LPDWORD arg0,
;;      LPD3DPICKRECORD arg1
;; );
;;     D3D7RESULT EnumTextureFormats(
;;     LPD3DENUMTEXTUREFORMATSCALLBACK arg0,
;;      LPVOID arg1
;; );
;;     D3D7RESULT CreateMatrix(
;;      LPD3DMATRIXHANDLE arg0
;; );
;;     D3D7RESULT SetMatrix(
;;     D3DMATRIXHANDLE arg0,
;;      LPD3DMATRIX arg1
;; );
;;     D3D7RESULT GetMatrix(
;;     D3DMATRIXHANDLE arg0,
;;       LPD3DMATRIX arg1
;; );
;;     D3D7RESULT DeleteMatrix(
;;     D3DMATRIXHANDLE arg0
;; );
;;     D3D7RESULT BeginScene(
;;     
;; );
;;     D3D7RESULT EndScene(
;;     
;; );
;;     D3D7RESULT GetDirect3D(
;;      LPDIRECT3D* arg0
;; );
;; };

;; interface IDirect3DTexture : IUnknown
;; {
;;     D3D7RESULT Initialize(
;;     LPDIRECT3DDEVICE arg0,
;;      LPDIRECTDRAWSURFACE arg1
;; );
;;     D3D7RESULT GetHandle(
;;     LPDIRECT3DDEVICE arg0,
;;      LPD3DTEXTUREHANDLE arg1
;; );
;;     D3D7RESULT PaletteChanged(
;;     DWORD arg0,
;;      DWORD arg1
;; );
;;     D3D7RESULT Load(
;;     LPDIRECT3DTEXTURE arg0
;; );
;;     D3D7RESULT Unload(
;;     
;; );
;; };

;; interface IDirect3DMaterial2 : IUnknown
;; {
;;     D3D7RESULT SetMaterial(
;;     LPD3DMATERIAL arg0
;; );
;;     D3D7RESULT GetMaterial(
;;      LPD3DMATERIAL arg0
;; );
;;     D3D7RESULT GetHandle(
;;     LPDIRECT3DDEVICE2 arg0,
;;       LPD3DMATERIALHANDLE arg1
;; );
;; };

;; interface IDirect3DViewport2 : IDirect3DViewport
;; {
;;     D3D7RESULT GetViewport2(
;;      LPD3DVIEWPORT2 arg0
;; );
;;     D3D7RESULT SetViewport2(
;;     LPD3DVIEWPORT2 arg0
;; );
;; };

;; interface IDirect3DMaterial3 : IUnknown
;; {
;;     D3D7RESULT SetMaterial(
;;     LPD3DMATERIAL arg0
;; );
;;     D3D7RESULT GetMaterial(
;;      LPD3DMATERIAL arg0
;; );
;;     D3D7RESULT GetHandle(
;;     LPDIRECT3DDEVICE3 arg0,
;;       LPD3DMATERIALHANDLE arg1
;; );
;; };

;; interface IDirect3D2 : IUnknown
;; {
;;     D3D7RESULT EnumDevices(
;;     LPD3DENUMDEVICESCALLBACK arg0,
;;      LPVOID arg1
;; );
;;     D3D7RESULT CreateLight(
;;      LPDIRECT3DLIGHT* arg0,
;;      IUnknown* arg1
;; );
;;     D3D7RESULT CreateMaterial(
;;      LPDIRECT3DMATERIAL2* arg0,
;;      IUnknown* arg1
;; );
;;     D3D7RESULT CreateViewport(
;;      LPDIRECT3DVIEWPORT2* arg0,
;;      IUnknown* arg1
;; );
;;     D3D7RESULT FindDevice(
;;     LPD3DFINDDEVICESEARCH arg0,
;;      LPD3DFINDDEVICERESULT arg1
;; );
;;     D3D7RESULT CreateDevice(
;;     REFCLSID arg0,
;;      LPDIRECTDRAWSURFACE arg1,
;;       LPDIRECT3DDEVICE2* arg2
;; );
;; };

;; interface IDirect3DDevice2 : IUnknown
;; {
;;     D3D7RESULT GetCaps(
;;      LPD3DDEVICEDESC arg0,
;;       LPD3DDEVICEDESC arg1
;; );
;;     D3D7RESULT SwapTextureHandles(
;;     LPDIRECT3DTEXTURE2 arg0,
;;      LPDIRECT3DTEXTURE2 arg1
;; );
;;     D3D7RESULT GetStats(
;;      LPD3DSTATS arg0
;; );
;;     D3D7RESULT AddViewport(
;;     LPDIRECT3DVIEWPORT2 arg0
;; );
;;     D3D7RESULT DeleteViewport(
;;     LPDIRECT3DVIEWPORT2 arg0
;; );
;;     D3D7RESULT NextViewport(
;;     LPDIRECT3DVIEWPORT2 arg0,
;;       LPDIRECT3DVIEWPORT2* arg1,
;;      DWORD arg2
;; );
;;     D3D7RESULT EnumTextureFormats(
;;     LPD3DENUMTEXTUREFORMATSCALLBACK arg0,
;;      LPVOID arg1
;; );
;;     D3D7RESULT BeginScene(
;;     
;; );
;;     D3D7RESULT EndScene(
;;     
;; );
;;     D3D7RESULT GetDirect3D(
;;      LPDIRECT3D2* arg0
;; );
;;     D3D7RESULT SetCurrentViewport(
;;     LPDIRECT3DVIEWPORT2 arg0
;; );
;;     D3D7RESULT GetCurrentViewport(
;;     LPDIRECT3DVIEWPORT2* arg0
;; );
;;     D3D7RESULT SetRenderTarget(
;;     LPDIRECTDRAWSURFACE arg0,
;;      DWORD arg1
;; );
;;     D3D7RESULT GetRenderTarget(
;;      LPDIRECTDRAWSURFACE* arg0
;; );
;;     D3D7RESULT Begin(
;;     D3DPRIMITIVETYPE arg0,
;;      D3DVERTEXTYPE arg1,
;;      DWORD arg2
;; );
;;     D3D7RESULT BeginIndexed(
;;     D3DPRIMITIVETYPE arg0,
;;      D3DVERTEXTYPE arg1,
;;      LPVOID arg2,
;;      DWORD arg3,
;;      DWORD arg4
;; );
;;     D3D7RESULT Vertex(
;;     LPVOID arg0
;; );
;;     D3D7RESULT Index(
;;     WORD arg0
;; );
;;     D3D7RESULT End(
;;     DWORD arg0
;; );
;;     D3D7RESULT GetRenderState(
;;     D3DRENDERSTATETYPE arg0,
;;       LPDWORD arg1
;; );
;;     D3D7RESULT SetRenderState(
;;     D3DRENDERSTATETYPE arg0,
;;      DWORD arg1
;; );
;;     D3D7RESULT GetLightState(
;;     D3DLIGHTSTATETYPE arg0,
;;       LPDWORD arg1
;; );
;;     D3D7RESULT SetLightState(
;;     D3DLIGHTSTATETYPE arg0,
;;      DWORD arg1
;; );
;;     D3D7RESULT SetTransform(
;;     D3DTRANSFORMSTATETYPE arg0,
;;      LPD3DMATRIX arg1
;; );
;;     D3D7RESULT GetTransform(
;;     D3DTRANSFORMSTATETYPE arg0,
;;       LPD3DMATRIX arg1
;; );
;;     D3D7RESULT MultiplyTransform(
;;     D3DTRANSFORMSTATETYPE arg0,
;;       LPD3DMATRIX arg1
;; );
;;     D3D7RESULT DrawPrimitive(
;;     D3DPRIMITIVETYPE arg0,
;;      D3DVERTEXTYPE arg1,
;;      LPVOID arg2,
;;      DWORD arg3,
;;      DWORD arg4
;; );
;;     D3D7RESULT DrawIndexedPrimitive(
;;     D3DPRIMITIVETYPE arg0,
;;      D3DVERTEXTYPE arg1,
;;      LPVOID arg2,
;;      DWORD arg3,
;;      LPWORD arg4,
;;      DWORD arg5,
;;      DWORD arg6
;; );
;;     D3D7RESULT SetClipStatus(
;;     LPD3DCLIPSTATUS arg0
;; );
;;     D3D7RESULT GetClipStatus(
;;     LPD3DCLIPSTATUS arg0
;; );
;; };

;; interface IDirect3DViewport3 : IDirect3DViewport2
;; {
;;     D3D7RESULT SetBackgroundDepth2(
;;     LPDIRECTDRAWSURFACE4 arg0
;; );
;;     D3D7RESULT GetBackgroundDepth2(
;;      LPDIRECTDRAWSURFACE4* arg0,
;;      LPBOOL arg1
;; );
;;     D3D7RESULT Clear2(
;;     DWORD arg0,
;;      LPD3DRECT arg1,
;;      DWORD arg2,
;;      D3DCOLOR arg3,
;;      D3DVALUE arg4,
;;      DWORD arg5
;; );
;; };

;; interface IDirect3DTexture2 : IUnknown
;; {
;;     D3D7RESULT GetHandle(
;;     LPDIRECT3DDEVICE2 arg0,
;;      LPD3DTEXTUREHANDLE arg1
;; );
;;     D3D7RESULT PaletteChanged(
;;     DWORD arg0,
;;      DWORD arg1
;; );
;;     D3D7RESULT Load(
;;     LPDIRECT3DTEXTURE2 arg0
;; );
;; };

;; interface IDirect3D3 : IUnknown
;; {
;;     D3D7RESULT EnumDevices(
;;     LPD3DENUMDEVICESCALLBACK arg0,
;;      LPVOID arg1
;; );
;;     D3D7RESULT CreateLight(
;;      LPDIRECT3DLIGHT* arg0,
;;      LPUNKNOWN arg1
;; );
;;     D3D7RESULT CreateMaterial(
;;      LPDIRECT3DMATERIAL3* arg0,
;;      LPUNKNOWN arg1
;; );
;;     D3D7RESULT CreateViewport(
;;      LPDIRECT3DVIEWPORT3* arg0,
;;      LPUNKNOWN arg1
;; );
;;     D3D7RESULT FindDevice(
;;     LPD3DFINDDEVICESEARCH arg0,
;;       LPD3DFINDDEVICERESULT arg1
;; );
;;     D3D7RESULT CreateDevice(
;;     REFCLSID arg0,
;;      LPDIRECTDRAWSURFACE4 arg1,
;;       LPDIRECT3DDEVICE3* arg2,
;;      LPUNKNOWN arg3
;; );
;;     D3D7RESULT CreateVertexBuffer(
;;     LPD3DVERTEXBUFFERDESC arg0,
;;       LPDIRECT3DVERTEXBUFFER* arg1,
;;      DWORD arg2,
;;      LPUNKNOWN arg3
;; );
;;     D3D7RESULT EnumZBufferFormats(
;;     REFCLSID arg0,
;;      LPD3DENUMPIXELFORMATSCALLBACK arg1,
;;      LPVOID arg2
;; );
;;     D3D7RESULT EvictManagedTextures(
;;     
;; );
;; };

;; interface IDirect3DDevice3 : IUnknown
;; {
;;     D3D7RESULT GetCaps(
;;      LPD3DDEVICEDESC arg0,
;;       LPD3DDEVICEDESC arg1
;; );
;;     D3D7RESULT GetStats(
;;      LPD3DSTATS arg0
;; );
;;     D3D7RESULT AddViewport(
;;     LPDIRECT3DVIEWPORT3 arg0
;; );
;;     D3D7RESULT DeleteViewport(
;;     LPDIRECT3DVIEWPORT3 arg0
;; );
;;     D3D7RESULT NextViewport(
;;     LPDIRECT3DVIEWPORT3 arg0,
;;       LPDIRECT3DVIEWPORT3* arg1,
;;      DWORD arg2
;; );
;;     D3D7RESULT EnumTextureFormats(
;;     LPD3DENUMPIXELFORMATSCALLBACK arg0,
;;      LPVOID arg1
;; );
;;     D3D7RESULT BeginScene(
;;     
;; );
;;     D3D7RESULT EndScene(
;;     
;; );
;;     D3D7RESULT GetDirect3D(
;;      LPDIRECT3D3* arg0
;; );
;;     D3D7RESULT SetCurrentViewport(
;;     LPDIRECT3DVIEWPORT3 arg0
;; );
;;     D3D7RESULT GetCurrentViewport(
;;      LPDIRECT3DVIEWPORT3* arg0
;; );
;;     D3D7RESULT SetRenderTarget(
;;     LPDIRECTDRAWSURFACE4 arg0,
;;      DWORD arg1
;; );
;;     D3D7RESULT GetRenderTarget(
;;      LPDIRECTDRAWSURFACE4* arg0
;; );
;;     D3D7RESULT Begin(
;;     D3DPRIMITIVETYPE arg0,
;;      DWORD arg1,
;;      DWORD arg2
;; );
;;     D3D7RESULT BeginIndexed(
;;     D3DPRIMITIVETYPE arg0,
;;      DWORD arg1,
;;      LPVOID arg2,
;;      DWORD arg3,
;;      DWORD arg4
;; );
;;     D3D7RESULT Vertex(
;;     LPVOID arg0
;; );
;;     D3D7RESULT Index(
;;     WORD arg0
;; );
;;     D3D7RESULT End(
;;     DWORD arg0
;; );
;;     D3D7RESULT GetRenderState(
;;     D3DRENDERSTATETYPE arg0,
;;       LPDWORD arg1
;; );
;;     D3D7RESULT SetRenderState(
;;     D3DRENDERSTATETYPE arg0,
;;      DWORD arg1
;; );
;;     D3D7RESULT GetLightState(
;;     D3DLIGHTSTATETYPE arg0,
;;       LPDWORD arg1
;; );
;;     D3D7RESULT SetLightState(
;;     D3DLIGHTSTATETYPE arg0,
;;      DWORD arg1
;; );
;;     D3D7RESULT SetTransform(
;;     D3DTRANSFORMSTATETYPE arg0,
;;      LPD3DMATRIX arg1
;; );
;;     D3D7RESULT GetTransform(
;;     D3DTRANSFORMSTATETYPE arg0,
;;       LPD3DMATRIX arg1
;; );
;;     D3D7RESULT MultiplyTransform(
;;     D3DTRANSFORMSTATETYPE arg0,
;;       LPD3DMATRIX arg1
;; );
;;     D3D7RESULT DrawPrimitive(
;;     D3DPRIMITIVETYPE arg0,
;;      DWORD arg1,
;;      LPVOID arg2,
;;      DWORD arg3,
;;      DWORD arg4
;; );
;;     D3D7RESULT DrawIndexedPrimitive(
;;     D3DPRIMITIVETYPE arg0,
;;      DWORD arg1,
;;      LPVOID arg2,
;;      DWORD arg3,
;;      LPWORD arg4,
;;      DWORD arg5,
;;      DWORD arg6
;; );
;;     D3D7RESULT SetClipStatus(
;;     LPD3DCLIPSTATUS arg0
;; );
;;     D3D7RESULT GetClipStatus(
;;      LPD3DCLIPSTATUS arg0
;; );
;;     D3D7RESULT DrawPrimitiveStrided(
;;     D3DPRIMITIVETYPE arg0,
;;      DWORD arg1,
;;      LPD3DDRAWPRIMITIVESTRIDEDDATA arg2,
;;      DWORD arg3,
;;      DWORD arg4
;; );
;;     D3D7RESULT DrawIndexedPrimitiveStrided(
;;     D3DPRIMITIVETYPE arg0,
;;      DWORD arg1,
;;      LPD3DDRAWPRIMITIVESTRIDEDDATA arg2,
;;      DWORD arg3,
;;      LPWORD arg4,
;;      DWORD arg5,
;;      DWORD arg6
;; );
;;     D3D7RESULT DrawPrimitiveVB(
;;     D3DPRIMITIVETYPE arg0,
;;      LPDIRECT3DVERTEXBUFFER arg1,
;;      DWORD arg2,
;;      DWORD arg3,
;;      DWORD arg4
;; );
;;     D3D7RESULT DrawIndexedPrimitiveVB(
;;     D3DPRIMITIVETYPE arg0,
;;      LPDIRECT3DVERTEXBUFFER arg1,
;;      LPWORD arg2,
;;      DWORD arg3,
;;      DWORD arg4
;; );
;;     D3D7RESULT ComputeSphereVisibility(
;;     LPD3DVECTOR arg0,
;;      LPD3DVALUE arg1,
;;      DWORD arg2,
;;      DWORD arg3,
;;      LPDWORD arg4
;; );
;;     D3D7RESULT GetTexture(
;;     DWORD arg0,
;;       LPDIRECT3DTEXTURE2* arg1
;; );
;;     D3D7RESULT SetTexture(
;;     DWORD arg0,
;;      LPDIRECT3DTEXTURE2 arg1
;; );
;;     D3D7RESULT GetTextureStageState(
;;     DWORD arg0,
;;      D3DTEXTURESTAGESTATETYPE arg1,
;;       LPDWORD arg2
;; );
;;     D3D7RESULT SetTextureStageState(
;;     DWORD arg0,
;;      D3DTEXTURESTAGESTATETYPE arg1,
;;      DWORD arg2
;; );
;;     D3D7RESULT ValidateDevice(
;;     LPDWORD arg0
;; );
;; };
