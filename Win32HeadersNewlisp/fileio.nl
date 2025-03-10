(context 'WIN32)



;; category IOFunctions:
;; module KERNEL32.DLL:

;; value long FileErrorReturnValue {
(setq FileErrorReturnValue "long")
(setq HFILE_ERROR -1)
;; };

;; value int _lcreatFileAttributes {
(setq _lcreatFileAttributes "int")
(setq Normal 0)
(setq Read_Only 1)
(setq Hidden 2)
(setq System 3)
;; };

;; mask DWORD CopyFlags {
(setq CopyFlags DWORD)
(setq COPY_FILE_FAIL_IF_EXISTS 0x00000001)
(setq COPY_FILE_RESTARTABLE 0x00000002)
(setq COPY_FILE_OPEN_SOURCE_FOR_WRITE 0x00000004)
;; };

;; value DWORD CallBackReasons {
(setq CallBackReasons DWORD)
(setq CALLBACK_CHUNK_FINISHED 0x00000000)
(setq CALLBACK_STREAM_SWITCH 0x00000001)
;; };

;; value DWORD CopyRoutineReturns {
(setq CopyRoutineReturns DWORD)
(setq PROGRESS_CONTINUE 0)
(setq PROGRESS_CANCEL 1)
(setq PROGRESS_STOP 2)
(setq PROGRESS_QUIET 3)
;; };

;; mask DWORD DefineDosDeviceFlags {
(setq DefineDosDeviceFlags DWORD)
(setq DDD_RAW_TARGET_PATH 0x00000001)
(setq DDD_REMOVE_DEFINITION 0x00000002)
(setq DDD_EXACT_MATCH_ON_REMOVE 0x00000004)
(setq DDD_NO_BROADCAST_SYSTEM 0x00000008)
;; };

;; mask DWORD ChangeNotifications {
(setq ChangeNotifications DWORD)
(setq FILE_NOTIFY_CHANGE_FILE_NAME 0x00000001)
(setq FILE_NOTIFY_CHANGE_DIR_NAME 0x00000002)
(setq FILE_NOTIFY_CHANGE_ATTRIBUTES 0x00000004)
(setq FILE_NOTIFY_CHANGE_SIZE 0x00000008)
(setq FILE_NOTIFY_CHANGE_LAST_WRITE 0x00000010)
(setq FILE_NOTIFY_CHANGE_LAST_ACCESS 0x00000020)
(setq FILE_NOTIFY_CHANGE_CREATION 0x00000040)
(setq FILE_NOTIFY_CHANGE_SECURITY 0x00000100)
;; };

;; value LONG _FILEEX_INFO_LEVELS {
(setq _FILEEX_INFO_LEVELS LONG)
(setq FindExInfoStandard 0)
(setq FindExInfoMaxInfoLevel 1)
;; };

;; value LONG OpenFileStyle {
(setq OpenFileStyle LONG)
(setq OF_READ 0)
(setq OF_WRITE 1)
(setq OF_READ_WRITE 2)
;; };


;; value LONG FINDEX_INFO_LEVELS {
(setq FINDEX_INFO_LEVELS LONG)
(setq FindExSearchNameMatch 0)
(setq FindExSearchLimitToDirectories 1)
(setq FindExSearchLimitToDevices 2)
;; };

;; value LONG FINDEX_SEARCH_OPS {
(setq FINDEX_SEARCH_OPS LONG)
(setq FindExSearchNameMatch 0)
(setq FindExSearchLimitToDirectories 1)
(setq FindExSearchLimitToDevices 2)
;; };

;; value LPDWORD GetBinaryTypeValues {
(setq GetBinaryTypeValues LPDWORD)
(setq SCS_32BIT_BINARY 0)
(setq SCS_DOS_BINARY 1)
(setq SCS_WOW_BINARY 2)
(setq SCS_PIF_BINARY 3)
(setq SCS_POSIX_BINARY 4)
(setq SCS_OS216_BINARY 5)
;; };

;; value UINT DriveTypes {
(setq DriveTypes UINT)
(setq DRIVE_UNKNOWN 0)
(setq DRIVE_NO_ROOT_DIR 1)
(setq DRIVE_REMOVABLE 2)
(setq DRIVE_FIXED 3)
(setq DRIVE_REMOTE 4)
(setq DRIVE_CDROM 5)
(setq DRIVE_RAMDISK 6)
;; };

;; value DWORD SPDataFlags {
(setq SPDataFlags DWORD)
(setq SPINT_ACTIVE 0x00000001)
(setq SPINT_DEFAULT 0x00000002)
(setq SPINT_REMOVED 0x00000004)
;; };

;; typedef struct _SP_DEVICE_INTERFACE_DATA  { {
(struct '_SP_DEVICE_INTERFACE_DATA
    DWORD ; cbSize
    GUID ; InterfaceClassGuid
    SPDataFlags ; Flags
    ULONG_PTR ; Reserved
)
(setq SP_DEVICE_INTERFACE_DATA _SP_DEVICE_INTERFACE_DATA)
;; } SP_DEVICE_INTERFACE_DATA
(setq PSP_DEVICE_INTERFACE_DATA "void*")

;; typedef struct _SP_DEVINFO_LIST_DETAIL_DATA_A  { {
(struct '_SP_DEVINFO_LIST_DETAIL_DATA_A
    DWORD ; cbSize
    GUID ; ClassGuid
    HANDLE ; RemoteMachineHandle
    CHAR ; RemoteMachineName
)
(setq SP_DEVINFO_LIST_DETAIL_DATA_A _SP_DEVINFO_LIST_DETAIL_DATA_A)
;; } SP_DEVINFO_LIST_DETAIL_DATA_A
(setq PSP_DEVINFO_LIST_DETAIL_DATA_A "void*")

;; typedef struct _SP_DEVINFO_LIST_DETAIL_DATA_W  { {
(struct '_SP_DEVINFO_LIST_DETAIL_DATA_W
    DWORD ; cbSize
    GUID ; ClassGuid
    HANDLE ; RemoteMachineHandle
    WCHAR ; RemoteMachineName
)
(setq SP_DEVINFO_LIST_DETAIL_DATA_W _SP_DEVINFO_LIST_DETAIL_DATA_W)
;; } SP_DEVINFO_LIST_DETAIL_DATA_W
(setq PSP_DEVINFO_LIST_DETAIL_DATA_W "void*")

;; typedef struct _SP_DEVICE_INTERFACE_DETAIL_DATA_A  { {
(struct '_SP_DEVICE_INTERFACE_DETAIL_DATA_A
    DWORD ; cbSize
    CHAR ; DevicePath
)
(setq SP_DEVICE_INTERFACE_DETAIL_DATA_A _SP_DEVICE_INTERFACE_DETAIL_DATA_A)
;; } SP_DEVICE_INTERFACE_DETAIL_DATA_A
(setq PSP_DEVICE_INTERFACE_DETAIL_DATA_A "void*")

;; typedef struct _SP_DEVICE_INTERFACE_DETAIL_DATA_W  { {
(struct '_SP_DEVICE_INTERFACE_DETAIL_DATA_W
    DWORD ; cbSize
    WCHAR ; DevicePath
)
(setq SP_DEVICE_INTERFACE_DETAIL_DATA_W _SP_DEVICE_INTERFACE_DETAIL_DATA_W)
;; } SP_DEVICE_INTERFACE_DETAIL_DATA_W
(setq PSP_DEVICE_INTERFACE_DETAIL_DATA_W "void*")

;; value LONG GET_FILEEX_INFO_LEVELS {
(setq GET_FILEEX_INFO_LEVELS LONG)
(setq GetFileExInfoStandard 0)
;; };

;; typedef struct _BY_HANDLE_FILE_INFORMATION  { {
(struct '_BY_HANDLE_FILE_INFORMATION
    FileFlagsAndAttributes ; dwFileAttributes

    ;; ftCreationTime
    FTime ; dwLowDateTime
    FTime ; dwHighDateTime
    ;; ftLastAccessTime
    FTime ; dwLowDateTime
    FTime ; dwHighDateTime
    ;; ftLastWriteTime
    FTime ; dwLowDateTime
    FTime ; dwHighDateTime
    
    DWORD ; dwVolumeSerialNumber
    DWORD ; nFileSizeHigh
    DWORD ; nFileSizeLow
    DWORD ; nNumberOfLinks
    DWORD ; nFileIndexHigh
    DWORD ; nFileIndexLow
)
(setq BY_HANDLE_FILE_INFORMATION _BY_HANDLE_FILE_INFORMATION)
;; } BY_HANDLE_FILE_INFORMATION
(setq LPBY_HANDLE_FILE_INFORMATION "void*")


;; typedef struct _OFSTRUCT  { {
(struct '_OFSTRUCT
    BYTE ; cBytes
    BYTE ; fFixedDisk
    WORD ; nErrCode
    WORD ; Reserved1
    WORD ; Reserved2
    CHAR ; szPathName
)
(setq OFSTRUCT _OFSTRUCT)
;; } OFSTRUCT
(setq LPOFSTRUCT "void*")
(setq POFSTRUCT "void*")

;; value DWORD GetFileTypeReturnValue {
(setq GetFileTypeReturnValue DWORD)
(setq FILE_TYPE_UNKNOWN 0x0000)
(setq FILE_TYPE_DISK 0x0001)
(setq FILE_TYPE_CHAR 0x0002)
(setq FILE_TYPE_PIPE 0x0003)
(setq FILE_TYPE_REMOTE 0x8000)
;; };

;; value DWORD LockOptions {
(setq LockOptions DWORD)
(setq LOCKFILE_FAIL_IMMEDIATELY 0x00000001)
(setq LOCKFILE_EXCLUSIVE_LOCK 0x00000002)
;; };

;; mask DWORD MoveFilePossibilities {
(setq MoveFilePossibilities DWORD)
(setq MOVEFILE_REPLACE_EXISTING 0x00000001)
(setq MOVEFILE_COPY_ALLOWED 0x00000002)
(setq MOVEFILE_DELAY_UNTIL_REBOOT 0x00000004)
(setq MOVEFILE_WRITE_THROUGH 0x00000008)
(setq MOVEFILE_CREATE_HARDLINK 0x00000010)
(setq MOVEFILE_FAIL_IF_NOT_TRACKABLE 0x00000020)
;; };

;; value UINT OpenFileActions {
(setq OpenFileActions UINT)
(setq OF_READ 0x00000000)
(setq OF_WRITE 0x00000001)
(setq OF_READWRITE 0x00000002)
(setq OF_SHARE_COMPAT 0x00000000)
(setq OF_SHARE_EXCLUSIVE 0x00000010)
(setq OF_SHARE_DENY_WRITE 0x00000020)
(setq OF_SHARE_DENY_READ 0x00000030)
(setq OF_SHARE_DENY_NONE 0x00000040)
(setq OF_PARSE 0x00000100)
(setq OF_DELETE 0x00000200)
(setq OF_VERIFY 0x00000400)
(setq OF_CANCEL 0x00000800)
(setq OF_CREATE 0x00001000)
(setq OF_PROMPT 0x00002000)
(setq OF_EXIST 0x00004000)
(setq OF_REOPEN 0x00008000)
;; };


;; value DWORD FileChangeType {
(setq FileChangeType DWORD)
(setq FILE_ACTION_ADDED 0x00000001)
(setq FILE_ACTION_REMOVED 0x00000002)
(setq FILE_ACTION_MODIFIED 0x00000003)
(setq FILE_ACTION_RENAMED_OLD_NAME 0x00000004)
(setq FILE_ACTION_RENAMED_NEW_NAME 0x00000005)
;; };

;; typedef struct _FILE_NOTIFY_INFORMATION  { {
(struct '_FILE_NOTIFY_INFORMATION
    DWORD ; NextEntryOffset
    FileChangeType ; Action
    DWORD ; FileNameLength
    WCHAR ; FileName
)
(setq FILE_NOTIFY_INFORMATION _FILE_NOTIFY_INFORMATION)
;; } FILE_NOTIFY_INFORMATION
(setq LPFILE_NOTIFY_INFORMATION "void*")

(setq NumberOfClusters DWORD)
;alias NumberOfClusters;

(setq SectorsPerCluster DWORD)
;alias SectorsPerCluster;


;; value DWORD SetFilePointerReturn {
(setq SetFilePointerReturn DWORD)
(setq INVALID_SET_POINTER -1)
;; };

(import "KERNEL32.DLL" "_hread" FileErrorReturnValue
    HFILE ; hFile,
    LPVOID ; lpBuffer,
    "long" ; lBytes
)

(import "KERNEL32.DLL" "_hwrite" FileErrorReturnValue
    HFILE ; hFile,
    LPCSTR ; lpBuffer,
    "long" ; lBytes
)

(import "KERNEL32.DLL" "_lclose" FileErrorReturnValue
    HFILE ; hFile
)

(import "KERNEL32.DLL" "_lcreat" FileErrorReturnValue
    LPCSTR ; lpPathName,
    _lcreatFileAttributes ; iAttribute
)

(import "KERNEL32.DLL" "_llseek" FileErrorReturnValue
    HFILE ; hFile,
    LONG ; lOffset,
    FilePointerStartingPosition ; iOrigin
)

(import "KERNEL32.DLL" "_lopen" FileErrorReturnValue
    LPCSTR ; lpPathName,
    OpenFileStyle ; iReadWrite
)

(import "KERNEL32.DLL" "_lread" FileErrorReturnValue
    HFILE ; hFile,
    LPVOID ; lpBuffer,
    UINT ; uBytes
)

(import "KERNEL32.DLL" "_lwrite" FileErrorReturnValue
    HFILE ; hFile,
    LPCSTR ; lpBuffer,
    UINT ; uBytes
)

(import "KERNEL32.DLL" "AreFileApisANSI" FailOnFalse
     ; 
)

(import "KERNEL32.DLL" "CancelIo" FailOnFalse
    HANDLE ; hFile
)

(import "KERNEL32.DLL" "CopyFileA" FailOnFalse
    LPCSTR ; lpExistingFileName,
    LPCSTR ; lpNewFileName,
    BOOL ; bFailIfExists
)

(import "KERNEL32.DLL" "CopyFileW" FailOnFalse
    LPCWSTR ; lpExistingFileName,
    LPCWSTR ; lpNewFileName,
    BOOL ; bFailIfExists
)

(import "KERNEL32.DLL" "CopyFileExA" FailOnFalse
    LPCSTR ; lpExistingFileName,
    LPCSTR ; lpNewFileName,
    LPVOID ; lpProgressRoutine,
    LPVOID ; lpData,
    LPBOOL ; pbCancel,
    CopyFlags ; dwCopyFlags
)

(import "KERNEL32.DLL" "CopyFileExW" FailOnFalse
    LPCWSTR ; lpExistingFileName,
    LPCWSTR ; lpNewFileName,
    LPVOID ; lpProgressRoutine,
    LPVOID ; lpData,
    LPBOOL ; pbCancel,
    CopyFlags ; dwCopyFlags
)

(import "KERNEL32.DLL" "CreateDirectoryA" FailOnFalse
    LPCSTR ; lpPathName,
    LPSECURITY_ATTRIBUTES ; lpSecurityAttributes
)

(import "KERNEL32.DLL" "CreateDirectoryW" FailOnFalse
    LPCWSTR ; lpPathName,
    LPSECURITY_ATTRIBUTES ; lpSecurityAttributes
)

(import "KERNEL32.DLL" "CreateDirectoryExA" FailOnFalse
    LPCSTR ; lpTemplateDirectory,
    LPCSTR ; lpNewDirectory,
    LPSECURITY_ATTRIBUTES ; lpSecurityAttributes
)

(import "KERNEL32.DLL" "CreateDirectoryExW" FailOnFalse
    LPCWSTR ; lpTemplateDirectory,
    LPCWSTR ; lpNewDirectory,
    LPSECURITY_ATTRIBUTES ; lpSecurityAttributes
)

(import "KERNEL32.DLL" "CreateFileA" HANDLE
    LPCSTR ; lpFileName,
    DWORD ; dwDesiredAccess,
    GenericAccessRights ; dwShareMode,
    LPSECURITY_ATTRIBUTES ; lpSecurityAttributes,
    CreationActions ; dwCreationDisposition,
    FileFlagsAndAttributes ; dwFlagsAndAttributes,
    HANDLE ; hTemplateFile
)

(import "KERNEL32.DLL" "CreateFileW" HANDLE
    LPCWSTR ; lpFileName,
    GenericAccessRights ; dwDesiredAccess,
    ShareRights ; dwShareMode,
    LPSECURITY_ATTRIBUTES ; lpSecurityAttributes,
    CreationActions ; dwCreationDisposition,
    FileFlagsAndAttributes ; dwFlagsAndAttributes,
    HANDLE ; hTemplateFile
)

(import "KERNEL32.DLL" "CreateIoCompletionPort" HANDLE
    HANDLE ; FileHandle,
    HANDLE ; ExistingCompletionPort,
    ULONG_PTR ; CompletionKey,
    DWORD ; NumberOfConcurrentThreads
)

(import "KERNEL32.DLL" "DefineDosDeviceA" FailOnFalse
    DefineDosDeviceFlags ; dwFlags,
    LPCSTR ; lpDeviceName,
    LPCSTR ; lpTargetPath
)

(import "KERNEL32.DLL" "DefineDosDeviceW" FailOnFalse
    DefineDosDeviceFlags ; dwFlags,
    LPCWSTR ; lpDeviceName,
    LPCWSTR ; lpTargetPath
)

(import "KERNEL32.DLL" "DeleteFileA" FailOnFalse
    LPCSTR ; lpFileName
)

(import "KERNEL32.DLL" "DeleteFileW" FailOnFalse
    LPCWSTR ; lpFileName
)

(import "KERNEL32.DLL" "FindClose" FailOnFalse
    HANDLE ; hFindFile
)

(import "KERNEL32.DLL" "FindCloseChangeNotification" FailOnFalse
    HANDLE ; hChangeHandle
)

(import "KERNEL32.DLL" "FindFirstChangeNotificationA" HANDLE
    LPCSTR ; lpPathName,
    BOOL ; bWatchSubtree,
    DWORD ; dwNotifyFilter
)

(import "KERNEL32.DLL" "FindFirstChangeNotificationW" HANDLE
    LPCWSTR ; lpPathName,
    BOOL ; bWatchSubtree,
    DWORD ; ChangeNotifications
)

(import "KERNEL32.DLL" "FindFirstFileA" HANDLE
    LPCSTR ; lpFileName,
    LPWIN32_FIND_DATAA ; lpFindFileData
)

(import "KERNEL32.DLL" "FindFirstFileW" HANDLE
    LPCWSTR ; lpFileName,
    LPWIN32_FIND_DATAW ; lpFindFileData
)

(import "KERNEL32.DLL" "FindFirstFileExA" HANDLE
    LPCSTR ; lpFileName,
    FINDEX_INFO_LEVELS ; fInfoLevelId,
    LPWIN32_FIND_DATAA ; lpFindFileData,
    FINDEX_SEARCH_OPS ; fSearchOp,
    LPVOID ; lpSearchFilter,
    DWORD ; dwAdditionalFlags
)

(import "KERNEL32.DLL" "FindFirstFileExW" HANDLE
    LPCWSTR ; lpFileName,
    FINDEX_INFO_LEVELS ; fInfoLevelId,
    LPWIN32_FIND_DATAW ; lpFindFileData,
    FINDEX_SEARCH_OPS ; fSearchOp,
    LPVOID ; lpSearchFilter,
    DWORD ; dwAdditionalFlags
)

(import "KERNEL32.DLL" "FindNextChangeNotification" FailOnFalse
    HANDLE ; hChangeHandle
)

(import "KERNEL32.DLL" "FindNextFileA" FailOnFalse
    HANDLE ; hFindFile,
    LPWIN32_FIND_DATAA ; lpFindFileData
)

(import "KERNEL32.DLL" "FindNextFileW" FailOnFalse
    HANDLE ; hFindFile,
    LPWIN32_FIND_DATAW ; lpFindFileData
)

(import "KERNEL32.DLL" "FlushFileBuffers" FailOnFalse
    HANDLE ; hFile
)

(import "KERNEL32.DLL" "GetBinaryTypeA" FailOnFalse
    LPCSTR ; lpApplicationName,
    GetBinaryTypeValues ; lpBinaryType
)

(import "KERNEL32.DLL" "GetBinaryTypeW" FailOnFalse
    LPCWSTR ; lpApplicationName,
    GetBinaryTypeValues ; lpBinaryType
)

(import "KERNEL32.DLL" "GetCurrentDirectoryA" DwordFailIfZero
    DWORD ; nBufferLength,
    LPSTR ; lpBuffer
)

(import "KERNEL32.DLL" "GetCurrentDirectoryW" DwordFailIfZero
    DWORD ; nBufferLength,
    LPWSTR ; lpBuffer
)

(import "KERNEL32.DLL" "GetWindowsDirectoryA" DwordFailIfZero
    LPSTR ; lpBuffer,
    UINT ; uSize
)

(import "KERNEL32.DLL" "GetWindowsDirectoryW" DwordFailIfZero
    LPWSTR ; lpBuffer,
    UINT ; uSize
)

(import "KERNEL32.DLL" "GetSystemDirectoryA" DwordFailIfZero
    LPSTR ; lpBuffer,
    UINT ; uSize
)

(import "KERNEL32.DLL" "GetSystemDirectoryW" DwordFailIfZero
    LPWSTR ; lpBuffer,
    UINT ; uSize
)

(import "KERNEL32.DLL" "GetSystemWindowsDirectoryA" DwordFailIfZero
    LPSTR ; lpBuffer,
    UINT ; uSize
)

(import "KERNEL32.DLL" "GetSystemWindowsDirectoryW" DwordFailIfZero
    LPWSTR ; lpBuffer,
    UINT ; uSize
)

(import "KERNEL32.DLL" "GetDiskFreeSpaceA" FailOnFalse
    LPCSTR ; lpRootPathName,
    "void*" ; SectorsPerCluster * lpSectorsPerCluster,
    LPDWORD ; lpBytesPerSector,
    "void*" ; NumberOfClusters * lpNumberOfFreeClusters,
    "void*" ; NumberOfClusters * lpTotalNumberOfClusters
)

(import "KERNEL32.DLL" "GetDiskFreeSpaceW" FailOnFalse
    LPCWSTR ; lpRootPathName,
    "void*" ; SectorsPerCluster * lpSectorsPerCluster,
    LPDWORD ; lpBytesPerSector,
    "void*" ; NumberOfClusters * lpNumberOfFreeClusters,
    "void*" ; NumberOfClusters * lpTotalNumberOfClusters
)

(setq DiskBytesDWORD DWORD)
;;alias DiskBytesDWORD;

;; typedef struct _DiskBytes { {
(struct '_DiskBytes
    DiskBytesDWORD ; Low
    DiskBytesDWORD ; High
)
(setq DiskBytes _DiskBytes)
;; } DiskBytes
(setq PDiskBytes "void*")


(import "KERNEL32.DLL" "GetDiskFreeSpaceExA" FailOnFalse
    LPCSTR ; lpDirectoryName,
    PDiskBytes ; lpFreeBytesAvailable,
    PDiskBytes ; lpTotalNumberOfBytes,
    PDiskBytes ; lpTotalNumberOfFreeBytes
)

(import "KERNEL32.DLL" "GetDiskFreeSpaceExW" FailOnFalse
    LPCWSTR ; lpDirectoryName,
    PDiskBytes ; lpFreeBytesAvailableToCaller,
    PDiskBytes ; lpTotalNumberOfBytes,
    PDiskBytes ; lpTotalNumberOfFreeBytes
)

(import "KERNEL32.DLL" "GetDriveTypeA" DriveTypes
    LPCSTR ; lpRootPathName
)

(import "KERNEL32.DLL" "GetDriveTypeW" DriveTypes
    LPCWSTR ; lpRootPathName
)

(import "KERNEL32.DLL" "GetFileAttributesA" FileFlagsAndAttributes
    LPCSTR ; lpFileName
)

(import "KERNEL32.DLL" "GetFileAttributesW" FileFlagsAndAttributes
    LPCWSTR ; lpFileName
)

(import "KERNEL32.DLL" "GetFileAttributesExA" FailOnFalse
    LPCSTR ; lpFileName,
    GET_FILEEX_INFO_LEVELS ; fInfoLevelId,
    LPVOID ; lpFileInformation
)

(import "KERNEL32.DLL" "GetFileAttributesExW" FailOnFalse
    LPCWSTR ; lpFileName,
    GET_FILEEX_INFO_LEVELS ; fInfoLevelId,
    LPVOID ; lpFileInformation
)

(import "KERNEL32.DLL" "GetFileInformationByHandle" FailOnFalse
    HANDLE ; hFile,
    LPBY_HANDLE_FILE_INFORMATION ; lpFileInformation
)

(import "KERNEL32.DLL" "GetFileSize" DwordFailIfNeg1
    HANDLE ; hFile,
    LPDWORD ; lpFileSizeHigh
)

(import "KERNEL32.DLL" "GetFileSizeEx" FailOnFalse
    HANDLE ; hFile,
    PLARGE_INTEGER ; lpFileSize
)

(import "KERNEL32.DLL" "GetFileType" GetFileTypeReturnValue
    HANDLE ; hFile
)

(import "KERNEL32.DLL" "GetFullPathNameA" DwordFailIfZero
    LPCSTR ; lpFileName,
    DWORD ; nBufferLength,
    LPSTR ; lpBuffer,
    "void*" ; LPSTR * lpFilePart
)

(import "KERNEL32.DLL" "GetFullPathNameW" DwordFailIfZero
    LPCWSTR ; lpFileName,
    DWORD ; nBufferLength,
    LPWSTR ; lpBuffer,
    "void*" ; LPWSTR * lpFilePart
)

(import "KERNEL32.DLL" "GetLogicalDrives" DwordFailIfZero
     ; 
)

(import "KERNEL32.DLL" "GetLogicalDriveStringsA" DwordFailIfZero
    DWORD ; nBufferLength,
    LPSTR ; lpBuffer
)

(import "KERNEL32.DLL" "GetLogicalDriveStringsW" DwordFailIfZero
    DWORD ; nBufferLength,
    LPWSTR ; lpBuffer
)

(import "KERNEL32.DLL" "GetLongPathNameA" DwordFailIfZero
    LPCSTR ; lpszShortPath,
    LPSTR ; lpszLongPath,
    DWORD ; cchBuffer
)

(import "KERNEL32.DLL" "GetLongPathNameW" DwordFailIfZero
    LPCWSTR ; lpszShortPath,
    LPWSTR ; lpszLongPath,
    DWORD ; cchBuffer
)

(import "KERNEL32.DLL" "GetQueuedCompletionStatus" FailOnFalse
    HANDLE ; CompletionPort,
    LPDWORD ; lpNumberOfBytes,
    PULONG_PTR ; lpCompletionKey,
    "void*" ; LPOVERLAPPED * lpOverlapped,
    DWORD ; dwMilliseconds
)

(import "KERNEL32.DLL" "GetShortPathNameA" DwordFailIfZero
    LPCSTR ; lpszLongPath,
    LPSTR ; lpszShortPath,
    DWORD ; cchBuffer
)

(import "KERNEL32.DLL" "GetShortPathNameW" DwordFailIfZero
    LPCWSTR ; lpszLongPath,
    LPWSTR ; lpszShortPath,
    DWORD ; cchBuffer
)

(import "KERNEL32.DLL" "GetTempFileNameA" UintFailIfZero
    LPCSTR ; lpPathName,
    LPCSTR ; lpPrefixString,
    UINT ; uUnique,
    LPSTR ; lpTempFileName
)

(import "KERNEL32.DLL" "GetTempFileNameW" UintFailIfZero
    LPCWSTR ; lpPathName,
    LPCWSTR ; lpPrefixString,
    UINT ; uUnique,
    LPWSTR ; lpTempFileName
)

(import "KERNEL32.DLL" "GetTempPathA" DwordFailIfZero
    DWORD ; nBufferLength,
    LPSTR ; lpBuffer
)

(import "KERNEL32.DLL" "GetTempPathW" DwordFailIfZero
    DWORD ; nBufferLength,
    LPWSTR ; lpBuffer
)

(import "KERNEL32.DLL" "LockFile" FailOnFalse
    HANDLE ; hFile,
    DWORD ; dwFileOffsetLow,
    DWORD ; dwFileOffsetHigh,
    DWORD ; nNumberOfBytesToLockLow,
    DWORD ; nNumberOfBytesToLockHigh
)

(import "KERNEL32.DLL" "LockFileEx" FailOnFalse
    HANDLE ; hFile,
    LockOptions ; dwFlags,
    DWORD ; dwReserved,
    DWORD ; nNumberOfBytesToLockLow,
    DWORD ; nNumberOfBytesToLockHigh,
    LPOVERLAPPED ; lpOverlapped
)

(import "KERNEL32.DLL" "MoveFileA" FailOnFalse
    LPCSTR ; lpExistingFileName,
    LPCSTR ; lpNewFileName
)

(import "KERNEL32.DLL" "MoveFileW" FailOnFalse
    LPCWSTR ; lpExistingFileName,
    LPCWSTR ; lpNewFileName
)

(import "KERNEL32.DLL" "MoveFileExA" FailOnFalse
    LPCSTR ; lpExistingFileName,
    LPCSTR ; lpNewFileName,
    MoveFilePossibilities ; dwFlags
)

(import "KERNEL32.DLL" "MoveFileExW" FailOnFalse
    LPCWSTR ; lpExistingFileName,
    LPCWSTR ; lpNewFileName,
    MoveFilePossibilities ; dwFlags
)

(import "KERNEL32.DLL" "MoveFileWithProgressA" FailOnFalse
    LPCSTR ; lpExistingFileName,
    LPCSTR ; lpNewFileName,
    LPVOID ; lpProgressRoutine
    LPVOID ; lpData
    DWORD ; dwFlags
)

(import "KERNEL32.DLL" "MoveFileWithProgressW" FailOnFalse
    LPCWSTR ; lpExistingFileName,
    LPCWSTR ; lpNewFileName,
    LPVOID ; lpProgressRoutine
    LPVOID ; lpData
    MoveFilePossibilities ; dwFlags
)

(import "KERNEL32.DLL" "MulDiv" IntFailIfNeg1
    "int" ; nNumber,
    "int" ; nNumerator,
    "int" ; nDenominator
)

(import "KERNEL32.DLL" "OpenFile" HFILE
    LPCSTR ; lpFileName,
    LPOFSTRUCT ; lpReOpenBuff,
    OpenFileActions ; uStyle
)

(import "KERNEL32.DLL" "PostQueuedCompletionStatus" FailOnFalse
    HANDLE ; CompletionPort,
    DWORD ; dwNumberOfBytesTransferred,
    ULONG_PTR ; dwCompletionKey,
    LPOVERLAPPED ; lpOverlapped
)

(import "KERNEL32.DLL" "PrivCopyFileExW" FailOnFalse
    LPCWSTR ; lpExistingFileName,
    LPCWSTR ; lpNewFileName,
    LPVOID ; lpProgressRoutine,
    LPVOID ; lpData,
    LPBOOL ; pbCancel,
    CopyFlags ; dwCopyFlags
)

(import "KERNEL32.DLL" "QueryDosDeviceA" DwordFailIfZero
    LPCSTR ; lpDeviceName,
    LPSTR ; lpTargetPath,
    DWORD ; ucchMax
)

(import "KERNEL32.DLL" "QueryDosDeviceW" DwordFailIfZero
    LPCWSTR ; lpDeviceName,
    LPWSTR ; lpTargetPath,
    DWORD ; ucchMax
)

(import "KERNEL32.DLL" "ReadDirectoryChangesW" FailOnFalse
    HANDLE ; hDirectory,
    LPVOID ; lpBuffer,
    DWORD ; nBufferLength,
    BOOL ; bWatchSubtree,
    DWORD ; dwNotifyFilter,
    LPDWORD ; lpBytesReturned,
    LPOVERLAPPED ; lpOverlapped,
    LPVOID ; lpCompletionRoutine
)

(import "KERNEL32.DLL" "ReadFile" FailOnFalse
    HANDLE ; hFile,
    LPVOID ; lpBuffer,
    DWORD ; nNumberOfBytesToRead,
    LPDWORD ; lpNumberOfBytesRead,
    LPOVERLAPPED ; lpOverlapped
)

(import "KERNEL32.DLL" "ReadFileEx" FailOnFalse
    HANDLE ; hFile,
    LPVOID ; lpBuffer,
    DWORD ; nNumberOfBytesToRead,
    LPOVERLAPPED ; lpOverlapped,
    LPVOID ; lpCompletionRoutine
)


(import "KERNEL32.DLL" "ReadFileScatter" FailOnFalse
    HANDLE ; hFile,
    ULONGLONG ; aSegmentArray,
    DWORD ; nNumberOfBytesToRead,
    LPDWORD ; lpReserved,
    LPOVERLAPPED ; lpOverlapped
)

(import "KERNEL32.DLL" "RemoveDirectoryA" FailOnFalse
    LPCSTR ; lpPathName
)

(import "KERNEL32.DLL" "RemoveDirectoryW" FailOnFalse
    LPCWSTR ; lpPathName
)

(import "KERNEL32.DLL" "ReplaceFile" FailOnFalse
    LPCSTR ; lpReplacedFileName,
    LPCSTR ; lpReplacementFileName,
    LPCSTR ; lpBackupFileName,
    DWORD ; dwReplaceFlags,
    LPVOID ; lpExclude,
    LPVOID ; lpReserved
)

(import "KERNEL32.DLL" "ReplaceFileW" FailOnFalse
    LPCWSTR ; lpReplacedFileName,
    LPCWSTR ; lpReplacementFileName,
    LPCWSTR ; lpBackupFileName,
    DWORD ; dwReplaceFlags,
    LPVOID ; lpExclude,
    LPVOID ; lpReserved
)

(import "KERNEL32.DLL" "SearchPathA" DwordFailIfZero
    LPCSTR ; lpPath,
    LPCSTR ; lpFileName,
    LPCSTR ; lpExtension,
    DWORD ; nBufferLength,
    LPSTR ; lpBuffer,
    "void*" ; LPSTR * lpFilePart
)

(import "KERNEL32.DLL" "SearchPathW" DwordFailIfZero
    LPCWSTR ; lpPath,
    LPCWSTR ; lpFileName,
    LPCWSTR ; lpExtension,
    DWORD ; nBufferLength,
    LPWSTR ; lpBuffer,
    "void*" ; LPWSTR * lpFilePart
)

(import "KERNEL32.DLL" "SetCurrentDirectoryA" FailOnFalse
    LPCSTR ; lpPathName
)

(import "KERNEL32.DLL" "SetCurrentDirectoryW" FailOnFalse
    LPCWSTR ; lpPathName
)

(import "KERNEL32.DLL" "SetEndOfFile" FailOnFalse
    HANDLE ; hFile
)

(import "KERNEL32.DLL" "SetFileApisToANSI" VOID
     ; 
)

(import "KERNEL32.DLL" "SetFileApisToOEM" VOID
     ; 
)

(import "KERNEL32.DLL" "SetFileAttributesA" FailOnFalse
    LPCSTR ; lpFileName,
    FileFlagsAndAttributes ; dwFileAttributes
)

(import "KERNEL32.DLL" "SetFileAttributesW" FailOnFalse
    LPCWSTR ; lpFileName,
    FileFlagsAndAttributes ; dwFileAttributes
)

(import "KERNEL32.DLL" "SetFilePointer" SetFilePointerReturn
    HANDLE ; hFile,
    LONG ; lDistanceToMove,
    PLONG ; lpDistanceToMoveHigh,
    FilePointerStartingPosition ; dwMoveMethod
)

(import "KERNEL32.DLL" "SetFilePointerEx" FailOnFalse
    HANDLE ; hFile,
    ;; liDistanceToMove
    ULONG ; Low
    LONG ; High
    PLARGE_INTEGER ; lpNewFilePointer,
    FilePointerStartingPosition ; dwMoveMethod
)

(import "KERNEL32.DLL" "SetHandleCount" UINT
    UINT ; uNumber
)

(import "KERNEL32.DLL" "SetVolumeLabelA" FailOnFalse
    LPCSTR ; lpRootPathName,
    LPCSTR ; lpVolumeName
)

(import "KERNEL32.DLL" "SetVolumeLabelW" FailOnFalse
    LPCWSTR ; lpRootPathName,
    LPCWSTR ; lpVolumeName
)

(import "KERNEL32.DLL" "UnlockFile" FailOnFalse
    HANDLE ; hFile,
    DWORD ; dwFileOffsetLow,
    DWORD ; dwFileOffsetHigh,
    DWORD ; nNumberOfBytesToUnlockLow,
    DWORD ; nNumberOfBytesToUnlockHigh
)

(import "KERNEL32.DLL" "UnlockFileEx" FailOnFalse
    HANDLE ; hFile,
    DWORD ; dwReserved,
    DWORD ; nNumberOfBytesToUnlockLow,
    DWORD ; nNumberOfBytesToUnlockHigh,
    LPOVERLAPPED ; lpOverlapped
)

(import "KERNEL32.DLL" "WriteFile" FailOnFalse
    HANDLE ; hFile,
    LPCVOID ; lpBuffer,
    DWORD ; nNumberOfBytesToWrite,
    LPDWORD ; lpNumberOfBytesWritten,
    LPOVERLAPPED ; lpOverlapped
)

(import "KERNEL32.DLL" "WriteFileEx" FailOnFalse
    HANDLE ; hFile,
    LPCVOID ; lpBuffer,
    DWORD ; nNumberOfBytesToWrite,
    LPOVERLAPPED ; lpOverlapped,
    LPVOID ; lpCompletionRoutine
)


(import "KERNEL32.DLL" "WriteFileGather" FailOnFalse
    HANDLE ; hFile,
    ULONGLONG ; aSegmentArray,
    DWORD ; nNumberOfBytesToWrite,
    LPDWORD ; lpReserved,
    LPOVERLAPPED ; lpOverlapped
)







;; mask LPDWORD FileSystemFlags {
(setq FileSystemFlags LPDWORD)
(setq FS_CASE_SENSITIVE 0x00000001)
(setq FS_CASE_IS_PRESERVED 0x00000002)
(setq FS_UNICODE_STORED_ON_DISK 0x00000004)
(setq FS_PERSISTENT_ACLS 0x00000008)
(setq FS_VOL_IS_COMPRESSED 0x00008000)
(setq FS_FILE_COMPRESSION 0x00000010)
(setq FILE_SUPPORTS_OBJECT_IDS 0x00010000)
(setq FILE_SUPPORTS_ENCRYPTION 0x00020000)
(setq FILE_SUPPORTS_REPARSE_POINTS 0x00000080)
(setq FILE_SUPPORTS_REMOTE_STORAGE 0x00000100)
;; };

;; typedef struct _EFS_HASH_BLOB  { {
(struct '_EFS_HASH_BLOB
    DWORD ; cbData
    PBYTE ; pbData
)
(setq EFS_HASH_BLOB _EFS_HASH_BLOB)
;; } EFS_HASH_BLOB
(setq LPEFS_HASH_BLOB "void*")
(setq PEFS_HASH_BLOB "void*")

;; typedef struct _CERTIFICATE_BLOB  { {
(struct '_CERTIFICATE_BLOB
    DWORD ; dwCertEncodingType
    DWORD ; cbData
    PBYTE ; pbData
)
(setq EFS_CERTIFICATE_BLOB _CERTIFICATE_BLOB)
;; } EFS_CERTIFICATE_BLOB
(setq PEFS_CERTIFICATE_BLOB "void*")


;; typedef struct _ENCRYPTION_CERTIFICATE_HASH  { {
(struct '_ENCRYPTION_CERTIFICATE_HASH
    DWORD ; cbTotalLength
    "void*" ; VOID * pUserSid
    PEFS_HASH_BLOB ; pHash
    LPWSTR ; lpDisplayInformation
)
(setq ENCRYPTION_CERTIFICATE_HASH _ENCRYPTION_CERTIFICATE_HASH)
;; } ENCRYPTION_CERTIFICATE_HASH
(setq LPENCRYPTION_CERTIFICATE_HASH "void*")
(setq PENCRYPTION_CERTIFICATE_HASH "void*")

;; typedef struct _ENCRYPTION_CERTIFICATE_HASH_LIST  { {
(struct '_ENCRYPTION_CERTIFICATE_HASH_LIST
    DWORD ; nCert_Hash
    "void*" ; PENCRYPTION_CERTIFICATE_HASH * pUsers
)
(setq ENCRYPTION_CERTIFICATE_HASH_LIST _ENCRYPTION_CERTIFICATE_HASH_LIST)
;; } ENCRYPTION_CERTIFICATE_HASH_LIST
(setq LPENCRYPTION_CERTIFICATE_HASH_LIST "void*")
(setq PENCRYPTION_CERTIFICATE_HASH_LIST "void*")



;; typedef struct _ENCRYPTION_CERTIFICATE  { {
(struct '_ENCRYPTION_CERTIFICATE
    DWORD ; cbTotalLength
    "void*" ; VOID * pUserSid
    PEFS_CERTIFICATE_BLOB ; pCertBlob
)
(setq ENCRYPTION_CERTIFICATE _ENCRYPTION_CERTIFICATE)
;; } ENCRYPTION_CERTIFICATE
(setq LPENCRYPTION_CERTIFICATE "void*")
(setq PENCRYPTION_CERTIFICATE "void*")

;; typedef struct _ENCRYPTION_CERTIFICATE_LIST  { {
(struct '_ENCRYPTION_CERTIFICATE_LIST
    DWORD ; nUsers
    "void*" ; PENCRYPTION_CERTIFICATE * pUsers
)
(setq ENCRYPTION_CERTIFICATE_LIST _ENCRYPTION_CERTIFICATE_LIST)
;; } ENCRYPTION_CERTIFICATE_LIST
(setq LPENCRYPTION_CERTIFICATE_LIST "void*")
(setq PENCRYPTION_CERTIFICATE_LIST "void*")

(import "KERNEL32.DLL" "CreateHardLinkA" FailOnFalse
    LPCSTR ; lpFileName,
    LPCSTR ; lpExistingFileName,
    LPSECURITY_ATTRIBUTES ; lpSecurityAttributes
)

(import "KERNEL32.DLL" "CreateHardLinkW" FailOnFalse
    LPCWSTR ; lpFileName,
    LPCWSTR ; lpExistingFileName,
    LPSECURITY_ATTRIBUTES ; lpSecurityAttributes
)

;; module ADVAPI32.DLL:
(import "ADVAPI32.DLL" "AddUsersToEncryptedFile" WinError
    LPCWSTR ; lpFileName,
    PENCRYPTION_CERTIFICATE_LIST ; pUsers
)

(import "ADVAPI32.DLL" "DecryptFileA" FailOnFalse
    LPCSTR ; lpFileName,
    DWORD ; dwReserved
)

(import "ADVAPI32.DLL" "DecryptFileW" FailOnFalse
    LPCWSTR ; lpFileName,
    DWORD ; dwReserved
)

;; module KERNEL32.DLL:
(import "KERNEL32.DLL" "DeleteVolumeMountPointA" FailOnFalse
    LPCSTR ; lpszVolumeMountPoint
)

(import "KERNEL32.DLL" "DeleteVolumeMountPointW" FailOnFalse
    LPCWSTR ; lpszVolumeMountPoint
)


;; module ADVAPI32.DLL:
(import "ADVAPI32.DLL" "EncryptFileA" FailOnFalse
    LPCSTR ; lpFileName
)

(import "ADVAPI32.DLL" "EncryptFileW" FailOnFalse
    LPCWSTR ; lpFileName
)

(import "ADVAPI32.DLL" "EncryptionDisable" FailOnFalse
    LPCWSTR ; DirPath,
    BOOL ; Disable
)

(import "ADVAPI32.DLL" "FileEncryptionStatusA" FailOnFalse
    LPCSTR ; lpFileName,
    LPDWORD ; lpStatus
)

(import "ADVAPI32.DLL" "FileEncryptionStatusW" FailOnFalse
    LPCWSTR ; lpFileName,
    LPDWORD ; lpStatus
)

;; module KERNEL32.DLL:

(import "KERNEL32.DLL" "FindFirstVolumeA" HANDLE
    LPCSTR ; lpszVolumeName,
    DWORD ; cchBufferLength
)

(import "KERNEL32.DLL" "FindFirstVolumeW" HANDLE
    LPCWSTR ; lpszVolumeName,
    DWORD ; cchBufferLength
)

(import "KERNEL32.DLL" "FindFirstVolumeMountPointA" HANDLE
    LPSTR ; lpszRootPathName,
    LPSTR ; lpszVolumeMountPoint,
    DWORD ; cchBufferLength
)


(import "KERNEL32.DLL" "FindFirstVolumeMountPointW" HANDLE
    LPWSTR ; lpszRootPathName,
    LPWSTR ; lpszVolumeMountPoint,
    DWORD ; cchBufferLength
)

(import "KERNEL32.DLL" "FindNextVolumeA" FailOnFalse
    HANDLE ; hFindVolume,
    LPSTR ; lpszVolumeName,
    DWORD ; cchBufferLength
)

(import "KERNEL32.DLL" "FindNextVolumeW" FailOnFalse
    HANDLE ; hFindVolume,
    LPWSTR ; lpszVolumeName,
    DWORD ; cchBufferLength
)


(import "KERNEL32.DLL" "FindNextVolumeMountPointA" FailOnFalse
    HANDLE ; hFindVolumeMountPoint,
    LPSTR ; lpszVolumeMountPoint,
    DWORD ; cchBufferLength
)

(import "KERNEL32.DLL" "FindNextVolumeMountPointW" FailOnFalse
    HANDLE ; hFindVolumeMountPoint,
    LPWSTR ; lpszVolumeMountPoint,
    DWORD ; cchBufferLength
)


(import "KERNEL32.DLL" "FindVolumeClose" FailOnFalse
    HANDLE ; hFindVolume
)

(import "KERNEL32.DLL" "FindVolumeMountPointClose" FailOnFalse
    HANDLE ; hFindVolumeMountPoint
)

;; module ADVAPI32.DLL:
(import "ADVAPI32.DLL" "FreeEncryptionCertificateHashList" VOID
    PENCRYPTION_CERTIFICATE_HASH_LIST ; pHashes
)

;; module KERNEL32.DLL:

(import "KERNEL32.DLL" "GetCompressedFileSizeA" DwordFailIfNeg1
    LPCSTR ; lpFileName,
    LPDWORD ; lpFileSizeHigh
)

(import "KERNEL32.DLL" "GetCompressedFileSizeW" DwordFailIfNeg1
    LPCWSTR ; lpFileName,
    LPDWORD ; lpFileSizeHigh
)

(import "KERNEL32.DLL" "GetVolumeInformationA" FailOnFalse
    LPCSTR ; lpRootPathName,
    LPSTR ; lpVolumeNameBuffer,
    DWORD ; nVolumeNameSize,
    LPDWORD ; lpVolumeSerialNumber,
    LPDWORD ; lpMaximumComponentLength,
    LPDWORD ; lpFileSystemFlags,
    LPSTR ; lpFileSystemNameBuffer,
    DWORD ; nFileSystemNameSize
)

(import "KERNEL32.DLL" "GetVolumeInformationW" FailOnFalse
    LPCWSTR ; lpRootPathName,
    LPWSTR ; lpVolumeNameBuffer,
    DWORD ; nVolumeNameSize,
    LPDWORD ; lpVolumeSerialNumber,
    LPDWORD ; lpMaximumComponentLength,
    FileSystemFlags ; lpFileSystemFlags,
    LPWSTR ; lpFileSystemNameBuffer,
    DWORD ; nFileSystemNameSize
)

(import "KERNEL32.DLL" "GetVolumeNameForVolumeMountPointA" FailOnFalse
    LPCSTR ; lpszVolumeMountPoint,
    LPSTR ; lpszVolumeName,
    DWORD ; cchBufferLength
)

(import "KERNEL32.DLL" "GetVolumeNameForVolumeMountPointW" FailOnFalse
    LPCWSTR ; lpszVolumeMountPoint,
    LPWSTR ; lpszVolumeName,
    DWORD ; cchBufferLength
)


(import "KERNEL32.DLL" "GetVolumePathNameA" FailOnFalse
    LPCSTR ; lpszFileName,
    LPSTR ; lpszVolumePathName,
    DWORD ; cchBufferLength
)

(import "KERNEL32.DLL" "GetVolumePathNameW" FailOnFalse
    LPCWSTR ; lpszFileName,
    LPWSTR ; lpszVolumePathName,
    DWORD ; cchBufferLength
)


;; module ADVAPI32.DLL:
(import "ADVAPI32.DLL" "QueryRecoveryAgentsOnEncryptedFile" WinError
    LPCWSTR ; lpFileName,
    "void*" ; LPENCRYPTION_CERTIFICATE_HASH_LIST * pRecoveryAgents
)

(import "ADVAPI32.DLL" "QueryUsersOnEncryptedFile" WinError
    LPCWSTR ; lpFileName,
    "void*" ; LPENCRYPTION_CERTIFICATE_HASH_LIST * pUsers
)

(import "ADVAPI32.DLL" "RemoveUsersFromEncryptedFile" WinError
    LPCWSTR ; lpFileName,
    LPENCRYPTION_CERTIFICATE_HASH_LIST ; pHashes
)

(import "ADVAPI32.DLL" "SetUserFileEncryptionKey" DWORD
    LPENCRYPTION_CERTIFICATE ; pEncryptionCertificate
)

;; module KERNEL32.DLL:
(import "KERNEL32.DLL" "SetVolumeMountPointA" FailOnFalse
    LPCSTR ; lpszVolumeMountPoint,
    LPCSTR ; lpszVolumeName
)


(import "KERNEL32.DLL" "SetVolumeMountPointW" FailOnFalse
    LPCWSTR ; lpszVolumeMountPoint,
    LPCWSTR ; lpszVolumeName
)







;; category DeviceFunctions:

;; value DWORD StreamIds {
(setq StreamIds DWORD)
(setq BACKUP_DATA 0x00000001)
(setq BACKUP_EA_DATA 0x00000002)
(setq BACKUP_SECURITY_DATA 0x00000003)
(setq BACKUP_ALTERNATE_DATA 0x00000004)
(setq BACKUP_LINK 0x00000005)
(setq BACKUP_PROPERTY_DATA 0x00000006)
(setq BACKUP_OBJECT_ID 0x00000007)
(setq BACKUP_REPARSE_DATA 0x00000008)
(setq BACKUP_SPARSE_BLOCK 0x00000009)
;; };

;; value DWORD StreamAttributes {
(setq StreamAttributes DWORD)
(setq STREAM_MODIFIED_WHEN_READ 0x00000001)
(setq STREAM_CONTAINS_SECURITY 0x00000002)
;; };

;; typedef struct _WIN32_STREAM_ID  { {
(struct '_WIN32_STREAM_ID
    StreamIds ; dwStreamId
    StreamAttributes ; dwStreamAttributes
    ;; Size
    ULONG ; Low
    LONG ; High
    DWORD ; dwStreamNameSize
    WCHAR ; cStreamName
)
(setq WIN32_STREAM_ID _WIN32_STREAM_ID)
;; } WIN32_STREAM_ID
(setq LPWIN32_STREAM_ID "void*")

;; value DWORD TapeCreateDefinitions {
(setq TapeCreateDefinitions DWORD)
(setq TAPE_FIXED_PARTITIONS 0)
(setq TAPE_SELECT_PARTITIONS 1)
(setq TAPE_INITIATOR_PARTITIONS 2)
;; };

;; value DWORD EraseTypeToPerform {
(setq EraseTypeToPerform DWORD)
(setq TAPE_ERASE_SHORT 0)
(setq TAPE_ERASE_LONG 1)
;; };

;; value DWORD TypeOfInformation {
(setq TypeOfInformation DWORD)
(setq GET_TAPE_MEDIA_INFORMATION 0)
(setq GET_TAPE_DRIVE_INFORMATION 1)
;; };

;; typedef struct _TAPE_GET_MEDIA_PARAMETERS  { {
(struct '_TAPE_GET_MEDIA_PARAMETERS
    ;; Capacity
    ULONG ; Low
    LONG ; High
    ;; Remaining
    ULONG ; Low
    LONG ; High
    DWORD ; BlockSize
    DWORD ; PartitionCount
    BOOLEAN ; WriteProtected
)
(setq TAPE_GET_MEDIA_PARAMETERS _TAPE_GET_MEDIA_PARAMETERS)
;; } TAPE_GET_MEDIA_PARAMETERS
(setq LPTAPE_GET_MEDIA_PARAMETERS "void*")

;; typedef struct _TAPE_GET_DRIVE_PARAMETERS  { {
(struct '_TAPE_GET_DRIVE_PARAMETERS
    BOOLEAN ; ECC
    BOOLEAN ; Compression
    BOOLEAN ; DataPadding
    BOOLEAN ; ReportSetmarks
    DWORD ; DefaultBlockSize
    DWORD ; MaximumBlockSize
    DWORD ; MinimumBlockSize
    DWORD ; MaximumPartitionCount
    DWORD ; FeaturesLow
    DWORD ; FeaturesHigh
    DWORD ; EOTWarningZoneSize
)
(setq TAPE_GET_DRIVE_PARAMETERS _TAPE_GET_DRIVE_PARAMETERS)
;; } TAPE_GET_DRIVE_PARAMETERS
(setq LPTAPE_GET_DRIVE_PARAMETERS "void*")

;; value DWORD TapePosition {
(setq TapePosition DWORD)
(setq TAPE_ABSOLUTE_POSITION 0)
(setq TAPE_LOGICAL_POSITION 1)
(setq TAPE_PSEUDO_LOGICAL_POSITION 2)
;; };

;; value DWORD TapeDevicePreparation {
(setq TapeDevicePreparation DWORD)
(setq TAPE_LOAD 0)
(setq TAPE_UNLOAD 1)
(setq TAPE_TENSION 2)
(setq TAPE_LOCK 3)
(setq TAPE_UNLOCK 4)
(setq TAPE_FORMAT 5)
;; };

;; value DWORD InformationToBeSet {
(setq InformationToBeSet DWORD)
(setq SET_TAPE_MEDIA_INFORMATION 0)
(setq SET_TAPE_DRIVE_INFORMATION 1)
;; };

;; typedef struct _TAPE_SET_MEDIA_PARAMETERS  { {
(struct '_TAPE_SET_MEDIA_PARAMETERS
    DWORD ; BlockSize
)
(setq TAPE_SET_MEDIA_PARAMETERS _TAPE_SET_MEDIA_PARAMETERS)
;; } TAPE_SET_MEDIA_PARAMETERS
(setq LPTAPE_SET_MEDIA_PARAMETERS "void*")

;; typedef struct _TAPE_SET_DRIVE_PARAMETERS  { {
(struct '_TAPE_SET_DRIVE_PARAMETERS
    BOOLEAN ; ECC
    BOOLEAN ; Compression
    BOOLEAN ; DataPadding
    BOOLEAN ; ReportSetmarks
    DWORD ; EOTWarningZoneSize
)
(setq TAPE_SET_DRIVE_PARAMETERS _TAPE_SET_DRIVE_PARAMETERS)
;; } TAPE_SET_DRIVE_PARAMETERS
(setq LPTAPE_SET_DRIVE_PARAMETERS "void*")

;; value DWORD TypeOfPositioning {
(setq TypeOfPositioning DWORD)
(setq TAPE_REWIND 0)
(setq TAPE_ABSOLUTE_BLOCK 1)
(setq TAPE_LOGICAL_BLOCK 2)
(setq TAPE_PSEUDO_LOGICAL_BLOCK 3)
(setq TAPE_SPACE_END_OF_DATA 4)
(setq TAPE_SPACE_RELATIVE_BLOCKS 5)
(setq TAPE_SPACE_FILEMARKS 6)
(setq TAPE_SPACE_SEQUENTIAL_FMKS 7)
(setq TAPE_SPACE_SETMARKS 8)
(setq TAPE_SPACE_SEQUENTIAL_SMKS 9)
;; };

;; value DWORD TapeMarksToWrite {
(setq TapeMarksToWrite DWORD)
(setq TAPE_SETMARKS 0)
(setq TAPE_FILEMARKS 1)
(setq TAPE_SHORT_FILEMARKS 2)
(setq TAPE_LONG_FILEMARKS 3)
;; };

(import "KERNEL32.DLL" "BackupRead" FailOnFalse
    HANDLE ; hFile,
    LPBYTE ; lpBuffer,
    DWORD ; nNumberOfBytesToRead,
    LPDWORD ; lpNumberOfBytesRead,
    BOOL ; bAbort,
    BOOL ; bProcessSecurity,
    "void*" ; LPVOID * lpContext
)

(import "KERNEL32.DLL" "BackupSeek" FailOnFalse
    HANDLE ; hFile,
    DWORD ; dwLowBytesToSeek,
    DWORD ; dwHighBytesToSeek,
    LPDWORD ; lpdwLowByteSeeked,
    LPDWORD ; lpdwHighByteSeeked,
    "void*" ; LPVOID * lpContext
)

(import "KERNEL32.DLL" "BackupWrite" FailOnFalse
    HANDLE ; hFile,
    LPBYTE ; lpBuffer,
    DWORD ; nNumberOfBytesToWrite,
    LPDWORD ; lpNumberOfBytesWritten,
    BOOL ; bAbort,
    BOOL ; bProcessSecurity,
    "void*" ; LPVOID * lpContext
)

(import "KERNEL32.DLL" "CreateTapePartition" WinError
    HANDLE ; hDevice,
    TapeCreateDefinitions ; dwPartitionMethod,
    DWORD ; dwCount,
    DWORD ; dwSize
)

(import "KERNEL32.DLL" "EraseTape" WinError
    HANDLE ; hDevice,
    EraseTypeToPerform ; dwEraseType,
    BOOL ; bImmediate
)

(import "KERNEL32.DLL" "GetTapeParameters" WinError
    HANDLE ; hDevice,
    TypeOfInformation ; dwOperation,
    LPDWORD ; lpdwSize,
    LPVOID ; lpTapeInformation
)

(import "KERNEL32.DLL" "GetTapePosition" WinError
    HANDLE ; hDevice,
    TapePosition ; dwPositionType,
    LPDWORD ; lpdwPartition,
    LPDWORD ; lpdwOffsetLow,
    LPDWORD ; lpdwOffsetHigh
)

(import "KERNEL32.DLL" "GetTapeStatus" WinError
    HANDLE ; hDevice
)

(import "KERNEL32.DLL" "PrepareTape" WinError
    HANDLE ; hDevice,
    TapeDevicePreparation ; dwOperation,
    BOOL ; bImmediate
)

(import "KERNEL32.DLL" "SetTapeParameters" WinError
    HANDLE ; hDevice,
    InformationToBeSet ; dwOperation,
    LPVOID ; lpTapeInformation
)

(import "KERNEL32.DLL" "SetTapePosition" WinError
    HANDLE ; hDevice,
    TypeOfPositioning ; dwPositionMethod,
    DWORD ; dwPartition,
    DWORD ; dwOffsetLow,
    DWORD ; dwOffsetHigh,
    BOOL ; bImmediate
)

(import "KERNEL32.DLL" "WriteTapemark" WinError
    HANDLE ; hDevice,
    TapeMarksToWrite ; dwTapemarkType,
    DWORD ; dwTapemarkCount,
    BOOL ; bImmediate
)











(import "KERNEL32.DLL" "DeviceIoControl" FailOnFalse
    HANDLE ; hDevice,
    DWORD ; dwIoControlCode,
    LPVOID ; lpInBuffer,
    DWORD ; nInBufferSize,
    LPVOID ; lpOutBuffer,
    DWORD ; nOutBufferSize,
    LPDWORD ; lpBytesReturned,
    LPOVERLAPPED ; lpOverlapped
)







;; typedef struct _DEV_BROADCAST_HDR  { {
(struct '_DEV_BROADCAST_HDR
    DWORD ; dbch_size
    DWORD ; dbch_devicetype
    DWORD ; dbch_reserved
)
(setq DEV_BROADCAST_HDR _DEV_BROADCAST_HDR)
;; } DEV_BROADCAST_HDR
(setq LPDEV_BROADCAST_HDR "void*")

;; value DWORD HandleType {
(setq HandleType DWORD)
(setq DEVICE_NOTIFY_WINDOW_HANDLE 0x00000000)
;; };

;; value HANDLE HdevnotifyFailNull {
(setq HdevnotifyFailNull HANDLE)
(setq NULL 0)
;; };

;; value HANDLE HdevinfoFailInvalid {
(setq HdevinfoFailInvalid HANDLE)
(setq INVALID_HANDLE_VALUE -1)
;; };

;; value HKEY HkeyFailInvalid {
(setq HkeyFailInvalid HKEY)
(setq INVALID_HANDLE_VALUE -1)
;; };

;; mask DWORD DeviceInterfaceFlags {
(setq DeviceInterfaceFlags DWORD)
(setq SPINT_ACTIVE 0x00000001)
(setq SPINT_DEFAULT 0x00000002)
(setq SPINT_REMOVED 0x00000004)
;; };

;; typedef struct _SP_DEVINFO_DATA  { {
(struct '_SP_DEVINFO_DATA
    DWORD ; cbSize
    GUID ; ClassGuid
    DWORD ; DevInst
    ULONG_PTR ; Reserved
)
(setq SP_DEVINFO_DATA _SP_DEVINFO_DATA)
;; } SP_DEVINFO_DATA
(setq PSP_DEVINFO_DATA "void*")

;; value DWORD ControlOptionFlags {
(setq ControlOptionFlags DWORD)
(setq DIGCF_DEFAULT 0x00000001)
(setq DIGCF_PRESENT 0x00000002)
(setq DIGCF_ALLCLASSES 0x00000004)
(setq DIGCF_PROFILE 0x00000008)
(setq DIGCF_DEVICEINTERFACE 0x00000010)
;; };

;; value DWORD SetupDiopenClassRegKeyExFlags {
(setq SetupDiopenClassRegKeyExFlags DWORD)
(setq DIOCR_INSTALLER 0x00000001)
(setq DIOCR_INTERFACE 0x00000002)
;; };

;; module USER32.DLL:
(import "USER32.DLL" "RegisterDeviceNotificationA" HdevnotifyFailNull
    HANDLE ; hRecipient,
    LPVOID ; NotificationFilter,
    HandleType ; Flags
)

(import "USER32.DLL" "RegisterDeviceNotificationW" HdevnotifyFailNull
    HANDLE ; hRecipient,
    LPVOID ; NotificationFilter,
    HandleType ; Flags
)

(import "USER32.DLL" "UnregisterDeviceNotification" FailOnFalse
    HDEVNOTIFY ; Handle
)

;; module SETUPAPI.DLL:
(import "SETUPAPI.DLL" "SetupDiCreateDeviceInfoList" HdevinfoFailInvalid
    LPGUID ; ClassGuid,
    HWND ; hwndParent
)

(import "SETUPAPI.DLL" "SetupDiCreateDeviceInfoListExA" HdevinfoFailInvalid
    LPGUID ; ClassGuid,
    HWND ; hwndParent,
    LPCSTR ; MachineName,
    PVOID ; Reserved
)

(import "SETUPAPI.DLL" "SetupDiCreateDeviceInfoListExW" HdevinfoFailInvalid
    LPGUID ; ClassGuid,
    HWND ; hwndParent,
    LPCWSTR ; MachineName,
    PVOID ; Reserved
)

(import "SETUPAPI.DLL" "SetupDiCreateDeviceInterfaceRegKeyA" HkeyFailInvalid
    HDEVINFO ; DeviceInfoSet,
    PSP_DEVICE_INTERFACE_DATA ; DeviceInterfaceData,
    DWORD ; Reserved,
    DesiredSecurityAccess ; samDesired,
    HINF ; InfHandle,
    LPCSTR ; InfSectionName
)

(import "SETUPAPI.DLL" "SetupDiCreateDeviceInterfaceRegKeyW" HkeyFailInvalid
    HDEVINFO ; DeviceInfoSet,
    PSP_DEVICE_INTERFACE_DATA ; DeviceInterfaceData,
    DWORD ; Reserved,
    DesiredSecurityAccess ; samDesired,
    HINF ; InfHandle,
    LPCWSTR ; InfSectionName
)

(import "SETUPAPI.DLL" "SetupDiDeleteDeviceInterfaceData" FailOnFalse
    HDEVINFO ; DeviceInfoSet,
    PSP_DEVICE_INTERFACE_DATA ; DeviceInterfaceData
)

(import "SETUPAPI.DLL" "SetupDiDeleteDeviceInterfaceRegKey" FailOnFalse
    HDEVINFO ; DeviceInfoSet,
    PSP_DEVICE_INTERFACE_DATA ; DeviceInterfaceData,
    DWORD ; Reserved
)

(import "SETUPAPI.DLL" "SetupDiDestroyDeviceInfoList" FailOnFalse
    HDEVINFO ; DeviceInfoSet
)

(import "SETUPAPI.DLL" "SetupDiEnumDeviceInterfaces" FailOnFalse
    HDEVINFO ; DeviceInfoSet,
    PSP_DEVINFO_DATA ; DeviceInfoData,
    LPGUID ; InterfaceClassGuid,
    DWORD ; MemberIndex,
    PSP_DEVICE_INTERFACE_DATA ; DeviceInterfaceData
)

(import "SETUPAPI.DLL" "SetupDiGetClassDevsA" HdevinfoFailInvalid
    LPGUID ; ClassGuid,
    LPCSTR ; Enumerator,
    HWND ; hwndParent,
    ControlOptionFlags ; Flags
)

(import "SETUPAPI.DLL" "SetupDiGetClassDevsW" HdevinfoFailInvalid
    LPGUID ; ClassGuid,
    LPCWSTR ; Enumerator,
    HWND ; hwndParent,
    ControlOptionFlags ; Flags
)

(import "SETUPAPI.DLL" "SetupDiGetClassDevsExA" HdevinfoFailInvalid
    LPGUID ; ClassGuid,
    LPCSTR ; Enumerator,
    HWND ; hwndParent,
    ControlOptionFlags ; Flags,
    HDEVINFO ; DeviceInfoSet,
    LPCSTR ; MachineName,
    PVOID ; Reserved
)

(import "SETUPAPI.DLL" "SetupDiGetClassDevsExW" HdevinfoFailInvalid
    LPGUID ; ClassGuid,
    LPCWSTR ; Enumerator,
    HWND ; hwndParent,
    ControlOptionFlags ; Flags,
    HDEVINFO ; DeviceInfoSet,
    LPCWSTR ; MachineName,
    PVOID ; Reserved
)

(import "SETUPAPI.DLL" "SetupDiGetDeviceInterfaceAlias" FailOnFalse
    HDEVINFO ; DeviceInfoSet,
    PSP_DEVICE_INTERFACE_DATA ; DeviceInterfaceData,
    LPGUID ; AliasInterfaceClassGuid,
    PSP_DEVICE_INTERFACE_DATA ; AliasDeviceInterfaceData
)

(import "SETUPAPI.DLL" "SetupDiGetDeviceInterfaceDetailA" FailOnFalse
    HDEVINFO ; DeviceInfoSet,
    PSP_DEVICE_INTERFACE_DATA ; DeviceInterfaceData,
    PSP_DEVICE_INTERFACE_DETAIL_DATA_A ; DeviceInterfaceDetailData,
    DWORD ; DeviceInterfaceDetailDataSize,
    PDWORD ; RequiredSize,
    PSP_DEVINFO_DATA ; DeviceInfoData
)

(import "SETUPAPI.DLL" "SetupDiGetDeviceInterfaceDetailW" FailOnFalse
    HDEVINFO ; DeviceInfoSet,
    PSP_DEVICE_INTERFACE_DATA ; DeviceInterfaceData,
    PSP_DEVICE_INTERFACE_DETAIL_DATA_W ; DeviceInterfaceDetailData,
    DWORD ; DeviceInterfaceDetailDataSize,
    PDWORD ; RequiredSize,
    PSP_DEVINFO_DATA ; DeviceInfoData
)

(import "SETUPAPI.DLL" "SetupDiOpenClassRegKeyExA" HkeyFailInvalid
    LPGUID ; ClassGuid,
    DesiredSecurityAccess ; samDesired,
    SetupDiopenClassRegKeyExFlags ; Flags,
    LPCSTR ; MachineName,
    PVOID ; Reserved
)

(import "SETUPAPI.DLL" "SetupDiOpenClassRegKeyExW" HkeyFailInvalid
    LPGUID ; ClassGuid,
    DesiredSecurityAccess ; samDesired,
    SetupDiopenClassRegKeyExFlags ; Flags,
    LPCWSTR ; MachineName,
    PVOID ; Reserved
)

(import "SETUPAPI.DLL" "SetupDiOpenDeviceInterfaceA" FailOnFalse
    HDEVINFO ; DeviceInfoSet,
    LPCSTR ; DevicePath,
    DWORD ; OpenFlags,
    PSP_DEVICE_INTERFACE_DATA ; DeviceInterfaceData
)

(import "SETUPAPI.DLL" "SetupDiOpenDeviceInterfaceW" FailOnFalse
    HDEVINFO ; DeviceInfoSet,
    LPCWSTR ; DevicePath,
    DWORD ; OpenFlags,
    PSP_DEVICE_INTERFACE_DATA ; DeviceInterfaceData
)

(import "SETUPAPI.DLL" "SetupDiOpenDeviceInterfaceRegKey" HkeyFailInvalid
    HDEVINFO ; DeviceInfoSet,
    PSP_DEVICE_INTERFACE_DATA ; DeviceInterfaceData,
    DWORD ; Reserved,
    DesiredSecurityAccess ; samDesired
)
;; module KERNEL32.DLL:







;; value BYTE ACLineStatusValues {
(setq ACLineStatusValues BYTE)
(setq Offline 0)
(setq Online 1)
(setq Unknown 255)
;; };

;; value BYTE BatteryFlags {
(setq BatteryFlags BYTE)
(setq High 1)
(setq Low 2)
(setq Critical 4)
(setq Charging 8)
(setq No_system_battery 128)
(setq Unknown_status 255)
;; };

;; typedef struct _SYSTEM_POWER_STATUS  { {
(struct '_SYSTEM_POWER_STATUS
    ACLineStatusValues ; ACLineStatus
    BatteryFlags ; BatteryFlag
    BYTE ; BatteryLifePercent
    BYTE ; Reserved1
    DWORD ; BatteryLifeTime
    DWORD ; BatteryFullLifeTime
)
(setq SYSTEM_POWER_STATUS _SYSTEM_POWER_STATUS)
;; } SYSTEM_POWER_STATUS
(setq LPSYSTEM_POWER_STATUS "void*")

;; mask DWORD ExecutionRequirements {
(setq ExecutionRequirements DWORD)
(setq ES_SYSTEM_REQUIRED 0x00000001)
(setq ES_DISPLAY_REQUIRED 0x00000002)
(setq ES_USER_PRESENT 0x00000004)
(setq ES_CONTINUOUS 0x80000000)
;; };


;; value DWORD LATENCY_TIME {
(setq LATENCY_TIME DWORD)
(setq LT_DONT_CARE 0)
(setq LT_LOWEST_LATENCY 1)
;; };

(import "KERNEL32.DLL" "GetDevicePowerState" FailOnFalse
    HANDLE ; hDevice,
    "void*" ; BOOL "*" pfOn
)

(import "KERNEL32.DLL" "GetSystemPowerStatus" FailOnFalse
    LPSYSTEM_POWER_STATUS ; lpSystemPowerStatus
)

(import "KERNEL32.DLL" "IsSystemResumeAutomatic" FailOnFalse
     ; 
)

(import "KERNEL32.DLL" "RequestWakeupLatency" FailOnFalse
    LATENCY_TIME ; latency
)

(import "KERNEL32.DLL" "SetSystemPowerState" FailOnFalse
    BOOL ; fSuspend,
    BOOL ; fForce
)

(import "KERNEL32.DLL" "SetThreadExecutionState" ULONG
    ExecutionRequirements ; esFlags
)






;; category AtomFunctions:

;; value ATOM AtomFailIfZero {
(setq AtomFailIfZero ATOM)
(setq ZERO 0)
;; };

(import "KERNEL32.DLL" "AddAtomA" AtomFailIfZero
    LPCSTR ; lpString
)

(import "KERNEL32.DLL" "AddAtomW" AtomFailIfZero
    LPCWSTR ; lpString
)

(import "KERNEL32.DLL" "DeleteAtom" ATOM
    ATOM ; nAtom
)

(import "KERNEL32.DLL" "FindAtomA" AtomFailIfZero
    LPCSTR ; lpString
)

(import "KERNEL32.DLL" "FindAtomW" AtomFailIfZero
    LPCWSTR ; lpString
)

(import "KERNEL32.DLL" "GetAtomNameA" UintFailIfZero
    ATOM ; nAtom,
    LPSTR ; lpBuffer,
    "int" ; nSize
)

(import "KERNEL32.DLL" "GetAtomNameW" UintFailIfZero
    ATOM ; nAtom,
    LPWSTR ; lpBuffer,
    "int" ; nSize
)



(import "KERNEL32.DLL" "GlobalAddAtomA" AtomFailIfZero
    LPCSTR ; lpString
)

(import "KERNEL32.DLL" "GlobalAddAtomW" AtomFailIfZero
    LPCWSTR ; lpString
)

(import "KERNEL32.DLL" "GlobalDeleteAtom" ATOM
    ATOM ; nAtom
)

(import "KERNEL32.DLL" "GlobalFindAtomA" AtomFailIfZero
    LPCSTR ; lpString
)

(import "KERNEL32.DLL" "GlobalFindAtomW" AtomFailIfZero
    LPCWSTR ; lpString
)

(import "KERNEL32.DLL" "GlobalGetAtomNameA" UintFailIfZero
    ATOM ; nAtom,
    LPSTR ; lpBuffer,
    "int" ; nSize
)

(import "KERNEL32.DLL" "GlobalGetAtomNameW" UintFailIfZero
    ATOM ; nAtom,
    LPWSTR ; lpBuffer,
    "int" ; nSize
)

(import "KERNEL32.DLL" "InitAtomTable" FailOnFalse
    DWORD ; nSize
)







;; category HandleAndObjectFunctions:

;; mask DWORD OptionalActions {
(setq OptionalActions DWORD)
(setq DUPLICATE_CLOSE_SOURCE 0x00000001)
(setq DUPLICATE_SAME_ACCESS 0x00000002)
;; };

;; mask LPDWORD HandleProperties {
(setq HandleProperties LPDWORD)
(setq HANDLE_FLAG_INHERIT 0x00000001)
(setq HANDLE_FLAG_PROTECT_FROM_CLOSE 0x00000002)
;; };

(import "KERNEL32.DLL" "CloseHandle" FailOnFalse
    HANDLE ; hObject
)

(import "KERNEL32.DLL" "DuplicateHandle" FailOnFalse
    HANDLE ; hSourceProcessHandle,
    HANDLE ; hSourceHandle,
    HANDLE ; hTargetProcessHandle,
    LPHANDLE ; lpTargetHandle,
    DWORD ; dwDesiredAccess,
    BOOL ; bInheritHandle,
    OptionalActions ; dwOptions
)

(import "KERNEL32.DLL" "GetHandleInformation" FailOnFalse
    HANDLE ; hObject,
    HandleProperties ; lpdwFlags
)

(import "KERNEL32.DLL" "SetHandleInformation" FailOnFalse
    HANDLE ; hObject,
    DWORD ; dwMask,
    HandleProperties ; dwFlags
)






;; category IOFunctions:

;; value DWORD MessageWaitLength {
(setq MessageWaitLength DWORD)
(setq NoMessage 0)
(setq MAILSLOT_WAIT_FOREVER -1)
;; };

;; value LPDWORD NextSizeValue {
(setq NextSizeValue LPDWORD)
(setq MAILSLOT_NO_MESSAGE -1)
;; };

(import "KERNEL32.DLL" "CreateMailslotA" HANDLE
    LPCSTR ; lpName,
    DWORD ; nMaxMessageSize,
    MessageWaitLength ; lReadTimeout,
    LPSECURITY_ATTRIBUTES ; lpSecurityAttributes
)

(import "KERNEL32.DLL" "CreateMailslotW" HANDLE
    LPCWSTR ; lpName,
    DWORD ; nMaxMessageSize,
    MessageWaitLength ; lReadTimeout,
    LPSECURITY_ATTRIBUTES ; lpSecurityAttributes
)

(import "KERNEL32.DLL" "GetMailslotInfo" FailOnFalse
    HANDLE ; hMailslot,
    LPDWORD ; lpMaxMessageSize,
    NextSizeValue ; lpNextSize,
    LPDWORD ; lpMessageCount,
    LPDWORD ; lpReadTimeout
)

(import "KERNEL32.DLL" "SetMailslotInfo" FailOnFalse
    HANDLE ; hMailslot,
    MessageWaitLength ; lReadTimeout
)






;; category IOFunctions:

;; value DWORD TimeOutValue {
(setq TimeOutValue DWORD)
(setq NMPWAIT_WAIT_FOREVER 0xffffffff)
(setq NMPWAIT_NOWAIT 0x00000001)
(setq NMPWAIT_USE_DEFAULT_WAIT 0x00000000)
;; };


;; mask DWORD PipeSpecificModes {
(setq PipeSpecificModes DWORD)
(setq PIPE_TYPE_BYTE 0x00000000)
(setq PIPE_TYPE_MESSAGE 0x00000004)
(setq PIPE_READMODE_MESSAGE 0x00000002)
    #define ; PIPE_NOWAIT
;; };

;; value LPDWORD PipeType {
(setq PipeType LPDWORD)
(setq PIPE_CLIENT_END 0x00000000)
(setq PIPE_SERVER_END 0x00000001)
    #define ; PIPE_TYPE_MESSAGE
;; };




(import "KERNEL32.DLL" "CallNamedPipeA" FailOnFalse
    LPCSTR ; lpNamedPipeName,
    LPVOID ; lpInBuffer,
    DWORD ; nInBufferSize,
    LPVOID ; lpOutBuffer,
    DWORD ; nOutBufferSize,
    LPDWORD ; lpBytesRead,
    TimeOutValue ; nTimeOut
)

(import "KERNEL32.DLL" "CallNamedPipeW" FailOnFalse
    LPCWSTR ; lpNamedPipeName,
    LPVOID ; lpInBuffer,
    DWORD ; nInBufferSize,
    LPVOID ; lpOutBuffer,
    DWORD ; nOutBufferSize,
    LPDWORD ; lpBytesRead,
    TimeOutValue ; nTimeOut
)

(import "KERNEL32.DLL" "ConnectNamedPipe" FailOnFalse
    HANDLE ; hNamedPipe,
    LPOVERLAPPED ; lpOverlapped
)

(import "KERNEL32.DLL" "CreateNamedPipeA" HANDLE
    LPCSTR ; lpName,
    AccessMode ; dwOpenMode,
    PipeSpecificModes ; dwPipeMode,
    DWORD ; nMaxInstances,
    DWORD ; nOutBufferSize,
    DWORD ; nInBufferSize,
    DWORD ; nDefaultTimeOut,
    LPSECURITY_ATTRIBUTES ; lpSecurityAttributes
)

(import "KERNEL32.DLL" "CreateNamedPipeW" HANDLE
    LPCWSTR ; lpName,
    AccessMode ; dwOpenMode,
    PipeSpecificModes ; dwPipeMode,
    DWORD ; nMaxInstances,
    DWORD ; nOutBufferSize,
    DWORD ; nInBufferSize,
    DWORD ; nDefaultTimeOut,
    LPSECURITY_ATTRIBUTES ; lpSecurityAttributes
)

(import "KERNEL32.DLL" "CreatePipe" FailOnFalse
    PHANDLE ; hReadPipe,
    PHANDLE ; hWritePipe,
    LPSECURITY_ATTRIBUTES ; lpPipeAttributes,
    DWORD ; nSize
)

(import "KERNEL32.DLL" "DisconnectNamedPipe" FailOnFalse
    HANDLE ; hNamedPipe
)

(import "KERNEL32.DLL" "GetNamedPipeHandleStateA" FailOnFalse
    HANDLE ; hNamedPipe,
    PipeSpecificModes ; lpState,
    LPDWORD ; lpCurInstances,
    LPDWORD ; lpMaxCollectionCount,
    LPDWORD ; lpCollectDataTimeout,
    LPSTR ; lpUserName,
    DWORD ; nMaxUserNameSize
)

(import "KERNEL32.DLL" "GetNamedPipeHandleStateW" FailOnFalse
    HANDLE ; hNamedPipe,
    PipeSpecificModes ; lpState,
    LPDWORD ; lpCurInstances,
    LPDWORD ; lpMaxCollectionCount,
    LPDWORD ; lpCollectDataTimeout,
    LPWSTR ; lpUserName,
    DWORD ; nMaxUserNameSize
)

(import "KERNEL32.DLL" "GetNamedPipeInfo" FailOnFalse
    HANDLE ; hNamedPipe,
    PipeType ; lpFlags,
    LPDWORD ; lpOutBufferSize,
    LPDWORD ; lpInBufferSize,
    LPDWORD ; lpMaxInstances
)

(import "KERNEL32.DLL" "PeekNamedPipe" FailOnFalse
    HANDLE ; hNamedPipe,
    LPVOID ; lpBuffer,
    DWORD ; nBufferSize,
    LPDWORD ; lpBytesRead,
    LPDWORD ; lpTotalBytesAvail,
    LPDWORD ; lpBytesLeftThisMessage
)

(import "KERNEL32.DLL" "SetNamedPipeHandleState" FailOnFalse
    HANDLE ; hNamedPipe,
    PipeSpecificModes ; lpMode,
    LPDWORD ; lpMaxCollectionCount,
    LPDWORD ; lpCollectDataTimeout
)

(import "KERNEL32.DLL" "TransactNamedPipe" FailOnFalse
    HANDLE ; hNamedPipe,
    LPVOID ; lpInBuffer,
    DWORD ; nInBufferSize,
    LPVOID ; lpOutBuffer,
    DWORD ; nOutBufferSize,
    LPDWORD ; lpBytesRead,
    LPOVERLAPPED ; lpOverlapped
)

(import "KERNEL32.DLL" "WaitNamedPipeA" FailOnFalse
    LPCSTR ; lpNamedPipeName,
    TimeOutValue ; nTimeOut
)

(import "KERNEL32.DLL" "WaitNamedPipeW" FailOnFalse
    LPCWSTR ; lpNamedPipeName,
    TimeOutValue ; nTimeOut
)
