(context 'WIN32)


(setq HDROP HANDLE)

(setq LPSHELLFLAGSTATE LPVOID)
(setq LPBC LPVOID)
(setq IEnumIDList LPVOID)
(setq LPSOFTDISTINFO LPVOID)

;; typedef struct _SHITEMID         { {
(struct '_SHITEMID
    USHORT ; cb;
    BYTE ; abID;
)
(setq SHITEMID _SHITEMID)
;; } SHITEMID
(setq LPSHITEMID "void*") ; SHITEMID *
(setq LPCSHITEMID "void*") ; SHITEMID *




;; typedef struct _ITEMIDLIST       { {
(struct '_ITEMIDLIST
    ;; mkid
    USHORT ; cb;
    BYTE ; abID;
)
(setq ITEMIDLIST _ITEMIDLIST)
;; } ITEMIDLIST
(setq LPITEMIDLIST "void*") ; ITEMIDLIST *
(setq LPCITEMIDLIST "void*") ; ITEMIDLIST *

;; value UINT AppBarEdge {
(setq AppBarEdge UINT)
(setq ABE_LEFT 0)
(setq ABE_TOP 1)
(setq ABE_RIGHT 2)
(setq ABE_BOTTOM 3)
;; };

;; typedef struct _AppBarData  { {
(struct '_AppBarData
    DWORD ; cbSize
    HWND ; hWnd
    UINT ; uCallbackMessage
    AppBarEdge ; uEdge
    ;; rc
    LONG ; left
    LONG ; top
    LONG ; right
    LONG ; bottom
    LPARAM ; lParam
)
(setq APPBARDATA _AppBarData)
;; } APPBARDATA
(setq PAPPBARDATA "void*") ; _AppBarData *

;; value DWORD AppBarMessage {
(setq AppBarMessage DWORD)
(setq ABM_NEW 0x00000000)
(setq ABM_REMOVE 0x00000001)
(setq ABM_QUERYPOS 0x00000002)
(setq ABM_SETPOS 0x00000003)
(setq ABM_GETSTATE 0x00000004)
(setq ABM_GETTASKBARPOS 0x00000005)
(setq ABM_ACTIVATE 0x00000006)
(setq ABM_GETAUTOHIDEBAR 0x00000007)
(setq ABM_SETAUTOHIDEBAR 0x00000008)
(setq ABM_WINDOWPOSCHANGED 0x0000009)
;; };

;; value DWORD FindExecutableError {
(setq FindExecutableError DWORD)
(setq OutOfMemory 0)
(setq ERROR_FILE_NOT_FOUND 2)
(setq ERROR_PATH_NOT_FOUND 3)
(setq ERROR_BAD_FORMAT 11)
(setq NoAssociation 31)
;; };

;; value UINT SHAddToRecentDocsFlags {
(setq SHAddToRecentDocsFlags UINT)
(setq SHARD_PIDL 0x00000001)
(setq SHARD_PATHA 0x00000002)
(setq SHARD_PATHW 0x00000003)
;; };

;; mask UINT BrowseInfoFlags {
(setq BrowseInfoFlags UINT)
(setq BIF_RETURNONLYFSDIRS 0x0001)
(setq BIF_DONTGOBELOWDOMAIN 0x0002)
(setq BIF_STATUSTEXT 0x0004)
(setq BIF_RETURNFSANCESTORS 0x0008)
(setq BIF_EDITBOX 0x0010)
(setq BIF_VALIDATE 0x0020)

(setq BIF_BROWSEFORCOMPUTER 0x1000)
(setq BIF_BROWSEFORPRINTER 0x2000)
(setq BIF_BROWSEINCLUDEFILES 0x4000)
;; };

;; typedef struct _browseinfoA  { {
(struct '_browseinfoA
    HWND ; hwndOwner
    LPCITEMIDLIST ; pidlRoot
    LPSTR ; pszDisplayName
    LPCSTR ; lpszTitle;
    BrowseInfoFlags ; ulFlags;
    LPVOID ; lpfn
    LPARAM ; lParam;

    "int" ; iImage;
)
(setq BROWSEINFOA _browseinfoA)
;; } BROWSEINFOA
(setq PBROWSEINFOA "void*") ; _browseinfoA *
(setq LPBROWSEINFOA "void*") ; _browseinfoA *

;; typedef struct _browseinfoW  { {
(struct '_browseinfoW
    HWND ; hwndOwner
    LPCITEMIDLIST ; pidlRoot
    LPWSTR ; pszDisplayName
    LPCWSTR ; lpszTitle;
    BrowseInfoFlags ; ulFlags;
    LPVOID ; lpfn
    LPARAM ; lParam;

    "int" ; iImage;
)
(setq BROWSEINFOW _browseinfoW)
;; } BROWSEINFOW
(setq PBROWSEINFOW "void*") ; _browseinfoW *
(setq LPBROWSEINFOW "void*") ; _browseinfoW *


;; value LONG ChangeNotifyEventId {
(setq ChangeNotifyEventId LONG)
(setq SHCNE_RENAMEITEM 0x00000001)
(setq SHCNE_CREATE 0x00000002)
(setq SHCNE_DELETE 0x00000004)
(setq SHCNE_MKDIR 0x00000008)
(setq SHCNE_RMDIR 0x00000010)
(setq SHCNE_MEDIAINSERTED 0x00000020)
(setq SHCNE_MEDIAREMOVED 0x00000040)
(setq SHCNE_DRIVEREMOVED 0x00000080)
(setq SHCNE_DRIVEADD 0x00000100)
(setq SHCNE_NETSHARE 0x00000200)
(setq SHCNE_NETUNSHARE 0x00000400)
(setq SHCNE_ATTRIBUTES 0x00000800)
(setq SHCNE_UPDATEDIR 0x00001000)
(setq SHCNE_UPDATEITEM 0x00002000)
(setq SHCNE_SERVERDISCONNECT 0x00004000)
(setq SHCNE_UPDATEIMAGE 0x00008000)
(setq SHCNE_DRIVEADDGUI 0x00010000)
(setq SHCNE_RENAMEFOLDER 0x00020000)
(setq SHCNE_FREESPACE 0x00040000)

(setq SHCNE_EXTENDED_EVENT 0x04000000)
(setq SHCNE_ASSOCCHANGED 0x08000000)

(setq SHCNE_DISKEVENTS 0x0002381F)
(setq SHCNE_GLOBALEVENTS 0x0C0581E0)
(setq SHCNE_ALLEVENTS 0x7FFFFFFF)
(setq SHCNE_INTERRUPT 0x80000000)
    } ; 


;; value LONG ChangeNotifyFlags {
(setq ChangeNotifyFlags LONG)
(setq SHCNF_IDLIST 0x0000)
(setq SHCNF_PATHA 0x0001)
(setq SHCNF_PRINTERA 0x0002)
(setq SHCNF_DWORD 0x0003)
(setq SHCNF_PATHW 0x0005)
(setq SHCNF_PRINTERW 0x0006)
;; };

;; mask ULONG SHCreateProcessInfoMask {
(setq SHCreateProcessInfoMask ULONG)
(setq SEE_MASK_CLASSNAME 0x00000001)
(setq SEE_MASK_CLASSKEY 0x00000003)
(setq SEE_MASK_IDLIST 0x00000004)
(setq SEE_MASK_INVOKEIDLIST 0x0000000c)
(setq SEE_MASK_ICON 0x00000010)
(setq SEE_MASK_HOTKEY 0x00000020)
(setq SEE_MASK_NOCLOSEPROCESS 0x00000040)
(setq SEE_MASK_CONNECTNETDRV 0x00000080)
(setq SEE_MASK_FLAG_DDEWAIT 0x00000100)
(setq SEE_MASK_DOENVSUBST 0x00000200)
(setq SEE_MASK_FLAG_NO_UI 0x00000400)
(setq SEE_MASK_UNICODE 0x00004000)
(setq SEE_MASK_NO_CONSOLE 0x00008000)
(setq SEE_MASK_ASYNCOK 0x00100000)
(setq SEE_MASK_HMONITOR 0x00200000)
(setq SEE_MASK_NOQUERYCLASSSTORE 0x01000000)
(setq SEE_MASK_WAITFORINPUTIDLE 0x02000000)
;; };

;; typedef struct _SHCREATEPROCESSINFOW { {
(struct '_SHCREATEPROCESSINFOW
    DWORD ; cbSize
    SHCreateProcessInfoMask ; fMask
    HWND ; hwnd
    LPCWSTR ; pwszFile
    LPCWSTR ; pwszParameters
    LPCWSTR ; pwszCurrentDirectory
    HANDLE ; hUserToken
    LPSECURITY_ATTRIBUTES ; lpProcessAttributes
    LPSECURITY_ATTRIBUTES ; lpThreadAttributes
    BOOL ; bInheritHandles
    DWORD ; dwCreationFlags
    LPSTARTUPINFOW ; lpStartupInfo
    LPPROCESS_INFORMATION ; lpProcessInformation
)
(setq SHCREATEPROCESSINFOW _SHCREATEPROCESSINFOW)
;; } SHCREATEPROCESSINFOW
(setq PSHCREATEPROCESSINFOW "void*") ; _SHCREATEPROCESSINFOW *

;; value DWORD NotifyIconMessage {
(setq NotifyIconMessage DWORD)
(setq NIM_ADD 0x00000000)
(setq NIM_MODIFY 0x00000001)
(setq NIM_DELETE 0x00000002)
(setq NIM_SETFOCUS 0x00000003)
(setq NIM_SETVERSION 0x00000004)
;; };

(setq PNOTIFYICONDATA LPVOID)


;; value DWORD ShellExecuteError {
(setq ShellExecuteError DWORD)
(setq OutOfMemory 0)
(setq ERROR_FILE_NOT_FOUND 2)
(setq ERROR_PATH_NOT_FOUND 3)
(setq ERROR_BAD_FORMAT 11)
(setq SE_ERR_ACCESSDENIED 5)
(setq SE_ERR_OOM 8)
(setq SE_ERR_DLLNOTFOUND 32)
(setq SE_ERR_SHARE 26)
(setq SE_ERR_ASSOCINCOMPLETE 27)
(setq SE_ERR_DDETIMEOUT 28)
(setq SE_ERR_DDEFAIL 29)
(setq SE_ERR_DDEBUSY 30)
(setq SE_ERR_NOASSOC 31)
;; };

;; typedef struct _SHELLEXECUTEINFOA { {
(struct '_SHELLEXECUTEINFOA
    DWORD ; cbSize
    ULONG ; fMask
    HWND ; hwnd
    LPCSTR ; lpVerb
    LPCSTR ; lpFile
    LPCSTR ; lpParameters
    LPCSTR ; lpDirectory
    INT ; nShow
    HINSTANCE ; hInstApp
    LPVOID ; lpIDList
    LPCSTR ; lpClass
    HKEY ; hkeyClass
    DWORD ; dwHotKey
    HRSRC ; hIcon
    HANDLE ; hProcess
)
(setq SHELLEXECUTEINFOA _SHELLEXECUTEINFOA)
;; } SHELLEXECUTEINFOA
(setq LPSHELLEXECUTEINFOA "void*") ; _SHELLEXECUTEINFOA *

;; typedef struct _SHELLEXECUTEINFOW { {
(struct '_SHELLEXECUTEINFOW
    DWORD ; cbSize
    ULONG ; fMask
    HWND ; hwnd
    LPCWSTR ; lpVerb
    LPCWSTR ; lpFile
    LPCWSTR ; lpParameters
    LPCWSTR ; lpDirectory
    INT ; nShow
    HINSTANCE ; hInstApp
    LPVOID ; lpIDList
    LPCWSTR ; lpClass
    HKEY ; hkeyClass
    DWORD ; dwHotKey
    HRSRC ; hIcon
    HANDLE ; hProcess
)
(setq SHELLEXECUTEINFOW _SHELLEXECUTEINFOW)
;; } SHELLEXECUTEINFOW
(setq LPSHELLEXECUTEINFOW "void*") ; _SHELLEXECUTEINFOW *

;; mask DWORD SHEmptyRecycleBinFlags {
(setq SHEmptyRecycleBinFlags DWORD)
(setq SHERB_NOCONFIRMATION 0x00000001)
(setq SHERB_NOPROGRESSUI 0x00000002)
(setq SHERB_NOSOUND 0x00000004)
;; };

;; mask DWORD FILEOP_FLAGS {
(setq FILEOP_FLAGS DWORD)
(setq FOF_MULTIDESTFILES 0x0001)
(setq FOF_CONFIRMMOUSE 0x0002)
(setq FOF_SILENT 0x0004)
(setq FOF_RENAMEONCOLLISION 0x0008)
(setq FOF_NOCONFIRMATION 0x0010)
(setq FOF_WANTMAPPINGHANDLE 0x0020)
    #define ; FOF_ALLOWUNDO
(setq FOF_FILESONLY 0x0080)
(setq FOF_SIMPLEPROGRESS 0x0100)
(setq FOF_NOCONFIRMMKDIR 0x0200)
(setq FOF_NOERRORUI 0x0400)
(setq FOF_NOCOPYSECURITYATTRIBS 0x0800)
(setq FOF_NORECURSION 0x1000)
(setq FOF_NO_CONNECTED_ELEMENTS 0x2000)
(setq FOF_WANTNUKEWARNING 0x4000)
;; };

;; typedef struct _SHFILEOPSTRUCTA { {
(struct '_SHFILEOPSTRUCTA
    HWND ; hwnd
    UINT ; wFunc
    LPCSTR ; pFrom
    LPCSTR ; pTo
    FILEOP_FLAGS ; fFlags
    BOOL ; fAnyOperationsAborted
    LPVOID ; hNameMappings
    LPCSTR ; lpszProgressTitle;
)
(setq SHFILEOPSTRUCTA _SHFILEOPSTRUCTA)
;; } SHFILEOPSTRUCTA
(setq LPSHFILEOPSTRUCTA "void*") ; _SHFILEOPSTRUCTA *

;; typedef struct _SHFILEOPSTRUCTW { {
(struct '_SHFILEOPSTRUCTW
    HWND ; hwnd
    UINT ; wFunc
    LPCWSTR ; pFrom
    LPCWSTR ; pTo
    FILEOP_FLAGS ; fFlags
    BOOL ; fAnyOperationsAborted
    LPVOID ; hNameMappings
    LPCWSTR ; lpszProgressTitle;
)
(setq SHFILEOPSTRUCTW _SHFILEOPSTRUCTW)
;; } SHFILEOPSTRUCTW
(setq LPSHFILEOPSTRUCTW "void*") ; _SHFILEOPSTRUCTW *

;; value INT SHGetDataFromIDListFormat {
(setq SHGetDataFromIDListFormat INT)
(setq SHGDFIL_FINDDATA 1)
(setq SHGDFIL_NETRESOURCE 2)
(setq SHGDFIL_DESCRIPTIONID 3)
;; };

;; mask UINT SHGetFileInfoFlags {
(setq SHGetFileInfoFlags UINT)
(setq SHGFI_ICON 0x000000100)
(setq SHGFI_DISPLAYNAME 0x000000200)
(setq SHGFI_TYPENAME 0x000000400)
(setq SHGFI_ATTRIBUTES 0x000000800)
(setq SHGFI_ICONLOCATION 0x000001000)
(setq SHGFI_EXETYPE 0x000002000)
(setq SHGFI_SYSICONINDEX 0x000004000)
(setq SHGFI_LINKOVERLAY 0x000008000)
(setq SHGFI_SELECTED 0x000010000)
(setq SHGFI_ATTR_SPECIFIED 0x000020000)
(setq SHGFI_LARGEICON 0x000000000)
(setq SHGFI_SMALLICON 0x000000001)
(setq SHGFI_OPENICON 0x000000002)
(setq SHGFI_SHELLICONSIZE 0x000000004)
(setq SHGFI_PIDL 0x000000008)
(setq SHGFI_USEFILEATTRIBUTES 0x000000010)
(setq SHGFI_ADDOVERLAYS 0x000000020)
(setq SHGFI_OVERLAYINDEX 0x000000040)
    } ; 

;; mask DWORD ShellFolderGetAttributesOf {
(setq ShellFolderGetAttributesOf DWORD)
(setq SFGAO_CANCOPY 0x1)
(setq SFGAO_CANMOVE 0x2)
(setq SFGAO_CANLINK 0x4)
(setq SFGAO_CANRENAME 0x00000010)
(setq SFGAO_CANDELETE 0x00000020)
(setq SFGAO_HASPROPSHEET 0x00000040)
(setq SFGAO_DROPTARGET 0x00000100)
(setq SFGAO_CAPABILITYMASK 0x00000177)
(setq SFGAO_LINK 0x00010000)
(setq SFGAO_SHARE 0x00020000)
(setq SFGAO_READONLY 0x00040000)
(setq SFGAO_GHOSTED 0x00080000)
(setq SFGAO_HIDDEN 0x00080000)
(setq SFGAO_DISPLAYATTRMASK 0x000F0000)
(setq SFGAO_FILESYSANCESTOR 0x10000000)
(setq SFGAO_FOLDER 0x20000000)
(setq SFGAO_FILESYSTEM 0x40000000)
(setq SFGAO_HASSUBFOLDER 0x80000000)
(setq SFGAO_CONTENTSMASK 0x80000000)
(setq SFGAO_VALIDATE 0x01000000)
(setq SFGAO_REMOVABLE 0x02000000)
(setq SFGAO_COMPRESSED 0x04000000)
(setq SFGAO_BROWSABLE 0x08000000)
(setq SFGAO_NONENUMERATED 0x00100000)
(setq SFGAO_NEWCONTENT 0x00200000)
(setq SFGAO_CANMONIKER 0x00400000)
;; };

;; typedef struct _SHFILEINFOA { {
(struct '_SHFILEINFOA
    HRSRC ; hIcon;
    "int" ; iIcon;
    ShellFolderGetAttributesOf ; dwAttributes;
    CHAR ; szDisplayName;
    CHAR ; szTypeName;
)
(setq SHFILEINFOA _SHFILEINFOA)
;; } SHFILEINFOA
;; typedef struct _SHFILEINFOW { {
(struct '_SHFILEINFOW
    HRSRC ; hIcon;
    "int" ; iIcon;
    ShellFolderGetAttributesOf ; dwAttributes;
    WCHAR ; szDisplayName;
    WCHAR ; szTypeName;
)
(setq SHFILEINFOW _SHFILEINFOW)
;; } SHFILEINFOW

;; value DWORD SHGetFolderPathFlags {
(setq SHGetFolderPathFlags DWORD)
(setq SHGFP_TYPE_CURRENT 0)
(setq SHGFP_TYPE_DEFAULT 1)
;; };

;; value int SHGetIconOverlayIndexValue {
(setq SHGetIconOverlayIndexValue "int")
(setq IDO_SHGIOI_SHARE 0x0FFFFFFF)
(setq IDO_SHGIOI_LINK 0x0FFFFFFE)
(setq IDO_SHGIOI_SLOWFILE 0x0FFFFFFFD)
;; };

;; mask DWORD SHGetSettingsMask {
(setq SHGetSettingsMask DWORD)
(setq SSF_SHOWALLOBJECTS 0x00000001)
(setq SSF_SHOWEXTENSIONS 0x00000002)
(setq SSF_SHOWCOMPCOLOR 0x00000008)
(setq SSF_SHOWSYSFILES 0x00000020)
(setq SSF_DOUBLECLICKINWEBVIEW 0x00000080)
(setq SSF_SHOWATTRIBCOL 0x00000100)
(setq SSF_DESKTOPHTML 0x00000200)
(setq SSF_WIN95CLASSIC 0x00000400)
(setq SSF_DONTPRETTYPATH 0x00000800)
(setq SSF_SHOWINFOTIP 0x00002000)
(setq SSF_MAPNETDRVBUTTON 0x00001000)
(setq SSF_NOCONFIRMRECYCLE 0x00008000)
(setq SSF_HIDEICONS 0x00004000)
;; };


;; value int CSIDL {
(setq CSIDL "int")
(setq CSIDL_DESKTOP 0x0000)
(setq CSIDL_INTERNET 0x0001)
(setq CSIDL_PROGRAMS 0x0002)
(setq CSIDL_CONTROLS 0x0003)
(setq CSIDL_PRINTERS 0x0004)
(setq CSIDL_PERSONAL 0x0005)
(setq CSIDL_FAVORITES 0x0006)
(setq CSIDL_STARTUP 0x0007)
(setq CSIDL_RECENT 0x0008)
(setq CSIDL_SENDTO 0x0009)
(setq CSIDL_BITBUCKET 0x000a)
(setq CSIDL_STARTMENU 0x000b)
(setq CSIDL_DESKTOPDIRECTORY 0x0010)
(setq CSIDL_DRIVES 0x0011)
(setq CSIDL_NETWORK 0x0012)
(setq CSIDL_NETHOOD 0x0013)
(setq CSIDL_FONTS 0x0014)
(setq CSIDL_TEMPLATES 0x0015)
(setq CSIDL_COMMON_STARTMENU 0x0016)
(setq CSIDL_COMMON_PROGRAMS 0X0017)
(setq CSIDL_COMMON_STARTUP 0x0018)
(setq CSIDL_COMMON_DESKTOPDIRECTORY 0x0019)
(setq CSIDL_APPDATA 0x001a)
(setq CSIDL_PRINTHOOD 0x001b)
(setq CSIDL_LOCAL_APPDATA 0x001c)
(setq CSIDL_ALTSTARTUP 0x001d)
(setq CSIDL_COMMON_ALTSTARTUP 0x001e)
(setq CSIDL_COMMON_FAVORITES 0x001f)
(setq CSIDL_INTERNET_CACHE 0x0020)
(setq CSIDL_COOKIES 0x0021)
(setq CSIDL_HISTORY 0x0022)
(setq CSIDL_COMMON_APPDATA 0x0023)
(setq CSIDL_WINDOWS 0x0024)
(setq CSIDL_SYSTEM 0x0025)
(setq CSIDL_PROGRAM_FILES 0x0026)
(setq CSIDL_MYPICTURES 0x0027)
(setq CSIDL_PROFILE 0x0028)
(setq CSIDL_SYSTEMX86 0x0029)
(setq CSIDL_PROGRAM_FILESX86 0x002a)
(setq CSIDL_PROGRAM_FILES_COMMON 0x002b)
(setq CSIDL_PROGRAM_FILES_COMMONX86 0x002c)
(setq CSIDL_COMMON_TEMPLATES 0x002d)
(setq CSIDL_COMMON_DOCUMENTS 0x002e)
(setq CSIDL_COMMON_ADMINTOOLS 0x002f)
(setq CSIDL_ADMINTOOLS 0x0030)
(setq CSIDL_CONNECTIONS 0x0031)

(setq CSIDL_FLAG_CREATE 0x8000)
(setq CSIDL_FLAG_DONT_VERIFY 0x4000)
(setq CSIDL_FLAG_MASK 0xFF00)
;; };

;; value UINT SHInvokePrinterCommandAction {
(setq SHInvokePrinterCommandAction UINT)
(setq PRINTACTION_OPEN 0)
(setq PRINTACTION_PROPERTIES 1)
(setq PRINTACTION_NETINSTALL 2)
(setq PRINTACTION_NETINSTALLLINK 3)
(setq PRINTACTION_TESTPAGE 4)
(setq PRINTACTION_OPENNETPRN 5)
(setq PRINTACTION_DOCUMENTDEFAULTS 6)
(setq PRINTACTION_SERVERPROPERTIES 7)
;; };

;; typedef struct _SHQUERYRBINFO  { {
(struct '_SHQUERYRBINFO
    DWORD ; cbSize
    __int64 ; i64Size
    __int64 ; i64NumItems
)
(setq SHQUERYRBINFO _SHQUERYRBINFO)
;; } SHQUERYRBINFO
(setq LPSHQUERYRBINFO "void*") ; _SHQUERYRBINFO *

;; value DWORD TranslateUrlFlags {
(setq TranslateUrlFlags DWORD)
(setq TRANSLATEURL_FL_GUESS_PROTOCOL 0x0001)
(setq TRANSLATEURL_FL_USE_DEFAULT_PROTOCOL 0x0002)
;; };

;; value DWORD URLAssociationDialogFlags {
(setq URLAssociationDialogFlags DWORD)
(setq URLASSOCDLG_FL_USE_DEFAULT_NAME 0x0001)
(setq URLASSOCDLG_FL_REGISTER_ASSOC 0x0002)
;; };

;; value UINT WinHelpCommands {
(setq WinHelpCommands UINT)
(setq HELP_CONTEXT 0x0001)
(setq HELP_QUIT 0x0002)
(setq HELP_INDEX 0x0003)
(setq HELP_CONTENTS 0x0003)
(setq HELP_HELPONHELP 0x0004)
(setq HELP_SETINDEX 0x0005)
(setq HELP_CONTEXTPOPUP 0x0008)
(setq HELP_FORCEFILE 0x0009)
(setq HELP_KEY 0x0101)
(setq HELP_COMMAND 0x0102)
(setq HELP_PARTIALKEY 0x0105)
(setq HELP_MULTIKEY 0x0201)
(setq HELP_SETWINPOS 0x0203)
(setq HELP_CONTEXTMENU 0x000a)
(setq HELP_FINDER 0x000b)
(setq HELP_WM_HELP 0x000c)
(setq HELP_SETPOPUP_POS 0x000d)

(setq HELP_TCARD 0x8000)
(setq HELP_TCARD_DATA 0x0010)
(setq HELP_TCARD_OTHER_CALLER 0x0011)
;; };

;; typedef struct _STRRET  { {
;(struct '_STRRET
;   UINT uType;
;   CHAR cStr;
;)
(setq STRRET _STRRET)
;; } STRRET
(setq LPSTRRET "void*") ; _STRRET *


;; module SHELL32.DLL:
;; category Shell:

(import "SHELL32.DLL" "DllGetClassObject" HRESULT
    REFCLSID ; rclsid,
    REFIID ; riid,
    "void*" ; COM_INTERFACE_PTR * ppv
)

;; interface IShellFolder : IUnknown
;; {
;;     HRESULT ParseDisplayName(
;;     HWND hwnd,
;;      LPBC pbc,
;;      LPOLESTR pszDisplayName,
;;     
;;                              ULONG* pchEaten,
;;       LPITEMIDLIST *ppidl,
;;       ULONG *pdwAttributes
;; );
;; 
;;     HRESULT EnumObjects(
;;     HWND hwnd,
;;      DWORD grfFlags,
;;      IEnumIDList** ppenumIDList
;; );
;; 
;;     HRESULT BindToObject(
;;     LPCITEMIDLIST pidl,
;;      LPBC pbc,
;;       REFIID riid,
;;       COM_INTERFACE_PTR* ppv
;; );
;;     HRESULT BindToStorage(
;;     LPCITEMIDLIST pidl,
;;      LPBC pbc,
;;       REFIID riid,
;;       COM_INTERFACE_PTR* ppv
;; );
;;     HRESULT CompareIDs(
;;     LPARAM lParam,
;;      LPCITEMIDLIST pidl1,
;;      LPCITEMIDLIST pidl2
;; );
;;     HRESULT CreateViewObject(
;;     HWND hwndOwner,
;;       REFIID riid,
;;       COM_INTERFACE_PTR* ppv
;; );
;;     HRESULT GetAttributesOf(
;;     UINT cidl,
;;       LPCITEMIDLIST* apidl,
;;       ULONG * rgfInOut
;; );
;;     HRESULT GetUIObjectOf(
;;     HWND hwndOwner,
;;      UINT cidl,
;;      LPCITEMIDLIST* apidl,
;;     
;;                           REFIID riid,
;;      UINT* prgfInOut,
;;       COM_INTERFACE_PTR *ppv
;; );
;;     HRESULT GetDisplayNameOf(
;;     LPCITEMIDLIST pidl,
;;      DWORD uFlags,
;;       LPSTRRET lpName
;; );
;;     HRESULT SetNameOf(
;;     HWND hwnd,
;;      LPCITEMIDLIST pidl,
;;      LPCOLESTR pszName,
;;     
;;                      DWORD uFlags,
;;      LPITEMIDLIST* ppidlOut
;; );
;; };

;; interface IShellLinkA : IUnknown
;; {
;;     HRESULT GetPath(
;;       LPSTR pszFile,
;;      INT cchMaxPath,
;;       LPWIN32_FIND_DATAA pfd,
;;      DWORD fFlags 
;; );
;; 
;;     HRESULT GetIDList(
;;      LPITEMIDLIST* ppidl
;; );
;;     HRESULT SetIDList(
;;     LPCITEMIDLIST pidl
;; );
;; 
;;     HRESULT GetDescription(
;;      LPSTR pszName,
;;      INT cchMaxName
;; );
;;     HRESULT SetDescription(
;;     LPCSTR pszName
;; );
;; 
;;     HRESULT GetWorkingDirectory(
;;      LPSTR pszDir,
;;      INT cchMaxPath
;; );
;;     HRESULT SetWorkingDirectory(
;;     LPCSTR pszDir
;; );
;; 
;;     HRESULT GetArguments(
;;      LPSTR pszArgs,
;;      INT cchMaxPath
;; );
;;     HRESULT SetArguments(
;;     LPCSTR pszArgs
;; );
;; 
;;     HRESULT GetHotkey(
;;      WORD* pwHotkey
;; );
;;     HRESULT SetHotkey(
;;     WORD wHotkey
;; );
;; 
;;     HRESULT GetShowCmd(
;;      INT* piShowCmd
;; );
;;     HRESULT SetShowCmd(
;;     INT iShowCmd
;; );
;; 
;;     HRESULT GetIconLocation(
;;      LPSTR pszIconPath,
;;      INT cchIconPath,
;;       INT* piIcon
;; );
;;     HRESULT SetIconLocation(
;;     LPCSTR pszIconPath,
;;      INT iIcon
;; );
;; 
;;     HRESULT SetRelativePath(
;;     LPCSTR pszPathRel,
;;      DWORD dwReserved
;; );
;; 
;;     HRESULT Resolve(
;;     HWND hwnd,
;;      DWORD fFlags
;; );
;; 
;;     HRESULT SetPath(
;;     LPCSTR pszFile
;; );
;; };

;; interface IShellLinkW : IUnknown
;; {
;;     HRESULT GetPath(
;;       LPWSTR pszFile,
;;      INT cchMaxPath,
;;       LPWIN32_FIND_DATAW pfd,
;;      DWORD fFlags 
;; );
;; 
;;     HRESULT GetIDList(
;;      LPITEMIDLIST* ppidl
;; );
;;     HRESULT SetIDList(
;;     LPCITEMIDLIST pidl
;; );
;; 
;;     HRESULT GetDescription(
;;      LPWSTR pszName,
;;      INT cchMaxName
;; );
;;     HRESULT SetDescription(
;;     LPCWSTR pszName
;; );
;; 
;;     HRESULT GetWorkingDirectory(
;;      LPWSTR pszDir,
;;      INT cchMaxPath
;; );
;;     HRESULT SetWorkingDirectory(
;;     LPCWSTR pszDir
;; );
;; 
;;     HRESULT GetArguments(
;;      LPWSTR pszArgs,
;;      INT cchMaxPath
;; );
;;     HRESULT SetArguments(
;;     LPCWSTR pszArgs
;; );
;; 
;;     HRESULT GetHotkey(
;;      WORD* pwHotkey
;; );
;;     HRESULT SetHotkey(
;;     WORD wHotkey
;; );
;; 
;;     HRESULT GetShowCmd(
;;      INT* piShowCmd
;; );
;;     HRESULT SetShowCmd(
;;     INT iShowCmd
;; );
;; 
;;     HRESULT GetIconLocation(
;;      LPWSTR pszIconPath,
;;      INT cchIconPath,
;;       INT* piIcon
;; );
;;     HRESULT SetIconLocation(
;;     LPCWSTR pszIconPath,
;;      INT iIcon
;; );
;; 
;;     HRESULT SetRelativePath(
;;     LPCWSTR pszPathRel,
;;      DWORD dwReserved
;; );
;; 
;;     HRESULT Resolve(
;;     HWND hwnd,
;;      DWORD fFlags
;; );
;; 
;;     HRESULT SetPath(
;;     LPCWSTR pszFile
;; );
;; };

(import "SHELL32.DLL" "DoEnvironmentSubstA" DWORD
    LPCSTR ; pszString,
    UINT ; cbSize
)
(import "SHELL32.DLL" "DoEnvironmentSubstW" DWORD
    LPCWSTR ; pszString,
    UINT ; cbSize
)
(import "SHELL32.DLL" "DragAcceptFiles" VOID
    HWND ; hWnd,
    BOOL ; fAccept
)
(import "SHELL32.DLL" "DragFinish" VOID
    HDROP ; hDrop
)
(import "SHELL32.DLL" "DragQueryFileA" UINT
    HDROP ; hDrop,
    UINT ; iFile,
    LPSTR ; lpszFile,
    UINT ; cch
)
(import "SHELL32.DLL" "DragQueryFileW" UINT
    HDROP ; hDrop,
    UINT ; iFile,
    LPWSTR ; lpszFile,
    UINT ; cch
)
(import "SHELL32.DLL" "DragQueryPoint" BOOL
    HDROP ; hDrop,
    LPPOINT ; lppt
)
(import "SHELL32.DLL" "FindExecutableA" FindExecutableError
    LPCSTR ; lpFile,
    LPCSTR ; lpDirectory,
    LPSTR ; lpResult
)
(import "SHELL32.DLL" "FindExecutableW" FindExecutableError
    LPCWSTR ; lpFile,
    LPCWSTR ; lpDirectory,
    LPWSTR ; lpResult
)
(import "SHELL32.DLL" "SHAddToRecentDocs" VOID
    SHAddToRecentDocsFlags ; uFlags,
    LPCVOID ; pv
)
(import "SHELL32.DLL" "SHAppBarMessage" UINT
    DWORD ; dwMessage,
    PAPPBARDATA ; pData
)
(import "SHELL32.DLL" "SHBindToParent" HRESULT
   LPCITEMIDLIST ; pidl,
   REFIID ; riid,
   "void*" ; COM_INTERFACE_PTR * ppv,
   "void*" ; LPCITEMIDLIST* ppidlLast
)
(import "SHELL32.DLL" "SHBrowseForFolderA" LPITEMIDLIST
    LPBROWSEINFOA ; lpbi
)
(import "SHELL32.DLL" "SHBrowseForFolderW" LPITEMIDLIST
    LPBROWSEINFOW ; lpbi
)
(import "SHELL32.DLL" "SHChangeNotify" VOID
    ChangeNotifyEventId ; wEventId,
    ChangeNotifyFlags ; uFlags,
    LPCVOID ; dwItem1,
    LPCVOID ; dwItem2
)
(import "SHELL32.DLL" "SHCreateDirectoryExA" "int"
    HWND ; hwnd,
    LPCSTR ; pszPath,
    "void*" ; SECURITY_ATTRIBUTES * psa
)
(import "SHELL32.DLL" "SHCreateDirectoryExW" "int"
    HWND ; hwnd,
    LPCWSTR ; pszPath,
    "void*" ; SECURITY_ATTRIBUTES * psa
)
(import "SHELL32.DLL" "Shell_NotifyIcon" BOOL
    NotifyIconMessage ; dwMessage,
    PNOTIFYICONDATA ; pnid
)
(import "SHELL32.DLL" "ShellAboutA" "int"
   HWND ; hWnd,
   LPCSTR ; szApp,
   LPCSTR ; szOtherStuff,
   HRSRC ; hIcon
)
(import "SHELL32.DLL" "ShellAboutW" "int"
   HWND ; hWnd,
   LPCWSTR ; szApp,
   LPCWSTR ; szOtherStuff,
   HRSRC ; hIcon
)

(import "SHELL32.DLL" "ShellExecuteA" ShellExecuteError
    HWND ; hwnd,
    LPCSTR ; lpVerb,
    LPCSTR ; lpFile,
    LPCSTR ; lpParameters,
    LPCSTR ; lpDirectory,
    ShowWindowCommand ; nShowCmd
)
(import "SHELL32.DLL" "ShellExecuteW" ShellExecuteError
    HWND ; hwnd,
    LPCSTR ; lpVerb,
    LPCSTR ; lpFile,
    LPCSTR ; lpParameters,
    LPCSTR ; lpDirectory,
    ShowWindowCommand ; nShowCmd
)
(import "SHELL32.DLL" "ShellExecuteExA" FailOnFalse
    LPSHELLEXECUTEINFOA ; lpExecInfo
)
(import "SHELL32.DLL" "ShellExecuteExW" FailOnFalse
    LPSHELLEXECUTEINFOW ; lpExecInfo
)
(import "SHELL32.DLL" "SHEmptyRecycleBinA" HRESULT
    HWND ; hwnd,
    LPCSTR ; pszRootPath,
    DWORD ; dwFlags
)
(import "SHELL32.DLL" "SHEmptyRecycleBinW" HRESULT
    HWND ; hwnd,
    LPCWSTR ; pszRootPath,
    SHEmptyRecycleBinFlags ; dwFlags
)
(import "SHELL32.DLL" "SHFileOperationA" INT
    LPSHFILEOPSTRUCTA ; lpFileOp
)
(import "SHELL32.DLL" "SHFileOperationW" INT
    LPSHFILEOPSTRUCTW ; lpFileOp
)
(import "SHELL32.DLL" "SHFreeNameMappings" VOID
    HANDLE ; hNameMappings
)
(import "SHELL32.DLL" "SHGetDataFromIDListA" HRESULT
    "void*" ; IShellFolder * psf,
    LPCITEMIDLIST ; pidl,
    SHGetDataFromIDListFormat ; nFormat,
    PVOID ; pv,
    "int" ; cb
)
(import "SHELL32.DLL" "SHGetDataFromIDListW" HRESULT
    "void*" ; IShellFolder * psf,
    LPCITEMIDLIST ; pidl,
    SHGetDataFromIDListFormat ; nFormat,
    PVOID ; pv,
    "int" ; cb
)
(import "SHELL32.DLL" "SHGetDesktopFolder" HRESULT
    "void*" ; IShellFolder ** ppshf
)
(import "SHELL32.DLL" "SHGetDiskFreeSpaceA" FailOnFalse
    LPCSTR ; pszVolume,
    "void*" ; ULARGE_INTEGER * pqwFreeCaller,
    "void*" ; ULARGE_INTEGER * pqwTot,
    "void*" ; ULARGE_INTEGER * pqwFree
)
(import "SHELL32.DLL" "SHGetFileInfoA" DWORD_PTR
    LPCSTR ; pszPath,
    ShellFolderGetAttributesOf ; dwFileAttributes,
    "void*" ; SHFILEINFOA * psfi,
    UINT ; cbFileInfo,
    SHGetFileInfoFlags ; uFlags
)
(import "SHELL32.DLL" "SHGetFileInfoW" DWORD_PTR
    LPCWSTR ; pszPath,
    ShellFolderGetAttributesOf ; dwFileAttributes,
    "void*" ; SHFILEINFOW * psfi,
    UINT ; cbFileInfo,
    SHGetFileInfoFlags ; uFlags
)
(import "SHELL32.DLL" "SHGetFolderLocation" HRESULT
    HWND ; hwndOwner,
    "int" ; nFolder,
    HANDLE ; hToken,
    DWORD ; dwReserved,
    "void*" ; LPITEMIDLIST * ppidl
)
(import "SHELL32.DLL" "SHGetFolderPathA" HRESULT
    HWND ; hwndOwner,
    CSIDL ; nFolder,
    HANDLE ; hToken,
    SHGetFolderPathFlags ; dwFlags,
    LPSTR ; pszPath
)
(import "SHELL32.DLL" "SHGetFolderPathW" HRESULT
    HWND ; hwndOwner,
    CSIDL ; nFolder,
    HANDLE ; hToken,
    SHGetFolderPathFlags ; dwFlags,
    LPWSTR ; pszPath
)
(import "SHELL32.DLL" "SHGetIconOverlayIndexA" "int"
    LPCSTR ; pszIconPath,
    SHGetIconOverlayIndexValue ; iIconIndex
)
(import "SHELL32.DLL" "SHGetIconOverlayIndexW" "int"
    LPCWSTR ; pszIconPath,
    SHGetIconOverlayIndexValue ; iIconIndex
)
(import "SHELL32.DLL" "SHGetInstanceExplorer" HRESULT
    "void*" ; IUnknown ** ppunk
)


(import "SHELL32.DLL" "SHGetMalloc" HRESULT
    LPVOID ; ppMalloc
)
(import "SHELL32.DLL" "SHGetNewLinkInfoA" FailOnFalse
    LPCSTR ; pszLinkTo,
    LPCSTR ; pszDir,
    LPSTR ; pszName,
    "void*" ; BOOL * pfMustCopy,
    UINT ; uFlags
)
(import "SHELL32.DLL" "SHGetNewLinkInfoW" FailOnFalse
    LPCWSTR ; pszLinkTo,
    LPCWSTR ; pszDir,
    LPWSTR ; pszName,
    "void*" ; BOOL * pfMustCopy,
    UINT ; uFlags
)
(import "SHELL32.DLL" "SHGetPathFromIDListA" FailOnFalse
    LPCITEMIDLIST ; pidl,
    LPSTR ; pszPath
)
(import "SHELL32.DLL" "SHGetPathFromIDListW" FailOnFalse
    LPCITEMIDLIST ; pidl,
    LPWSTR ; pszPath
)
(import "SHELL32.DLL" "SHGetSettings" VOID
    LPSHELLFLAGSTATE ; lpsfs,
    SHGetSettingsMask ; dwMask
)
(import "SHELL32.DLL" "SHGetSpecialFolderLocation" HRESULT
    HWND ; hwndOwner,
    CSIDL ; nFolder,
    "void*" ; LPITEMIDLIST * ppidl
)
(import "SHELL32.DLL" "SHGetSpecialFolderPathA" FailOnFalse
    HWND ; hwndOwner,
    LPSTR ; lpszPath,
    CSIDL ; nFolder,
    BOOL ; fCreate
)
(import "SHELL32.DLL" "SHGetSpecialFolderPathW" FailOnFalse
    HWND ; hwndOwner,
    LPWSTR ; lpszPath,
    CSIDL ; nFolder,
    BOOL ; fCreate
)
(import "SHELL32.DLL" "SHInvokePrinterCommandW" FailOnFalse
    HWND ; hwnd,
    SHInvokePrinterCommandAction ; uAction,
    LPCWSTR ; lpBuf1,
    LPCWSTR ; lpBuf2,
    BOOL ; fModal
)
(import "SHELL32.DLL" "SHInvokePrinterCommandA" FailOnFalse
    HWND ; hwnd,
    SHInvokePrinterCommandAction ; uAction,
    LPCSTR ; lpBuf1,
    LPCSTR ; lpBuf2,
    BOOL ; fModal
)
(import "SHELL32.DLL" "SHLoadInProc" HRESULT
    REFCLSID ; rclsid
)
(import "SHELL32.DLL" "SHQueryRecycleBinA" HRESULT
    LPCSTR ; pszRootPath,
    LPSHQUERYRBINFO ; pSHQueryRBInfo
)
(import "SHELL32.DLL" "SHQueryRecycleBinW" HRESULT
    LPCWSTR ; pszRootPath,
    LPSHQUERYRBINFO ; pSHQueryRBInfo
)
;; module USER32.DLL:
(import "USER32.DLL" "WinHelpA" FailOnFalse
    HWND ; hWndMain,
    LPCSTR ; lpszHelp,
    WinHelpCommands ; uCommand,
    DWORD ; dwData
)
(import "USER32.DLL" "WinHelpW" FailOnFalse
    HWND ; hWndMain,
    LPCWSTR ; lpszHelp,
    WinHelpCommands ; uCommand,
    DWORD ; dwData
)

;; module URL.DLL:

(import "URL.DLL" "InetIsOffline" BOOL
  DWORD ; dwFlag
);

(import "URL.DLL" "MIMEAssociationDialogA" HRESULT
  HWND    ; hwndParent,
  DWORD   ; dwInFlags,
  LPCSTR  ; pcszFile,
  LPCSTR  ; pcszMIMEContentType,
  LPSTR   ; pszAppBuf,
  UINT    ; ucAppBufLen
)

(import "URL.DLL" "MIMEAssociationDialogW" HRESULT
  HWND    ; hwndParent,
  DWORD   ; dwInFlags,
  LPCWSTR  ; pcszFile,
  LPCWSTR  ; pcszMIMEContentType,
  LPWSTR   ; pszAppBuf,
  UINT    ; ucAppBufLen
)
(import "URL.DLL" "TranslateURLA" HRESULT
  LPCSTR ; pcszURL,
  TranslateUrlFlags ; dwInFlags,
  "void*" ; LPSTR* ppszTranslatedURL
)
(import "URL.DLL" "TranslateURLW" HRESULT
  LPCWSTR ; pcszURL,
  TranslateUrlFlags ; dwInFlags,
  "void*" ; LPSTR* ppszTranslatedURL
)

(import "URL.DLL" "URLAssociationDialogA" HRESULT
  HWND ; hwndParent,
  URLAssociationDialogFlags ; dwInFlags,
  LPCSTR ; pcszFile,
  LPCSTR ; pcszURL,
  LPSTR ; pszAppBuf,
  UINT ; ucAppBufLen
)

(import "URL.DLL" "URLAssociationDialogW" HRESULT
  HWND ; hwndParent,
  URLAssociationDialogFlags ; dwInFlags,
  LPCWSTR ; pcszFile,
  LPCWSTR ; pcszURL,
  LPSTR ; pszAppBuf,
  UINT ; ucAppBufLen
)
