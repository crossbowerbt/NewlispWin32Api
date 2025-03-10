(context 'WIN32)


;; category AdvApi32:


;; module ADVAPI32.DLL:

(setq PSID PVOID)

(setq SECURITY_INFORMATION ULONG)
(setq PSECURITY_INFORMATION (string SECURITY_INFORMATION "*"))
(setq PSECURITY_DESCRIPTOR PVOID)
(setq PGENERIC_MAPPING PVOID)
(setq PPRIVILEGE_SET PVOID)

;; value int SidNameUse {
(setq SidNameUse int)
(setq SidTypeUser 1)
(setq SidTypeGroup 2)
(setq SidTypeDomain 3)
(setq SidTypeAlias 4)
(setq SidTypeWellKnownGroup 5)
(setq SidTypeDeletedAccount 6)
(setq SidTypeInvalid 7)
(setq SidTypeUnknown 8)
(setq SidTypeComputer 9)
;; };

;; typedef struct _SID_IDENTIFIER_AUTHORITY  { {
(struct '_SID_IDENTIFIER_AUTHORITY
    BYTE ; Value
)
(setq SID_IDENTIFIER_AUTHORITY _SID_IDENTIFIER_AUTHORITY)
;; } SID_IDENTIFIER_AUTHORITY
(setq PSID_IDENTIFIER_AUTHORITY "void*") ; _SID_IDENTIFIER_AUTHORITY *

(import "ADVAPI32.DLL" "AccessCheck" FailOnFalse
    PSECURITY_DESCRIPTOR ; pSecurityDescriptor,
    HANDLE ; ClientToken,
    DWORD ; DesiredAccess,
    PGENERIC_MAPPING ; GenericMapping,
    PPRIVILEGE_SET ; PrivilegeSet,
    LPDWORD ; PrivilegeSetLength,
    LPDWORD ; GrantedAccess,
    LPBOOL ; AccessStatus
)

(import "ADVAPI32.DLL" "AllocateAndInitializeSid" FailOnFalse
    PSID_IDENTIFIER_AUTHORITY ; pIdentifierAuthority,
    BYTE ; nSubAuthorityCount,
    DWORD ; nSubAuthority0,
    DWORD ; nSubAuthority1,
    DWORD ; nSubAuthority2,
    DWORD ; nSubAuthority3,
    DWORD ; nSubAuthority4,
    DWORD ; nSubAuthority5,
    DWORD ; nSubAuthority6,
    DWORD ; nSubAuthority7,
    "void*" ; PSID * pSid
)

(import "ADVAPI32.DLL" "EqualSid" FailOnFalse
    PSID ; pSid1,
    PSID ; pSid2
)

(import "ADVAPI32.DLL" "GetFileSecurityA" FailOnFalse
    LPCSTR ; lpFileName,
    SECURITY_INFORMATION ; RequestedInformation,
    PSECURITY_DESCRIPTOR ; pSecurityDescriptor,
    DWORD ; nLength,
    LPDWORD ; lpnLengthNeeded
)

(import "ADVAPI32.DLL" "GetFileSecurityW" FailOnFalse
    LPCWSTR ; lpFileName,
    SECURITY_INFORMATION ; RequestedInformation,
    PSECURITY_DESCRIPTOR ; pSecurityDescriptor,
    DWORD ; nLength,
    LPDWORD ; lpnLengthNeeded
)

(import "ADVAPI32.DLL" "GetKernelObjectSecurity" FailOnFalse
    HANDLE ; Handle,
    SECURITY_INFORMATION ; RequestedInformation,
    PSECURITY_DESCRIPTOR ; pSecurityDescriptor,
    DWORD ; nLength,
    LPDWORD ; lpnLengthNeeded
)

(import "ADVAPI32.DLL" "GetLengthSid" DWORD
    PSID ; pSid
)

(import "ADVAPI32.DLL" "GetSecurityDescriptorGroup" FailOnFalse
    PSECURITY_DESCRIPTOR ; pSecurityDescriptor,
    "void*" ; PSID * pGroup,
    LPBOOL ; lpbGroupDefaulted
)

(import "ADVAPI32.DLL" "GetSecurityDescriptorOwner" FailOnFalse
    PSECURITY_DESCRIPTOR ; pSecurityDescriptor,
    "void*" ; PSID * pOwner,
    LPBOOL ; lpbOwnerDefaulted
)

(import "ADVAPI32.DLL" "GetSidIdentifierAuthority" PSID_IDENTIFIER_AUTHORITY
    PSID ; pSid
)

(import "ADVAPI32.DLL" "GetSidSubAuthority" PDWORD
    PSID ; pSid,
    DWORD ; nSubAuthority
)

(import "ADVAPI32.DLL" "GetSidSubAuthorityCount" PBYTE
    PSID ; pSid
)

(import "ADVAPI32.DLL" "IsValidSid" FailOnFalse
    PSID ; pSid
)

(import "ADVAPI32.DLL" "LookupAccountNameA" FailOnFalse
    LPCSTR ; lpSystemName,
    LPCSTR ; lpAccountName,
    PSID ; Sid,
    LPDWORD ; cbSid,
    LPSTR ; ReferencedDomainName,
    LPDWORD ; cbReferencedDomainName,
    "void*" ; SidNameUse * peUse
)

(import "ADVAPI32.DLL" "LookupAccountNameW" FailOnFalse
    LPCWSTR ; lpSystemName,
    LPCWSTR ; lpAccountName,
    PSID ; Sid,
    LPDWORD ; cbSid,
    LPWSTR ; ReferencedDomainName,
    LPDWORD ; cbReferencedDomainName,
    "void*" ; SidNameUse * peUse
)

(import "ADVAPI32.DLL" "LookupAccountSidA" FailOnFalse
    LPCSTR ; lpSystemName,
    PSID ; Sid,
    LPSTR ; Name,
    LPDWORD ; cbName,
    LPSTR ; ReferencedDomainName,
    LPDWORD ; cbReferencedDomainName,
    "void*" ; SidNameUse * peUse
)

(import "ADVAPI32.DLL" "LookupAccountSidW" FailOnFalse
    LPCWSTR ; lpSystemName,
    PSID ; Sid,
    LPWSTR ; Name,
    LPDWORD ; cbName,
    LPWSTR ; ReferencedDomainName,
    LPDWORD ; cbReferencedDomainName,
    "void*" ; SidNameUse * peUse
)



;; mask DWORD ServiceType {
(setq ServiceType DWORD)
(setq SERVICE_KERNEL_DRIVER 0x00000001)
(setq SERVICE_FILE_SYSTEM_DRIVER 0x00000002)
(setq SERVICE_ADAPTER 0x00000004)
(setq SERVICE_RECOGNIZER_DRIVER 0x00000008)

(setq SERVICE_WIN32_OWN_PROCESS 0x00000010)
(setq SERVICE_WIN32_SHARE_PROCESS 0x00000020)

(setq SERVICE_INTERACTIVE_PROCESS 0x00000100)

;; };


;; value DWORD ServiceStartType {
(setq ServiceStartType DWORD)
(setq SERVICE_BOOT_START 0x00000000)
(setq SERVICE_SYSTEM_START 0x00000001)
(setq SERVICE_AUTO_START 0x00000002)
(setq SERVICE_DEMAND_START 0x00000003)
(setq SERVICE_DISABLED 0x00000004)
;; };


;; value DWORD ServiceErrorControlType {
(setq ServiceErrorControlType DWORD)
(setq SERVICE_ERROR_IGNORE 0x00000000)
(setq SERVICE_ERROR_NORMAL 0x00000001)
(setq SERVICE_ERROR_SEVERE 0x00000002)
(setq SERVICE_ERROR_CRITICAL 0x00000003)
;; };





;; value DWORD ServiceState {
(setq ServiceState DWORD)
(setq SERVICE_ACTIVE 0x00000001)
(setq SERVICE_INACTIVE 0x00000002)
(setq SERVICE_STATE_ALL 0x00000003)
(setq SERVICE_NO_CHANGE 0xffffffff)
;; };




;; value DWORD ServiceControl {
(setq ServiceControl DWORD)
(setq SERVICE_CONTROL_STOP 0x00000001)
(setq SERVICE_CONTROL_PAUSE 0x00000002)
(setq SERVICE_CONTROL_CONTINUE 0x00000003)
(setq SERVICE_CONTROL_INTERROGATE 0x00000004)
(setq SERVICE_CONTROL_SHUTDOWN 0x00000005)
(setq SERVICE_CONTROL_PARAMCHANGE 0x00000006)
(setq SERVICE_CONTROL_NETBINDADD 0x00000007)
(setq SERVICE_CONTROL_NETBINDREMOVE 0x00000008)
(setq SERVICE_CONTROL_NETBINDENABLE 0x00000009)
(setq SERVICE_CONTROL_NETBINDDISABLE 0x0000000A)
(setq SERVICE_CONTROL_DEVICEEVENT 0x0000000B)
(setq SERVICE_CONTROL_HARDWAREPROFILECHANGE 0x0000000C)
(setq SERVICE_CONTROL_POWEREVENT 0x0000000D)
(setq SERVICE_CONTROL_SESSIONCHANGE 0x0000000E)
;; };




;; value DWORD ServiceCurrentState {
(setq ServiceCurrentState DWORD)
(setq SERVICE_STOPPED 0x00000001)
(setq SERVICE_START_PENDING 0x00000002)
(setq SERVICE_STOP_PENDING 0x00000003)
(setq SERVICE_RUNNING 0x00000004)
(setq SERVICE_CONTINUE_PENDING 0x00000005)
(setq SERVICE_PAUSE_PENDING 0x00000006)
(setq SERVICE_PAUSED 0x00000007)
;; };




;; mask DWORD ServiceControlsAccepted {
(setq ServiceControlsAccepted DWORD)
(setq SERVICE_ACCEPT_STOP 0x00000001)
(setq SERVICE_ACCEPT_PAUSE_CONTINUE 0x00000002)
(setq SERVICE_ACCEPT_SHUTDOWN 0x00000004)
(setq SERVICE_ACCEPT_PARAMCHANGE 0x00000008)
(setq SERVICE_ACCEPT_NETBINDCHANGE 0x00000010)
(setq SERVICE_ACCEPT_HARDWAREPROFILECHANGE 0x00000020)
(setq SERVICE_ACCEPT_POWEREVENT 0x00000040)
(setq SERVICE_ACCEPT_SESSIONCHANGE 0x00000080)
;; };




;; mask DWORD SCManagerAccess {
(setq SCManagerAccess DWORD)
(setq SC_MANAGER_CONNECT 0x0001)
(setq SC_MANAGER_CREATE_SERVICE 0x0002)
(setq SC_MANAGER_ENUMERATE_SERVICE 0x0004)
(setq SC_MANAGER_LOCK 0x0008)
(setq SC_MANAGER_QUERY_LOCK_STATUS 0x0010)
(setq SC_MANAGER_MODIFY_BOOT_CONFIG 0x0020)
;; };




;; mask DWORD ServiceObjectAccess {
(setq ServiceObjectAccess DWORD)
(setq SERVICE_QUERY_CONFIG 0x0001)
(setq SERVICE_CHANGE_CONFIG 0x0002)
(setq SERVICE_QUERY_STATUS 0x0004)
(setq SERVICE_ENUMERATE_DEPENDENTS 0x0008)
(setq SERVICE_START 0x0010)
(setq SERVICE_STOP 0x0020)
(setq SERVICE_PAUSE_CONTINUE 0x0040)
(setq SERVICE_INTERROGATE 0x0080)
(setq SERVICE_USER_DEFINED_CONTROL 0x0100)
;; };




;; mask DWORD QueryServiceStatusExFlags {
(setq QueryServiceStatusExFlags DWORD)
(setq SERVICE_RUNS_IN_SYSTEM_PROCESS 0x00000001)
;; };




;; value LONG ServiceConfig2Values {
(setq ServiceConfig2Values LONG)
(setq SERVICE_CONFIG_DESCRIPTION 1)
(setq SERVICE_CONFIG_FAILURE_ACTIONS 2)
;; };




;; typedef struct _SERVICE_DESCRIPTIONA  { {
(struct '_SERVICE_DESCRIPTIONA
    LPSTR ; lpDescription
)
(setq SERVICE_DESCRIPTIONA _SERVICE_DESCRIPTIONA)
;; } SERVICE_DESCRIPTIONA
(setq LPSERVICE_DESCRIPTIONA "void*") ; _SERVICE_DESCRIPTIONA *




;; typedef struct _SERVICE_DESCRIPTIONW  { {
(struct '_SERVICE_DESCRIPTIONW
    LPWSTR ; lpDescription
)
(setq SERVICE_DESCRIPTIONW _SERVICE_DESCRIPTIONW)
;; } SERVICE_DESCRIPTIONW
(setq LPSERVICE_DESCRIPTIONW "void*") ; _SERVICE_DESCRIPTIONW *




;; value LONG SC_ACTION_TYPE {
(setq SC_ACTION_TYPE LONG)
(setq SC_ACTION_NONE 0)
(setq SC_ACTION_RESTART 1)
(setq SC_ACTION_REBOOT 2)
(setq SC_ACTION_RUN_COMMAND 3)
;; };

;; typedef struct _SC_ACTION  { {
(struct '_SC_ACTION
    SC_ACTION_TYPE ; Type
    DWORD ; Delay
)
(setq SC_ACTION _SC_ACTION)
;; } SC_ACTION
(setq LPSC_ACTION "void*") ; _SC_ACTION *

;; typedef struct _SERVICE_FAILURE_ACTIONSA  { {
(struct '_SERVICE_FAILURE_ACTIONSA
    DWORD ; dwResetPeriod
    LPSTR ; lpRebootMsg
    LPSTR ; lpCommand
    DWORD ; cActions
    "void*" ; SC_ACTION * lpsaActions
)
(setq SERVICE_FAILURE_ACTIONSA _SERVICE_FAILURE_ACTIONSA)
;; } SERVICE_FAILURE_ACTIONSA
(setq LPSERVICE_FAILURE_ACTIONSA "void*") ; _SERVICE_FAILURE_ACTIONSA *

;; typedef struct _SERVICE_FAILURE_ACTIONSW  { {
(struct '_SERVICE_FAILURE_ACTIONSW
    DWORD ; dwResetPeriod
    LPWSTR ; lpRebootMsg
    LPWSTR ; lpCommand
    DWORD ; cActions
    "void*" ; SC_ACTION * lpsaActions
)
(setq SERVICE_FAILURE_ACTIONSW _SERVICE_FAILURE_ACTIONSW)
;; } SERVICE_FAILURE_ACTIONSW
(setq LPSERVICE_FAILURE_ACTIONSW "void*") ; _SERVICE_FAILURE_ACTIONSW *

(setq SC_HANDLE HANDLE)
(setq LPSC_HANDLE "void*") ; SC_HANDLE *
(setq SERVICE_STATUS_HANDLE HANDLE)





;; value LONG SC_STATUS_TYPE {
(setq SC_STATUS_TYPE LONG)
(setq SC_STATUS_PROCESS_INFO 0)
;; };




;; value LONG SC_ENUM_TYPE {
(setq SC_ENUM_TYPE LONG)
(setq SC_ENUM_PROCESS_INFO 0)
;; };





;; typedef struct _SERVICE_STATUS  { {
(struct '_SERVICE_STATUS
    ServiceType ; dwServiceType
    ServiceCurrentState ; dwCurrentState
    ServiceControlsAccepted ; dwControlsAccepted
    DWORD ; dwWin32ExitCode
    DWORD ; dwServiceSpecificExitCode
    DWORD ; dwCheckPoint
    DWORD ; dwWaitHint
)
(setq SERVICE_STATUS _SERVICE_STATUS)
;; } SERVICE_STATUS
(setq LPSERVICE_STATUS "void*") ; _SERVICE_STATUS *

;; typedef struct _SERVICE_STATUS_PROCESS  { {
(struct '_SERVICE_STATUS_PROCESS
    ServiceType ; dwServiceType
    ServiceCurrentState ; dwCurrentState
    ServiceControlsAccepted ; dwControlsAccepted
    DWORD ; dwWin32ExitCode
    DWORD ; dwServiceSpecificExitCode
    DWORD ; dwCheckPoint
    DWORD ; dwWaitHint
    DWORD ; dwProcessId
    DWORD ; dwServiceFlags
)
(setq SERVICE_STATUS_PROCESS _SERVICE_STATUS_PROCESS)
;; } SERVICE_STATUS_PROCESS
(setq LPSERVICE_STATUS_PROCESS "void*") ; _SERVICE_STATUS_PROCESS *





;; typedef struct _ENUM_SERVICE_STATUSA  { {
(struct '_ENUM_SERVICE_STATUSA
    LPSTR ; lpServiceName
    LPSTR ; lpDisplayName
    ;; ServiceStatus
    ServiceType ; dwServiceType
    ServiceCurrentState ; dwCurrentState
    ServiceControlsAccepted ; dwControlsAccepted
    DWORD ; dwWin32ExitCode
    DWORD ; dwServiceSpecificExitCode
    DWORD ; dwCheckPoint
    DWORD ; dwWaitHint
)
(setq ENUM_SERVICE_STATUSA _ENUM_SERVICE_STATUSA)
;; } ENUM_SERVICE_STATUSA
(setq LPENUM_SERVICE_STATUSA "void*") ; _ENUM_SERVICE_STATUSA *
;; typedef struct _ENUM_SERVICE_STATUSW  { {
(struct '_ENUM_SERVICE_STATUSW
    LPWSTR ; lpServiceName
    LPWSTR ; lpDisplayName
    ;; ServiceStatus
    ServiceType ; dwServiceType
    ServiceCurrentState ; dwCurrentState
    ServiceControlsAccepted ; dwControlsAccepted
    DWORD ; dwWin32ExitCode
    DWORD ; dwServiceSpecificExitCode
    DWORD ; dwCheckPoint
    DWORD ; dwWaitHint
)
(setq ENUM_SERVICE_STATUSW _ENUM_SERVICE_STATUSW)
;; } ENUM_SERVICE_STATUSW
(setq LPENUM_SERVICE_STATUSW "void*") ; _ENUM_SERVICE_STATUSW *

;; typedef struct _ENUM_SERVICE_STATUS_PROCESSA  { {
(struct '_ENUM_SERVICE_STATUS_PROCESSA
    LPSTR ; lpServiceName
    LPSTR ; lpDisplayName
    ;; ServiceStatusProcess
    ServiceType ; dwServiceType
    ServiceCurrentState ; dwCurrentState
    ServiceControlsAccepted ; dwControlsAccepted
    DWORD ; dwWin32ExitCode
    DWORD ; dwServiceSpecificExitCode
    DWORD ; dwCheckPoint
    DWORD ; dwWaitHint
    DWORD ; dwProcessId
    DWORD ; dwServiceFlags
)
(setq ENUM_SERVICE_STATUS_PROCESSA _ENUM_SERVICE_STATUS_PROCESSA)
;; } ENUM_SERVICE_STATUS_PROCESSA
(setq LPENUM_SERVICE_STATUS_PROCESSA "void*") ; _ENUM_SERVICE_STATUS_PROCESSA *
;; typedef struct _ENUM_SERVICE_STATUS_PROCESSW  { {
(struct '_ENUM_SERVICE_STATUS_PROCESSW
    LPWSTR ; lpServiceName
    LPWSTR ; lpDisplayName
    ;; ServiceStatusProcess
    ServiceType ; dwServiceType
    ServiceCurrentState ; dwCurrentState
    ServiceControlsAccepted ; dwControlsAccepted
    DWORD ; dwWin32ExitCode
    DWORD ; dwServiceSpecificExitCode
    DWORD ; dwCheckPoint
    DWORD ; dwWaitHint
    DWORD ; dwProcessId
    DWORD ; dwServiceFlags
)
(setq ENUM_SERVICE_STATUS_PROCESSW _ENUM_SERVICE_STATUS_PROCESSW)
;; } ENUM_SERVICE_STATUS_PROCESSW
(setq LPENUM_SERVICE_STATUS_PROCESSW "void*") ; _ENUM_SERVICE_STATUS_PROCESSW *





(setq SC_LOCK LPVOID)

;; typedef struct _QUERY_SERVICE_LOCK_STATUSA  { {
(struct '_QUERY_SERVICE_LOCK_STATUSA
    DWORD ; fIsLocked
    LPSTR ; lpLockOwner
    DWORD ; dwLockDuration
)
(setq QUERY_SERVICE_LOCK_STATUSA _QUERY_SERVICE_LOCK_STATUSA)
;; } QUERY_SERVICE_LOCK_STATUSA
(setq LPQUERY_SERVICE_LOCK_STATUSA "void*") ; _QUERY_SERVICE_LOCK_STATUSA *
;; typedef struct _QUERY_SERVICE_LOCK_STATUSW  { {
(struct '_QUERY_SERVICE_LOCK_STATUSW
    DWORD ; fIsLocked
    LPWSTR ; lpLockOwner
    DWORD ; dwLockDuration
)
(setq QUERY_SERVICE_LOCK_STATUSW _QUERY_SERVICE_LOCK_STATUSW)
;; } QUERY_SERVICE_LOCK_STATUSW
(setq LPQUERY_SERVICE_LOCK_STATUSW "void*") ; _QUERY_SERVICE_LOCK_STATUSW *





;; typedef struct _QUERY_SERVICE_CONFIGA  { {
(struct '_QUERY_SERVICE_CONFIGA
    ServiceType ; dwServiceType
    ServiceStartType ; dwStartType
    ServiceErrorControlType ; dwErrorControl
    LPSTR ; lpBinaryPathName
    LPSTR ; lpLoadOrderGroup
    DWORD ; dwTagId
    LPSTR ; lpDependencies
    LPSTR ; lpServiceStartName
    LPSTR ; lpDisplayName
)
(setq QUERY_SERVICE_CONFIGA _QUERY_SERVICE_CONFIGA)
;; } QUERY_SERVICE_CONFIGA
(setq LPQUERY_SERVICE_CONFIGA "void*") ; _QUERY_SERVICE_CONFIGA *
;; typedef struct _QUERY_SERVICE_CONFIGW  { {
(struct '_QUERY_SERVICE_CONFIGW
    ServiceType ; dwServiceType
    ServiceStartType ; dwStartType
    ServiceErrorControlType ; dwErrorControl
    LPWSTR ; lpBinaryPathName
    LPWSTR ; lpLoadOrderGroup
    DWORD ; dwTagId
    LPWSTR ; lpDependencies
    LPWSTR ; lpServiceStartName
    LPWSTR ; lpDisplayName
)
(setq QUERY_SERVICE_CONFIGW _QUERY_SERVICE_CONFIGW)
;; } QUERY_SERVICE_CONFIGW
(setq LPQUERY_SERVICE_CONFIGW "void*") ; _QUERY_SERVICE_CONFIGW *





;; typedef struct _SERVICE_TABLE_ENTRYA  { {
(struct '_SERVICE_TABLE_ENTRYA
    LPSTR ; lpServiceName
    LPVOID ; lpServiceProc
)
(setq SERVICE_TABLE_ENTRYA _SERVICE_TABLE_ENTRYA)
;; }SERVICE_TABLE_ENTRYA
(setq LPSERVICE_TABLE_ENTRYA "void*") ; _SERVICE_TABLE_ENTRYA *
;; typedef struct _SERVICE_TABLE_ENTRYW  { {
(struct '_SERVICE_TABLE_ENTRYW
    LPWSTR ; lpServiceName
    LPVOID ; lpServiceProc
)
(setq SERVICE_TABLE_ENTRYW _SERVICE_TABLE_ENTRYW)
;; }SERVICE_TABLE_ENTRYW
(setq LPSERVICE_TABLE_ENTRYW "void*") ; _SERVICE_TABLE_ENTRYW *


(import "ADVAPI32.DLL" "ChangeServiceConfigA" BOOL
    SC_HANDLE ; hService,
    ServiceType ; dwServiceType,
    ServiceStartType ; dwStartType,
    ServiceErrorControlType ; dwErrorControl,
    LPCSTR ; lpBinaryPathName,
    LPCSTR ; lpLoadOrderGroup,
    LPDWORD ; lpdwTagId,
    LPCSTR ; lpDependencies,
    LPCSTR ; lpServiceStartName,
    LPCSTR ; lpPassword,
    LPCSTR ; lpDisplayName
)

(import "ADVAPI32.DLL" "ChangeServiceConfigW" BOOL
    SC_HANDLE ; hService,
    ServiceType ; dwServiceType,
    ServiceStartType ; dwStartType,
    ServiceErrorControlType ; dwErrorControl,
    LPCWSTR ; lpBinaryPathName,
    LPCWSTR ; lpLoadOrderGroup,
    LPDWORD ; lpdwTagId,
    LPCWSTR ; lpDependencies,
    LPCWSTR ; lpServiceStartName,
    LPCWSTR ; lpPassword,
    LPCWSTR ; lpDisplayName
)


(import "ADVAPI32.DLL" "ChangeServiceConfig2A" BOOL
    SC_HANDLE ; hService,
    ServiceConfig2Values ; dwInfoLevel,
    LPVOID ; lpInfo
)

(import "ADVAPI32.DLL" "ChangeServiceConfig2W" BOOL
    SC_HANDLE ; hService,
    ServiceConfig2Values ; dwInfoLevel,
    LPVOID ; lpInfo
)


(import "ADVAPI32.DLL" "CloseServiceHandle" BOOL
    SC_HANDLE ; hSCObject
)


(import "ADVAPI32.DLL" "ControlService" BOOL
    SC_HANDLE ; hService,
    ServiceControl ; dwControl,
    LPSERVICE_STATUS ; lpServiceStatus
)


(import "ADVAPI32.DLL" "CreateServiceA" SC_HANDLE
    SC_HANDLE ; hSCManager,
    LPCSTR ; lpServiceName,
    LPCSTR ; lpDisplayName,
    AccessMode ; dwDesiredAccess,
    ServiceType ; dwServiceType,
    ServiceStartType ; dwStartType,
    ServiceErrorControlType ; dwErrorControl,
    LPCSTR ; lpBinaryPathName,
    LPCSTR ; lpLoadOrderGroup,
    LPDWORD ; lpdwTagId,
    LPCSTR ; lpDependencies,
    LPCSTR ; lpServiceStartName,
    LPCSTR ; lpPassword
)

(import "ADVAPI32.DLL" "CreateServiceW" SC_HANDLE
    SC_HANDLE ; hSCManager,
    LPCWSTR ; lpServiceName,
    LPCWSTR ; lpDisplayName,
    AccessMode ; dwDesiredAccess,
    ServiceType ; dwServiceType,
    ServiceStartType ; dwStartType,
    ServiceErrorControlType ; dwErrorControl,
    LPCWSTR ; lpBinaryPathName,
    LPCWSTR ; lpLoadOrderGroup,
    LPDWORD ; lpdwTagId,
    LPCWSTR ; lpDependencies,
    LPCWSTR ; lpServiceStartName,
    LPCWSTR ; lpPassword
)


(import "ADVAPI32.DLL" "DeleteService" BOOL
    SC_HANDLE ; hService
)


(import "ADVAPI32.DLL" "EnumDependentServicesA" BOOL
    SC_HANDLE ; hService,
    ServiceState ; dwServiceState,
    LPENUM_SERVICE_STATUSA ; lpServices,
    DWORD ; cbBufSize,
    LPDWORD ; pcbBytesNeeded,
    LPDWORD ; lpServicesReturned
)

(import "ADVAPI32.DLL" "EnumDependentServicesW" BOOL
    SC_HANDLE ; hService,
    ServiceState ; dwServiceState,
    LPENUM_SERVICE_STATUSW ; lpServices,
    DWORD ; cbBufSize,
    LPDWORD ; pcbBytesNeeded,
    LPDWORD ; lpServicesReturned
)


(import "ADVAPI32.DLL" "EnumServicesStatusA" BOOL
    SC_HANDLE ; hSCManager,
    ServiceType ; dwServiceType,
    ServiceState ; dwServiceState,
    LPENUM_SERVICE_STATUSA ; lpServices,
    DWORD ; cbBufSize,
    LPDWORD ; pcbBytesNeeded,
    LPDWORD ; lpServicesReturned,
    LPDWORD ; lpResumeHandle
)

(import "ADVAPI32.DLL" "EnumServicesStatusW" BOOL
    SC_HANDLE ; hSCManager,
    ServiceType ; dwServiceType,
    ServiceState ; dwServiceState,
    LPENUM_SERVICE_STATUSW ; lpServices,
    DWORD ; cbBufSize,
    LPDWORD ; pcbBytesNeeded,
    LPDWORD ; lpServicesReturned,
    LPDWORD ; lpResumeHandle
)


(import "ADVAPI32.DLL" "EnumServicesStatusExA" BOOL
    SC_HANDLE ; hSCManager,
    SC_ENUM_TYPE ; InfoLevel,
    ServiceType ; dwServiceType,
    ServiceState ; dwServiceState,
    LPBYTE ; lpServices,
    DWORD ; cbBufSize,
    LPDWORD ; pcbBytesNeeded,
    LPDWORD ; lpServicesReturned,
    LPDWORD ; lpResumeHandle,
    LPCSTR ; pszGroupName
)

(import "ADVAPI32.DLL" "EnumServicesStatusExW" BOOL
    SC_HANDLE ; hSCManager,
    SC_ENUM_TYPE ; InfoLevel,
    ServiceType ; dwServiceType,
    ServiceState ; dwServiceState,
    LPBYTE ; lpServices,
    DWORD ; cbBufSize,
    LPDWORD ; pcbBytesNeeded,
    LPDWORD ; lpServicesReturned,
    LPDWORD ; lpResumeHandle,
    LPCWSTR ; pszGroupName
)


(import "ADVAPI32.DLL" "GetServiceKeyNameA" BOOL
    SC_HANDLE ; hSCManager,
    LPCSTR ; lpDisplayName,
    LPSTR ; lpServiceName,
    LPDWORD ; lpcchBuffer
)

(import "ADVAPI32.DLL" "GetServiceKeyNameW" BOOL
    SC_HANDLE ; hSCManager,
    LPCWSTR ; lpDisplayName,
    LPWSTR ; lpServiceName,
    LPDWORD ; lpcchBuffer
)


(import "ADVAPI32.DLL" "GetServiceDisplayNameA" BOOL
    SC_HANDLE ; hSCManager,
    LPCSTR ; lpServiceName,
    LPSTR ; lpDisplayName,
    LPDWORD ; lpcchBuffer
)

(import "ADVAPI32.DLL" "GetServiceDisplayNameW" BOOL
    SC_HANDLE ; hSCManager,
    LPCWSTR ; lpServiceName,
    LPWSTR ; lpDisplayName,
    LPDWORD ; lpcchBuffer
)


(import "ADVAPI32.DLL" "LockServiceDatabase" SC_LOCK
    SC_HANDLE ; hSCManager
)


(import "ADVAPI32.DLL" "NotifyBootConfigStatus" BOOL
    BOOL ; BootAcceptable
)


(import "ADVAPI32.DLL" "OpenSCManagerA" SC_HANDLE
    LPCSTR ; lpMachineName,
    LPCSTR ; lpDatabaseName,
    AccessMode ; dwDesiredAccess
)

(import "ADVAPI32.DLL" "OpenSCManagerW" SC_HANDLE
    LPCWSTR ; lpMachineName,
    LPCWSTR ; lpDatabaseName,
    AccessMode ; dwDesiredAccess
)


(import "ADVAPI32.DLL" "OpenServiceA" SC_HANDLE
    SC_HANDLE ; hSCManager,
    LPCSTR ; lpServiceName,
    AccessMode ; dwDesiredAccess
)

(import "ADVAPI32.DLL" "OpenServiceW" SC_HANDLE
    SC_HANDLE ; hSCManager,
    LPCWSTR ; lpServiceName,
    AccessMode ; dwDesiredAccess
)


(import "ADVAPI32.DLL" "QueryServiceConfigA" BOOL
    SC_HANDLE ; hService,
    LPQUERY_SERVICE_CONFIGA ; lpServiceConfig,
    DWORD ; cbBufSize,
    LPDWORD ; pcbBytesNeeded
)

(import "ADVAPI32.DLL" "QueryServiceConfigW" BOOL
    SC_HANDLE ; hService,
    LPQUERY_SERVICE_CONFIGW ; lpServiceConfig,
    DWORD ; cbBufSize,
    LPDWORD ; pcbBytesNeeded
)


(import "ADVAPI32.DLL" "QueryServiceConfig2A" BOOL
    SC_HANDLE ; hService,
    ServiceConfig2Values ; dwInfoLevel,
    LPBYTE ; lpBuffer,
    DWORD ; cbBufSize,
    LPDWORD ; pcbBytesNeeded
)

(import "ADVAPI32.DLL" "QueryServiceConfig2W" BOOL
    SC_HANDLE ; hService,
    ServiceConfig2Values ; dwInfoLevel,
    LPBYTE ; lpBuffer,
    DWORD ; cbBufSize,
    LPDWORD ; pcbBytesNeeded
)


(import "ADVAPI32.DLL" "QueryServiceLockStatusA" BOOL
    SC_HANDLE ; hSCManager,
    LPQUERY_SERVICE_LOCK_STATUSA ; lpLockStatus,
    DWORD ; cbBufSize,
    LPDWORD ; pcbBytesNeeded
)

(import "ADVAPI32.DLL" "QueryServiceLockStatusW" BOOL
    SC_HANDLE ; hSCManager,
    LPQUERY_SERVICE_LOCK_STATUSW ; lpLockStatus,
    DWORD ; cbBufSize,
    LPDWORD ; pcbBytesNeeded
)


(import "ADVAPI32.DLL" "QueryServiceObjectSecurity" BOOL
    SC_HANDLE ; hService,
    SECURITY_INFORMATION ; dwSecurityInformation,
    PSECURITY_DESCRIPTOR ; lpSecurityDescriptor,
    DWORD ; cbBufSize,
    LPDWORD ; pcbBytesNeeded
)


(import "ADVAPI32.DLL" "QueryServiceStatus" BOOL
    SC_HANDLE ; hService,
    LPSERVICE_STATUS ; lpServiceStatus
)


(import "ADVAPI32.DLL" "QueryServiceStatusEx" BOOL
    SC_HANDLE ; hService,
    SC_STATUS_TYPE ; InfoLevel,
    LPBYTE ; lpBuffer,
    DWORD ; cbBufSize,
    LPDWORD ; pcbBytesNeeded
)


(import "ADVAPI32.DLL" "RegisterServiceCtrlHandlerA" SERVICE_STATUS_HANDLE
    LPCSTR ; lpServiceName,
    LPVOID ; lpHandlerProc
)

(import "ADVAPI32.DLL" "RegisterServiceCtrlHandlerW" SERVICE_STATUS_HANDLE
    LPCWSTR ; lpServiceName,
    LPVOID ; lpHandlerProc
)


(import "ADVAPI32.DLL" "RegisterServiceCtrlHandlerExA" SERVICE_STATUS_HANDLE
    LPCSTR ; lpServiceName,
    LPVOID ; lpHandlerProc,
    LPVOID ; lpContext
)

(import "ADVAPI32.DLL" "RegisterServiceCtrlHandlerExW" SERVICE_STATUS_HANDLE
    LPCWSTR ; lpServiceName,
    LPVOID ; lpHandlerProc,
    LPVOID ; lpContext
)


(import "ADVAPI32.DLL" "SetServiceObjectSecurity" BOOL
    SC_HANDLE ; hService,
    SECURITY_INFORMATION ; dwSecurityInformation,
    PSECURITY_DESCRIPTOR ; lpSecurityDescriptor
)


(import "ADVAPI32.DLL" "SetServiceStatus" BOOL
    SERVICE_STATUS_HANDLE ; hServiceStatus,
    LPSERVICE_STATUS ; lpServiceStatus
)


(import "ADVAPI32.DLL" "StartServiceCtrlDispatcherA" BOOL
    "void*" ; SERVICE_TABLE_ENTRYA * lpServiceStartTable
)

(import "ADVAPI32.DLL" "StartServiceCtrlDispatcherW" BOOL
    "void*" ; SERVICE_TABLE_ENTRYW * lpServiceStartTable
)



(import "ADVAPI32.DLL" "StartServiceA" BOOL
    SC_HANDLE ; hService,
    DWORD ; dwNumServiceArgs,
    "void*" ; LPCSTR * lpServiceArgVectors
)

(import "ADVAPI32.DLL" "StartServiceW" BOOL
    SC_HANDLE ; hService,
    DWORD ; dwNumServiceArgs,
    "void*" ; LPCWSTR * lpServiceArgVectors
)

(import "ADVAPI32.DLL" "UnlockServiceDatabase" BOOL
    SC_LOCK ; ScLock
)

