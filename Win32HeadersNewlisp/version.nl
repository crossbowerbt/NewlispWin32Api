(context 'WIN32)


;; category Version:
;; module VERSION.DLL:




(import "VERSION.DLL" "GetFileVersionInfoSizeA" DWORD
    LPSTR ; lptstrFilename,
     ; 
    LPDWORD ; lpdwHandle
)

(import "VERSION.DLL" "GetFileVersionInfoSizeW" DWORD
    LPWSTR ; lptstrFilename,
     ; 
    LPDWORD ; lpdwHandle
)


(import "VERSION.DLL" "GetFileVersionInfoA" FailOnFalse
    LPSTR ; lptstrFilename,
     ; 
    DWORD ; dwHandle,
     ; 
    DWORD ; dwLen,
     ; 
    LPVOID ; lpData
)

(import "VERSION.DLL" "GetFileVersionInfoW" FailOnFalse
    LPWSTR ; lptstrFilename,
     ; 
    DWORD ; dwHandle,
     ; 
    DWORD ; dwLen,
     ; 
    LPVOID ; lpData
)


;; module KERNEL32.DLL:

;; value LONG PlatformId {
(setq PlatformId LONG)
(setq VER_PLATFORM_WIN32s 0)
(setq VER_PLATFORM_WIN32_WINDOWS 1)
(setq VER_PLATFORM_WIN32_NT 2)
;; };

;; typedef struct _OSVERSIONINFOA { {
;(struct '_OSVERSIONINFOA
;    DWORD ; dwOSVersionInfoSize
;    DWORD ; dwMajorVersion
;    DWORD ; dwMinorVersion
;    DWORD ; dwBuildNumber
;    PlatformId ; dwPlatformId
;    CHAR ; szCSDVersion
;)
;(setq OSVERSIONINFOA _OSVERSIONINFOA)
;; } OSVERSIONINFOA
(setq LPOSVERSIONINFOA "void*") ; _OSVERSIONINFOA *

;; typedef struct _OSVERSIONINFOW { {
;(struct '_OSVERSIONINFOW
;    DWORD ; dwOSVersionInfoSize
;    DWORD ; dwMajorVersion
;    DWORD ; dwMinorVersion
;    DWORD ; dwBuildNumber
;    PlatformId ; dwPlatformId
;    WCHAR ; szCSDVersion
;)
;(setq OSVERSIONINFOW _OSVERSIONINFOW)
;; } OSVERSIONINFOW
(setq LPOSVERSIONINFOW "void*") ; _OSVERSIONINFOW *

(import "KERNEL32.DLL" "GetVersion" DWORD
     ; 
)

(import "KERNEL32.DLL" "GetVersionExA" FailOnFalse
    LPOSVERSIONINFOA ; lpVersionInfo
)

(import "KERNEL32.DLL" "GetVersionExW" FailOnFalse
    LPOSVERSIONINFOW ; lpVersionInfo
)
