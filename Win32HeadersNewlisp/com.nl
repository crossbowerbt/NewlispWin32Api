(context 'WIN32)

;; category ComponentObjectModel:

;; interface IUnknown {
;;     HRESULT QueryInterface(
;;          REFIID iid,
;;          COM_INTERFACE_PTR* ppvObject 
;; );
;; 
;;     ULONG AddRef(
;;     
;; );
;;     ULONG Release(
;;     
;; );
;; };

(setq LPUNKNOWN (string IUnknown "*"))

;; interface IClassFactory : IUnknown
;; {
;;     HRESULT CreateInstance(
;;         IUnknown* pUnkOuter,
;;          REFIID riid,
;;          COM_INTERFACE_PTR* ppvObject 
;; );
;; 
;;     HRESULT LockServer(
;;      BOOL fLock 
;; );
;; };

;; interface IDispatch : IUnknown
;; {
;;     HRESULT GetTypeInfoCount(
;;      UINT pctinfo  
;; );
;; 
;;     HRESULT GetTypeInfo(
;;         UINT iTInfo,
;;         LCID lcid,
;;         LPVOID ppTInfo 
;; );
;; 
;;     HRESULT GetIDsOfNames(
;;         REFIID riid,
;;         LPOLECHAR* rgszNames,
;;         UINT cNames,
;;         LCID lcid,
;;          DISPID* rgDispId 
;; );
;; 
;;     HRESULT Invoke(
;;         DISPID  dispIdMember,
;;         REFIID  riid,
;;         LCID  lcid,
;;         WORD  wFlags,
;;         DISPPARAMS* pDispParams,
;;         VARIANT* pVarResult,
;;         EXCEPINFO* pExcepInfo,
;;         UINT* puArgErr 
;; );
;; };


;; interface IPersist : IUnknown
;; {
;;     HRESULT GetClassID(
;;          CLSID* pClassID       
;; );
;; };

;; interface IPersistFile : IPersist
;; {
;;     HRESULT IsDirty(
;;     
;; );
;; 
;;     HRESULT Load(
;;       LPCOLESTR pszFileName,
;;                            DWORD dwMode       
;; );
;; 
;;     HRESULT Save(
;;       LPCOLESTR pszFileName,
;;        
;;                                       BOOL fRemember                                                
;; );
;; 
;;     HRESULT SaveCompleted(
;;       LPCOLESTR pszFileName                                     
;; );
;; 
;;     HRESULT GetCurFile(
;;       LPOLESTR* ppszFileName                                      
;; );
;; };

(setq DVTARGETDEVICE VOID)
(setq CONTINUEPROC LPVOID)
(setq IAdviseSink LPVOID)

;; interface IViewObject : IUnknown
;; {
;; 
;; 
;;     HRESULT Draw     (
;;          DWORD dwDrawAspect,
;;          LONG lindex,
;;          void* pvAspect,
;;          DVTARGETDEVICE* ptd,
;;          HDC hdcTargetDev,
;;          HDC hdcDraw,
;;          LPCRECTL lprcBounds,
;;          LPCRECTL lprcWBounds,
;;          CONTINUEPROC ContinueProc,
;;          ULONG_PTR dwContinue     
;; );
;; 
;;     HRESULT GetColorSet     (
;;          DWORD dwDrawAspect,
;;          LONG lindex,
;;          void* pvAspect,
;;          DVTARGETDEVICE* ptd,
;;          HDC hicTargetDev,
;;          LOGPALETTE** ppColorSet     
;; );
;; 
;;     HRESULT Freeze     (
;;          DWORD dwDrawAspect,
;;          LONG lindex,
;;          void* pvAspect,
;;          DWORD* pdwFreeze     
;; );
;; 
;;     HRESULT Unfreeze     (
;;          DWORD dwFreeze     
;; );
;; 
;;     HRESULT SetAdvise     (
;;          DWORD aspects,
;;          DWORD advf,
;;          IAdviseSink* pAdvSink     
;; );
;; 
;;     HRESULT GetAdvise     (
;;          DWORD* pAspects,
;;          DWORD* pAdvf,
;;          IAdviseSink** ppAdvSink     
;; );
;; };

;; interface IViewObject2 : IViewObject
;; {
;;     HRESULT GetExtent     (
;;           DWORD dwDrawAspect,
;;           LONG lindex,
;;           DVTARGETDEVICE* ptd,
;;          LPSIZEL lpsizel     
;; );
;; };

;; typedef struct tagExtentInfo  { {
(struct 'tagExtentInfo
    ULONG ; cb
    DWORD ; dwExtentMode
    ;; sizelProposed
    LONG ; cx
    LONG ; cy
)
(setq DVEXTENTINFO tagExtentInfo)
;; } DVEXTENTINFO

;; interface IViewObjectEx : IViewObject2
;; {
;; 
;;     HRESULT GetRect(
;;                  DWORD dwAspect,
;;                  LPRECTL pRect             
;; );
;; 
;;     HRESULT GetViewStatus(
;;                  DWORD* pdwStatus             
;; );
;; 
;;     HRESULT QueryHitPoint(
;;                  DWORD dwAspect,
;;                  LPCRECT pRectBounds,
;;                  POINT ptlLoc,
;;                  LONG lCloseHint,
;;                  DWORD* pHitResult             
;; );
;; 
;;     HRESULT QueryHitRect(
;;                  DWORD dwAspect,
;;                  LPCRECT pRectBounds,
;;                  LPCRECT pRectLoc,
;;                  LONG lCloseHint,
;;                  DWORD* pHitResult             
;; );
;; 
;;     HRESULT GetNaturalExtent (
;;                  DWORD dwAspect,
;;                  LONG lindex,
;;                  DVTARGETDEVICE* ptd,
;;                  HDC hicTargetDev,
;;                  DVEXTENTINFO* pExtentInfo,
;;                  LPSIZEL pSizel             
;; );
;; };





