(context 'WIN32)

;(setq int SIZE_T)
;(setq long LONG)
;(setq char CHAR)
;(setq short WORD)
;(setq float FLOAT)
;(setq void VOID)

(setq INT LONG)
(setq UINT LONG)
(setq LPCSTR LPSTR)
(setq PSTR "char*")
(setq LPCWSTR LPWSTR)
(setq USHORT WORD)
(setq LPWORD "void*")
(setq ULONG DWORD)
(setq LPVOID "void*")
(setq PVOID LPVOID)
(setq LPCVOID LPVOID)
(setq LPBYTE "void*")
(setq PBYTE "void*")
(setq PBOOL "void*")
(setq LPBOOL "void*")
(setq LPDWORD "void*")
(setq PDWORD "void*")
(setq LPLONG "void*")
(setq PLONG "void*")
(setq PULONG "void*")
(setq BOOLEAN BYTE)
(setq HINF DWORD)

;; value SIZE_T HANDLE {
(setq HANDLE SIZE_T)
(setq NULL 0)
(setq INVALID_HANDLE_VALUE -1)
;; };

(setq HGLOBAL HANDLE)
(setq HLOCAL HANDLE)


(setq ATOM DWORD)
(setq LPGUID "void*")
(setq PGUID "void*")
(setq HDEVNOTIFY HANDLE)
(setq HDEVINFO HANDLE)
(setq LPHANDLE "void*")
(setq HMETAFILE HANDLE)
(setq WPARAM DWORD)
(setq LPARAM LPVOID)
(setq HKEY HANDLE)
(setq PHKEY "void*")
(setq LPTOP_LEVEL_EXCEPTION_FILTER LPVOID)
(setq LPTHREAD_START_ROUTINE LPVOID)
(setq LPFIBER_START_ROUTINE LPVOID)
(setq LRESULT DWORD)
(setq HOOKPROC LPVOID)
(setq FARPROC LPVOID)
(setq LPOVERLAPPED LPVOID)


(setq __int64 SIZE_T)
(setq UINT_PTR LPVOID)
(setq ULONG_PTR LPVOID)
(setq DWORD_PTR LPVOID)
(setq PULONG_PTR LPVOID)

(load "winerror.nl")

(setq STDAPI HRESULT)
(setq BSTR LPWSTR)
(setq LCID DWORD)
(setq LPOLECHAR WCHAR)
(setq LPOLESTR LPWSTR)
(setq LPCOLESTR LPWSTR)
(setq DISPID DWORD)
(setq DISPPARAMS DWORD)
(setq VARIANT DWORD)
(setq EXCEPINFO DWORD)
(setq REFGUID "void*")
(setq REFCLSID "void*")
(setq REFIID "void*")


;; typedef struct _CLSID { {
(struct '_CLSID
    DWORD ; x
    WORD ; s1
    WORD ; s2
    BYTE ; c
)
(setq CLSID _CLSID)
;; } CLSID


;; value DWORD ThreadId {
(setq ThreadId DWORD)
(setq NULL 0)
;; };

;; value DWORD ProcessId {
(setq ProcessId DWORD)
(setq NULL 0)
;; };


;; typedef struct _LONGLONG { {
(struct '_LONGLONG
    DWORD ; Low
    LONG ; High
)
(setq LONGLONG _LONGLONG)
;; } LONGLONG


;; typedef struct _ULONGLONG { {
(struct '_ULONGLONG
    DWORD ; Low
    DWORD ; High
)
(setq ULONGLONG SIZE_T) ; _ULONGLONG)
;; } ULONGLONG

;; typedef struct _ULARGE_INTEGER { {
(struct '_ULARGE_INTEGER
    DWORD ; Low
    DWORD ; High
)
(setq ULARGE_INTEGER _ULARGE_INTEGER)
;; } ULARGE_INTEGER
(setq PULARGE_INTEGER "void*")

;; typedef struct _LARGE_INTEGER { {
(struct '_LARGE_INTEGER
    ULONG ; Low
    LONG ; High
)
(setq LARGE_INTEGER _LARGE_INTEGER)
;; } LARGE_INTEGER
(setq PLARGE_INTEGER "void*")

;; typedef struct _DWORDLONG { {
(struct '_DWORDLONG
    DWORD ; Low
    DWORD ; High
)
(setq DWORDLONG SIZE_T) ;_DWORDLONG)
;; } DWORDLONG

(setq PVOID64 LPVOID)

(setq SHORT WORD)
(setq LPINT "void*")
(setq LPFLOAT "void*")
(setq PFLOAT "void*")


;; value BOOL FailOnFalse {
(setq FailOnFalse BOOL)
(setq FALSE 0)
(setq TRUE 1)
;; };

;; value LONG IntFailIfNeg1 {
(setq IntFailIfNeg1 LONG)
(setq NEGATIVE_ONE -1)
;; };

;; value LONG IntFailIfZero {
(setq IntFailIfZero LONG)
(setq ZERO 0)
;; };

;; value LONG LongFailIfNeg1 {
(setq LongFailIfNeg1 LONG)
(setq NEGATIVE_ONE -1)
;; };

;; value LONG LongFailIfZero {
(setq LongFailIfZero LONG)
(setq ZERO 0)
;; };

;; value WORD WordFailIfZero {
(setq WordFailIfZero WORD)
(setq ZERO 0)
;; };

;; value DWORD DwordFailIfZero {
(setq DwordFailIfZero DWORD)
(setq ZERO 0)
;; };

;; value LPVOID HMODULE {
(setq HMODULE LPVOID)
(setq NULL 0)
;; };

;; value LPVOID HINSTANCE {
(setq HINSTANCE LPVOID)
(setq NULL 0)
;; };

;; value DWORD UintFailIfZero {
(setq UintFailIfZero DWORD)
(setq ZERO 0)
;; };


;; value DWORD DwordFailIf0xFFFFFFFF {
(setq DwordFailIf0xFFFFFFFF DWORD)
(setq _0xFFFFFFFF 0xFFFFFFFF)
;; };

;; value DWORD DwordFailIfNeg1 {
(setq DwordFailIfNeg1 DWORD)
(setq NEGATIVE_ONE -1)
;; };

;; value LPSTR LpstrFailIfNull {
(setq LpstrFailIfNull LPSTR)
(setq NULL 0)
;; };

;; value LPWSTR LpwstrFailIfNull {
(setq LpwstrFailIfNull LPWSTR)
(setq NULL 0)
;; };

;; value LPVOID LpvoidFailIfNull {
(setq LpvoidFailIfNull LPVOID)
(setq NULL 0)
;; };

(setq PHANDLE "void*")
(setq HFILE HANDLE)

;; value HANDLE HWND {
(setq HWND HANDLE)
(setq NULL 0)
(setq HWND_BOTTOM 1)
(setq HWND_TOPMOST -1)
(setq HWND_NOTOPMOST -2)
;; };

;; value int SpoolerError {
(setq SpoolerError "int")
(setq SP_NOTREPORTED 0x4000)
(setq SP_ZERO 0)
(setq SP_ERROR -1)
(setq SP_APPABORT -2)
(setq SP_USERABORT -3)
(setq SP_OUTOFDISK -4)
(setq SP_OUTOFMEMORY -5)
;; };

;; value LONG UnhandledException {
(setq UnhandledException LONG)
(setq EXCEPTION_EXECUTE_HANDLER 1)
(setq EXCEPTION_CONTINUE_SEARCH 0)
;; };

;; mask DWORD FileFlagsAndAttributes {
(setq FileFlagsAndAttributes DWORD)
(setq FILE_ATTRIBUTE_READONLY 0x00000001)
(setq FILE_ATTRIBUTE_HIDDEN 0x00000002)
(setq FILE_ATTRIBUTE_SYSTEM 0x00000004)
(setq FILE_ATTRIBUTE_DIRECTORY 0x00000010)
(setq FILE_ATTRIBUTE_ARCHIVE 0x00000020)
(setq FILE_ATTRIBUTE_ENCRYPTED 0x00000040)
(setq FILE_ATTRIBUTE_NORMAL 0x00000080)
(setq FILE_ATTRIBUTE_TEMPORARY 0x00000100)
(setq FILE_ATTRIBUTE_SPARSE_FILE 0x00000200)
(setq FILE_ATTRIBUTE_REPARSE_POINT 0x00000400)
(setq FILE_ATTRIBUTE_COMPRESSED 0x00000800)
(setq FILE_ATTRIBUTE_OFFLINE 0x00001000)
(setq FILE_ATTRIBUTE_NOT_CONTENT_INDEXED 0x00002000)
;; };

(setq FTime DWORD)

;; alias FTime;

;; typedef struct _FILETIME  { {
(struct '_FILETIME
    FTime ; dwLowDateTime
    FTime ; dwHighDateTime
)
(setq FILETIME _FILETIME)
;; } FILETIME
(setq LPFILETIME "void*")
(setq PFILETIME "void*")


;; typedef struct _STARTUPINFOA  { {
(struct '_STARTUPINFOA
    DWORD ; cb
    FILLER64 ; align1
    LPSTR ; lpReserved
    LPSTR ; lpDesktop
    LPSTR ; lpTitle
    DWORD ; dwX
    DWORD ; dwY
    DWORD ; dwXSize
    DWORD ; dwYSize
    DWORD ; dwXCountChars
    DWORD ; dwYCountChars
    DWORD ; dwFillAttribute
    DWORD ; dwFlags
    WORD ; wShowWindow
    WORD ; cbReserved2
    FILLER64 ; align2
    LPBYTE ; lpReserved2
    HANDLE ; hStdInput
    HANDLE ; hStdOutput
    HANDLE ; hStdError
)
(setq STARTUPINFOA _STARTUPINFOA)
;; } STARTUPINFOA
(setq LPSTARTUPINFOA "void*")

;; typedef struct _STARTUPINFOW  { {
(struct '_STARTUPINFOW
    DWORD ; cb
    FILLER64 ; align1
    LPWSTR ; lpReserved
    LPWSTR ; lpDesktop
    LPWSTR ; lpTitle
    DWORD ; dwX
    DWORD ; dwY
    DWORD ; dwXSize
    DWORD ; dwYSize
    DWORD ; dwXCountChars
    DWORD ; dwYCountChars
    DWORD ; dwFillAttribute
    DWORD ; dwFlags
    WORD ; wShowWindow
    WORD ; cbReserved2
    FILLER64 ; align2
    LPBYTE ; lpReserved2
    HANDLE ; hStdInput
    HANDLE ; hStdOutput
    HANDLE ; hStdError
)
(setq STARTUPINFOW _STARTUPINFOW)
;; } STARTUPINFOW
(setq LPSTARTUPINFOW "void*")

;; typedef struct _PROCESS_INFORMATION  { {
(struct '_PROCESS_INFORMATION
    HANDLE ; hProcess
    HANDLE ; hThread
    ProcessId ; dwProcessId
    ThreadId ; dwThreadId
)
(setq PROCESS_INFORMATION _PROCESS_INFORMATION)
;; } PROCESS_INFORMATION
(setq LPPROCESS_INFORMATION "void*")

;; typedef struct _WIN32_FIND_DATAW  { {
(struct '_WIN32_FIND_DATAW
    FileFlagsAndAttributes ; dwFileAttributes
    FTime ; dwLowDateTime ; ftCreationTime
    FTime ; dwHighDateTime ; ftCreationTime
    FTime ; dwLowDateTime ; ftLastAccessTime
    FTime ; dwHighDateTime ; ftLastAccessTime
    FTime ; dwLowDateTime ; ftLastWriteTime
    FTime ; dwHighDateTime ;  ftLastWriteTime
    DWORD ; nFileSizeHigh
    DWORD ; nFileSizeLow
    DWORD ; dwReserved0
    DWORD ; dwReserved1
    WCHAR ; cFileName
    WCHAR ; cAlternateFileName
)
(setq WIN32_FIND_DATAW _WIN32_FIND_DATAW)
;; } WIN32_FIND_DATAW
(setq LPWIN32_FIND_DATAW "void*")

;; typedef struct _WIN32_FIND_DATAA  { {
(struct '_WIN32_FIND_DATAA
    FileFlagsAndAttributes ; dwFileAttributes
    FTime ; dwLowDateTime ; ftCreationTime
    FTime ; dwHighDateTime ; ftCreationTime
    FTime ; dwLowDateTime ; ftLastAccessTime
    FTime ; dwHighDateTime ; ftLastAccessTime
    FTime ; dwLowDateTime ; ftLastWriteTime
    FTime ; dwHighDateTime ;  ftLastWriteTime
    DWORD ; nFileSizeHigh
    DWORD ; nFileSizeLow
    DWORD ; dwReserved0
    DWORD ; dwReserved1
    CHAR ; cFileName
    CHAR ; cAlternateFileName
)
(setq WIN32_FIND_DATAA _WIN32_FIND_DATAA)
;; } WIN32_FIND_DATAA
(setq LPWIN32_FIND_DATAA "void*")

;; typedef struct tagPOINT  { {
(struct 'tagPOINT
  LONG ; x
  LONG ; y
)
(setq POINT tagPOINT)
;; } POINT
(setq PPOINT "void*")
(setq LPPOINT "void*")

;; typedef struct _RECT  { {
(struct '_RECT
  LONG ; left
  LONG ; top
  LONG ; right
  LONG ; bottom
)
(setq RECT _RECT)
;; } RECT
(setq PRECT "void*")
(setq LPRECT "void*")
(setq LPCRECT "void*")
(setq LPCRECTL "void*")

;; typedef struct tagPALETTEENTRY  { {
(struct 'tagPALETTEENTRY
  BYTE ; peRed
  BYTE ; peGreen
  BYTE ; peBlue
  BYTE ; peFlags
)
(setq PALETTEENTRY tagPALETTEENTRY)
;; } PALETTEENTRY
(setq LPPALETTEENTRY "void*")

;; typedef struct tagSIZE  { {
(struct 'tagSIZE
  LONG ; cx
  LONG ; cy
)
(setq SIZE tagSIZE)
;; } SIZE
(setq PSIZE "void*")
(setq LPSIZE "void*")

;; typedef struct  _RGNDATAHEADER      { {
(struct '_RGNDATAHEADER
    DWORD ; dwSize
    DWORD ; iType
    DWORD ; nCount
    DWORD ; nRgnSize
    ; rcBound:
    LONG ; left
    LONG ; top
    LONG ; right
    LONG ; bottom
)

;; typedef struct _RGNDATA  {
(struct '_RGNDATA
    ; rdh:
    DWORD ; dwSize
    DWORD ; iType
    DWORD ; nCount
    DWORD ; nRgnSize
    ; rcBound:
    LONG ; left
    LONG ; top
    LONG ; right
    LONG ; bottom
    "char*" ; Buffer
)
(setq RGNDATA _RGNDATA)
;; } RGNDATA
(setq PRGNDATA "void*")
(setq LPRGNDATA "void*")

;; typedef struct _RECTL { {
(struct '_RECTL
    LONG ; left
    LONG ; top
    LONG ; right
    LONG ; bottom
)
(setq RECTL _RECTL)
;; } RECTL
(setq PRECTL "void*")
(setq LPRECTL "void*")
;; typedef struct  tagSIZEL      { {
(struct 'tagSIZEL
    LONG ; cx
    LONG ; cy
)
(setq SIZEL tagSIZEL)
(setq PSIZEL "void*")
(setq LPSIZEL "void*")

;; value HANDLE HDC {
(setq HDC HANDLE)
(setq NULL 0)
;; }

;; value HANDLE HRGN {
(setq HRGN HANDLE)
(setq ERROR 0)
(setq NULLREGION 1)
(setq SIMPLEREGION 2)
(setq COMPLEXREGION 3)
;; };

;; value HANDLE HMENU {
(setq HMENU HANDLE)
(setq NULL 0)
;; };

;; value HANDLE HRSRC {
(setq HRSRC HANDLE)
(setq NULL 0)
;; };

;; value HANDLE HACCEL {
(setq HACCEL HANDLE)
(setq NULL 0)
;; };

;; value LPVOID WNDPROC {
(setq WNDPROC LPVOID)
(setq NULL 0)
;; };

;; value HANDLE HKL {
(setq HKL HANDLE)
(setq NULL 0)
(setq HKL_NEXT 1)
;; };

;; value HANDLE HHOOK {
(setq HHOOK HANDLE)
(setq NULL 0)
;; };


;; value DWORD WaitReturnValues {
(setq WaitReturnValues DWORD)
(setq WAIT_OBJECT_0 0x00000000)
(setq WAIT_OBJECT_1 0x00000001)
(setq WAIT_OBJECT_2 0x00000002)
(setq WAIT_OBJECT_3 0x00000003)
(setq WAIT_OBJECT_4 0x00000004)
(setq WAIT_OBJECT_5 0x00000005)
(setq WAIT_OBJECT_6 0x00000006)
(setq WAIT_OBJECT_7 0x00000007)
(setq WAIT_OBJECT_8 0x00000008)
(setq WAIT_OBJECT_9 0x00000009)
(setq WAIT_OBJECT_10 0x0000000A)
(setq WAIT_OBJECT_11 0x0000000B)
(setq WAIT_OBJECT_12 0x0000000C)
(setq WAIT_ABANDONED_0 0x00000080)
(setq WAIT_ABANDONED_1 0x00000081)
(setq WAIT_ABANDONED_2 0x00000082)
(setq WAIT_ABANDONED_3 0x00000083)
(setq WAIT_ABANDONED_4 0x00000084)
(setq WAIT_ABANDONED_5 0x00000085)
(setq WAIT_ABANDONED_6 0x00000086)
(setq WAIT_ABANDONED_7 0x00000087)
(setq WAIT_ABANDONED_8 0x00000088)
(setq WAIT_ABANDONED_9 0x00000089)
(setq WAIT_ABANDONED_10 0x0000008A)
(setq WAIT_ABANDONED_11 0x0000008B)
(setq WAIT_ABANDONED_12 0x0000008C)
(setq WAIT_IO_COMPLETION 0x000000C0)
(setq WAIT_TIMEOUT 0x00000102)
(setq WAIT_FAILED 0xFFFFFFFF)
;; };

;; value HANDLE HDESK {
(setq HDESK HANDLE)
(setq NULL 0)
;; };

;; value HANDLE HWINSTA {
(setq HWINSTA HANDLE)
(setq NULL 0)
;; };

;; value HANDLE HMONITOR {
(setq HMONITOR HANDLE)
(setq NULL 0)
;; };

;; value HANDLE HPRINTER {
(setq HPRINTER HANDLE)
(setq NULL 0)
;; };

(setq ACCESS_MASK DWORD)

;; typedef struct _SECURITY_ATTRIBUTES  { {
(struct '_SECURITY_ATTRIBUTES
    DWORD ; nLength
    LPVOID ; lpSecurityDescriptor
    BOOL ; bInheritHandle
)
(setq SECURITY_ATTRIBUTES _SECURITY_ATTRIBUTES)
;; } SECURITY_ATTRIBUTES
(setq LPSECURITY_ATTRIBUTES "void*")



;; mask DWORD DMFieldFlags {
(setq DMFieldFlags LONG)
(setq DM_ORIENTATION 0x00000001)
(setq DM_PAPERSIZE 0x00000002)
(setq DM_PAPERLENGTH 0x00000004)
(setq DM_PAPERWIDTH 0x00000008)
(setq DM_SCALE 0x00000010)
(setq DM_POSITION 0x00000020)
(setq DM_NUP 0x00000040)
(setq DM_COPIES 0x00000100)
(setq DM_DEFAULTSOURCE 0x00000200)
(setq DM_PRINTQUALITY 0x00000400)
(setq DM_COLOR 0x00000800)
(setq DM_DUPLEX 0x00001000)
(setq DM_YRESOLUTION 0x00002000)
(setq DM_TTOPTION 0x00004000)
(setq DM_COLLATE 0x00008000)
(setq DM_FORMNAME 0x00010000)
(setq DM_LOGPIXELS 0x00020000)
(setq DM_BITSPERPEL 0x00040000)
(setq DM_PELSWIDTH 0x00080000)
(setq DM_PELSHEIGHT 0x00100000)
(setq DM_DISPLAYFLAGS 0x00200000)
(setq DM_DISPLAYFREQUENCY 0x00400000)
(setq DM_ICMMETHOD 0x00800000)
(setq DM_ICMINTENT 0x01000000)
(setq DM_MEDIATYPE 0x02000000)
(setq DM_DITHERTYPE 0x04000000)
(setq DM_PANNINGWIDTH 0x08000000)
(setq DM_PANNINGHEIGHT 0x10000000)
;; };

;; value WORD DMBinValues {
(setq DMBinValues WORD)
(setq DMBIN_UPPER 1)
(setq DMBIN_ONLYONE 1)
(setq DMBIN_LOWER 2)
(setq DMBIN_MIDDLE 3)
(setq DMBIN_MANUAL 4)
(setq DMBIN_ENVELOPE 5)
(setq DMBIN_ENVMANUAL 6)
(setq DMBIN_AUTO 7)
(setq DMBIN_TRACTOR 8)
(setq DMBIN_SMALLFMT 9)
(setq DMBIN_LARGEFMT 10)
(setq DMBIN_LARGECAPACITY 11)
(setq DMBIN_CASSETTE 14)
(setq DMBIN_FORMSOURCE 15)
(setq DMBIN_USER 256)
;; };


;; value WORD DMPrintQualityValues {
(setq DMPrintQualityValues WORD)
(setq DMRES_DRAFT -1)
(setq DMRES_LOW -2)
(setq DMRES_MEDIUM -3)
(setq DMRES_HIGH -4)
;; };

;; value WORD DMColorEnableValues {
(setq DMColorEnableValues WORD)
(setq DMCOLOR_MONOCHROME 1)
(setq DMCOLOR_COLOR 2)
;; };

;; value WORD DMDuplexValues {
(setq DMDuplexValues WORD)
(setq DMDUP_SIMPLEX 1)
(setq DMDUP_VERTICAL 2)
(setq DMDUP_HORIZONTAL 3)
;; };

;; value WORD DMTrueTypeValues {
(setq DMTrueTypeValues WORD)
(setq DMTT_BITMAP 1)
(setq DMTT_DOWNLOAD 2)
(setq DMTT_SUBDEV 3)
(setq DMTT_DOWNLOAD_OUTLINE 4)
;; };

;; value WORD DMCollateValues {
(setq DMCollateValues WORD)
(setq DMCOLLATE_FALSE 0)
(setq DMCOLLATE_TRUE 1)
;; };



;; value DWORD DMDisplayFlagFields {
(setq DMDisplayFlagFields DWORD)
(setq DM_GRAYSCALE 0x00000001)
(setq DM_INTERLACED 0x00000002)
(setq DMDISPLAYFLAGS_TEXTMODE 0x00000004)
;; };

;; value DWORD DMLogicalPageValues {
(setq DMLogicalPageValues DWORD)
(setq DMNUP_SYSTEM 1)
(setq DMNUP_ONEUP 2)
;; };

;; value DWORD DMICMMethodValues {
(setq DMICMMethodValues DWORD)
(setq DMICMMETHOD_NONE 1)
(setq DMICMMETHOD_SYSTEM 2)
(setq DMICMMETHOD_DRIVER 3)
(setq DMICMMETHOD_DEVICE 4)

(setq DMICMMETHOD_USER 256)
;; };
;; value DWORD DMICMIntentsValues {
(setq DMICMIntentsValues DWORD)
(setq DMICM_SATURATE 1)
(setq DMICM_CONTRAST 2)
(setq DMICM_COLORIMETRIC 3)
(setq DMICM_ABS_COLORIMETRIC 4)

(setq DMICM_USER 256)
;; };
;; value DWORD DMMediaTypeValues {
(setq DMMediaTypeValues DWORD)
(setq DMMEDIA_STANDARD 1)
(setq DMMEDIA_TRANSPARENCY 2)
(setq DMMEDIA_GLOSSY 3)

(setq DMMEDIA_USER 256)
;; };
;; value DWORD DMDitherTypeValues {
(setq DMDitherTypeValues DWORD)
(setq DMDITHER_NONE 1)
(setq DMDITHER_COARSE 2)
(setq DMDITHER_FINE 3)
(setq DMDITHER_LINEART 4)
(setq DMDITHER_ERRORDIFFUSION 5)
(setq DMDITHER_RESERVED6 6)
(setq DMDITHER_RESERVED7 7)
(setq DMDITHER_RESERVED8 8)
(setq DMDITHER_RESERVED9 9)
(setq DMDITHER_GRAYSCALE 10)

(setq DMDITHER_USER 256)
;; };


;; value WORD DMOrientationValues {
(setq DMOrientationValues WORD)
(setq DMORIENT_PORTRAIT 1)
(setq DMORIENT_LANDSCAPE 2)
;; };

;; value WORD DMPaperSelectionValues {
(setq DMPaperSelectionValues WORD)
(setq DMPAPER_LETTER 1)
(setq DMPAPER_LETTERSMALL 2)
(setq DMPAPER_TABLOID 3)
(setq DMPAPER_LEDGER 4)
(setq DMPAPER_LEGAL 5)
(setq DMPAPER_STATEMENT 6)
(setq DMPAPER_EXECUTIVE 7)
(setq DMPAPER_A3 8)
(setq DMPAPER_A4 9)
(setq DMPAPER_A4SMALL 10)
(setq DMPAPER_A5 11)
(setq DMPAPER_B4 12)
(setq DMPAPER_B5 13)
(setq DMPAPER_FOLIO 14)
(setq DMPAPER_QUARTO 15)
(setq DMPAPER_10X14 16)
(setq DMPAPER_11X17 17)
(setq DMPAPER_NOTE 18)
(setq DMPAPER_ENV_9 19)
(setq DMPAPER_ENV_10 20)
(setq DMPAPER_ENV_11 21)
(setq DMPAPER_ENV_12 22)
(setq DMPAPER_ENV_14 23)
(setq DMPAPER_CSHEET 24)
(setq DMPAPER_DSHEET 25)
(setq DMPAPER_ESHEET 26)
(setq DMPAPER_ENV_DL 27)
(setq DMPAPER_ENV_C5 28)
(setq DMPAPER_ENV_C3 29)
(setq DMPAPER_ENV_C4 30)
(setq DMPAPER_ENV_C6 31)
(setq DMPAPER_ENV_C65 32)
(setq DMPAPER_ENV_B4 33)
(setq DMPAPER_ENV_B5 34)
(setq DMPAPER_ENV_B6 35)
(setq DMPAPER_ENV_ITALY 36)
(setq DMPAPER_ENV_MONARCH 37)
(setq DMPAPER_ENV_PERSONAL 38)
(setq DMPAPER_FANFOLD_US 39)
(setq DMPAPER_FANFOLD_STD_GERMAN 40)
(setq DMPAPER_FANFOLD_LGL_GERMAN 41)
(setq DMPAPER_ISO_B4 42)
(setq DMPAPER_JAPANESE_POSTCARD 43)
(setq DMPAPER_9X11 44)
(setq DMPAPER_10X11 45)
(setq DMPAPER_15X11 46)
(setq DMPAPER_ENV_INVITE 47)
(setq DMPAPER_RESERVED_48 48)
(setq DMPAPER_RESERVED_49 49)
(setq DMPAPER_LETTER_EXTRA 50)
(setq DMPAPER_LEGAL_EXTRA 51)
(setq DMPAPER_TABLOID_EXTRA 52)
(setq DMPAPER_A4_EXTRA 53)
(setq DMPAPER_LETTER_TRANSVERSE 54)
(setq DMPAPER_A4_TRANSVERSE 55)
(setq DMPAPER_LETTER_EXTRA_TRANSVERSE 56)
(setq DMPAPER_A_PLUS 57)
(setq DMPAPER_B_PLUS 58)
(setq DMPAPER_LETTER_PLUS 59)
(setq DMPAPER_A4_PLUS 60)
(setq DMPAPER_A5_TRANSVERSE 61)
(setq DMPAPER_B5_TRANSVERSE 62)
(setq DMPAPER_A3_EXTRA 63)
(setq DMPAPER_A5_EXTRA 64)
(setq DMPAPER_B5_EXTRA 65)
(setq DMPAPER_A2 66)
(setq DMPAPER_A3_TRANSVERSE 67)
(setq DMPAPER_A3_EXTRA_TRANSVERSE 68)

(setq DMPAPER_DBL_JAPANESE_POSTCARD 69)
(setq DMPAPER_A6 70)
(setq DMPAPER_JENV_KAKU2 71)
(setq DMPAPER_JENV_KAKU3 72)
(setq DMPAPER_JENV_CHOU3 73)
(setq DMPAPER_JENV_CHOU4 74)
(setq DMPAPER_LETTER_ROTATED 75)
(setq DMPAPER_A3_ROTATED 76)
(setq DMPAPER_A4_ROTATED 77)
(setq DMPAPER_A5_ROTATED 78)
(setq DMPAPER_B4_JIS_ROTATED 79)
(setq DMPAPER_B5_JIS_ROTATED 80)
(setq DMPAPER_JAPANESE_POSTCARD_ROTATED 81)
(setq DMPAPER_DBL_JAPANESE_POSTCARD_ROTATED 82)
(setq DMPAPER_A6_ROTATED 83)
(setq DMPAPER_JENV_KAKU2_ROTATED 84)
(setq DMPAPER_JENV_KAKU3_ROTATED 85)
(setq DMPAPER_JENV_CHOU3_ROTATED 86)
(setq DMPAPER_JENV_CHOU4_ROTATED 87)
(setq DMPAPER_B6_JIS 88)
(setq DMPAPER_B6_JIS_ROTATED 89)
(setq DMPAPER_12X11 90)
(setq DMPAPER_JENV_YOU4 91)
(setq DMPAPER_JENV_YOU4_ROTATED 92)
(setq DMPAPER_P16K 93)
(setq DMPAPER_P32K 94)
(setq DMPAPER_P32KBIG 95)
(setq DMPAPER_PENV_1 96)
(setq DMPAPER_PENV_2 97)
(setq DMPAPER_PENV_3 98)
(setq DMPAPER_PENV_4 99)
(setq DMPAPER_PENV_5 100)
(setq DMPAPER_PENV_6 101)
(setq DMPAPER_PENV_7 102)
(setq DMPAPER_PENV_8 103)
(setq DMPAPER_PENV_9 104)
(setq DMPAPER_PENV_10 105)
(setq DMPAPER_P16K_ROTATED 106)
(setq DMPAPER_P32K_ROTATED 107)
(setq DMPAPER_P32KBIG_ROTATED 108)
(setq DMPAPER_PENV_1_ROTATED 109)
(setq DMPAPER_PENV_2_ROTATED 110)
(setq DMPAPER_PENV_3_ROTATED 111)
(setq DMPAPER_PENV_4_ROTATED 112)
(setq DMPAPER_PENV_5_ROTATED 113)
(setq DMPAPER_PENV_6_ROTATED 114)
(setq DMPAPER_PENV_7_ROTATED 115)
(setq DMPAPER_PENV_8_ROTATED 116)
(setq DMPAPER_PENV_9_ROTATED 117)
(setq DMPAPER_PENV_10_ROTATED 118)

(setq DMPAPER_USER 256)
;; };




;; typedef struct _devicemodeA  { {
(struct '_devicemodeA
    BYTE ; dmDeviceName
    WORD ; dmSpecVersion
    WORD ; dmDriverVersion
    WORD ; dmSize
    WORD ; dmDriverExtra
    DMFieldFlags ; dmFields
    DMOrientationValues ; dmOrientation
    DMPaperSelectionValues ; dmPaperSize
    WORD ; dmPaperLength
    WORD ; dmPaperWidth
    WORD ; dmScale
    WORD ; dmCopies
    DMBinValues ; dmDefaultSource
    DMPrintQualityValues ; dmPrintQuality
    DMColorEnableValues ; dmColor
    DMDuplexValues ; dmDuplex
    WORD ; dmYResolution
    DMTrueTypeValues ; dmTTOption
    DMCollateValues ; dmCollate
    BYTE ; dmFormName
    WORD ; dmLogPixels
    DWORD ; dmBitsPerPel
    DWORD ; dmPelsWidth
    DWORD ; dmPelsHeight
    DMDisplayFlagFields ; dmDisplayFlags_OR_Nup
    DWORD ; dmDisplayFrequency
    DMICMMethodValues ; dmICMMethod
    DMICMIntentsValues ; dmICMIntent
    DMMediaTypeValues ; dmMediaType
    DMDitherTypeValues ; dmDitherType
    DWORD ; dmReserved1
    DWORD ; dmReserved2
    DWORD ; dmPanningWidth
    DWORD ; dmPanningHeight
)
(setq DEVMODEA _devicemodeA)
;; } DEVMODEA
(setq PDEVMODEA "void*")
(setq NPDEVMODEA "void*")
(setq LPDEVMODEA "void*")

;; typedef struct _devicemodeW  { {
(struct '_devicemodeW
    WCHAR ; dmDeviceName
    WORD ; dmSpecVersion
    WORD ; dmDriverVersion
    WORD ; dmSize
    WORD ; dmDriverExtra
    DMFieldFlags ; dmFields
    DMOrientationValues ; dmOrientation
    DMPaperSelectionValues ; dmPaperSize
    WORD ; dmPaperLength
    WORD ; dmPaperWidth
    WORD ; dmScale
    WORD ; dmCopies
    DMBinValues ; dmDefaultSource
    DMPrintQualityValues ; dmPrintQuality
    DMColorEnableValues ; dmColor
    DMDuplexValues ; dmDuplex
    WORD ; dmYResolution
    DMTrueTypeValues ; dmTTOption
    DMCollateValues ; dmCollate
    WCHAR ; dmFormName
    WORD ; dmLogPixels
    DWORD ; dmBitsPerPel
    DWORD ; dmPelsWidth
    DWORD ; dmPelsHeight
    DMDisplayFlagFields ; dmDisplayFlags_OR_Nup
    DWORD ; dmDisplayFrequency
    DMICMMethodValues ; dmICMMethod
    DMICMIntentsValues ; dmICMIntent
    DMMediaTypeValues ; dmMediaType
    DMDitherTypeValues ; dmDitherType
    DWORD ; dmReserved1
    DWORD ; dmReserved2
    DWORD ; dmPanningWidth
    DWORD ; dmPanningHeight
)
(setq DEVMODEW _devicemodeW)
;; } DEVMODEW
(setq PDEVMODEW "void*")
(setq NPDEVMODEW "void*")
(setq LPDEVMODEW "void*")


;; value LONG GdiEscapeCode {
(setq GdiEscapeCode LONG)
(setq NEWFRAME 1)
(setq ABORTDOC 2)
(setq NEXTBAND 3)
(setq SETCOLORTABLE 4)
(setq GETCOLORTABLE 5)
(setq FLUSHOUTPUT 6)
(setq DRAFTMODE 7)
(setq QUERYESCSUPPORT 8)
(setq SETABORTPROC 9)
(setq STARTDOC 10)
(setq ENDDOC 11)
(setq GETPHYSPAGESIZE 12)
(setq GETPRINTINGOFFSET 13)
(setq GETSCALINGFACTOR 14)
(setq MFCOMMENT 15)
(setq GETPENWIDTH 16)
(setq SETCOPYCOUNT 17)
(setq SELECTPAPERSOURCE 18)
(setq DEVICEDATA 19)
(setq PASSTHROUGH 19)
(setq GETTECHNOLGY 20)
(setq GETTECHNOLOGY 20)
(setq SETLINECAP 21)
(setq SETLINEJOIN 22)
(setq SETMITERLIMIT 23)
(setq BANDINFO 24)
(setq DRAWPATTERNRECT 25)
(setq GETVECTORPENSIZE 26)
(setq GETVECTORBRUSHSIZE 27)
(setq ENABLEDUPLEX 28)
(setq GETSETPAPERBINS 29)
(setq GETSETPRINTORIENT 30)
(setq ENUMPAPERBINS 31)
(setq SETDIBSCALING 32)
(setq EPSPRINTING 33)
(setq ENUMPAPERMETRICS 34)
(setq GETSETPAPERMETRICS 35)
(setq POSTSCRIPT_DATA 37)
(setq POSTSCRIPT_IGNORE 38)
(setq MOUSETRAILS 39)
(setq GETDEVICEUNITS 42)

(setq GETEXTENDEDTEXTMETRICS 256)
(setq GETEXTENTTABLE 257)
(setq GETPAIRKERNTABLE 258)
(setq GETTRACKKERNTABLE 259)
(setq EXTTEXTOUT 512)
(setq GETFACENAME 513)
(setq DOWNLOADFACE 514)
(setq ENABLERELATIVEWIDTHS 768)
(setq ENABLEPAIRKERNING 769)
(setq SETKERNTRACK 770)
(setq SETALLJUSTVALUES 771)
(setq SETCHARSET 772)

(setq STRETCHBLT 2048)
(setq METAFILE_DRIVER 2049)
(setq GETSETSCREENPARAMS 3072)
(setq QUERYDIBSUPPORT 3073)
(setq BEGIN_PATH 4096)
(setq CLIP_TO_PATH 4097)
(setq END_PATH 4098)
(setq EXT_DEVICE_CAPS 4099)
(setq RESTORE_CTM 4100)
(setq SAVE_CTM 4101)
(setq SET_ARC_DIRECTION 4102)
(setq SET_BACKGROUND_COLOR 4103)
(setq SET_POLY_MODE 4104)
(setq SET_SCREEN_ANGLE 4105)
(setq SET_SPREAD 4106)
(setq TRANSFORM_CTM 4107)
(setq SET_CLIP_BOX 4108)
(setq SET_BOUNDS 4109)
(setq SET_MIRROR_MODE 4110)
(setq OPENCHANNEL 4110)
(setq DOWNLOADHEADER 4111)
(setq CLOSECHANNEL 4112)
(setq POSTSCRIPT_PASSTHROUGH 4115)
(setq ENCAPSULATED_POSTSCRIPT 4116)

(setq POSTSCRIPT_IDENTIFY 4117)
(setq POSTSCRIPT_INJECTION 4118)

(setq CHECKJPEGFORMAT 4119)
(setq CHECKPNGFORMAT 4120)

(setq GET_PS_FEATURESETTING 4121)

(setq SPCLPASSTHROUGH2 4568)
;; };

;; value LONG RegistryType {
(setq RegistryType LONG)
(setq REG_NONE 0)
(setq REG_SZ 1)
(setq REG_EXPAND_SZ 2)
    #define ; REG_BINARY
(setq REG_DWORD 4)
(setq REG_DWORD_BIG_ENDIAN 5)
(setq REG_LINK 6)
(setq REG_MULTI_SZ 7)
(setq REG_RESOURCE_LIST 8)
(setq REG_FULL_RESOURCE_DESCRIPTOR 9)
(setq REG_RESOURCE_REQUIREMENTS_LIST 10)
(setq REG_QWORD 11)
;; };

;; value LONG ShowWindowCommand {
(setq ShowWindowCommand LONG)
(setq SW_HIDE 0)
(setq SW_NORMAL 1)
(setq SW_SHOWMINIMIZED 2)
(setq SW_MAXIMIZE 3)
(setq SW_SHOWNOACTIVATE 4)
(setq SW_SHOW 5)
(setq SW_MINIMIZE 6)
(setq SW_SHOWMINNOACTIVE 7)
(setq SW_SHOWNA 8)
(setq SW_RESTORE 9)
(setq SW_SHOWDEFAULT 10)
(setq SW_FORCEMINIMIZE 11)
;; };

;; mask DWORD AccessMode {
(setq AccessMode DWORD)
(setq PIPE_ACCESS_INBOUND 0x00000001)
(setq PIPE_ACCESS_OUTBOUND 0x00000002)
(setq PIPE_ACCESS_DUPLEX 0x00000003)
(setq FILE_FLAG_WRITE_THROUGH 0x80000000)
(setq FILE_FLAG_OVERLAPPED 0x40000000)
(setq ACCESS_SYSTEM_SECURITY 0x01000000)

(setq DELETE 0x00010000)
(setq READ_CONTROL 0x00020000)
(setq WRITE_DAC 0x00040000)
(setq WRITE_OWNER 0x00080000)
(setq SYNCHRONIZE 0x00100000)





(setq ACCESS_SYSTEM_SECURITY 0x01000000)





(setq MAXIMUM_ALLOWED 0x02000000)





(setq GENERIC_READ 0x80000000)
(setq GENERIC_WRITE 0x40000000)
(setq GENERIC_EXECUTE 0x20000000)
(setq GENERIC_ALL 0x10000000)
;; };


(load "kernel32.nl")
(load "user32.nl")
(load "gdi32.nl")

(load "winspool.nl")
(load "version.nl")

(load "winsock2.nl")

(load "advapi32.nl")
(load "uuids.nl")
(load "com.nl")

(load "shell.nl")
(load "ole32.nl")

;; (load "ddraw.nl")
;; (load "winmm.nl")
;; (load "avifile.nl")
;; (load "dplay.nl")
;; (load "d3d.nl")
;; (load "d3d8.nl")
;; (load "dsound.nl")
