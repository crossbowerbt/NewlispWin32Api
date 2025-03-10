(context 'WIN32)

;; category AVIFileExports:

;; typedef struct _AVIFILEINFOA  { {
(struct '_AVIFILEINFOA
    DWORD ; dwMaxBytesPerSec;
    DWORD ; dwFlags;
    DWORD ; dwCaps
    DWORD ; dwStreams
    DWORD ; dwSuggestedBufferSize

    DWORD ; dwWidth
    DWORD ; dwHeight

    DWORD ; dwScale
    DWORD ; dwRate;
    DWORD ; dwLength

    DWORD ; dwEditCount

    char ; szFileType;
)
(setq AVIFILEINFOA _AVIFILEINFOA)
;; } AVIFILEINFOA
(setq LPAVIFILEINFOA (string AVIFILEINFOA "*"))

;; typedef struct _AVIFILEINFOW  { {
(struct '_AVIFILEINFOW
    DWORD ; dwMaxBytesPerSec;
    DWORD ; dwFlags;
    DWORD ; dwCaps
    DWORD ; dwStreams
    DWORD ; dwSuggestedBufferSize

    DWORD ; dwWidth
    DWORD ; dwHeight

    DWORD ; dwScale
    DWORD ; dwRate;
    DWORD ; dwLength

    DWORD ; dwEditCount

    WCHAR ; szFileType;
)
(setq AVIFILEINFOW _AVIFILEINFOW)
;; } AVIFILEINFOW
(setq LPAVIFILEINFOW (string AVIFILEINFOW "*"))

(setq AVIFILE DWORD)
(setq PAVIFILE (string DWORD "*"))

(import "" "AVIFileInit" VOID
     ; 
)
(import "" "AVIFileExit" VOID
     ; 
)

(import "" "AVIFileAddRef" ULONG
    PAVIFILE ; pfile
)
(import "" "AVIFileRelease" ULONG
    PAVIFILE ; pfile
)

(import "" "AVIFileOpenA" STDAPI
    (string PAVIFILE "*") ; ppfile,
    LPCSTR ; szFile,
    UINT ; mode,
    CLSID ; pclsidHandler
)
(import "" "AVIFileOpenW" STDAPI
    (string PAVIFILE "*") ; ppfile,
    LPCWSTR ; szFile,
    UINT ; mode,
    CLSID ; pclsidHandler
)

(import "" "AVIFileInfoA" STDAPI
    PAVIFILE ; pfile,
    LPAVIFILEINFOA ; pfi,
    LONG ; lSize
)
(import "" "AVIFileInfoW" STDAPI
    PAVIFILE ; pfile,
    LPAVIFILEINFOW ; pfi,
    LONG ; lSize
)
