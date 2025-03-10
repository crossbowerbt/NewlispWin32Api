(context 'WIN32)

;; module OLE32.DLL:
;; category ComponentObjectModel:

;; value DWORD CLSCTX {
(setq CLSCTX DWORD)
(setq CLSCTX_INPROC_SERVER 1)
(setq CLSCTX_INPROC_HANDLER 2)
(setq CLSCTX_LOCAL_SERVER 4)
(setq CLSCTX_REMOTE_SERVER 16)
;; };

;; typedef struct  _COAUTHIDENTITY      { {
(struct '_COAUTHIDENTITY
    "void*" ; USHORT * User
    ULONG ; UserLength
    "void*" ; USHORT * Domain
    ULONG ; DomainLength
    "void*" ; USHORT * Password
    ULONG ; PasswordLength
    ULONG ; Flags
     ; 
)

;; typedef struct  _COAUTHINFO      { {
(struct '_COAUTHINFO
    DWORD ; dwAuthnSvc
    DWORD ; dwAuthzSvc
    LPWSTR ; pwszServerPrincName
    DWORD ; dwAuthnLevel
    DWORD ; dwImpersonationLevel
    "void*" ; COAUTHIDENTITY * pAuthIdentityData
    DWORD ; dwCapabilities
     ; 
)

;; typedef struct  _COSERVERINFO      { {
(struct '_COSERVERINFO
    DWORD ; dwReserved1
    LPWSTR ; pwszName
    "void*" ; COAUTHINFO * pAuthInfo
    DWORD ; dwReserved2
     ; 
)

;; typedef struct  _COSERVERINFO2      { {
(struct '_COSERVERINFO2
    DWORD ; dwFlags
    LPWSTR ; pwszName
    "void*" ; COAUTHINFO * pAuthInfo
    "void*" ; IUnknown ** ppCall
    LPWSTR ; pwszCodeURL
    DWORD ; dwFileVersionMS
    DWORD ; dwFileVersionLS
    LPWSTR ; pwszContentType
     ; 
)

(import "OLE32.DLL" "CoCreateInstance" STDAPI
  REFCLSID ; rclsid,
     ; 
  "void*" ; pUnkOuter,
     ; 
  CLSCTX ; dwClsContext,
     ; 
   REFIID ; riid,
     ; 
   "void" ; COM_INTERFACE_PTR *  ppv
);

(import "OLE32.DLL" "CoCreateInstanceEx" HRESULT
  REFCLSID ; rclsid,
     ; 
  "void*" ; IUnknown * punkOuter,
     ; 
    CLSCTX ; dwClsCtx,
     ; 
  "void*" ; COSERVERINFO * pServerInfo,
     ; 
    ULONG ; cmq,
     ; 
    "void*" ; PVOID * pResults
)

(import "OLE32.DLL" "CoGetClassObject" STDAPI
  REFCLSID ; rclsid,
     ; 
  CLSCTX ; dwClsContext,
    "void*" ; COSERVERINFO * pServerInfo,
    REFIID ; riid,
     ; 
  "void*" ; COM_INTERFACE_PTR* ppv
);
