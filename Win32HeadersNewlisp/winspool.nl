(context 'WIN32)


;; category Printing:
;; module WINSPOOL.DRV:

;; mask DWORD PrinterEnum {
(setq PrinterEnum DWORD)
(setq PRINTER_ENUM_DEFAULT 0x00000001)
(setq PRINTER_ENUM_LOCAL 0x00000002)
(setq PRINTER_ENUM_CONNECTIONS 0x00000004)
(setq PRINTER_ENUM_FAVORITE 0x00000004)
(setq PRINTER_ENUM_NAME 0x00000008)
(setq PRINTER_ENUM_REMOTE 0x00000010)
(setq PRINTER_ENUM_SHARED 0x00000020)
(setq PRINTER_ENUM_NETWORK 0x00000040)

(setq PRINTER_ENUM_EXPAND 0x00004000)
(setq PRINTER_ENUM_CONTAINER 0x00008000)

(setq PRINTER_ENUM_ICON1 0x00010000)
(setq PRINTER_ENUM_ICON2 0x00020000)
(setq PRINTER_ENUM_ICON3 0x00040000)
(setq PRINTER_ENUM_ICON4 0x00080000)
(setq PRINTER_ENUM_ICON5 0x00100000)
(setq PRINTER_ENUM_ICON6 0x00200000)
(setq PRINTER_ENUM_ICON7 0x00400000)
(setq PRINTER_ENUM_ICON8 0x00800000)
(setq PRINTER_ENUM_HIDE 0x01000000)
;; };

(import "WINSPOOL.DRV" "EnumPrintersA" FailOnFalse
    PrinterEnum ; Flags,
     ; 
    LPSTR ; Name,
     ; 
    "int" ; Level,
     ; 
    LPBYTE ; pPrinterEnum,
     ; 
    "int" ; cbBuf,
     ; 
    "void*" ; int * pcbNeeded,
     ; 
    "void*" ; int * pcReturned
)

(import "WINSPOOL.DRV" "EnumPrintersW" FailOnFalse
    PrinterEnum ; Flags,
     ; 
    LPWSTR ; Name,
     ; 
    "int" ; Level,
     ; 
    LPBYTE ; pPrinterEnum,
     ; 
    "int" ; cbBuf,
     ; 
    "void*" ; int * pcbNeeded,
     ; 
    "void*" ; int * pcReturned
)

(import "WINSPOOL.DRV" "GetPrinterA" FailOnFalse
    HPRINTER ; hPrinter,
    "int" ; Level,
    LPBYTE ; pPrinter,
    "int" ; cbBuf,
    "void*" ; int * pcbNeeded
)

(import "WINSPOOL.DRV" "GetPrinterW" FailOnFalse
    HPRINTER ; hPrinter,
    "int" ; Level,
    LPBYTE ; pPrinter,
    "int" ; cbBuf,
    "void*" ; int * pcbNeeded
)

;; mask DWORD PrinterAccessMode {
(setq PrinterAccessMode DWORD)
(setq PRINTER_ACCESS_ADMINISTER 0x00000004)
(setq PRINTER_ACCESS_USE 0x00000008)
(setq STANDARD_RIGHTS_REQUIRED 0x000F000)

(setq DELETE 0x00010000)
(setq READ_CONTROL 0x00020000)
(setq WRITE_DAC 0x00040000)
(setq WRITE_OWNER 0x00080000)
(setq SYNCHRONIZE 0x00100000)
;; };

;; value DWORD SetPrinterCommand {
(setq SetPrinterCommand DWORD)
(setq PRINTER_CONTROL_PAUSE 1)
(setq PRINTER_CONTROL_RESUME 2)
(setq PRINTER_CONTROL_PURGE 3)
(setq PRINTER_CONTROL_SET_STATUS 4)
;; };

(import "WINSPOOL.DRV" "SetPrinterA" FailOnFalse
    HPRINTER ; hPrinter,
    "int" ; Level,
    LPBYTE ; pPrinter,
    SetPrinterCommand ; Command
)

(import "WINSPOOL.DRV" "SetPrinterW" FailOnFalse
    HPRINTER ; hPrinter,
    "int" ; Level,
    LPBYTE ; pPrinter,
    SetPrinterCommand ; Command
)

(import "WINSPOOL.DRV" "AddPrinterA" HPRINTER
    LPSTR ; pName,
    "int" ; Level,
    LPBYTE ; pPrinter
)

(import "WINSPOOL.DRV" "AddPrinterW" HPRINTER
    LPWSTR ; pName,
    "int" ; Level,
    LPBYTE ; pPrinter
)

(import "WINSPOOL.DRV" "AbortPrinter" FailOnFalse
    HPRINTER ; hPrinter
)

(import "WINSPOOL.DRV" "AddFormA" FailOnFalse
    HPRINTER ; hPrinter,
    "int" ; Level,
    LPBYTE ; pForm
)

(import "WINSPOOL.DRV" "AddFormW" FailOnFalse
    HPRINTER ; hPrinter,
    "int" ; Level,
    LPBYTE ; pForm
)

;; typedef struct _ADDJOB_INFO_1A  { {
(struct '_ADDJOB_INFO_1A
    LPSTR ; Path
    DWORD ; JobId
)
(setq ADDJOB_INFO_1A _ADDJOB_INFO_1A)
;; } ADDJOB_INFO_1A
(setq LPADDJOB_INFO_1A "void*") ; _ADDJOB_INFO_1A *

;; typedef struct _ADDJOB_INFO_1W  { {
(struct '_ADDJOB_INFO_1W
    LPWSTR ; Path
    DWORD ; JobId
)
(setq ADDJOB_INFO_1W _ADDJOB_INFO_1W)
;; } ADDJOB_INFO_1W
(setq LPADDJOB_INFO_1W "void*") ; _ADDJOB_INFO_1W *

(import "WINSPOOL.DRV" "AddJobA" FailOnFalse
    HPRINTER ; hPrinter,
    "int" ; Level,
    "void*" ; ADDJOB_INFO_1A * pData,
    "int" ; cbBuf,
    LPDWORD ; pcbNeeded
)

(import "WINSPOOL.DRV" "AddJobW" FailOnFalse
    HPRINTER ; hPrinter,
    "int" ; Level,
    "void*" ; ADDJOB_INFO_1W * pData,
    "int" ; cbBuf,
    LPDWORD ; pcbNeeded
)

;; typedef struct _MONITOR_INFO_2A { {
(struct '_MONITOR_INFO_2A
    LPSTR ; pName
    LPSTR ; pEnvironment
    LPSTR ; pDLLName
)
(setq MONITOR_INFO_2A _MONITOR_INFO_2A)
;; } MONITOR_INFO_2A
(setq LPMONITOR_INFO_2A "void*") ; _MONITOR_INFO_2A *

;; typedef struct _MONITOR_INFO_2W { {
(struct '_MONITOR_INFO_2W
    LPWSTR ; pName
    LPWSTR ; pEnvironment
    LPWSTR ; pDLLName
)
(setq MONITOR_INFO_2W _MONITOR_INFO_2W)
;; } MONITOR_INFO_2W
(setq LPMONITOR_INFO_2W "void*") ; _MONITOR_INFO_2W *

(import "WINSPOOL.DRV" "AddMonitorA" FailOnFalse
    LPSTR ; pName,
    "int" ; Level,
    "void*" ; MONITOR_INFO_2A * pMonitors
)

(import "WINSPOOL.DRV" "AddMonitorW" FailOnFalse
    LPSTR ; pName,
    "int" ; Level,
    "void*" ; MONITOR_INFO_2A * pMonitors
)

(import "WINSPOOL.DRV" "AddPortA" FailOnFalse
    LPSTR ; pName,
    HWND ; hWnd,
    LPSTR ; pMonitorName
)

(import "WINSPOOL.DRV" "AddPortW" FailOnFalse
    LPWSTR ; pName,
    HWND ; hWnd,
    LPWSTR ; pMonitorName
)

(import "WINSPOOL.DRV" "AddPrinterConnectionA" FailOnFalse
    LPSTR ; pName
)
(import "WINSPOOL.DRV" "AddPrinterConnectionW" FailOnFalse
    LPWSTR ; pName
)

(import "WINSPOOL.DRV" "AddPrinterDriverA" FailOnFalse
    LPSTR ; pName,
    "int" ; Level,
    LPBYTE ; pDriverInfo
)

(import "WINSPOOL.DRV" "AddPrinterDriverW" FailOnFalse
    LPWSTR ; pName,
    "int" ; Level,
    LPBYTE ; pDriverInfo
)

;; mask DWORD AddPrinterDriverExFlags {
(setq AddPrinterDriverExFlags DWORD)
(setq APD_STRICT_UPGRADE 0x00000001)
(setq APD_STRICT_DOWNGRADE 0x00000002)
(setq APD_COPY_ALL_FILES 0x00000004)
(setq APD_COPY_NEW_FILES 0x00000008)
(setq APD_COPY_FROM_DIRECTORY 0x00000010)
;; };

(import "WINSPOOL.DRV" "AddPrinterDriverExA" FailOnFalse
    LPSTR ; pName,
    "int" ; Level,
    LPBYTE ; pDriverInfo,
    AddPrinterDriverExFlags ; dwFileCopyFlags
)

(import "WINSPOOL.DRV" "AddPrinterDriverExW" FailOnFalse
    LPWSTR ; pName,
    "int" ; Level,
    LPBYTE ; pDriverInfo,
    AddPrinterDriverExFlags ; dwFileCopyFlags
)

(import "WINSPOOL.DRV" "AddPrintProcessorA" FailOnFalse
    LPSTR ; pName,
    LPSTR ; pEnvironment,
    LPSTR ; pPathName,
    LPSTR ; pPrintProcessorName
)

(import "WINSPOOL.DRV" "AddPrintProcessorW" FailOnFalse
    LPWSTR ; pName,
    LPWSTR ; pEnvironment,
    LPWSTR ; pPathName,
    LPWSTR ; pPrintProcessorName
)

(import "WINSPOOL.DRV" "AddPrintProvidorA" FailOnFalse
    LPSTR ; pName,
    "int" ; level,
    LPBYTE ; pProvidorInfo
)

(import "WINSPOOL.DRV" "AddPrintProvidorW" FailOnFalse
    LPWSTR ; pName,
    "int" ; level,
    LPBYTE ; pProvidorInfo
)

(import "WINSPOOL.DRV" "AdvancedDocumentPropertiesA" FailOnFalse
    HWND ; hWnd,
    HPRINTER ; hPrinter,
    LPSTR ; pDeviceName,
    PDEVMODEA ; pDevModeOutput,
    PDEVMODEA ; pDevModeInput
)

(import "WINSPOOL.DRV" "AdvancedDocumentPropertiesW" FailOnFalse
    HWND ; hWnd,
    HPRINTER ; hPrinter,
    LPWSTR ; pDeviceName,
    PDEVMODEW ; pDevModeOutput,
    PDEVMODEW ; pDevModeInput
)

(import "WINSPOOL.DRV" "ClosePrinter" FailOnFalse
    HPRINTER ; hPrinter
)

(import "WINSPOOL.DRV" "ConfigurePortA" FailOnFalse
    LPSTR ; pName,
    HWND ; hWnd,
    LPSTR ; pPortName
)

(import "WINSPOOL.DRV" "ConfigurePortW" FailOnFalse
    LPWSTR ; pName,
    HWND ; hWnd,
    LPWSTR ; pPortName
)

(import "WINSPOOL.DRV" "ConnectToPrinterDlg" HPRINTER
    HWND ; hwnd,
    DWORD ; Flags
)

(import "WINSPOOL.DRV" "DeleteFormA" FailOnFalse
    HPRINTER ; hPrinter,
    LPSTR ; pFormName
)

(import "WINSPOOL.DRV" "DeleteFormW" FailOnFalse
    HPRINTER ; hPrinter,
    LPWSTR ; pFormName
)

(import "WINSPOOL.DRV" "DeleteMonitorA" FailOnFalse
    LPSTR ; pName,
    LPSTR ; pEnvironment,
    LPSTR ; pMonitorName
)

(import "WINSPOOL.DRV" "DeleteMonitorW" FailOnFalse
    LPWSTR ; pName,
    LPWSTR ; pEnvironment,
    LPWSTR ; pMonitorName
)

(import "WINSPOOL.DRV" "DeletePortA" FailOnFalse
    LPSTR ; pName,
    HWND ; hWnd,
    LPSTR ; pPortName
)

(import "WINSPOOL.DRV" "DeletePortW" FailOnFalse
    LPWSTR ; pName,
    HWND ; hWnd,
    LPWSTR ; pPortName
)

(import "WINSPOOL.DRV" "DeletePrinter" FailOnFalse
    HPRINTER ; hPrinter
)

(import "WINSPOOL.DRV" "DeletePrinterConnectionA" FailOnFalse
    LPSTR ; pName
)
(import "WINSPOOL.DRV" "DeletePrinterConnectionW" FailOnFalse
    LPWSTR ; pName
)

(import "WINSPOOL.DRV" "DeletePrinterDataA" FailOnFalse
    HPRINTER ; hPrinter,
    LPSTR ; pValueName
)

(import "WINSPOOL.DRV" "DeletePrinterDataW" FailOnFalse
    HPRINTER ; hPrinter,
    LPWSTR ; pValueName
)

(import "WINSPOOL.DRV" "DeletePrinterDataExA" FailOnFalse
    HPRINTER ; hPrinter,
    LPSTR ; pKeyName,
    LPSTR ; pValueName
)

(import "WINSPOOL.DRV" "DeletePrinterDataExW" FailOnFalse
    HPRINTER ; hPrinter,
    LPWSTR ; pKeyName,
    LPWSTR ; pValueName
)

(import "WINSPOOL.DRV" "DeletePrinterDriverA" FailOnFalse
    LPSTR ; pName,
    LPSTR ; pEnvironment,
    LPSTR ; pDriverName
)

(import "WINSPOOL.DRV" "DeletePrinterDriverW" FailOnFalse
    LPWSTR ; pName,
    LPWSTR ; pEnvironment,
    LPWSTR ; pDriverName
)
;; mask DWORD DPDFlags {
(setq DPDFlags DWORD)

(setq DPD_DELETE_UNUSED_FILES 0x00000001)
(setq DPD_DELETE_SPECIFIC_VERSION 0x00000002)
(setq DPD_DELETE_ALL_FILES 0x00000004)
;; };

(import "WINSPOOL.DRV" "DeletePrinterDriverExA" FailOnFalse
    LPSTR ; pName,
    LPSTR ; pEnvironment,
    LPSTR ; pDriverName,
    DPDFlags ; dwDeleteFlag,
    DWORD ; dwVersionFlag
)

(import "WINSPOOL.DRV" "DeletePrinterDriverExW" FailOnFalse
    LPWSTR ; pName,
    LPWSTR ; pEnvironment,
    LPWSTR ; pDriverName,
    DPDFlags ; dwDeleteFlag,
    DWORD ; dwVersionFlag
)

(import "WINSPOOL.DRV" "DeletePrinterKeyA" WinError
    HPRINTER ; hPrinter,
    LPSTR ; pKeyName
)
(import "WINSPOOL.DRV" "DeletePrinterKeyW" WinError
    HPRINTER ; hPrinter,
    LPWSTR ; pKeyName
)

(import "WINSPOOL.DRV" "DeletePrintProcessorA" FailOnFalse
    LPSTR ; pName,
    LPSTR ; pEnvironment,
    LPSTR ; pPrintProcessorName
)

(import "WINSPOOL.DRV" "DeletePrintProcessorW" FailOnFalse
    LPWSTR ; pName,
    LPWSTR ; pEnvironment,
    LPWSTR ; pPrintProcessorName
)

(import "WINSPOOL.DRV" "DeletePrintProvidorA" FailOnFalse
    LPSTR ; pName,
    LPSTR ; pEnvironment,
    LPSTR ; pPrintProvidorName
)

(import "WINSPOOL.DRV" "DeletePrintProvidorW" FailOnFalse
    LPWSTR ; pName,
    LPWSTR ; pEnvironment,
    LPWSTR ; pPrintProvidorName
)

;; mask DWORD DPFlags {
(setq DPFlags DWORD)
(setq DM_IN_BUFFER 8)
(setq DM_IN_PROMPT 4)
(setq DM_OUT_BUFFER 2)
(setq DM_OUT_DEFAULT 1)
;; };

(import "WINSPOOL.DRV" "DocumentPropertiesA" LongFailIfNeg1
    HWND ; hWnd,
    HPRINTER ; hPrinter,
    LPSTR ; pDeviceName,
    PDEVMODEA ; pDevModeOutput,
    PDEVMODEA ; pDevModeInput,
    DPFlags ; fMode
)

(import "WINSPOOL.DRV" "DocumentPropertiesW" LongFailIfNeg1
    HWND ; hWnd,
    HPRINTER ; hPrinter,
    LPWSTR ; pDeviceName,
    PDEVMODEW ; pDevModeOutput,
    PDEVMODEW ; pDevModeInput,
    DPFlags ; fMode
)

(import "WINSPOOL.DRV" "EndDocPrinter" FailOnFalse
    HPRINTER ; hPrinter
)

(import "WINSPOOL.DRV" "EndPagePrinter" FailOnFalse
    HPRINTER ; hPrinter
)


;; mask DWORD FormInfoFlags {
(setq FormInfoFlags DWORD)
(setq FORM_USER 0x00000000)
(setq FORM_BUILTIN 0x00000001)
(setq FORM_PRINTER 0x00000002)
;; };

;; typedef struct _FORM_INFO_1A  { {
(struct '_FORM_INFO_1A
    FormInfoFlags ; Flags
    LPSTR ; pName
    ;; Size
    LONG ; cx
    LONG ; cy
    ;; ImageableArea
    LONG ; left
    LONG ; top
    LONG ; right
    LONG ; bottom
)
(setq FORM_INFO_1A _FORM_INFO_1A)
;; } FORM_INFO_1A
(setq LPFORM_INFO_1A "void*") ; _FORM_INFO_1A *
(setq PFORM_INFO_1A "void*") ; _FORM_INFO_1A *

;; typedef struct _FORM_INFO_1W  { {
(struct '_FORM_INFO_1W
    FormInfoFlags ; Flags
    LPWSTR ; pName
    ;; Size
    LONG ; cx
    LONG ; cy
    ;; ImageableArea
    LONG ; left
    LONG ; top
    LONG ; right
    LONG ; bottom
)
(setq FORM_INFO_1W _FORM_INFO_1W)
;; } FORM_INFO_1W
(setq LPFORM_INFO_1W "void*") ; _FORM_INFO_1W *
(setq PFORM_INFO_1W "void*") ; _FORM_INFO_1W *

(import "WINSPOOL.DRV" "EnumFormsA" FailOnFalse
    HPRINTER ; hPrinter,
    DWORD ; Level,
    LPFORM_INFO_1A ; pForm,
    "int" ; cbBuf,
    "void*" ; int * pcbNeeded,
    "void*" ; int * pcReturned
)

(import "WINSPOOL.DRV" "EnumFormsW" FailOnFalse
    HPRINTER ; hPrinter,
    DWORD ; Level,
    LPFORM_INFO_1W ; pForm,
    "int" ; cbBuf,
    "void*" ; int * pcbNeeded,
    "void*" ; int * pcReturned
)

(import "WINSPOOL.DRV" "EnumJobsA" FailOnFalse
    HPRINTER ; hPrinter,
    "int" ; FirstJob,
    "int" ; NoJobs,
    "int" ; Level,
    LPBYTE ; pJob,
    "int" ; cbBuf,
    "void*" ; int * pcbNeeded,
    "void*" ; int * pcReturned
)

(import "WINSPOOL.DRV" "EnumJobsW" FailOnFalse
    HPRINTER ; hPrinter,
    "int" ; FirstJob,
    "int" ; NoJobs,
    "int" ; Level,
    LPBYTE ; pJob,
    "int" ; cbBuf,
    "void*" ; int * pcbNeeded,
    "void*" ; int * pcReturned
)

(import "WINSPOOL.DRV" "EnumMonitorsA" FailOnFalse
    LPSTR ; pName,
    "int" ; Level,
    LPBYTE ; pMonitors,
    "int" ; cbBuf,
    "void*" ; int * pcbNeeded,
    "void*" ; int * pcReturned
)

(import "WINSPOOL.DRV" "EnumMonitorsW" FailOnFalse
    LPWSTR ; pName,
    "int" ; Level,
    LPBYTE ; pMonitors,
    "int" ; cbBuf,
    "void*" ; int * pcbNeeded,
    "void*" ; int * pcReturned
)

(import "WINSPOOL.DRV" "EnumPortsA" FailOnFalse
    LPSTR ; pName,
    "int" ; Level,
    LPBYTE ; pPorts,
    "int" ; cbBuf,
    "void*" ; int * pcbNeeded,
    "void*" ; int * pcReturned
)

(import "WINSPOOL.DRV" "EnumPortsW" FailOnFalse
    LPWSTR ; pName,
    "int" ; Level,
    LPBYTE ; pPorts,
    "int" ; cbBuf,
    "void*" ; int * pcbNeeded,
    "void*" ; int * pcReturned
)

(import "WINSPOOL.DRV" "EnumPrinterDataA" FailOnFalse
    HPRINTER ; hPrinter,
    "int" ; dwIndex,
    LPSTR ; pValueName,
    "int" ; cbValueName,
    "void*" ; int * pcbValueName,
    "void*" ; RegistryType * pType,
    LPBYTE ; pData,
    "int" ; cbData,
    "void*" ; int * pcbData
)

(import "WINSPOOL.DRV" "EnumPrinterDataW" FailOnFalse
    HPRINTER ; hPrinter,
    "int" ; dwIndex,
    LPWSTR ; pValueName,
    "int" ; cbValueName,
    "void*" ; int * pcbValueName,
    "void*" ; RegistryType * pType,
    LPBYTE ; pData,
    "int" ; cbData,
    "void*" ; int * pcbData
)

(import "WINSPOOL.DRV" "EnumPrinterDataExA" FailOnFalse
    HPRINTER ; hPrinter,
    LPSTR ; pKeyName,
    LPBYTE ; pEnumValues,
    "int" ; cbEnumValues,
    "void*" ; int * pcbEnumValues,
    "void*" ; int * pnEnumValues
)

(import "WINSPOOL.DRV" "EnumPrinterDataExW" FailOnFalse
    HPRINTER ; hPrinter,
    LPWSTR ; pKeyName,
    LPBYTE ; pEnumValues,
    "int" ; cbEnumValues,
    "void*" ; int * pcbEnumValues,
    "void*" ; int * pnEnumValues
)

(import "WINSPOOL.DRV" "EnumPrinterDriversA" FailOnFalse
    LPSTR ; pName,
    LPSTR ; pEnvironment,
    "int" ; Level,
    LPBYTE ; pDriverInfo,
    "int" ; cbBuf,
    "void*" ; int * pcbNeeded,
    "void*" ; int * pcReturned
)

(import "WINSPOOL.DRV" "EnumPrinterDriversW" FailOnFalse
    LPWSTR ; pName,
    LPWSTR ; pEnvironment,
    "int" ; Level,
    LPBYTE ; pDriverInfo,
    "int" ; cbBuf,
    "void*" ; int * pcbNeeded,
    "void*" ; int * pcReturned
)

(import "WINSPOOL.DRV" "EnumPrinterKeyA" WinError
    HPRINTER ; hPrinter,
    LPSTR ; pKeyName,
    LPSTR ; pSubkey,
    "int" ; cbSubkey,
    "void*" ; int * pcbSubkey
)

(import "WINSPOOL.DRV" "EnumPrinterKeyW" WinError
    HPRINTER ; hPrinter,
    LPWSTR ; pKeyName,
    LPWSTR ; pSubkey,
    "int" ; cbSubkey,
    "void*" ; int * pcbSubkey
)

(import "WINSPOOL.DRV" "GetPrinterDataA" WinError
    HPRINTER ; hPrinter,
    LPSTR ; pValueName,
    "void*" ; RegistryType * pType,
    LPBYTE ; pData,
    "int" ; nSize,
    "void*" ; int * pcbNeeded
)

(import "WINSPOOL.DRV" "GetPrinterDataW" WinError
    HPRINTER ; hPrinter,
    LPWSTR ; pValueName,
    "void*" ; RegistryType * pType,
    LPBYTE ; pData,
    "int" ; nSize,
    "void*" ; int * pcbNeeded
)

(import "WINSPOOL.DRV" "SetPrinterDataA" WinError
    HPRINTER ; hPrinter,
    LPSTR ; pValueName,
    RegistryType ; Type,
    LPBYTE ; pData,
    "int" ; cbData
)

(import "WINSPOOL.DRV" "SetPrinterDataW" WinError
    HPRINTER ; hPrinter,
    LPWSTR ; pValueName,
    RegistryType ; Type,
    LPBYTE ; pData,
    "int" ; cbData
)

(import "WINSPOOL.DRV" "SetPrinterDataExA" WinError
    HPRINTER ; hPrinter,
    LPSTR ; pKeyName,
    LPSTR ; pValueName,
    RegistryType ; Type,
    LPBYTE ; pData,
    "int" ; cbData
)

(import "WINSPOOL.DRV" "SetPrinterDataExW" WinError
    HPRINTER ; hPrinter,
    LPWSTR ; pKeyName,
    LPWSTR ; pValueName,
    RegistryType ; Type,
    LPBYTE ; pData,
    "int" ; cbData
)

(import "WINSPOOL.DRV" "GetDefaultPrinterA" FailOnFalse
    LPSTR ; pszBuffer,
    "void*" ; int * pcchBuffer
)

(import "WINSPOOL.DRV" "GetDefaultPrinterW" FailOnFalse
    LPWSTR ; pszBuffer,
    "void*" ; int * pcchBuffer
)

;; value DWORD DILevel {
(setq DILevel DWORD)
(setq DRIVER_INFO_1 1)
(setq DRIVER_INFO_2 2)
(setq DRIVER_INFO_3 3)
(setq DRIVER_INFO_4 4)
(setq DRIVER_INFO_5 5)
(setq DRIVER_INFO_6 6)
;; };

(import "WINSPOOL.DRV" "GetPrinterDriverA" FailOnFalse
    HPRINTER ; hPrinter,
    LPSTR ; pEnvironment,
    DILevel ; Level,
    LPBYTE ; pDriverInfo,
    "int" ; cbBuf,
    LPDWORD ; pcbNeeded
)

(import "WINSPOOL.DRV" "GetPrinterDriverW" FailOnFalse
    HPRINTER ; hPrinter,
    LPWSTR ; pEnvironment,
    DILevel ; Level,
    LPBYTE ; pDriverInfo,
    "int" ; cbBuf,
    LPDWORD ; pcbNeeded
)

(import "WINSPOOL.DRV" "EnumPrintProcessorDatatypesA" FailOnFalse
    LPSTR ; pName,
    LPSTR ; pPrintProcessorName,
    "int" ; Level,
    LPSTR ; pDatatypes,
    "int" ; cbBuf,
    LPDWORD ; pcbNeeded,
    LPDWORD ; pcReturned
)

(import "WINSPOOL.DRV" "EnumPrintProcessorDatatypesW" FailOnFalse
    LPWSTR ; pName,
    LPWSTR ; pPrintProcessorName,
    "int" ; Level,
    LPWSTR ; pDatatypes,
    "int" ; cbBuf,
    LPDWORD ; pcbNeeded,
    LPDWORD ; pcReturned
)

(import "WINSPOOL.DRV" "EnumPrintProcessorsA" FailOnFalse
    LPSTR ; pName,
    LPSTR ; pEnvironment,
    "int" ; Level,
    LPSTR ; pPrintProcessorInfo,
    "int" ; cbBuf,
    LPDWORD ; pcbNeeded,
    LPDWORD ; pcReturned
)

(import "WINSPOOL.DRV" "EnumPrintProcessorsW" FailOnFalse
    LPWSTR ; pName,
    LPWSTR ; pEnvironment,
    "int" ; Level,
    LPWSTR ; pPrintProcessorInfo,
    "int" ; cbBuf,
    LPDWORD ; pcbNeeded,
    LPDWORD ; pcReturned
)

(import "WINSPOOL.DRV" "FindClosePrinterChangeNotification" FailOnFalse
    HPRINTER ; hChange
)

;; typedef struct _PRINTER_NOTIFY_OPTIONS_TYPE  { {
(struct '_PRINTER_NOTIFY_OPTIONS_TYPE
  WORD     ; Type;
  WORD     ; Reserved0;
  DWORD    ; Reserved1;
  DWORD    ; Reserved2;
  DWORD    ; Count;
  "void*"  ; WORD * pFields;
)
(setq PRINTER_NOTIFY_OPTIONS_TYPE _PRINTER_NOTIFY_OPTIONS_TYPE)
;; } PRINTER_NOTIFY_OPTIONS_TYPE
(setq PPRINTER_NOTIFY_OPTIONS_TYPE "void*") ; _PRINTER_NOTIFY_OPTIONS_TYPE *

;; typedef struct _PRINTER_NOTIFY_OPTIONS  { {
(struct '_PRINTER_NOTIFY_OPTIONS
  DWORD ; Version;
  DWORD ; Flags;
  DWORD ; Count;
  PPRINTER_NOTIFY_OPTIONS_TYPE ; pTypes;
)
(setq PRINTER_NOTIFY_OPTIONS _PRINTER_NOTIFY_OPTIONS)
;; } PRINTER_NOTIFY_OPTIONS
(setq PPRINTER_NOTIFY_OPTIONS "void*") ; _PRINTER_NOTIFY_OPTIONS *

;; mask DWORD PCFlags {
(setq PCFlags DWORD)
(setq PRINTER_CHANGE_ADD_PRINTER 0x00000001)
(setq PRINTER_CHANGE_SET_PRINTER 0x00000002)
(setq PRINTER_CHANGE_DELETE_PRINTER 0x00000004)
(setq PRINTER_CHANGE_FAILED_CONNECTION_PRINTER 0x00000008)
(setq PRINTER_CHANGE_PRINTER 0x000000FF)
(setq PRINTER_CHANGE_ADD_JOB 0x00000100)
(setq PRINTER_CHANGE_SET_JOB 0x00000200)
(setq PRINTER_CHANGE_DELETE_JOB 0x00000400)
(setq PRINTER_CHANGE_WRITE_JOB 0x00000800)
(setq PRINTER_CHANGE_JOB 0x0000FF00)
(setq PRINTER_CHANGE_ADD_FORM 0x00010000)
(setq PRINTER_CHANGE_SET_FORM 0x00020000)
(setq PRINTER_CHANGE_DELETE_FORM 0x00040000)
(setq PRINTER_CHANGE_FORM 0x00070000)
(setq PRINTER_CHANGE_ADD_PORT 0x00100000)
(setq PRINTER_CHANGE_CONFIGURE_PORT 0x00200000)
(setq PRINTER_CHANGE_DELETE_PORT 0x00400000)
(setq PRINTER_CHANGE_PORT 0x00700000)
(setq PRINTER_CHANGE_ADD_PRINT_PROCESSOR 0x01000000)
(setq PRINTER_CHANGE_DELETE_PRINT_PROCESSOR 0x04000000)
(setq PRINTER_CHANGE_PRINT_PROCESSOR 0x07000000)
(setq PRINTER_CHANGE_ADD_PRINTER_DRIVER 0x10000000)
(setq PRINTER_CHANGE_SET_PRINTER_DRIVER 0x20000000)
(setq PRINTER_CHANGE_DELETE_PRINTER_DRIVER 0x40000000)
(setq PRINTER_CHANGE_PRINTER_DRIVER 0x70000000)
(setq PRINTER_CHANGE_TIMEOUT 0x80000000)
(setq PRINTER_CHANGE_ALL 0x7777FFFF)
;; };

(import "WINSPOOL.DRV" "FindFirstPrinterChangeNotification" HPRINTER
    HPRINTER ; hPrinter,
    PCFlags ; fdwFlags,
    "int" ; fdwOptions,
    PPRINTER_NOTIFY_OPTIONS ; pPrinterNotifyOptions
)

(import "WINSPOOL.DRV" "FindNextPrinterChangeNotification" FailOnFalse
    HPRINTER ; hChange,
    PDWORD ; pdwChange,
    LPVOID ; pPrinterNotifyOptions,
    "void*" ; LPVOID * ppPrinterNotifyInfo
)

(import "WINSPOOL.DRV" "FlushPrinter" FailOnFalse
    HPRINTER ; hPrinter,
    LPVOID ; pBuf,
    "int" ; cbBuf,
    LPDWORD ; pcWritten,
    DWORD ; cSleep
)

;; typedef struct _PRINTER_NOTIFY_INFO_DATA  { {
(struct '_PRINTER_NOTIFY_INFO_DATA
  WORD     ; Type;
  WORD     ; Field;
  DWORD    ; Reserved;
  DWORD    ; Id;
  "int"    ; cbBuf;
  LPVOID   ; pBuf;
)
(setq PRINTER_NOTIFY_INFO_DATA _PRINTER_NOTIFY_INFO_DATA)
;; } PRINTER_NOTIFY_INFO_DATA
(setq PPRINTER_NOTIFY_INFO_DATA "void*") ; _PRINTER_NOTIFY_INFO_DATA *

;; typedef struct _PRINTER_NOTIFY_INFO  { {
(struct '_PRINTER_NOTIFY_INFO
  DWORD    ; Version;
  DWORD    ; Flags;
  DWORD    ; Count;
  ;; aData;
  WORD     ; Type;
  WORD     ; Field;
  DWORD    ; Reserved;
  DWORD    ; Id;
  "int"    ; cbBuf;
  LPVOID   ; pBuf;
)
(setq PRINTER_NOTIFY_INFO _PRINTER_NOTIFY_INFO)
;; } PRINTER_NOTIFY_INFO
(setq PPRINTER_NOTIFY_INFO "void*") ; _PRINTER_NOTIFY_INFO *

(import "WINSPOOL.DRV" "FreePrinterNotifyInfo" FailOnFalse
    PPRINTER_NOTIFY_INFO ; pPrinterNotifyInfo
)

(import "WINSPOOL.DRV" "GetFormA" FailOnFalse
    HPRINTER ; hPrinter,
    LPSTR ; pFormName,
    "int" ; Level,
    PFORM_INFO_1A ; pForm,
    "int" ; cbBuf,
    LPDWORD ; pcbNeeded
)

(import "WINSPOOL.DRV" "GetFormW" FailOnFalse
    HPRINTER ; hPrinter,
    LPWSTR ; pFormName,
    "int" ; Level,
    PFORM_INFO_1W ; pForm,
    "int" ; cbBuf,
    LPDWORD ; pcbNeeded
)

(import "WINSPOOL.DRV" "GetJobA" FailOnFalse
    HPRINTER ; hPrinter,
    DWORD ; JobId,
    "int" ; Level,
    LPBYTE ; pJob,
    "int" ; cbBuf,
    LPDWORD ; pcbNeeded
)

(import "WINSPOOL.DRV" "GetJobW" FailOnFalse
    HPRINTER ; hPrinter,
    DWORD ; JobId,
    "int" ; Level,
    LPBYTE ; pJob,
    "int" ; cbBuf,
    LPDWORD ; pcbNeeded
)

(import "WINSPOOL.DRV" "GetPrinterDriverDirectoryA" FailOnFalse
    LPSTR ; pName,
    LPSTR ; pEnvironment,
    "int" ; Level,
    LPBYTE ; pDriverDirectory,
    "int" ; cbBuf,
    LPDWORD ; pcbNeeded
)

(import "WINSPOOL.DRV" "GetPrinterDriverDirectoryW" FailOnFalse
    LPWSTR ; pName,
    LPWSTR ; pEnvironment,
    "int" ; Level,
    LPBYTE ; pDriverDirectory,
    "int" ; cbBuf,
    LPDWORD ; pcbNeeded
)

(import "WINSPOOL.DRV" "GetPrintProcessorDirectoryA" FailOnFalse
    LPSTR ; pName,
    LPSTR ; pEnvironment,
    "int" ; Level,
    LPBYTE ; pPrintProcessorInfo,
    "int" ; cbBuf,
    LPDWORD ; pcbNeeded
)

(import "WINSPOOL.DRV" "GetPrintProcessorDirectoryW" FailOnFalse
    LPWSTR ; pName,
    LPWSTR ; pEnvironment,
    "int" ; Level,
    LPBYTE ; pPrintProcessorInfo,
    "int" ; cbBuf,
    LPDWORD ; pcbNeeded
)

;; typedef struct _PRINTER_DEFAULTSA { {
(struct '_PRINTER_DEFAULTSA
    LPSTR ; pDatatype
    LPDEVMODEA ; pDevMode
    PrinterAccessMode ; DesiredAccess
)
(setq PRINTER_DEFAULTSA _PRINTER_DEFAULTSA)
;; } PRINTER_DEFAULTSA
(setq PPRINTER_DEFAULTSA "void*") ; _PRINTER_DEFAULTSA *
(setq LPPRINTER_DEFAULTSA "void*") ; _PRINTER_DEFAULTSA *

;; typedef struct _PRINTER_DEFAULTSW { {
(struct '_PRINTER_DEFAULTSW
    LPWSTR ; pDatatype
    LPDEVMODEW ; pDevMode
    PrinterAccessMode ; DesiredAccess
)
(setq PRINTER_DEFAULTSW _PRINTER_DEFAULTSW)
;; } PRINTER_DEFAULTSW
(setq PPRINTER_DEFAULTSW "void*") ; _PRINTER_DEFAULTSW *
(setq LPPRINTER_DEFAULTSW "void*") ; _PRINTER_DEFAULTSW *

(import "WINSPOOL.DRV" "OpenPrinterA" FailOnFalse
    LPSTR ; pPrinterName,
    "void*" ; HPRINTER * phPrinter,
    LPPRINTER_DEFAULTSA ; pDefault
)

(import "WINSPOOL.DRV" "OpenPrinterW" FailOnFalse
    LPWSTR ; pPrinterName,
    "void*" ; HPRINTER * phPrinter,
    LPPRINTER_DEFAULTSW ; pDefault
)

(import "WINSPOOL.DRV" "PrinterProperties" FailOnFalse
    HWND ; hWnd,
    HPRINTER ; hPrinter
)

(import "WINSPOOL.DRV" "ReadPrinter" FailOnFalse
    HPRINTER ; hPrinter,
    LPVOID ; pBuf,
    "int" ; cbBuf,
    LPDWORD ; pNoBytesRead
)

(import "WINSPOOL.DRV" "ResetPrinterA" FailOnFalse
    HPRINTER ; hPrinter,
    PPRINTER_DEFAULTSA ; pDefault
)

(import "WINSPOOL.DRV" "ResetPrinterW" FailOnFalse
    HPRINTER ; hPrinter,
    PPRINTER_DEFAULTSW ; pDefault
)

(import "WINSPOOL.DRV" "ScheduleJob" FailOnFalse
    HPRINTER ; hPrinter,
    DWORD ; dwJobID
)

(import "WINSPOOL.DRV" "SetDefaultPrinterA" FailOnFalse
    LPCSTR ; pszPrinter
)

(import "WINSPOOL.DRV" "SetDefaultPrinterW" FailOnFalse
    LPCWSTR ; pszPrinter
)

(import "WINSPOOL.DRV" "SetFormA" FailOnFalse
    HPRINTER ; hPrinter,
    LPSTR ; pFormName,
    "int" ; Level,
    PFORM_INFO_1A ; pForm
)

(import "WINSPOOL.DRV" "SetFormW" FailOnFalse
    HPRINTER ; hPrinter,
    LPWSTR ; pFormName,
    "int" ; Level,
    PFORM_INFO_1W ; pForm
)

(import "WINSPOOL.DRV" "SetJobA" FailOnFalse
    HPRINTER ; hPrinter,
    DWORD ; JobId,
    "int" ; Level,
    LPBYTE ; pJob,
    DWORD ; Command
)

(import "WINSPOOL.DRV" "SetJobW" FailOnFalse
    HPRINTER ; hPrinter,
    DWORD ; JobId,
    "int" ; Level,
    LPBYTE ; pJob,
    DWORD ; Command
)

;; typedef struct _PORT_INFO_3A  { {
(struct '_PORT_INFO_3A
  DWORD ; dwStatus;
  LPSTR ; pszStatus;
  DWORD ; dwSeverity;
)
(setq PORT_INFO_3A _PORT_INFO_3A)
;; } PORT_INFO_3A
(setq PPORT_INFO_3A "void*") ; _PORT_INFO_3A *

;; typedef struct _PORT_INFO_3W  { {
(struct '_PORT_INFO_3W
  DWORD ; dwStatus;
  LPWSTR ; pszStatus;
  DWORD ; dwSeverity;
)
(setq PORT_INFO_3W _PORT_INFO_3W)
;; } PORT_INFO_3W
(setq PPORT_INFO_3W "void*") ; _PORT_INFO_3W *

(import "WINSPOOL.DRV" "SetPortA" FailOnFalse
    LPSTR ; pName,
    LPSTR ; pPortName,
    DWORD ; dwLevel,
    PPORT_INFO_3A ; pPortInfo
)

(import "WINSPOOL.DRV" "SetPortW" FailOnFalse
    LPWSTR ; pName,
    LPWSTR ; pPortName,
    DWORD ; dwLevel,
    PPORT_INFO_3W ; pPortInfo
)

;; typedef struct _DOC_INFO_1A  { {
(struct '_DOC_INFO_1A
  LPSTR ; pDocName;
  LPSTR ; pOutputFile;
  LPSTR ; pDatatype;
)
(setq DOC_INFO_1A _DOC_INFO_1A)
;; } DOC_INFO_1A
(setq PDOC_INFO_1A "void*") ; _DOC_INFO_1A *

;; typedef struct _DOC_INFO_1W  { {
(struct '_DOC_INFO_1W
  LPWSTR ; pDocName;
  LPWSTR ; pOutputFile;
  LPWSTR ; pDatatype;
)
(setq DOC_INFO_1W _DOC_INFO_1W)
;; } DOC_INFO_1W
(setq PDOC_INFO_1W "void*") ; _DOC_INFO_1W *

(import "WINSPOOL.DRV" "StartDocPrinterA" FailOnFalse
    HPRINTER ; hPrinter,
    "int" ; Level,
    PDOC_INFO_1A ; pDocInfo
)

(import "WINSPOOL.DRV" "StartDocPrinterW" FailOnFalse
    HPRINTER ; hPrinter,
    "int" ; Level,
    PDOC_INFO_1W ; pDocInfo
)

(import "WINSPOOL.DRV" "StartPagePrinter" FailOnFalse
    HPRINTER ; hPrinter
)

(import "WINSPOOL.DRV" "WritePrinter" FailOnFalse
    HPRINTER ; hPrinter,
    LPVOID ; pBuf,
    "int" ; cbBuf,
    LPDWORD ; pcWritten
)







;; value DWORD DeviceCapabilitiesEnum {
(setq DeviceCapabilitiesEnum DWORD)
(setq DC_FIELDS 1)
(setq DC_PAPERS 2)
(setq DC_PAPERSIZE 3)
(setq DC_MINEXTENT 4)
(setq DC_MAXEXTENT 5)
(setq DC_BINS 6)
(setq DC_DUPLEX 7)
(setq DC_SIZE 8)
(setq DC_EXTRA 9)
(setq DC_VERSION 10)
(setq DC_DRIVER 11)
(setq DC_BINNAMES 12)
(setq DC_ENUMRESOLUTIONS 13)
(setq DC_FILEDEPENDENCIES 14)
(setq DC_TRUETYPE 15)
(setq DC_PAPERNAMES 16)
(setq DC_ORIENTATION 17)
(setq DC_COPIES 18)
(setq DC_BINADJUST 19)
(setq DC_EMF_COMPLIANT 20)
(setq DC_DATATYPE_PRODUCED 21)
(setq DC_COLLATE 22)
(setq DC_MANUFACTURER 23)
(setq DC_MODEL 24)
(setq DC_PERSONALITY 25)
(setq DC_PRINTRATE 26)
(setq DC_PRINTRATEUNIT 27)
(setq DC_PRINTERMEM 28)
(setq DC_MEDIAREADY 29)
(setq DC_STAPLE 30)
(setq DC_PRINTRATEPPM 31)
(setq DC_COLORDEVICE 32)
(setq DC_NUP 33)
;; };

(import "WINSPOOL.DRV" "DeviceCapabilitiesA" SpoolerError
    LPSTR ; pszPrinterName,
    LPSTR ; pszPortName,
    DeviceCapabilitiesEnum ; capabilities,
    LPSTR ; pszOutput,
    "void*" ; DEVMODEA * pDevMode
)

(import "WINSPOOL.DRV" "DeviceCapabilitiesW" SpoolerError
    LPWSTR ; pszPrinterName,
    LPWSTR ; pszPortName,
    DeviceCapabilitiesEnum ; capabilities,
    LPWSTR ; pszOutput,
    "void*" ; DEVMODEW * pDevMode
)

;; module GDI32.DLL:

(import "GDI32.DLL" "AbortDoc" SpoolerError
    HDC ; hdc
)
(import "GDI32.DLL" "EndDoc" SpoolerError
    HDC ; hdc
)
(import "GDI32.DLL" "EndPage" SpoolerError
    HDC ; hdc
)


(import "GDI32.DLL" "Escape" SpoolerError
    HDC ; hdc,
    GdiEscapeCode ; escapeCode,
    "int" ; cbSize,
    LPSTR ; pszInData,
    LPVOID ; pOutData
)

(import "GDI32.DLL" "ExtEscape" SpoolerError
    HDC ; hdc,
    GdiEscapeCode ; escapeCode,
    "int" ; cbInput,
    LPSTR ; pszInData,
    "int" ; cbOutput,
    LPSTR ; lpszOutData
)

(setq ABORTPROC LPVOID)

(import "GDI32.DLL" "SetAbortProc" SpoolerError
    HDC ; hdc,
    ABORTPROC ; pfnAbort
)

;; value DWORD DocInfoType {
(setq DocInfoType DWORD)
(setq DI_NONE 0x00000000)
(setq DI_APPBANDING 0x00000001)
(setq DI_ROPS_READ_DESTINATION 0x00000002)
;; };

;; typedef struct _DOCINFOA  { {
(struct '_DOCINFOA
    "int" ; cbSize
    LPCSTR ; lpszDocName
    LPCSTR ; lpszOutput
    LPCSTR ; lpszDatatype
    DocInfoType ; fwType
)
(setq DOCINFOA _DOCINFOA)
;; } DOCINFOA
(setq LPDOCINFOA "void*") ; _DOCINFOA *

;; typedef struct _DOCINFOW  { {
(struct '_DOCINFOW
    "int" ; cbSize
    LPCWSTR ; lpszDocName
    LPCWSTR ; lpszOutput
    LPCWSTR ; lpszDatatype
    DocInfoType ; fwType
)
(setq DOCINFOW _DOCINFOW)
;; } DOCINFOW
(setq LPDOCINFOW "void*") ; _DOCINFOW *

(import "GDI32.DLL" "StartDocA" SpoolerError
    HDC ; hdc,
    "void*" ; DOCINFOA * pDocInfo
)

(import "GDI32.DLL" "StartDocW" SpoolerError
    HDC ; hdc,
    "void*" ; DOCINFOW * pDocInfo
)

(import "GDI32.DLL" "StartPage" SpoolerError
    HDC ; hdc
)
