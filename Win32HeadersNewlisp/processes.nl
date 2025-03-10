(context 'WIN32)


;; category ProcessesAndThreads:

;; mask DWORD CreateProcessCreationFlags {
(setq CreateProcessCreationFlags DWORD)
(setq DEBUG_PROCESS 0x00000001)
(setq DEBUG_ONLY_THIS_PROCESS 0x00000002)
(setq CREATE_SUSPENDED 0x00000004)
(setq DETACHED_PROCESS 0x00000008)
(setq CREATE_NEW_CONSOLE 0x00000010)
(setq NORMAL_PRIORITY_CLASS 0x00000020)
(setq IDLE_PRIORITY_CLASS 0x00000040)
(setq HIGH_PRIORITY_CLASS 0x00000080)
(setq REALTIME_PRIORITY_CLASS 0x00000100)
(setq CREATE_NEW_PROCESS_GROUP 0x00000200)
(setq CREATE_UNICODE_ENVIRONMENT 0x00000400)
(setq CREATE_SEPARATE_WOW_VDM 0x00000800)
(setq CREATE_SHARED_WOW_VDM 0x00001000)
(setq CREATE_FORCEDOS 0x00002000)
(setq CREATE_DEFAULT_ERROR_MODE 0x04000000)
(setq CREATE_NO_WINDOW 0x08000000)

;; };

;; value DWORD DLLReason {
(setq DLLReason DWORD)
(setq DLL_PROCESS_DETACH 0)
(setq DLL_PROCESS_ATTACH 1)
(setq DLL_THREAD_ATTACH 2)
(setq DLL_THREAD_DETACH 3)
;; };

;; mask DWORD LoadLibFlags {
(setq LoadLibFlags DWORD)
(setq DONT_RESOLVE_DLL_REFERENCES 0x00000001)
(setq LOAD_LIBRARY_AS_DATAFILE 0x00000002)
(setq LOAD_WITH_ALTERED_SEARCH_PATH 0x00000008)
;; };


;; value DWORD GetGuiResourcesFlags {
(setq GetGuiResourcesFlags DWORD)
(setq GR_GDIOBJECTS 0)
(setq GR_USEROBJECTS 1)
;; };

;; typedef struct _IO_COUNTERS  { {
(struct '_IO_COUNTERS
    ULONGLONG ; ReadOperationCount
    ULONGLONG ; WriteOperationCount
    ULONGLONG ; OtherOperationCount
    ULONGLONG ; ReadTransferCount
    ULONGLONG ; WriteTransferCount
    ULONGLONG ; OtherTransferCount
)
(setq IO_COUNTERS _IO_COUNTERS)
;; } IO_COUNTERS
(setq LPIO_COUNTERS "void*")

;; value LPDWORD ProcessShutdownFlags {
(setq ProcessShutdownFlags LPDWORD)
(setq SHUTDOWN_NORETRY 0x00000001)
;; };



;; mask DWORD JobObjectAccess {
(setq JobObjectAccess DWORD)
(setq JOB_OBJECT_ASSIGN_PROCESS 0x0001)
(setq JOB_OBJECT_SET_ATTRIBUTES 0x0002)
(setq JOB_OBJECT_QUERY 0x0004)
(setq JOB_OBJECT_TERMINATE 0x0008)
(setq JOB_OBJECT_SET_SECURITY_ATTRIBUTES 0x0010)
;; };

;; mask DWORD ProcessAccess {
(setq ProcessAccess DWORD)
(setq PROCESS_CREATE_PROCESS 0x0080)
(setq PROCESS_CREATE_THREAD 0x0002)
(setq PROCESS_DUP_HANDLE 0x0040)
(setq PROCESS_QUERY_INFORMATION 0x0400)
(setq PROCESS_SET_QUOTA 0x0100)
(setq PROCESS_SET_INFORMATION 0x0200)
(setq PROCESS_TERMINATE 0x0001)
(setq PROCESS_VM_OPERATION 0x0008)
(setq PROCESS_VM_READ 0x0010)
(setq PROCESS_VM_WRITE 0x0020)
(setq SYNCHRONIZE 0x00100000)
;; };

;; mask DWORD ThreadAccess {
(setq ThreadAccess DWORD)
(setq SYNCHRONIZE 0x00100000)
(setq THREAD_TERMINATE 0x0001)
(setq THREAD_SUSPEND_RESUME 0x0002)
(setq THREAD_GET_CONTEXT 0x0008)
(setq THREAD_SET_CONTEXT 0x0010)
(setq THREAD_SET_INFORMATION 0x0020)
(setq THREAD_QUERY_INFORMATION 0x0040)
(setq THREAD_SET_THREAD_TOKEN 0x0080)
;; };

;; mask ULONG QueueUserWorkItemFlags {
(setq QueueUserWorkItemFlags ULONG)
(setq WT_EXECUTEDEFAULT 0x00000000)
(setq WT_EXECUTEINIOTHREAD 0x00000001)
(setq WT_EXECUTEINUITHREAD 0x00000002)
(setq WT_EXECUTEINWAITTHREAD 0x00000004)
(setq WT_EXECUTEDELETEWAIT 0x00000008)
(setq WT_EXECUTEINLONGTHREAD 0x00000010)
;; };

;; value DWORD SleepExReturnValue {
(setq SleepExReturnValue DWORD)
(setq Interval_Expired 0)
(setq Returned_due_to_CallBack 0x000000C0)
;; };

;; value DWORD ExceptionFlags {
(setq ExceptionFlags DWORD)
(setq NULL 0)
(setq EXCEPTION_NONCONTINUABLE 0x1)
;; };

;; module KERNEL32.DLL:

(import "KERNEL32.DLL" "AssignProcessToJobObject" FailOnFalse
    HANDLE ; hJob,
    HANDLE ; hProcess
)

;; module SHELL32.DLL:
(import "SHELL32.DLL" "CommandLineToArgvW" LpwstrFailIfNull
    LPCWSTR ; lpCmdLine,
    "void*" ; pNumArgs
)

;; module KERNEL32.DLL:
(import "KERNEL32.DLL" "ConvertThreadToFiber" LpvoidFailIfNull
    LPVOID ; lpParameter
)

(import "KERNEL32.DLL" "CreateFiber" LpvoidFailIfNull
    DWORD ; dwStackSize,
    LPFIBER_START_ROUTINE ; lpStartAddress,
    LPVOID ; lpParameter
)

(import "KERNEL32.DLL" "CreateJobObjectA" HANDLE
    LPSECURITY_ATTRIBUTES ; lpJobAttributes,
    LPCSTR ; lpName
)

(import "KERNEL32.DLL" "CreateJobObjectW" HANDLE
    LPSECURITY_ATTRIBUTES ; lpJobAttributes,
    LPCWSTR ; lpName
)

(import "KERNEL32.DLL" "CreateProcessA" FailOnFalse
    LPCSTR ; lpApplicationName,
    LPSTR ; lpCommandLine,
    LPSECURITY_ATTRIBUTES ; lpProcessAttributes,
    LPSECURITY_ATTRIBUTES ; lpThreadAttributes,
    BOOL ; bInheritHandles,
    CreateProcessCreationFlags ; dwCreationFlags,
    LPVOID ; lpEnvironment,
    LPCSTR ; lpCurrentDirectory,
    LPSTARTUPINFOA ; lpStartupInfo,
    LPPROCESS_INFORMATION ; lpProcessInformation
)

(import "KERNEL32.DLL" "CreateProcessW" FailOnFalse
    LPCWSTR ; lpApplicationName,
    LPWSTR ; lpCommandLine,
    LPSECURITY_ATTRIBUTES ; lpProcessAttributes,
    LPSECURITY_ATTRIBUTES ; lpThreadAttributes,
    BOOL ; bInheritHandles,
    CreateProcessCreationFlags ; dwCreationFlags,
    LPVOID ; lpEnvironment,
    LPCWSTR ; lpCurrentDirectory,
    LPSTARTUPINFOW ; lpStartupInfo,
    LPPROCESS_INFORMATION ; lpProcessInformation
)

;; module ADVAPI32.DLL:
(import "ADVAPI32.DLL" "CreateProcessAsUserA" FailOnFalse
    HANDLE ; hToken,
    LPCSTR ; lpApplicationName,
    LPSTR ; lpCommandLine,
    LPSECURITY_ATTRIBUTES ; lpProcessAttributes,
    LPSECURITY_ATTRIBUTES ; lpThreadAttributes,
    BOOL ; bInheritHandles,
    CreateProcessCreationFlags ; dwCreationFlags,
    LPVOID ; lpEnvironment,
    LPCSTR ; lpCurrentDirectory,
    LPSTARTUPINFOA ; lpStartupInfo,
    LPPROCESS_INFORMATION ; lpProcessInformation
)

(import "ADVAPI32.DLL" "CreateProcessAsUserW" FailOnFalse
    HANDLE ; hToken,
    LPCWSTR ; lpApplicationName,
    LPWSTR ; lpCommandLine,
    LPSECURITY_ATTRIBUTES ; lpProcessAttributes,
    LPSECURITY_ATTRIBUTES ; lpThreadAttributes,
    BOOL ; bInheritHandles,
    CreateProcessCreationFlags ; dwCreationFlags,
    LPVOID ; lpEnvironment,
    LPCWSTR ; lpCurrentDirectory,
    LPSTARTUPINFOW ; lpStartupInfo,
    LPPROCESS_INFORMATION ; lpProcessInformation
)

(import "ADVAPI32.DLL" "CreateProcessWithLogonW" FailOnFalse
    LPCWSTR ; lpUsername,
    LPCWSTR ; lpDomain,
    LPCWSTR ; lpPassword,
    LPCWSTR ; lpApplicationName,
    LPWSTR ; lpCommandLine,
    CreateProcessCreationFlags ; dwCreationFlags,
    LPVOID ; lpEnvironment,
    LPCWSTR ; lpCurrentDirectory,
    LPSTARTUPINFOW ; lpStartupInfo,
    LPPROCESS_INFORMATION ; lpProcessInformation
)

;; module KERNEL32.DLL:
(import "KERNEL32.DLL" "CreateRemoteThread" HANDLE
    HANDLE ; hProcess,
    LPSECURITY_ATTRIBUTES ; lpThreadAttributes,
    DWORD ; dwStackSize,
    LPTHREAD_START_ROUTINE ; lpStartAddress,
    LPVOID ; lpParameter,
    CreateProcessCreationFlags ; dwCreationFlags,
    LPDWORD ; lpThreadId
)

(import "KERNEL32.DLL" "CreateThread" HANDLE
    LPSECURITY_ATTRIBUTES ; lpThreadAttributes,
    DWORD ; dwStackSize,
    LPTHREAD_START_ROUTINE ; lpStartAddress,
    LPVOID ; lpParameter,
    CreateProcessCreationFlags ; dwCreationFlags,
    LPDWORD ; lpThreadId
)

(import "KERNEL32.DLL" "DeleteFiber" VOID
    LPVOID ; lpFiber
)

(import "KERNEL32.DLL" "ExitProcess" VOID
    UINT ; uExitCode
)

(import "KERNEL32.DLL" "ExitThread" VOID
    DWORD ; dwExitCode
)

(import "KERNEL32.DLL" "FreeEnvironmentStringsA" FailOnFalse
    LPSTR ; lpszEnvironmentBlock
)

(import "KERNEL32.DLL" "FreeEnvironmentStringsW" FailOnFalse
    LPWSTR ; lpszEnvironmentBlock
)

(import "KERNEL32.DLL" "GetCommandLineA" LPSTR
     ; 
)

(import "KERNEL32.DLL" "GetCommandLineW" LPWSTR
     ; 
)

(import "KERNEL32.DLL" "GetCurrentProcess" DWORD
     ; 
)

(import "KERNEL32.DLL" "GetCurrentProcessId" ProcessId
     ; 
)
(import "KERNEL32.DLL" "GetCurrentThreadId" ThreadId
     ; 
)

(import "KERNEL32.DLL" "GetCurrentThread" HANDLE
     ; 
)

(import "KERNEL32.DLL" "GetEnvironmentStrings" LPSTR
     ; 
)

(import "KERNEL32.DLL" "GetEnvironmentStringsW" LPWSTR
     ; 
)

(import "KERNEL32.DLL" "GetEnvironmentVariableA" DwordFailIfZero
    LPCSTR ; lpName,
    LPSTR ; lpBuffer,
    DWORD ; nSize
)

(import "KERNEL32.DLL" "GetEnvironmentVariableW" DwordFailIfZero
    LPCWSTR ; lpName,
    LPWSTR ; lpBuffer,
    DWORD ; nSize
)

(import "KERNEL32.DLL" "GetExitCodeProcess" FailOnFalse
    HANDLE ; hProcess,
    LPDWORD ; lpExitCode
)

(import "KERNEL32.DLL" "GetExitCodeThread" FailOnFalse
    HANDLE ; hThread,
    LPDWORD ; lpExitCode
)

;; module USER32.DLL:
(import "USER32.DLL" "GetGuiResources" DwordFailIfZero
    HANDLE ; hProcess,
    GetGuiResourcesFlags ; uiFlags
)

;; module KERNEL32.DLL:
(import "KERNEL32.DLL" "GetPriorityClass" DWORD
    HANDLE ; hProcess
)

(import "KERNEL32.DLL" "GetProcessAffinityMask" FailOnFalse
    HANDLE ; hProcess,
    LPDWORD ; lpProcessAffinityMask,
    LPDWORD ; lpSystemAffinityMask
)

(import "KERNEL32.DLL" "GetProcessIoCounters" FailOnFalse
    HANDLE ; hProcess,
    LPIO_COUNTERS ; lpIoCounters
)

(import "KERNEL32.DLL" "GetProcessPriorityBoost" FailOnFalse
    HANDLE ; hProcess,
    PBOOL ; pDisablePriorityBoost
)

(import "KERNEL32.DLL" "GetProcessShutdownParameters" FailOnFalse
    LPDWORD ; lpdwLevel,
    "void*" ; lpdwFlags
)

(import "KERNEL32.DLL" "GetProcessTimes" FailOnFalse
    HANDLE ; hProcess,
    LPFILETIME ; lpCreationTime,
    LPFILETIME ; lpExitTime,
    LPFILETIME ; lpKernelTime,
    LPFILETIME ; lpUserTime
)

(import "KERNEL32.DLL" "GetProcessVersion" DwordFailIfZero
    ProcessId ; dwProcessId
)

(import "KERNEL32.DLL" "GetProcessWorkingSetSize" FailOnFalse
    HANDLE ; hProcess,
    LPDWORD ; lpMinimumWorkingSetSize,
    LPDWORD ; lpMaximumWorkingSetSize
)

(import "KERNEL32.DLL" "GetStartupInfoA" VOID
    LPSTARTUPINFOA ; lpStartupInfo
)

(import "KERNEL32.DLL" "GetStartupInfoW" VOID
    LPSTARTUPINFOW ; lpStartupInfo
)

(import "KERNEL32.DLL" "GetThreadPriority" ThreadPriority
    HANDLE ; hThread
)

(import "KERNEL32.DLL" "GetThreadPriorityBoost" FailOnFalse
    HANDLE ; hThread,
    PBOOL ; pDisablePriorityBoost
)

(import "KERNEL32.DLL" "GetThreadTimes" FailOnFalse
    HANDLE ; hThread,
    LPFILETIME ; lpCreationTime,
    LPFILETIME ; lpExitTime,
    LPFILETIME ; lpKernelTime,
    LPFILETIME ; lpUserTime
)

(import "KERNEL32.DLL" "OpenJobObjectA" HANDLE
    JobObjectAccess ; dwDesiredAccess,
    BOOL ; bInheritHandles,
    LPCSTR ; lpName
)

(import "KERNEL32.DLL" "OpenJobObjectW" HANDLE
    JobObjectAccess ; dwDesiredAccess,
    BOOL ; bInheritHandles,
    LPCWSTR ; lpName
)

(import "KERNEL32.DLL" "OpenProcess" HANDLE
    ProcessAccess ; dwDesiredAccess,
    BOOL ; bInheritHandle,
    DWORD ; dwProcessId
)

(import "KERNEL32.DLL" "OpenThread" HANDLE
    ThreadAccess ; dwDesiredAccess,
    BOOL ; bInheritHandle,
    DWORD ; dwThreadId
)

(import "KERNEL32.DLL" "QueryInformationJobObject" FailOnFalse
    HANDLE ; hJob,
    DWORD ; JobObjectInformationClass,
    LPVOID ; lpJobObjectInformation,
    DWORD ; cbJobObjectInformationLength,
    LPDWORD ; lpReturnLength
)

(import "KERNEL32.DLL" "QueueUserWorkItem" FailOnFalse
    LPTHREAD_START_ROUTINE ; Function,
    PVOID ; Context,
    QueueUserWorkItemFlags ; Flags
)

(import "KERNEL32.DLL" "RaiseException" VOID
    DWORD ; dwExceptionCode,
    ExceptionFlags ; dwExceptionFlags,
    DWORD ; nNumberOfArguments,
    "void*" ; lpArguments
)

(import "KERNEL32.DLL" "ResumeThread" DwordFailIf0xFFFFFFFF
    HANDLE ; hThread
)

(import "KERNEL32.DLL" "SetEnvironmentVariableA" FailOnFalse
    LPCSTR ; lpName,
    LPCSTR ; lpValue
)

(import "KERNEL32.DLL" "SetEnvironmentVariableW" FailOnFalse
    LPCWSTR ; lpName,
    LPCWSTR ; lpValue
)

(import "KERNEL32.DLL" "SetInformationJobObject" BOOL
    HANDLE ; hJob,
    DWORD ; JobObjectInformationClass,
    LPVOID ; lpJobObjectInformation,
    DWORD ; cbJobObjectInformationLength
)

(import "KERNEL32.DLL" "SetPriorityClass" FailOnFalse
    HANDLE ; hProcess,
    CreateProcessCreationFlags ; dwPriorityClass
)

(import "KERNEL32.DLL" "SetProcessAffinityMask" FailOnFalse
    HANDLE ; hProcess,
    DWORD ; dwProcessAffinityMask
)

(import "KERNEL32.DLL" "SetProcessPriorityBoost" FailOnFalse
    HANDLE ; hProcess,
    BOOL ; DisablePriorityBoost
)

(import "KERNEL32.DLL" "SetProcessShutdownParameters" FailOnFalse
    DWORD ; dwLevel,
    ProcessShutdownFlags ; dwFlags
)

(import "KERNEL32.DLL" "SetProcessWorkingSetSize" FailOnFalse
    HANDLE ; hProcess,
    DWORD ; dwMinimumWorkingSetSize,
    DWORD ; dwMaximumWorkingSetSize
)

(import "KERNEL32.DLL" "SetThreadAffinityMask" DwordFailIfZero
    HANDLE ; hThread,
    DWORD ; dwThreadAffinityMask
)

(import "KERNEL32.DLL" "SetThreadIdealProcessor" DwordFailIfNeg1
    HANDLE ; hThread,
    DWORD ; dwIdealProcessor
)

(import "KERNEL32.DLL" "SetThreadPriority" FailOnFalse
    HANDLE ; hThread,
    ThreadPriority ; nPriority
)

(import "KERNEL32.DLL" "SetThreadPriorityBoost" FailOnFalse
    HANDLE ; hThread,
    BOOL ; DisablePriorityBoost
)

(import "KERNEL32.DLL" "Sleep" VOID
    DWORD ; dwMilliseconds
)

(import "KERNEL32.DLL" "SleepEx" SleepExReturnValue
    DWORD ; dwMilliseconds,
    BOOL ; bAlertable
)

(import "KERNEL32.DLL" "SuspendThread" DwordFailIf0xFFFFFFFF
    HANDLE ; hThread
)

(import "KERNEL32.DLL" "SwitchToFiber" VOID
    LPVOID ; lpFiber
)

(import "KERNEL32.DLL" "SwitchToThread" BOOL
     ; 
)

(import "KERNEL32.DLL" "TerminateJobObject" FailOnFalse
    HANDLE ; hJob,
    UINT ; uExitCode
)

(import "KERNEL32.DLL" "TerminateProcess" FailOnFalse
    HANDLE ; hProcess,
    UINT ; uExitCode
)

(import "KERNEL32.DLL" "TerminateThread" FailOnFalse
    HANDLE ; hThread,
    DWORD ; dwExitCode
)

;; category ThreadLocalStorage:
(import "KERNEL32.DLL" "TlsAlloc" DwordFailIf0xFFFFFFFF
     ; 
)

(import "KERNEL32.DLL" "TlsFree" FailOnFalse
    DWORD ; dwTlsIndex
)

(import "KERNEL32.DLL" "TlsGetValue" LpvoidFailIfNull
    DWORD ; dwTlsIndex
)

(import "KERNEL32.DLL" "TlsSetValue" FailOnFalse
    DWORD ; dwTlsIndex,
    LPVOID ; lpTlsValue
)

;; category ProcessesAndThreads:

;; module USER32.DLL:
(import "USER32.DLL" "UserHandleGrantAccess" FailOnFalse
    HANDLE ; hUserHandle,
    HANDLE ; hJob,
    BOOL ; bGrant
)

;; module KERNEL32.DLL:
(import "KERNEL32.DLL" "WinExec" WinError
    ;LPCSTR ; lpCmdLine,
    ;UINT ; uCmdShow
)



(import "KERNEL32.DLL" "DisableThreadLibraryCalls" DwordFailIfZero
    HMODULE ; hLibModule
)

(import "KERNEL32.DLL" "FreeLibrary" DwordFailIfZero
    HMODULE ; hLibModule
)

(import "KERNEL32.DLL" "GetModuleFileNameA" DwordFailIfZero
    HMODULE ; hModule,
    LPSTR ; lpFilename,
    DWORD ; nSize
)

(import "KERNEL32.DLL" "GetModuleFileNameW" DwordFailIfZero
    HMODULE ; hModule,
    LPWSTR ; lpFilename,
    DWORD ; nSize
)


(import "KERNEL32.DLL" "FreeLibraryAndExitThread" VOID
    HMODULE ; hLibModule,
    DWORD ; dwExitCode
)



(import "KERNEL32.DLL" "GetModuleHandleA" DwordFailIfZero
    LPCSTR ; lpModuleName
)

(import "KERNEL32.DLL" "GetModuleHandleW" DwordFailIfZero
    LPCWSTR ; lpModuleName
)



(import "KERNEL32.DLL" "GetProcAddress" LpvoidFailIfNull
    HMODULE ; hModule,
    LPCSTR ; lpProcName
)

(import "KERNEL32.DLL" "LoadLibraryA" HMODULE
    LPCSTR ; lpLibFileName
)
(import "KERNEL32.DLL" "LoadLibraryW" HMODULE
    LPCWSTR ; lpLibFileName
)


(import "KERNEL32.DLL" "LoadLibraryExA" HMODULE
    LPCSTR ; lpLibFileName,
    HANDLE ; hFile,
    LoadLibFlags ; dwFlags
)

(import "KERNEL32.DLL" "LoadLibraryExW" HMODULE
    LPCWSTR ; lpLibFileName,
    HANDLE ; hFile,
    LoadLibFlags ; dwFlags
)

(import "KERNEL32.DLL" "LoadModule" DWORD
    LPCSTR ; lpModuleName,
    LPVOID ; lpParameterBlock
)
