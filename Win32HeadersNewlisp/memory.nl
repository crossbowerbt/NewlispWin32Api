(context 'WIN32)

;; category MemoryManagementFunctions:

;; mask DWORD AccessProtectionType {
(setq AccessProtectionType DWORD)
(setq PAGE_NOACCESS 0x01)
(setq PAGE_READONLY 0x02)
(setq PAGE_READWRITE 0x04)
(setq PAGE_WRITECOPY 0x08)
(setq PAGE_EXECUTE 0x10)
(setq PAGE_EXECUTE_READ 0x20)
(setq PAGE_EXECUTE_READWRITE 0x40)
(setq PAGE_EXECUTE_WRITECOPY 0x80)
(setq PAGE_GUARD 0x100)
(setq PAGE_NOCACHE 0x200)
(setq PAGE_WRITECOMBINE 0x400)
(setq SEC_FILE 0x800000)
(setq SEC_IMAGE 0x1000000)
(setq SEC_VLM 0x2000000)
(setq SEC_RESERVE 0x4000000)
(setq SEC_COMMIT 0x8000000)
(setq SEC_NOCACHE 0x10000000)
;; };

;; value UINT UintFailIfGlobalMemInvalid {
(setq UintFailIfGlobalMemInvalid UINT)
(setq GMEM_INVALID_HANDLE 0x8000)
;; };

;; value UINT UintFailIfLocalMemInvalid {
(setq UintFailIfLocalMemInvalid UINT)
(setq LMEM_INVALID_HANDLE 0x8000)
;; };

;; value PVOID64 Pvoid64FailIfNull {
(setq Pvoid64FailIfNull PVOID64)
(setq NULL 0)
;; };

;; value LPVOID HeapAllocFailureReturns {
(setq HeapAllocFailureReturns LPVOID)
(setq NULL 0)
(setq STATUS_NO_MEMORY 0xC0000017)
(setq STATUS_ACCESS_VIOLATION 0xC0000005)
;; };

;; mask UINT AllocationAttributes {
(setq AllocationAttributes UINT)
(setq GMEM_FIXED 0x0000)
(setq GMEM_MOVEABLE 0x0002)

(setq GMEM_SHARE 0x2000)
(setq GMEM_DISCARDABLE 0x0100)
(setq GMEM_LOWER 0x1000)
(setq GMEM_NOCOMPACT 0x0010)
(setq GMEM_NODISCARD 0x0020)
(setq GMEM_NOT_BANKED 0x1000)
(setq GMEM_NOTIFY 0x4000)
(setq GMEM_ZEROINIT 0x0040)
;; };

;; mask UINT LocalAllocationAttributes {
(setq LocalAllocationAttributes UINT)
(setq LMEM_FIXED 0x0000)
(setq LMEM_MOVEABLE 0x0002)
(setq LMEM_DISCARDABLE 0x0F00)
(setq LMEM_NOCOMPACT 0x0010)
(setq LMEM_NODISCARD 0x0020)
(setq LMEM_ZEROINIT 0x0040)
;; };

;; typedef struct _MEMORYSTATUS  { {
(struct '_MEMORYSTATUS
    DWORD ; dwLength
    DWORD ; dwMemoryLoad
    SIZE_T ; dwTotalPhys
    SIZE_T ; dwAvailPhys
    SIZE_T ; dwTotalPageFile
    SIZE_T ; dwAvailPageFile
    SIZE_T ; dwTotalVirtual
    SIZE_T ; dwAvailVirtual
)
(setq MEMORYSTATUS _MEMORYSTATUS)
;; } MEMORYSTATUS
(setq LPMEMORYSTATUS "void*")

;; typedef struct _MEMORYSTATUSEX  { {
(struct '_MEMORYSTATUSEX
    DWORD ; dwLength
    DWORD ; dwMemoryLoad
    DWORDLONG ; ullTotalPhys
    DWORDLONG ; ullAvailPhys
    DWORDLONG ; ullTotalPageFile
    DWORDLONG ; ullAvailPageFile
    DWORDLONG ; ullTotalVirtual
    DWORDLONG ; ullAvailVirtual
    DWORDLONG ; ullAvailExtendedVirtual
)
(setq MEMORYSTATUSEX _MEMORYSTATUSEX)
;; } MEMORYSTATUSEX
(setq LPMEMORYSTATUSEX "void*")

;; mask DWORD HeapAllocationControl {
(setq HeapAllocationControl DWORD)
(setq HEAP_GENERATE_EXCEPTIONS 0x00000004)
(setq HEAP_NO_SERIALIZE 0x00000001)
(setq HEAP_ZERO_MEMORY 0x00000008)
;; };

;; typedef struct _Region  { {
(struct '_Region
    DWORD ; dwCommittedSize
    DWORD ; dwUnCommittedSize
    LPVOID ; lpFirstBlock
    LPVOID ; lpLastBlock
     ; 
)

;; typedef struct _PROCESS_HEAP_ENTRY  { {
(struct '_PROCESS_HEAP_ENTRY
    PVOID ; lpData
    DWORD ; cbData
    BYTE ; cbOverhead
    BYTE ; iRegionIndex
    WORD ; wFlags
    ; Region
    DWORD ; dwCommittedSize
    DWORD ; dwUnCommittedSize
    LPVOID ; lpFirstBlock
    LPVOID ; lpLastBlock
)
(setq PROCESS_HEAP_ENTRY _PROCESS_HEAP_ENTRY)
;; } PROCESS_HEAP_ENTRY
(setq LPPROCESS_HEAP_ENTRY "void*")

;; value DWORD FileAccessMode {
(setq FileAccessMode DWORD)
(setq FILE_MAP_COPY 0x0001)
(setq FILE_MAP_WRITE 0x0002)
(setq FILE_MAP_READ 0x0004)
;; };

;; mask DWORD AllocationType {
(setq AllocationType DWORD)
(setq MEM_COMMIT 0x1000)
(setq MEM_RESERVE 0x2000)
(setq MEM_DECOMMIT 0x4000)
(setq MEM_RELEASE 0x8000)
(setq MEM_FREE 0x10000)
(setq MEM_PRIVATE 0x20000)
(setq MEM_MAPPED 0x40000)
(setq MEM_RESET 0x80000)
(setq MEM_TOP_DOWN 0x100000)
(setq MEM_4MB_PAGES 0x80000000)

;; };

;; typedef struct _MEMORY_BASIC_INFORMATION  { {
(struct '_MEMORY_BASIC_INFORMATION
    PVOID ; BaseAddress
    PVOID ; AllocationBase
    AccessProtectionType ; AllocationProtect
    SIZE_T ; RegionSize
    AllocationType ; State
    AllocationType ; Protect
    DWORD ; Type
)
(setq MEMORY_BASIC_INFORMATION _MEMORY_BASIC_INFORMATION)
;; } MEMORY_BASIC_INFORMATION
(setq PMEMORY_BASIC_INFORMATION "void*")

;; typedef struct _MEMORY_BASIC_INFORMATION_VLM  { {
(struct '_MEMORY_BASIC_INFORMATION_VLM
    PVOID64 ; BaseAddress
    PVOID64 ; AllocationBase
    ULONGLONG ; RegionSize
    AccessProtectionType ; AllocationProtect
    AllocationType ; State
    AllocationType ; Protect
    DWORD ; Type
)
(setq MEMORY_BASIC_INFORMATION_VLM _MEMORY_BASIC_INFORMATION_VLM)
;; } MEMORY_BASIC_INFORMATION_VLM
(setq PMEMORY_BASIC_INFORMATION_VLM "void*")

;; typedef struct _SYSTEM_INFO  { {
(struct '_SYSTEM_INFO
  DWORD ; dwOemId
  DWORD ; dwPageSize
  LPVOID ; lpMinimumApplicationAddress
  LPVOID ; lpMaximumApplicationAddress
  DWORD_PTR ; dwActiveProcessorMask
  DWORD ; dwNumberOfProcessors
  DWORD ; dwProcessorType
  DWORD ; dwAllocationGranularity
  WORD ; wProcessorLevel
  WORD ; wProcessorRevision
)
(setq SYSTEM_INFO _SYSTEM_INFO)
;; } SYSTEM_INFO

(setq HeapHandle HANDLE)

alias HeapHandle;


;; module KERNEL32.DLL:

(import "KERNEL32.DLL" "AllocateUserPhysicalPages" FailOnFalse
    HANDLE ; hProcess,
    PULONG_PTR ; NumberOfPages,
    PULONG_PTR ; UserPfnArray
)
(import "KERNEL32.DLL" "FreeUserPhysicalPages" FailOnFalse
    HANDLE ; hProcess,
    PULONG_PTR ; NumberOfPages,
    PULONG_PTR ; UserPfnArray
)
(import "KERNEL32.DLL" "GetProcessHeap" HANDLE
     ; 
)
(import "KERNEL32.DLL" "GetProcessHeaps" DwordFailIfZero
    DWORD ; NumberOfHeaps,
    PHANDLE ; ProcessHeaps
)
(import "KERNEL32.DLL" "GetWriteWatch" UINT
    DWORD ; dwFlags,
    PVOID ; lpBaseAddress,
    SIZE_T ; dwRegionSize,
    "void*" ; lpAddresses,
    PULONG_PTR ; lpdwCount,
    PULONG ; lpdwGranularity
)
(import "KERNEL32.DLL" "GlobalAlloc" HGLOBAL
    AllocationAttributes ; uFlags,
    SIZE_T ; dwBytes
)
(import "KERNEL32.DLL" "GlobalFlags" UintFailIfGlobalMemInvalid
    HGLOBAL ; hMem
)
(import "KERNEL32.DLL" "GlobalFree" HGLOBAL
    HGLOBAL ; hMem
)
(import "KERNEL32.DLL" "GlobalHandle" HGLOBAL
    LPCVOID ; pMem
)
(import "KERNEL32.DLL" "GlobalLock" LpvoidFailIfNull
    HGLOBAL ; hMem
)
(import "KERNEL32.DLL" "GlobalMemoryStatus" VOID
    LPMEMORYSTATUS ; lpBuffer
)
(import "KERNEL32.DLL" "GlobalMemoryStatusEx" FailOnFalse
    LPMEMORYSTATUSEX ; lpBuffer
)
(import "KERNEL32.DLL" "GlobalReAlloc" HGLOBAL
    HGLOBAL ; hMem,
    SIZE_T ; dwBytes,
    AllocationAttributes ; uFlags
)
(import "KERNEL32.DLL" "GlobalSize" DwordFailIfZero
    HGLOBAL ; hMem
)
(import "KERNEL32.DLL" "GlobalUnlock" FailOnFalse
    HGLOBAL ; hMem
)

(import "KERNEL32.DLL" "HeapAlloc" HeapAllocFailureReturns
    HeapHandle ; hHeap,
    HeapAllocationControl ; dwFlags,
    SIZE_T ; dwBytes
)
(import "KERNEL32.DLL" "HeapCompact" LongFailIfZero
    HeapHandle ; hHeap,
    HeapAllocationControl ; dwFlags
)
(import "KERNEL32.DLL" "HeapCreate" HeapHandle
    HeapAllocationControl ; flOptions,
    SIZE_T ; dwInitialSize,
    SIZE_T ; dwMaximumSize
)
(import "KERNEL32.DLL" "HeapDestroy" FailOnFalse
    HeapHandle ; hHeap
)
(import "KERNEL32.DLL" "HeapFree" FailOnFalse
    HeapHandle ; hHeap,
    HeapAllocationControl ; dwFlags,
    LPVOID ; lpMem
)
(import "KERNEL32.DLL" "HeapLock" FailOnFalse
    HeapHandle ; hHeap
)
(import "KERNEL32.DLL" "HeapReAlloc" HeapAllocFailureReturns
    HeapHandle ; hHeap,
    HeapAllocationControl ; dwFlags,
    LPVOID ; lpMem,
    SIZE_T ; dwBytes
)
(import "KERNEL32.DLL" "HeapSize" DwordFailIfNeg1
    HeapHandle ; hHeap,
    HeapAllocationControl ; dwFlags,
    LPCVOID ; lpMem
)
(import "KERNEL32.DLL" "HeapUnlock" FailOnFalse
    HeapHandle ; hHeap
)
(import "KERNEL32.DLL" "HeapValidate" FailOnFalse
    HeapHandle ; hHeap,
    HeapAllocationControl ; dwFlags,
    LPCVOID ; lpMem
)
(import "KERNEL32.DLL" "HeapWalk" FailOnFalse
    HeapHandle ; hHeap,
    LPPROCESS_HEAP_ENTRY ; lpEntry
)

(import "KERNEL32.DLL" "LocalAlloc" HLOCAL
    LocalAllocationAttributes ; uFlags,
    SIZE_T ; uBytes
)
(import "KERNEL32.DLL" "LocalFlags" UintFailIfLocalMemInvalid
    HLOCAL ; hMem
)
(import "KERNEL32.DLL" "LocalFree" HLOCAL
    HLOCAL ; hMem
)
(import "KERNEL32.DLL" "LocalHandle" HLOCAL
    LPCVOID ; pMem
)
(import "KERNEL32.DLL" "LocalLock" LpvoidFailIfNull
    HLOCAL ; hMem
)
(import "KERNEL32.DLL" "LocalReAlloc" HLOCAL
    HLOCAL ; hMem,
    SIZE_T ; uBytes,
    LocalAllocationAttributes ; uFlags
)
(import "KERNEL32.DLL" "LocalSize" LongFailIfZero
    HLOCAL ; hMem
)
(import "KERNEL32.DLL" "LocalUnlock" FailOnFalse
    HLOCAL ; hMem
)
(import "KERNEL32.DLL" "MapUserPhysicalPages" FailOnFalse
    PVOID ; lpAddress,
    ULONG_PTR ; NumberOfPages,
    PULONG_PTR ; UserPfnArray
)
(import "KERNEL32.DLL" "MapUserPhysicalPagesScatter" FailOnFalse
    "void*" ; VirtualAddresses,
    ULONG_PTR ; NumberOfPages,
    PULONG_PTR ; PageArray
)
(import "KERNEL32.DLL" "ResetWriteWatch" UINT
    LPVOID ; lpBaseAddress,
    SIZE_T ; dwRegionSize
)
(import "KERNEL32.DLL" "VirtualAlloc" LpvoidFailIfNull
    LPVOID ; lpAddress,
    SIZE_T ; dwSize,
    AllocationType ; flAllocationType,
    AccessProtectionType ; flProtect
)
(import "KERNEL32.DLL" "VirtualAllocEx" LpvoidFailIfNull
    HANDLE ; hProcess,
    LPVOID ; lpAddress,
    SIZE_T ; dwSize,
    AllocationType ; flAllocationType,
    AccessProtectionType ; flProtect
)
(import "KERNEL32.DLL" "VirtualFree" FailOnFalse
    LPVOID ; lpAddress,
    SIZE_T ; dwSize,
    AllocationType ; dwFreeType
)
(import "KERNEL32.DLL" "VirtualFreeEx" FailOnFalse
    HANDLE ; hProcess,
    LPVOID ; lpAddress,
    SIZE_T ; dwSize,
    AllocationType ; dwFreeType
)
(import "KERNEL32.DLL" "VirtualLock" FailOnFalse
    LPVOID ; lpAddress,
    SIZE_T ; dwSize
)
(import "KERNEL32.DLL" "VirtualProtect" FailOnFalse
    LPVOID ; lpAddress,
    SIZE_T ; dwSize,
    AccessProtectionType ; flNewProtect,
    PDWORD ; lpflOldProtect
)
(import "KERNEL32.DLL" "VirtualProtectEx" FailOnFalse
    HANDLE ; hProcess,
    LPVOID ; lpAddress,
    SIZE_T ; dwSize,
    AccessProtectionType ; flNewProtect,
    PDWORD ; lpflOldProtect
)
(import "KERNEL32.DLL" "VirtualQuery" DWORD
    LPCVOID ; lpAddress,
    PMEMORY_BASIC_INFORMATION ; lpBuffer,
    DWORD ; dwLength
)
(import "KERNEL32.DLL" "VirtualQueryEx" DWORD
    HANDLE ; hProcess,
    LPCVOID ; lpAddress,
    PMEMORY_BASIC_INFORMATION ; lpBuffer,
    DWORD ; dwLength
)
(import "KERNEL32.DLL" "VirtualUnlock" FailOnFalse
    LPVOID ; lpAddress,
    SIZE_T ; dwSize
)


(import "KERNEL32.DLL" "CreateFileMappingA" HANDLE
    HANDLE ; hFile,
    LPSECURITY_ATTRIBUTES ; lpAttributes,
    AccessProtectionType ; flProtect,
    DWORD ; dwMaximumSizeHigh,
    DWORD ; dwMaximumSizeLow,
    LPCSTR ; lpName
)
(import "KERNEL32.DLL" "CreateFileMappingW" HANDLE
    HANDLE ; hFile,
    LPSECURITY_ATTRIBUTES ; lpFileMappingAttributes,
    AccessProtectionType ; flProtect,
    DWORD ; dwMaximumSizeHigh,
    DWORD ; dwMaximumSizeLow,
    LPCWSTR ; lpName
)
(import "KERNEL32.DLL" "FlushViewOfFile" FailOnFalse
    LPCVOID ; lpBaseAddress,
    SIZE_T ; dwNumberOfBytesToFlush
)
(import "KERNEL32.DLL" "MapViewOfFile" LpvoidFailIfNull
    HANDLE ; hFileMappingObject,
    FileAccessMode ; dwDesiredAccess,
    DWORD ; dwFileOffsetHigh,
    DWORD ; dwFileOffsetLow,
    SIZE_T ; dwNumberOfBytesToMap
)
(import "KERNEL32.DLL" "MapViewOfFileEx" LpvoidFailIfNull
    HANDLE ; hFileMappingObject,
    FileAccessMode ; dwDesiredAccess,
    DWORD ; dwFileOffsetHigh,
    DWORD ; dwFileOffsetLow,
    SIZE_T ; dwNumberOfBytesToMap,
    LPVOID ; lpBaseAddress
)
(import "KERNEL32.DLL" "OpenFileMappingA" HANDLE
    FileAccessMode ; dwDesiredAccess,
    BOOL ; bInheritHandle,
    LPCSTR ; lpName
)
(import "KERNEL32.DLL" "OpenFileMappingW" HANDLE
    FileAccessMode ; dwDesiredAccess,
    BOOL ; bInheritHandle,
    LPCWSTR ; lpName
)
(import "KERNEL32.DLL" "UnmapViewOfFile" FailOnFalse
    LPCVOID ; lpBaseAddress
)
