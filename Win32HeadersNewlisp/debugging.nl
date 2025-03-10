(context 'WIN32)



;; module KERNEL32.DLL:
;; category DebuggingAndErrorHandling:

(setq LPDEBUG_EVENT LPVOID)

(import "KERNEL32.DLL" "ContinueDebugEvent" FailOnFalse
    DWORD ; dwProcessId,
    DWORD ; dwThreadId,
    DWORD ; dwContinueStatus
)

(import "KERNEL32.DLL" "DebugActiveProcess" FailOnFalse
    DWORD ; dwProcessId
)

(import "KERNEL32.DLL" "DebugBreak" VOID
     ; 
)

(import "KERNEL32.DLL" "FatalExit" VOID
    INT ; ExitCode
)

(import "KERNEL32.DLL" "FlushInstructionCache" FailOnFalse
    HANDLE ; hProcess,
    LPCVOID ; lpBaseAddress,
    DWORD ; dwSize
)

(import "KERNEL32.DLL" "GetThreadContext" FailOnFalse
    HANDLE ; hThread,
    LPCONTEXT ; lpContext
)

(import "KERNEL32.DLL" "GetThreadSelectorEntry" FailOnFalse
    HANDLE ; hThread,
    DWORD ; dwSelector,
    LPVOID ; lpSelectorEntry
)

(import "KERNEL32.DLL" "IsDebuggerPresent" BOOL
     ; 
)

(import "KERNEL32.DLL" "OutputDebugStringA" VOID
    LPCSTR ; lpOutputString
)

(import "KERNEL32.DLL" "OutputDebugStringW" VOID
    LPCWSTR ; lpOutputString
)

(import "KERNEL32.DLL" "SetThreadContext" FailOnFalse
    HANDLE ; hThread,
    LPCONTEXT ; lpContext
)

(import "KERNEL32.DLL" "WaitForDebugEvent" FailOnFalse
    LPDEBUG_EVENT ; lpDebugEvent,
    DWORD ; dwMilliseconds
)







(import "KERNEL32.DLL" "Beep" FailOnFalse
    DWORD ; dwFreq,
    DWORD ; dwDuration
)

(import "KERNEL32.DLL" "FatalAppExitA" VOID
    UINT ; uAction,
    LPCSTR ; lpMessageText
)

(import "KERNEL32.DLL" "FatalAppExitW" VOID
    UINT ; uAction,
    LPCWSTR ; lpMessageText
)

;; module KERNEL32.DLL:

;; mask DWORD FormatMessageFlags {
(setq FormatMessageFlags DWORD)
(setq FORMAT_MESSAGE_ALLOCATE_BUFFER 0x00000100)
(setq FORMAT_MESSAGE_IGNORE_INSERTS 0x00000200)
(setq FORMAT_MESSAGE_FROM_STRING 0x00000400)
(setq FORMAT_MESSAGE_FROM_HMODULE 0x00000800)
(setq FORMAT_MESSAGE_FROM_SYSTEM 0x00001000)
(setq FORMAT_MESSAGE_ARGUMENT_ARRAY 0x00002000)
(setq FORMAT_MESSAGE_MAX_WIDTH_MASK 0x000000FF)
;; };

(import "KERNEL32.DLL" "FormatMessageA" DwordFailIfZero
    FormatMessageFlags ; dwFlags,
    LPCVOID ; lpSource,
    DWORD ; dwMessageId,
    DWORD ; dwLanguageId,
    LPSTR ; lpBuffer,
    DWORD ; nSize,
    PVOID ; Arguments
)

(import "KERNEL32.DLL" "FormatMessageW" DwordFailIfZero
    FormatMessageFlags ; dwFlags,
    LPCVOID ; lpSource,
    DWORD ; dwMessageId,
    DWORD ; dwLanguageId,
    LPWSTR ; lpBuffer,
    DWORD ; nSize,
    PVOID ; Arguments
)


(import "KERNEL32.DLL" "GetLastError" DWORD
     ; 
)


;; value UINT MessageBeepType {
(setq MessageBeepType UINT)
(setq MB_OK 0x00000000)
(setq MB_ICONHAND 0x00000010)
(setq MB_ICONQUESTION 0x00000020)
(setq MB_ICONEXCLAMATION 0x00000030)
(setq MB_ICONASTERISK 0x00000040)
;; };

;; module USER32.DLL:
(import "USER32.DLL" "MessageBeep" FailOnFalse
    MessageBeepType ; uType
)

;; value UINT SetErrorModeType {
(setq SetErrorModeType UINT)
(setq SEM_FAILCRITICALERRORS 0x0001)
(setq SEM_NOGPFAULTERRORBOX 0x0002)
(setq SEM_NOALIGNMENTFAULTEXCEPT 0x0004)
(setq SEM_NOOPENFILEERRORBOX 0x8000)
;; };

;; module KERNEL32.DLL:
(import "KERNEL32.DLL" "SetErrorMode" UINT
    SetErrorModeType ; uMode
)

(import "KERNEL32.DLL" "SetLastError" VOID
    DWORD ; dwErrCode
)

;; module USER32.DLL:
(import "USER32.DLL" "SetLastErrorEx" VOID
    DWORD ; dwErrCode,
    DWORD ; dwType
)










;; module KERNEL32.DLL:
;; mask DWORD CreateToolhelp32SnapshotFlags {
(setq CreateToolhelp32SnapshotFlags DWORD)
(setq TH32CS_SNAPHEAPLIST 0x00000001)
(setq TH32CS_SNAPPROCESS 0x00000002)
(setq TH32CS_SNAPTHREAD 0x00000004)
(setq TH32CS_SNAPMODULE 0x00000008)
(setq TH32CS_INHERIT 0x80000000)
;; };

;; value DWORD HeapList32Type {
(setq HeapList32Type DWORD)
(setq HF32_DEFAULT 1)
(setq HF32_SHARED 2)
;; };

;; typedef struct tagHEAPLIST32 { {
(struct 'tagHEAPLIST32
    SIZE_T ; dwSize
    DWORD ; th32ProcessID;
    ULONG_PTR ; th32HeapID;
    HeapList32Type ; dwFlags
)
(setq HEAPLIST32 tagHEAPLIST32)
;; } HEAPLIST32
(setq PHEAPLIST32 "void*")
(setq LPHEAPLIST32 "void*")

;; mask DWORD HeapEntry32Flags {
(setq HeapEntry32Flags DWORD)
(setq LF32_FIXED 0x00000001)
(setq LF32_FREE 0x00000002)
(setq LF32_MOVEABLE 0x00000004)
;; };

;; typedef struct tagHEAPENTRY32 { {
(struct 'tagHEAPENTRY32
    SIZE_T ; dwSize
    HANDLE ; hHandle;
    ULONG_PTR ; dwAddress;
    SIZE_T ; dwBlockSize;
    HeapEntry32Flags ; dwFlags
    DWORD ; dwLockCount
    DWORD ; dwResvd
    DWORD ; th32ProcessID;
    ULONG_PTR ; th32HeapID;
)
(setq HEAPENTRY32 tagHEAPENTRY32)
;; } HEAPENTRY32
(setq PHEAPENTRY32 "void*")
(setq LPHEAPENTRY32 "void*")

(import "KERNEL32.DLL" "CreateToolhelp32Snapshot" HANDLE
    CreateToolhelp32SnapshotFlags ; dwFlags,
    DWORD ; th32ProcessID
)


(import "KERNEL32.DLL" "Heap32ListFirst" FailOnFalse
    HANDLE ; hSnapshot,
    LPHEAPLIST32 ; lphl
)

(import "KERNEL32.DLL" "Heap32ListNext" FailOnFalse
    HANDLE ; hSnapshot,
    LPHEAPLIST32 ; lphl
)

(import "KERNEL32.DLL" "Heap32First" FailOnFalse
    LPHEAPENTRY32 ; lphe,
    DWORD ; th32ProcessID,
    ULONG_PTR ; th32HeapID
)

(import "KERNEL32.DLL" "Heap32Next" FailOnFalse
    LPHEAPENTRY32 ; lphe
)

(import "KERNEL32.DLL" "Toolhelp32ReadProcessMemory" FailOnFalse
    DWORD ; th32ProcessID,
    LPCVOID ; lpBaseAddress,
    LPVOID ; lpBuffer,
    SIZE_T ; cbRead,
    SIZE_T ; (pointer) lpNumberOfBytesRead
)

;; typedef struct tagPROCESSENTRY32W { {
(struct 'tagPROCESSENTRY32W
    DWORD ; dwSize
    DWORD ; cntUsage
    DWORD ; th32ProcessID;
    ULONG_PTR ; th32DefaultHeapID
    DWORD ; th32ModuleID;
    DWORD ; cntThreads
    DWORD ; th32ParentProcessID;
    LONG ; pcPriClassBase;
    DWORD ; dwFlags
    WCHAR ; szExeFile;
)
(setq PROCESSENTRY32W tagPROCESSENTRY32W)
;; } PROCESSENTRY32W
(setq PPROCESSENTRY32W "void*")
(setq LPPROCESSENTRY32W "void*")

;; typedef struct tagPROCESSENTRY32 { {
(struct 'tagPROCESSENTRY32
    DWORD ; dwSize
    DWORD ; cntUsage
    DWORD ; th32ProcessID;
    ULONG_PTR ; th32DefaultHeapID
    DWORD ; th32ModuleID;
    DWORD ; cntThreads
    DWORD ; th32ParentProcessID;
    LONG ; pcPriClassBase;
    DWORD ; dwFlags
    CHAR ; szExeFile;
)
(setq PROCESSENTRY32 tagPROCESSENTRY32)
;; } PROCESSENTRY32
(setq PPROCESSENTRY32 "void*")
(setq LPPROCESSENTRY32 "void*")

(import "KERNEL32.DLL" "Process32FirstW" FailOnFalse
    HANDLE ; hSnapshot,
    LPPROCESSENTRY32W ; lppe
)

(import "KERNEL32.DLL" "Process32NextW" FailOnFalse
    HANDLE ; hSnapshot,
    LPPROCESSENTRY32W ; lppe
)

(import "KERNEL32.DLL" "Process32First" FailOnFalse
    HANDLE ; hSnapshot,
    LPPROCESSENTRY32 ; lppe
)

(import "KERNEL32.DLL" "Process32Next" FailOnFalse
    HANDLE ; hSnapshot,
    LPPROCESSENTRY32 ; lppe
)

;; typedef struct tagTHREADENTRY32 { {
(struct 'tagTHREADENTRY32
    DWORD ; dwSize
    DWORD ; cntUsage
    DWORD ; th32ThreadID;
    DWORD ; th32OwnerProcessID;
    LONG ; tpBasePri
    LONG ; tpDeltaPri
    DWORD ; dwFlags
)
(setq THREADENTRY32 tagTHREADENTRY32)
;; } THREADENTRY32
(setq PTHREADENTRY32 "void*")
(setq LPTHREADENTRY32 "void*")

(import "KERNEL32.DLL" "Thread32First" FailOnFalse
    HANDLE ; hSnapshot,
    LPTHREADENTRY32 ; lpte
)

(import "KERNEL32.DLL" "Thread32Next" FailOnFalse
    HANDLE ; hSnapshot,
    LPTHREADENTRY32 ; lpte
)

;; typedef struct tagMODULEENTRY32W { {
(struct 'tagMODULEENTRY32W
    DWORD ; dwSize
    DWORD ; th32ModuleID;
    DWORD ; th32ProcessID;
    DWORD ; GlblcntUsage;
    DWORD ; ProccntUsage;
    (string BYTE "*") ; modBaseAddr;
    DWORD ; modBaseSize;
    HMODULE ; hModule;
    WCHAR ; szModule
    WCHAR ; szExePath
)
(setq MODULEENTRY32W tagMODULEENTRY32W)
;; } MODULEENTRY32W
(setq PMODULEENTRY32W "void*")
(setq LPMODULEENTRY32W "void*")

(import "KERNEL32.DLL" "Module32FirstW" FailOnFalse
    HANDLE ; hSnapshot,
    LPMODULEENTRY32W ; lpme
)

(import "KERNEL32.DLL" "Module32NextW" FailOnFalse
    HANDLE ; hSnapshot,
    LPMODULEENTRY32W ; lpme
)


;; typedef struct tagMODULEENTRY32 { {
(struct 'tagMODULEENTRY32
    DWORD ; dwSize
    DWORD ; th32ModuleID;
    DWORD ; th32ProcessID;
    DWORD ; GlblcntUsage;
    DWORD ; ProccntUsage;
    (string BYTE "*") ; modBaseAddr;
    DWORD ; modBaseSize;
    HMODULE ; hModule;
    "char" ; szModule
    "char" ; szExePath
)
(setq MODULEENTRY32 tagMODULEENTRY32)
;; } MODULEENTRY32
(setq PMODULEENTRY32 "void*")
(setq LPMODULEENTRY32 "void*")






(import "KERNEL32.DLL" "Module32First" FailOnFalse
    HANDLE ; hSnapshot,
    LPMODULEENTRY32 ; lpme
)

(import "KERNEL32.DLL" "Module32Next" FailOnFalse
    HANDLE ; hSnapshot,
    LPMODULEENTRY32 ; lpme
)
