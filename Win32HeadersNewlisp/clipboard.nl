(context 'WIN32)

;; module USER32.DLL:

;; value UINT ClipboardFormats {
(setq ClipboardFormats UINT)
(setq CF_TEXT 1)
(setq CF_BITMAP 2)
(setq CF_METAFILEPICT 3)
(setq CF_SYLK 4)
(setq CF_DIF 5)
(setq CF_TIFF 6)
(setq CF_OEMTEXT 7)
(setq CF_DIB 8)
(setq CF_PALETTE 9)
(setq CF_PENDATA 10)
(setq CF_RIFF 11)
(setq CF_WAVE 12)
(setq CF_UNICODETEXT 13)
(setq CF_ENHMETAFILE 14)
(setq CF_HDROP 15)
(setq CF_LOCALE 16)
(setq CF_MAX 17)
;; };

;; value "INT" ClipboardStatus {
(setq ClipboardStatus INT)
(setq ClipboardEmpty 0)
(setq ClipboardContainsUnknownFormat -1)
;; };

;; category Clipboard:

(import "USER32.DLL" "ChangeClipboardChain" BOOL
    HWND ; hWndRemove,
    HWND ; hWndNewNext
)

(import "USER32.DLL" "CloseClipboard" FailOnFalse
     ; 
)

(import "USER32.DLL" "CountClipboardFormats" LongFailIfZero
     ; 
)

(import "USER32.DLL" "EmptyClipboard" FailOnFalse
     ; 
)

(import "USER32.DLL" "EnumClipboardFormats" LongFailIfZero
    ClipboardFormats ; format
)

(import "USER32.DLL" "GetClipboardData" HANDLE
    ClipboardFormats ; uFormat
)

(import "USER32.DLL" "GetClipboardFormatNameA" LongFailIfZero
    UINT ; format,
    LPSTR ; lpszFormatName,
    "int" ; cchMaxCount
)

(import "USER32.DLL" "GetClipboardFormatNameW" LongFailIfZero
    UINT ; format,
    LPWSTR ; lpszFormatName,
    "int" ; cchMaxCount
)

(import "USER32.DLL" "GetClipboardOwner" DwordFailIfZero
     ; 
)

(import "USER32.DLL" "GetClipboardSequenceNumber" DWORD
     ; 
)

(import "USER32.DLL" "GetClipboardViewer" DwordFailIfZero
     ; 
)

(import "USER32.DLL" "GetOpenClipboardWindow" DwordFailIfZero
     ; 
)

(import "USER32.DLL" "GetPriorityClipboardFormat" ClipboardStatus
    "void*" ; ClipboardFormats * paFormatPriorityList,
    "int" ; cFormats
)

(import "USER32.DLL" "IsClipboardFormatAvailable" BOOL
    ClipboardFormats ; format
)

(import "USER32.DLL" "OpenClipboard" FailOnFalse
    HWND ; hWndNewOwner
)

(import "USER32.DLL" "RegisterClipboardFormatA" LongFailIfZero
    LPCSTR ; lpszFormat
)

(import "USER32.DLL" "RegisterClipboardFormatW" LongFailIfZero
    LPCWSTR ; lpszFormat
)

(import "USER32.DLL" "SetClipboardData" HANDLE
    ClipboardFormats ; uFormat,
    HANDLE ; hMem
)

(import "USER32.DLL" "SetClipboardViewer" HWND
    HWND ; hWndNewViewer
)
