(context 'WIN32)

;; category RegistryFunctions:


;; value DWORD SpecialOptions {
(setq SpecialOptions DWORD)
(setq REG_OPTION_RESERVED 0x00000000)
(setq REG_OPTION_NON_VOLATILE 0x00000000)
(setq REG_OPTION_VOLATILE 0x00000001)
(setq REG_OPTION_CREATE_LINK 0x00000002)
(setq REG_OPTION_BACKUP_RESTORE 0x00000004)
(setq REG_OPTION_OPEN_LINK 0x00000008)
;; };


;; value LPDWORD DispositionValue {
(setq DispositionValue LPDWORD)
(setq REG_CREATED_NEW_KEY 0x00000001)
(setq REG_OPENED_EXISTING_KEY 0x00000002)
;; };

;; value HKEY HandleToOpenKey {
(setq HandleToOpenKey HKEY)
(setq HKEY_CLASSES_ROOT 0x80000000)
(setq HKEY_CURRENT_USER 0x80000001)
(setq HKEY_LOCAL_MACHINE 0x80000002)
(setq HKEY_USERS 0x80000003)
(setq HKEY_PERFORMANCE_DATA 0x80000004)
(setq HKEY_CURRENT_CONFIG 0x80000005)
(setq HKEY_DYN_DATA 0x80000006)
;; };

;; alias HandleToOpenKey;

;; mask DWORD ChangesToReport {
(setq ChangesToReport DWORD)
(setq REG_NOTIFY_CHANGE_NAME 0x00000001)
(setq REG_NOTIFY_CHANGE_ATTRIBUTES 0x00000002)
(setq REG_NOTIFY_CHANGE_LAST_SET 0x00000004)
(setq REG_NOTIFY_CHANGE_SECURITY 0x00000008)
;; };



;; module KERNEL32.DLL:

(import "KERNEL32.DLL" "GetPrivateProfileIntA" UINT
    LPCSTR ; lpAppName,
    LPCSTR ; lpKeyName,
    INT ; nDefault,
    LPCSTR ; lpFileName
)
(import "KERNEL32.DLL" "GetPrivateProfileIntW" UINT
    LPCWSTR ; lpAppName,
    LPCWSTR ; lpKeyName,
    INT ; nDefault,
    LPCWSTR ; lpFileName
)
(import "KERNEL32.DLL" "GetPrivateProfileSectionA" DWORD
    LPCSTR ; lpAppName,
    LPSTR ; lpReturnedString,
    DWORD ; nSize,
    LPCSTR ; lpFileName
)
(import "KERNEL32.DLL" "GetPrivateProfileSectionW" DWORD
    LPCWSTR ; lpAppName,
    LPWSTR ; lpReturnedString,
    DWORD ; nSize,
    LPCWSTR ; lpFileName
)
(import "KERNEL32.DLL" "GetPrivateProfileSectionNamesA" DWORD
    LPSTR ; lpszReturnBuffer,
    DWORD ; nSize,
    LPCSTR ; lpFileName
)
(import "KERNEL32.DLL" "GetPrivateProfileSectionNamesW" DWORD
    LPWSTR ; lpszReturnBuffer,
    DWORD ; nSize,
    LPCWSTR ; lpFileName
)
(import "KERNEL32.DLL" "GetPrivateProfileStringA" DWORD
    LPCSTR ; lpAppName,
    LPCSTR ; lpKeyName,
    LPCSTR ; lpDefault,
    LPSTR ; lpReturnedString,
    DWORD ; nSize,
    LPCSTR ; lpFileName
)
(import "KERNEL32.DLL" "GetPrivateProfileStringW" DWORD
    LPCWSTR ; lpAppName,
    LPCWSTR ; lpKeyName,
    LPCWSTR ; lpDefault,
    LPWSTR ; lpReturnedString,
    DWORD ; nSize,
    LPCWSTR ; lpFileName
)
(import "KERNEL32.DLL" "GetPrivateProfileStructA" FailOnFalse
    LPCSTR ; lpszSection,
    LPCSTR ; lpszKey,
    LPVOID ; lpStruct,
    UINT ; uSizeStruct,
    LPCSTR ; szFile
)
(import "KERNEL32.DLL" "GetPrivateProfileStructW" FailOnFalse
    LPCWSTR ; lpszSection,
    LPCWSTR ; lpszKey,
    LPVOID ; lpStruct,
    UINT ; uSizeStruct,
    LPCWSTR ; szFile
)
(import "KERNEL32.DLL" "GetProfileIntA" UINT
    LPCSTR ; lpAppName,
    LPCSTR ; lpKeyName,
    INT ; nDefault
)
(import "KERNEL32.DLL" "GetProfileIntW" UINT
    LPCWSTR ; lpAppName,
    LPCWSTR ; lpKeyName,
    INT ; nDefault
)
(import "KERNEL32.DLL" "GetProfileSectionA" DWORD
    LPCSTR ; lpAppName,
    LPSTR ; lpReturnedString,
    DWORD ; nSize
)
(import "KERNEL32.DLL" "GetProfileSectionW" DWORD
    LPCWSTR ; lpAppName,
    LPWSTR ; lpReturnedString,
    DWORD ; nSize
)
(import "KERNEL32.DLL" "GetProfileStringA" DWORD
    LPCSTR ; lpAppName,
    LPCSTR ; lpKeyName,
    LPCSTR ; lpDefault,
    LPSTR ; lpReturnedString,
    DWORD ; nSize
)
(import "KERNEL32.DLL" "GetProfileStringW" DWORD
    LPCWSTR ; lpAppName,
    LPCWSTR ; lpKeyName,
    LPCWSTR ; lpDefault,
    LPWSTR ; lpReturnedString,
    DWORD ; nSize
)
(import "KERNEL32.DLL" "WritePrivateProfileSectionA" FailOnFalse
    LPCSTR ; lpAppName,
    LPCSTR ; lpString,
    LPCSTR ; lpFileName
)
(import "KERNEL32.DLL" "WritePrivateProfileSectionW" FailOnFalse
    LPCWSTR ; lpAppName,
    LPCWSTR ; lpString,
    LPCWSTR ; lpFileName
)
(import "KERNEL32.DLL" "WritePrivateProfileStringA" FailOnFalse
    LPCSTR ; lpAppName,
    LPCSTR ; lpKeyName,
    LPCSTR ; lpString,
    LPCSTR ; lpFileName
)
(import "KERNEL32.DLL" "WritePrivateProfileStringW" FailOnFalse
    LPCWSTR ; lpAppName,
    LPCWSTR ; lpKeyName,
    LPCWSTR ; lpString,
    LPCWSTR ; lpFileName
)
(import "KERNEL32.DLL" "WritePrivateProfileStructA" FailOnFalse
    LPCSTR ; lpszSection,
    LPCSTR ; lpszKey,
    LPVOID ; lpStruct,
    UINT ; uSizeStruct,
    LPCSTR ; szFile
)
(import "KERNEL32.DLL" "WritePrivateProfileStructW" FailOnFalse
    LPCWSTR ; lpszSection,
    LPCWSTR ; lpszKey,
    LPVOID ; lpStruct,
    UINT ; uSizeStruct,
    LPCWSTR ; szFile
)
(import "KERNEL32.DLL" "WriteProfileSectionA" FailOnFalse
    LPCSTR ; lpAppName,
    LPCSTR ; lpString
)
(import "KERNEL32.DLL" "WriteProfileSectionW" FailOnFalse
    LPCWSTR ; lpAppName,
    LPCWSTR ; lpString
)
(import "KERNEL32.DLL" "WriteProfileStringA" FailOnFalse
    LPCSTR ; lpAppName,
    LPCSTR ; lpKeyName,
    LPCSTR ; lpString
)
(import "KERNEL32.DLL" "WriteProfileStringW" FailOnFalse
    LPCWSTR ; lpAppName,
    LPCWSTR ; lpKeyName,
    LPCWSTR ; lpString
)

;; module  ADVAPI32.DLL:

(import "ADVAPI32.DLL" "RegCloseKey" WinError
    HandleToOpenKey ; hKey
)
(import "ADVAPI32.DLL" "RegConnectRegistryA" WinError
    LPCSTR ; lpMachineName,
    HandleToOpenKey ; hKey,
    "void*" ; HandleToOpenKey "*" phkResult
)
(import "ADVAPI32.DLL" "RegConnectRegistryW" WinError
    LPCWSTR ; lpMachineName,
    HandleToOpenKey ; hKey,
    "void*" ; HandleToOpenKey "*" phkResult
)
(import "ADVAPI32.DLL" "RegCreateKeyA" WinError
    HandleToOpenKey ; hKey,
    LPCSTR ; lpSubKey,
    "void*" ; HandleToOpenKey "*" phkResult
)
(import "ADVAPI32.DLL" "RegCreateKeyW" WinError
    HandleToOpenKey ; hKey,
    LPCWSTR ; lpSubKey,
    "void*" ; HandleToOpenKey "*" phkResult
)
(import "ADVAPI32.DLL" "RegCreateKeyExA" WinError
    HandleToOpenKey ; hKey,
    LPCSTR ; lpSubKey,
    DWORD ; Reserved,
    LPSTR ; lpClass,
    SpecialOptions ; dwOptions,
    DesiredSecurityAccess ; samDesired,
    LPSECURITY_ATTRIBUTES ; lpSecurityAttributes,
    "void*" ; HandleToOpenKey "*" phkResult,
    DispositionValue ; lpdwDisposition
)
(import "ADVAPI32.DLL" "RegCreateKeyExW" WinError
    HandleToOpenKey ; hKey,
    LPCWSTR ; lpSubKey,
    DWORD ; Reserved,
    LPWSTR ; lpClass,
    SpecialOptions ; dwOptions,
    DesiredSecurityAccess ; samDesired,
    LPSECURITY_ATTRIBUTES ; lpSecurityAttributes,
    "void*" ; HandleToOpenKey "*" phkResult,
    DispositionValue ; lpdwDisposition
)
(import "ADVAPI32.DLL" "RegDeleteKeyA" WinError
    HandleToOpenKey ; hKey,
    LPCSTR ; lpSubKey
)
(import "ADVAPI32.DLL" "RegDeleteKeyW" WinError
    HandleToOpenKey ; hKey,
    LPCWSTR ; lpSubKey
)
(import "ADVAPI32.DLL" "RegDeleteValueA" WinError
    HandleToOpenKey ; hKey,
    LPCSTR ; lpValueName
)
(import "ADVAPI32.DLL" "RegDeleteValueW" WinError
    HandleToOpenKey ; hKey,
    LPCWSTR ; lpValueName
)
(import "ADVAPI32.DLL" "RegEnumKeyA" WinError
    HandleToOpenKey ; hKey,
    DWORD ; dwIndex,
    LPSTR ; lpName,
    DWORD ; cbName
)
(import "ADVAPI32.DLL" "RegEnumKeyW" WinError
    HandleToOpenKey ; hKey,
    DWORD ; dwIndex,
    LPWSTR ; lpName,
    DWORD ; cbName
)
(import "ADVAPI32.DLL" "RegEnumKeyExA" WinError
    HandleToOpenKey ; hKey,
    DWORD ; dwIndex,
    LPSTR ; lpName,
    LPDWORD ; lpcName,
    LPDWORD ; lpReserved,
    LPSTR ; lpClass,
    LPDWORD ; lpcClass,
    PFILETIME ; lpftLastWriteTime
)
(import "ADVAPI32.DLL" "RegEnumKeyExW" WinError
    HandleToOpenKey ; hKey,
    DWORD ; dwIndex,
    LPWSTR ; lpName,
    LPDWORD ; lpcbName,
    LPDWORD ; lpReserved,
    LPWSTR ; lpClass,
    LPDWORD ; lpcbClass,
    PFILETIME ; lpftLastWriteTime
)
(import "ADVAPI32.DLL" "RegEnumValueA" WinError
    HandleToOpenKey ; hKey,
    DWORD ; dwIndex,
    LPSTR ; lpValueName,
    LPDWORD ; lpcValueName,
    LPDWORD ; lpReserved,
    LPDWORD ; lpType,
    LPBYTE ; lpData,
    LPDWORD ; lpcbData
)
(import "ADVAPI32.DLL" "RegEnumValueW" WinError
    HandleToOpenKey ; hKey,
    DWORD ; dwIndex,
    LPWSTR ; lpValueName,
    LPDWORD ; lpcbValueName,
    LPDWORD ; lpReserved,
    LPDWORD ; lpType,
    LPBYTE ; lpData,
    LPDWORD ; lpcbData
)
(import "ADVAPI32.DLL" "RegFlushKey" WinError
    HandleToOpenKey ; hKey
)
(import "ADVAPI32.DLL" "RegLoadKeyA" WinError
    HandleToOpenKey ; hKey,
    LPCSTR ; lpSubKey,
    LPCSTR ; lpFile
)
(import "ADVAPI32.DLL" "RegLoadKeyW" WinError
    HandleToOpenKey ; hKey,
    LPCWSTR ; lpSubKey,
    LPCWSTR ; lpFile
)
(import "ADVAPI32.DLL" "RegNotifyChangeKeyValue" WinError
    HandleToOpenKey ; hKey,
    BOOL ; bWatchSubtree,
    ChangesToReport ; dwNotifyFilter,
    HANDLE ; hEvent,
    BOOL ; fAsynchronous
)
(import "ADVAPI32.DLL" "RegOpenCurrentUser" WinError
    DesiredSecurityAccess ; samDesired,
    "void*" ; HandleToOpenKey "*" phkResult
)
(import "ADVAPI32.DLL" "RegOpenKeyA" WinError
    HandleToOpenKey ; hKey,
    LPCSTR ; lpSubKey,
    "void*" ; HandleToOpenKey "*" phkResult
)
(import "ADVAPI32.DLL" "RegOpenKeyW" WinError
    HandleToOpenKey ; hKey,
    LPCWSTR ; lpSubKey,
    "void*" ; HandleToOpenKey "*" phkResult
)
(import "ADVAPI32.DLL" "RegOpenKeyExA" WinError
    HandleToOpenKey ; hKey,
    LPCSTR ; lpSubKey,
    DWORD ; ulOptions,
    DesiredSecurityAccess ; samDesired,
    "void*" ; HandleToOpenKey "*" phkResult
)
(import "ADVAPI32.DLL" "RegOpenKeyExW" WinError
    HandleToOpenKey ; hKey,
    LPCWSTR ; lpSubKey,
    DWORD ; ulOptions,
    DesiredSecurityAccess ; samDesired,
    "void*" ; HandleToOpenKey "*" phkResult
)
(import "ADVAPI32.DLL" "RegOpenUserClassesRoot" WinError
    HANDLE ; hToken,
    DWORD ; dwOptions,
    DesiredSecurityAccess ; samDesired,
    "void*" ; HandleToOpenKey "*" phkResult
)
(import "ADVAPI32.DLL" "RegOverridePredefKey" WinError
    HandleToOpenKey ; hKey,
    HandleToOpenKey ; hNewHKey
)
(import "ADVAPI32.DLL" "RegQueryInfoKeyA" WinError
    HandleToOpenKey ; hKey,
    LPSTR ; lpClass,
    LPDWORD ; lpcClass,
    LPDWORD ; lpReserved,
    LPDWORD ; lpcSubKeys,
    LPDWORD ; lpcMaxSubKeyLen,
    LPDWORD ; lpcMaxClassLen,
    LPDWORD ; lpcValues,
    LPDWORD ; lpcMaxValueNameLen,
    LPDWORD ; lpcMaxValueLen,
    LPDWORD ; lpcbSecurityDescriptor,
    PFILETIME ; lpftLastWriteTime
)
(import "ADVAPI32.DLL" "RegQueryInfoKeyW" WinError
    HandleToOpenKey ; hKey,
    LPWSTR ; lpClass,
    LPDWORD ; lpcbClass,
    LPDWORD ; lpReserved,
    LPDWORD ; lpcSubKeys,
    LPDWORD ; lpcbMaxSubKeyLen,
    LPDWORD ; lpcbMaxClassLen,
    LPDWORD ; lpcValues,
    LPDWORD ; lpcbMaxValueNameLen,
    LPDWORD ; lpcbMaxValueLen,
    LPDWORD ; lpcbSecurityDescriptor,
    PFILETIME ; lpftLastWriteTime
)
(import "ADVAPI32.DLL" "RegQueryMultipleValuesA" WinError
    HandleToOpenKey ; hKey,
    LPVOID ; val_list,
    DWORD ; num_vals,
    LPSTR ; lpValueBuf,
    LPDWORD ; ldwTotsize
)
(import "ADVAPI32.DLL" "RegQueryMultipleValuesW" WinError
    HandleToOpenKey ; hKey,
    LPVOID ; val_list,
    DWORD ; num_vals,
    LPWSTR ; lpValueBuf,
    LPDWORD ; ldwTotsize
)
(import "ADVAPI32.DLL" "RegQueryValueA" WinError
    HandleToOpenKey ; hKey,
    LPCSTR ; lpSubKey,
    LPSTR ; lpValue,
    PLONG ; lpcbValue
)
(import "ADVAPI32.DLL" "RegQueryValueW" WinError
    HandleToOpenKey ; hKey,
    LPCWSTR ; lpSubKey,
    LPWSTR ; lpValue,
    PLONG ; lpcbValue
)
(import "ADVAPI32.DLL" "RegQueryValueExA" WinError
    HandleToOpenKey ; hKey,
    LPCSTR ; lpValueName,
    LPDWORD ; lpReserved,
    LPDWORD ; lpType,
    LPBYTE ; lpData,
    LPDWORD ; lpcbData
)
(import "ADVAPI32.DLL" "RegQueryValueExW" WinError
    HandleToOpenKey ; hKey,
    LPCWSTR ; lpValueName,
    LPDWORD ; lpReserved,
    LPDWORD ; lpType,
    LPBYTE ; lpData,
    LPDWORD ; lpcbData
)
(import "ADVAPI32.DLL" "RegReplaceKeyA" WinError
    HandleToOpenKey ; hKey,
    LPCSTR ; lpSubKey,
    LPCSTR ; lpNewFile,
    LPCSTR ; lpOldFile
)
(import "ADVAPI32.DLL" "RegReplaceKeyW" WinError
    HandleToOpenKey ; hKey,
    LPCWSTR ; lpSubKey,
    LPCWSTR ; lpNewFile,
    LPCWSTR ; lpOldFile
)
(import "ADVAPI32.DLL" "RegRestoreKeyA" WinError
    HandleToOpenKey ; hKey,
    LPCSTR ; lpFile,
    DWORD ; dwFlags
)
(import "ADVAPI32.DLL" "RegRestoreKeyW" WinError
    HandleToOpenKey ; hKey,
    LPCWSTR ; lpFile,
    DWORD ; dwFlags
)
(import "ADVAPI32.DLL" "RegSaveKeyA" WinError
    HandleToOpenKey ; hKey,
    LPCSTR ; lpFile,
    LPSECURITY_ATTRIBUTES ; lpSecurityAttributes
)
(import "ADVAPI32.DLL" "RegSaveKeyW" WinError
    HandleToOpenKey ; hKey,
    LPCWSTR ; lpFile,
    LPSECURITY_ATTRIBUTES ; lpSecurityAttributes
)
(import "ADVAPI32.DLL" "RegSetValueA" WinError
    HandleToOpenKey ; hKey,
    LPCSTR ; lpSubKey,
    DWORD ; dwType,
    LPCSTR ; lpData,
    DWORD ; cbData
)
(import "ADVAPI32.DLL" "RegSetValueW" WinError
    HandleToOpenKey ; hKey,
    LPCWSTR ; lpSubKey,
    DWORD ; dwType,
    LPCWSTR ; lpData,
    DWORD ; cbData
)
(import "ADVAPI32.DLL" "RegSetValueExA" WinError
    HandleToOpenKey ; hKey,
    LPCSTR ; lpValueName,
    DWORD ; Reserved,
    DWORD ; dwType,
    "void*" ; BYTE "*" lpData,
    DWORD ; cbData
)
(import "ADVAPI32.DLL" "RegSetValueExW" WinError
    HandleToOpenKey ; hKey,
    LPCWSTR ; lpValueName,
    DWORD ; Reserved,
    DWORD ; dwType,
    "void*" ; BYTE "*" lpData,
    DWORD ; cbData
)
(import "ADVAPI32.DLL" "RegUnLoadKeyA" WinError
    HandleToOpenKey ; hKey,
    LPCSTR ; lpSubKey
)
(import "ADVAPI32.DLL" "RegUnLoadKeyW" WinError
    HandleToOpenKey ; hKey,
    LPCWSTR ; lpSubKey
)
