(context 'WIN32)

;; module USER32.DLL:
;; category User32:

;; value DWORD PeekMessageOptions {
(setq PeekMessageOptions DWORD)
(setq PM_NOREMOVE 0x0000)
(setq PM_REMOVE 0x0001)
(setq PM_NOYIELD 0x0002)
;; };

;; value DWORD WindowsMessage {
(setq WindowsMessage DWORD)
(setq WM_NULL 0x0000)
(setq WM_CREATE 0x0001)
(setq WM_DESTROY 0x0002)
(setq WM_MOVE 0x0003)
(setq WM_SIZE 0x0005)
(setq WM_ACTIVATE 0x0006)
(setq WM_SETFOCUS 0x0007)
(setq WM_KILLFOCUS 0x0008)
(setq WM_ENABLE 0x000A)
(setq WM_SETREDRAW 0x000B)
(setq WM_SETTEXT 0x000C)
(setq WM_GETTEXT 0x000D)
(setq WM_GETTEXTLENGTH 0x000E)
(setq WM_PAINT 0x000F)
(setq WM_CLOSE 0x0010)
(setq WM_QUERYENDSESSION 0x0011)
(setq WM_QUIT 0x0012)
(setq WM_QUERYOPEN 0x0013)
(setq WM_ERASEBKGND 0x0014)
(setq WM_SYSCOLORCHANGE 0x0015)
(setq WM_ENDSESSION 0x0016)
(setq WM_SHOWWINDOW 0x0018)
(setq WM_WININICHANGE 0x001A)
(setq WM_DEVMODECHANGE 0x001B)
(setq WM_ACTIVATEAPP 0x001C)
(setq WM_FONTCHANGE 0x001D)
(setq WM_TIMECHANGE 0x001E)
(setq WM_CANCELMODE 0x001F)
(setq WM_SETCURSOR 0x0020)
(setq WM_MOUSEACTIVATE 0x0021)
(setq WM_CHILDACTIVATE 0x0022)
(setq WM_QUEUESYNC 0x0023)
(setq WM_GETMINMAXINFO 0x0024)
(setq WM_PAINTICON 0x0026)
(setq WM_ICONERASEBKGND 0x0027)
(setq WM_NEXTDLGCTL 0x0028)
(setq WM_SPOOLERSTATUS 0x002A)
(setq WM_DRAWITEM 0x002B)
(setq WM_MEASUREITEM 0x002C)
(setq WM_DELETEITEM 0x002D)
(setq WM_VKEYTOITEM 0x002E)
(setq WM_CHARTOITEM 0x002F)
(setq WM_SETFONT 0x0030)
(setq WM_GETFONT 0x0031)
(setq WM_SETHOTKEY 0x0032)
(setq WM_GETHOTKEY 0x0033)
(setq WM_QUERYDRAGICON 0x0037)
(setq WM_COMPAREITEM 0x0039)
(setq WM_GETOBJECT 0x003D)
(setq WM_COMPACTING 0x0041)
(setq WM_COMMNOTIFY 0x0044)
(setq WM_WINDOWPOSCHANGING 0x0046)
(setq WM_WINDOWPOSCHANGED 0x0047)
(setq WM_POWER 0x0048)
(setq WM_COPYDATA 0x004A)
(setq WM_CANCELJOURNAL 0x004B)
(setq WM_NOTIFY 0x004E)
(setq WM_INPUTLANGCHANGEREQUEST 0x0050)
(setq WM_INPUTLANGCHANGE 0x0051)
(setq WM_TCARD 0x0052)
(setq WM_HELP 0x0053)
(setq WM_USERCHANGED 0x0054)
(setq WM_NOTIFYFORMAT 0x0055)
(setq WM_CONTEXTMENU 0x007B)
(setq WM_STYLECHANGING 0x007C)
(setq WM_STYLECHANGED 0x007D)
(setq WM_DISPLAYCHANGE 0x007E)
(setq WM_GETICON 0x007F)
(setq WM_SETICON 0x0080)
(setq WM_NCCREATE 0x0081)
(setq WM_NCDESTROY 0x0082)
(setq WM_NCCALCSIZE 0x0083)
(setq WM_NCHITTEST 0x0084)
(setq WM_NCPAINT 0x0085)
(setq WM_NCACTIVATE 0x0086)
(setq WM_GETDLGCODE 0x0087)
(setq WM_SYNCPAINT 0x0088)
(setq WM_NCMOUSEMOVE 0x00A0)
(setq WM_NCLBUTTONDOWN 0x00A1)
(setq WM_NCLBUTTONUP 0x00A2)
(setq WM_NCLBUTTONDBLCLK 0x00A3)
(setq WM_NCRBUTTONDOWN 0x00A4)
(setq WM_NCRBUTTONUP 0x00A5)
(setq WM_NCRBUTTONDBLCLK 0x00A6)
(setq WM_NCMBUTTONDOWN 0x00A7)
(setq WM_NCMBUTTONUP 0x00A8)
(setq WM_NCMBUTTONDBLCLK 0x00A9)

(setq EM_GETSEL 0x00B0)
(setq EM_SETSEL 0x00B1)
(setq EM_GETRECT 0x00B2)
(setq EM_SETRECT 0x00B3)
(setq EM_SETRECTNP 0x00B4)
(setq EM_SCROLL 0x00B5)
(setq EM_LINESCROLL 0x00B6)
(setq EM_SCROLLCARET 0x00B7)
(setq EM_GETMODIFY 0x00B8)
(setq EM_SETMODIFY 0x00B9)
(setq EM_GETLINECOUNT 0x00BA)
(setq EM_LINEINDEX 0x00BB)
(setq EM_SETHANDLE 0x00BC)
(setq EM_GETHANDLE 0x00BD)
(setq EM_GETTHUMB 0x00BE)
(setq EM_LINELENGTH 0x00C1)
(setq EM_REPLACESEL 0x00C2)
(setq EM_GETLINE 0x00C4)
(setq EM_LIMITTEXT 0x00C5)
(setq EM_CANUNDO 0x00C6)
(setq EM_UNDO 0x00C7)
(setq EM_FMTLINES 0x00C8)
(setq EM_LINEFROMCHAR 0x00C9)
(setq EM_SETTABSTOPS 0x00CB)
(setq EM_SETPASSWORDCHAR 0x00CC)
(setq EM_EMPTYUNDOBUFFER 0x00CD)
(setq EM_GETFIRSTVISIBLELINE 0x00CE)
(setq EM_SETREADONLY 0x00CF)
(setq EM_SETWORDBREAKPROC 0x00D0)
(setq EM_GETWORDBREAKPROC 0x00D1)
(setq EM_GETPASSWORDCHAR 0x00D2)
(setq EM_SETMARGINS 0x00D3)
(setq EM_GETMARGINS 0x00D4)
(setq EM_GETLIMITTEXT 0x00D5)
(setq EM_POSFROMCHAR 0x00D6)
(setq EM_CHARFROMPOS 0x00D7)
(setq EM_SETIMESTATUS 0x00D8)
(setq EM_GETIMESTATUS 0x00D9)

(setq WM_KEYFIRST 0x0100)
(setq WM_KEYDOWN 0x0100)
(setq WM_KEYUP 0x0101)
(setq WM_CHAR 0x0102)
(setq WM_DEADCHAR 0x0103)
(setq WM_SYSKEYDOWN 0x0104)
(setq WM_SYSKEYUP 0x0105)
(setq WM_SYSCHAR 0x0106)
(setq WM_SYSDEADCHAR 0x0107)
(setq WM_KEYLAST 0x0108)
(setq WM_IME_STARTCOMPOSITION 0x010D)
(setq WM_IME_ENDCOMPOSITION 0x010E)
(setq WM_IME_COMPOSITION 0x010F)
(setq WM_IME_KEYLAST 0x010F)
(setq WM_INITDIALOG 0x0110)
(setq WM_COMMAND 0x0111)
(setq WM_SYSCOMMAND 0x0112)
(setq WM_TIMER 0x0113)
(setq WM_HSCROLL 0x0114)
(setq WM_VSCROLL 0x0115)
(setq WM_INITMENU 0x0116)
(setq WM_INITMENUPOPUP 0x0117)
(setq WM_SYSTIMER 0x0118)
(setq WM_MENUSELECT 0x011F)
(setq WM_MENUCHAR 0x0120)
(setq WM_ENTERIDLE 0x0121)
(setq WM_MENURBUTTONUP 0x0122)
(setq WM_MENUDRAG 0x0123)
(setq WM_MENUGETOBJECT 0x0124)
(setq WM_UNINITMENUPOPUP 0x0125)
(setq WM_MENUCOMMAND 0x0126)
(setq WM_CTLCOLORMSGBOX 0x0132)
(setq WM_CTLCOLOREDIT 0x0133)
(setq WM_CTLCOLORLISTBOX 0x0134)
(setq WM_CTLCOLORBTN 0x0135)
(setq WM_CTLCOLORDLG 0x0136)
(setq WM_CTLCOLORSCROLLBAR 0x0137)
(setq WM_CTLCOLORSTATIC 0x0138)
(setq WM_MOUSEFIRST 0x0200)
(setq WM_MOUSEMOVE 0x0200)
(setq WM_LBUTTONDOWN 0x0201)
(setq WM_LBUTTONUP 0x0202)
(setq WM_LBUTTONDBLCLK 0x0203)
(setq WM_RBUTTONDOWN 0x0204)
(setq WM_RBUTTONUP 0x0205)
(setq WM_RBUTTONDBLCLK 0x0206)
(setq WM_MBUTTONDOWN 0x0207)
(setq WM_MBUTTONUP 0x0208)
(setq WM_MBUTTONDBLCLK 0x0209)
(setq WM_MOUSEWHEEL 0x020A)
(setq WM_MOUSELAST 0x0209)
(setq WM_PARENTNOTIFY 0x0210)
(setq WM_ENTERMENULOOP 0x0211)
(setq WM_EXITMENULOOP 0x0212)
(setq WM_NEXTMENU 0x0213)
(setq WM_SIZING 0x0214)
(setq WM_CAPTURECHANGED 0x0215)
(setq WM_MOVING 0x0216)
(setq WM_POWERBROADCAST 0x0218)
(setq WM_DEVICECHANGE 0x0219)
(setq WM_MDICREATE 0x0220)
(setq WM_MDIDESTROY 0x0221)
(setq WM_MDIACTIVATE 0x0222)
(setq WM_MDIRESTORE 0x0223)
(setq WM_MDINEXT 0x0224)
(setq WM_MDIMAXIMIZE 0x0225)
(setq WM_MDITILE 0x0226)
(setq WM_MDICASCADE 0x0227)
(setq WM_MDIICONARRANGE 0x0228)
(setq WM_MDIGETACTIVE 0x0229)
(setq WM_MDISETMENU 0x0230)
(setq WM_ENTERSIZEMOVE 0x0231)
(setq WM_EXITSIZEMOVE 0x0232)
(setq WM_DROPFILES 0x0233)
(setq WM_MDIREFRESHMENU 0x0234)
(setq WM_IME_SETCONTEXT 0x0281)
(setq WM_IME_NOTIFY 0x0282)
(setq WM_IME_CONTROL 0x0283)
(setq WM_IME_COMPOSITIONFULL 0x0284)
(setq WM_IME_SELECT 0x0285)
(setq WM_IME_CHAR 0x0286)
(setq WM_IME_REQUEST 0x0288)
(setq WM_IME_KEYDOWN 0x0290)
(setq WM_IME_KEYUP 0x0291)
(setq WM_MOUSEHOVER 0x02A1)
(setq WM_MOUSELEAVE 0x02A3)
(setq WM_CUT 0x0300)
(setq WM_COPY 0x0301)
(setq WM_PASTE 0x0302)
(setq WM_CLEAR 0x0303)
(setq WM_UNDO 0x0304)
(setq WM_RENDERFORMAT 0x0305)
(setq WM_RENDERALLFORMATS 0x0306)
(setq WM_DESTROYCLIPBOARD 0x0307)
(setq WM_DRAWCLIPBOARD 0x0308)
(setq WM_PAINTCLIPBOARD 0x0309)
(setq WM_VSCROLLCLIPBOARD 0x030A)
(setq WM_SIZECLIPBOARD 0x030B)
(setq WM_ASKCBFORMATNAME 0x030C)
(setq WM_CHANGECBCHAIN 0x030D)
(setq WM_HSCROLLCLIPBOARD 0x030E)
(setq WM_QUERYNEWPALETTE 0x030F)
(setq WM_PALETTEISCHANGING 0x0310)
(setq WM_PALETTECHANGED 0x0311)
(setq WM_HOTKEY 0x0312)
(setq WM_PRINT 0x0317)
(setq WM_PRINTCLIENT 0x0318)
(setq WM_HANDHELDFIRST 0x0358)
(setq WM_HANDHELDLAST 0x035F)
(setq WM_AFXFIRST 0x0360)
(setq WM_AFXLAST 0x037F)
;; };

;; value DWORD SystemObjectId {
(setq SystemObjectId DWORD)
(setq OBJID_WINDOW 0x00000000)
(setq OBJID_SYSMENU 0xFFFFFFFF)
(setq OBJID_TITLEBAR 0xFFFFFFFE)
(setq OBJID_MENU 0xFFFFFFFD)
(setq OBJID_CLIENT 0xFFFFFFFC)
(setq OBJID_VSCROLL 0xFFFFFFFB)
(setq OBJID_HSCROLL 0xFFFFFFFA)
(setq OBJID_SIZEGRIP 0xFFFFFFF9)
(setq OBJID_CARET 0xFFFFFFF8)
(setq OBJID_CURSOR 0xFFFFFFF7)
(setq OBJID_ALERT 0xFFFFFFF6)
(setq OBJID_SOUND 0xFFFFFFF5)
(setq OBJID_QUERYCLASSNAMEIDX 0xFFFFFFF4)
(setq OBJID_NATIVEOM 0xFFFFFFF0)
;; };

;; typedef struct tagMSG  { {
(struct 'tagMSG
     ; 
    HWND ; hwnd
    WindowsMessage ; message
    WPARAM ; wParam
    LPARAM ; lParam
    DWORD ; time
    ;; point
    LONG ; x
    LONG ; y
)
(setq MSG tagMSG)
;; } MSG
(setq LPMSG "void*")

;; mask DWORD WindowStyle {
(setq WindowStyle DWORD)
(setq WS_OVERLAPPED 0x00000000)
(setq WS_POPUP 0x80000000)
(setq WS_CHILD 0x40000000)
(setq WS_MINIMIZE 0x20000000)
(setq WS_VISIBLE 0x10000000)
(setq WS_DISABLED 0x08000000)
(setq WS_CLIPSIBLINGS 0x04000000)
(setq WS_CLIPCHILDREN 0x02000000)
(setq WS_MAXIMIZE 0x01000000)
(setq WS_BORDER 0x00800000)
(setq WS_DLGFRAME 0x00400000)
(setq WS_VSCROLL 0x00200000)
(setq WS_HSCROLL 0x00100000)
(setq WS_SYSMENU 0x00080000)
(setq WS_THICKFRAME 0x00040000)
(setq WS_GROUP 0x00020000)
(setq WS_TABSTOP 0x00010000)
(setq WS_ACTIVECAPTION 0x00000001)
(setq WS_MAXIMIZEBOX 0x00010000)
(setq WS_MINIMIZEBOX 0x00020000)
(setq WS_CAPTION 0x00C00000)

(setq WS_OVERLAPPEDWINDOW (| WS_OVERLAPPED WS_CAPTION WS_SYSMENU WS_THICKFRAME WS_MINIMIZEBOX WS_MAXIMIZEBOX))
(setq WS_POPUPWINDOW (| WS_POPUP WS_BORDER WS_SYSMENU))
(setq WS_TILEDWINDOW (| WS_OVERLAPPED WS_CAPTION WS_SYSMENU WS_THICKFRAME WS_MINIMIZEBOX WS_MAXIMIZEBOX))
;; };

;; mask DWORD WindowStyleEx {
(setq WindowStyleEx DWORD)
(setq WS_EX_LEFT 0x00000000)

(setq WS_EX_DLGMODALFRAME 0x00000001)
(setq WS_EX_NOPARENTNOTIFY 0x00000004)
(setq WS_EX_TOPMOST 0x00000008)
(setq WS_EX_ACCEPTFILES 0x00000010)
(setq WS_EX_TRANSPARENT 0x00000020)
(setq WS_EX_MDICHILD 0x00000040)
(setq WS_EX_TOOLWINDOW 0x00000080)
(setq WS_EX_WINDOWEDGE 0x00000100)
(setq WS_EX_CLIENTEDGE 0x00000200)
(setq WS_EX_CONTEXTHELP 0x00000400)

(setq WS_EX_RIGHT 0x00001000)
(setq WS_EX_RTLREADING 0x00002000)
(setq WS_EX_LEFTSCROLLBAR 0x00004000)

(setq WS_EX_CONTROLPARENT 0x00010000)
(setq WS_EX_STATICEDGE 0x00020000)
(setq WS_EX_APPWINDOW 0x00040000)
(setq WS_EX_LAYERED 0x00080000)

(setq WS_EX_NOINHERITLAYOUT 0x00100000)
(setq WS_EX_LAYOUTRTL 0x00400000)
(setq WS_EX_COMPOSITED 0x02000000)
(setq WS_EX_NOACTIVATE 0x08000000)
;; };


(import "USER32.DLL" "CreateWindowExA" HWND
    WindowStyleEx ; dwExStyle,
    LPCSTR ; lpClassName,
    LPCSTR ; lpWindowName,
    WindowStyle ; dwStyle,
    "int" ; X,
    "int" ; Y,
    "int" ; nWidth,
    "int" ; nHeight,
    HWND ; hWndParent,
    ULONG ; hMenu,
    HINSTANCE ; hInstance,
    LPVOID ; lpParam
)

(import "USER32.DLL" "CreateWindowExW" HWND
    WindowStyleEx ; dwExStyle,
    LPCWSTR ; lpClassName,
    LPCWSTR ; lpWindowName,
    WindowStyle ; dwStyle,
    "int" ; X,
    "int" ; Y,
    "int" ; nWidth,
    "int" ; nHeight,
    HWND ; hWndParent,
    ULONG ; hMenu,
    HINSTANCE ; hInstance,
    LPVOID ; lpParam
)

(import "USER32.DLL" "DestroyWindow" FailOnFalse
    HWND ; hWnd
)

(import "USER32.DLL" "CloseWindow" FailOnFalse
    HWND ; hWnd
)

;; mask DWORD ActivateKeyboardLayoutFlags {
(setq ActivateKeyboardLayoutFlags DWORD)
(setq KLF_ACTIVATE 0x00000001)
(setq KLF_SUBSTITUTE_OK 0x00000002)
(setq KLF_REORDER 0x00000008)
(setq KLF_REPLACELANG 0x00000010)
(setq KLF_NOTELLSHELL 0x00000080)
(setq KLF_SETFORPROCESS 0x00000100)
(setq KLF_SHIFTLOCK 0x00010000)
(setq KLF_RESET 0x40000000)
;; };


(import "USER32.DLL" "ActivateKeyboardLayout" HKL
    HKL ; hkl,
    ActivateKeyboardLayoutFlags ; Flags
)
(import "USER32.DLL" "GetKeyboardLayout" HKL
    ThreadId ; idThread
)


(import "USER32.DLL" "GetKeyboardLayoutList" LongFailIfZero
    "int" ; nBuff,
    "void*" ; HKL * lpList
)

(import "USER32.DLL" "GetKeyboardLayoutNameA" FailOnFalse
    LPSTR ; pwszKLID
)
(import "USER32.DLL" "GetKeyboardLayoutNameW" FailOnFalse
    LPWSTR ; pwszKLID
)


(import "USER32.DLL" "GetKBCodePage" UINT
     ; 
)

;; mask DWORD KeyboardLayoutFlags {
(setq KeyboardLayoutFlags DWORD)
(setq KLF_ACTIVATE 0x00000001)
(setq KLF_SUBSTITUTE_OK 0x00000002)
(setq KLF_REORDER 0x00000008)
(setq KLF_REPLACELANG 0x00000010)
(setq KLF_NOTELLSHELL 0x00000080)
(setq KLF_SETFORPROCESS 0x00000100)
(setq KLF_SHIFTLOCK 0x00010000)
(setq KLF_RESET 0x40000000)
;; };

(import "USER32.DLL" "LoadKeyboardLayoutA" HKL
    LPCSTR ; pwszKLID,
    KeyboardLayoutFlags ; Flags
)
(import "USER32.DLL" "LoadKeyboardLayoutW" HKL
    LPCWSTR ; pwszKLID,
    KeyboardLayoutFlags ; Flags
)

(import "USER32.DLL" "UnloadKeyboardLayout" FailOnFalse
    HKL ; hkl
)

(import "USER32.DLL" "SetProcessDefaultLayout" FailOnFalse
    DWORD ; dwDefaultLayout
)
(import "USER32.DLL" "GetProcessDefaultLayout" FailOnFalse
    LPDWORD ; lpdwDefaultLayout
)



(import "USER32.DLL" "AdjustWindowRect" FailOnFalse
    LPRECT ; lpRect,
    WindowStyle ; dwStyle,
    BOOL ; bMenu
)
(import "USER32.DLL" "AdjustWindowRectEx" FailOnFalse
    LPRECT ; lpRect,
    WindowStyle ; dwStyle,
    BOOL ; bMenu,
    WindowStyleEx ; dwExStyle
)

(import "USER32.DLL" "AllowSetForegroundWindow" FailOnFalse
    ProcessId ; dwProcessId
)

(import "USER32.DLL" "GetForegroundWindow" HWND
     ; 
)
(import "USER32.DLL" "SetForegroundWindow" FailOnFalse
    HWND ; hWnd
)

;; value DWORD LockForegroundFlags {
(setq LockForegroundFlags DWORD)
(setq LSFW_LOCK 1)
(setq LSFW_UNLOCK 2)
;; };

(import "USER32.DLL" "LockSetForegroundWindow" FailOnFalse
    LockForegroundFlags ; uLockCode
)

(import "USER32.DLL" "GetActiveWindow" HWND
     ; 
)
(import "USER32.DLL" "SetActiveWindow" HWND
    HWND ; hWnd
)


;; mask DWORD AnimateWindowFlags {
(setq AnimateWindowFlags DWORD)
(setq AW_HOR_POSITIVE 0x00000001)
(setq AW_HOR_NEGATIVE 0x00000002)
(setq AW_VER_POSITIVE 0x00000004)
(setq AW_VER_NEGATIVE 0x00000008)
(setq AW_CENTER 0x00000010)
(setq AW_HIDE 0x00010000)
(setq AW_ACTIVATE 0x00020000)
(setq AW_SLIDE 0x00040000)
(setq AW_BLEND 0x00080000)
;; };

(import "USER32.DLL" "AnimateWindow" FailOnFalse
    HWND ; hWnd,
    DWORD ; dwTime,
    AnimateWindowFlags ; dwFlags
)

(import "USER32.DLL" "AnyPopup" FailOnFalse
     ; 
)



;; mask DWORD MenuFlags {
(setq MenuFlags DWORD)
(setq MF_ENABLED 0x00000000)
(setq MF_GRAYED 0x00000001)
(setq MF_DISABLED 0x00000002)
(setq MF_BITMAP 0x00000004)
(setq MF_CHECKED 0x00000008)
(setq MF_POPUP 0x00000010)
(setq MF_MENUBARBREAK 0x00000020)
(setq MF_MENUBREAK 0x00000040)
(setq MF_CHANGE_HILITE 0x00000080)
(setq MF_OWNERDRAW 0x00000100)
(setq MF_DELETE 0x00000200)
(setq MF_BYPOSITION 0x00000400)
(setq MF_SEPARATOR 0x00000800)
;; };



(import "USER32.DLL" "AppendMenuA" FailOnFalse
    HMENU ; hMenu,
    MenuFlags ; uFlags,
    DWORD ; uIDNewItem,
    LPCSTR ; lpNewItem
)
(import "USER32.DLL" "AppendMenuW" FailOnFalse
    HMENU ; hMenu,
    MenuFlags ; uFlags,
    DWORD ; uIDNewItem,
    LPCWSTR ; lpNewItem
)

(import "USER32.DLL" "LoadMenuA" HMENU
    HINSTANCE ; hInstance,
    LPCSTR ; lpMenuName
)
(import "USER32.DLL" "LoadMenuW" HMENU
    HINSTANCE ; hInstance,
    LPCWSTR ; lpMenuName
)

(import "USER32.DLL" "LoadMenuIndirectA" HMENU
    LPVOID ; lpMenuTemplate
)
(import "USER32.DLL" "LoadMenuIndirectW" HMENU
    LPVOID ; lpMenuTemplate
)


(import "USER32.DLL" "CreateMenu" HMENU
     ; 
)

(import "USER32.DLL" "DestroyMenu" FailOnFalse
    HMENU ; hMenu
)

(import "USER32.DLL" "DeleteMenu" FailOnFalse
    HMENU ; hMenu,
    UINT ; uPosition,
    MenuFlags ; uFlags
)

(import "USER32.DLL" "CheckMenuItem" MenuFlags
    HMENU ; hMenu,
    UINT ; uIDCheckItem,
    MenuFlags ; uCheck
)

(import "USER32.DLL" "CheckMenuRadioItem" FailOnFalse
    HMENU ; hMenu,
    UINT ; idFirst,
    UINT ; idLast,
    UINT ; idCheck,
    MenuFlags ; uFlags
)

(import "USER32.DLL" "CreatePopupMenu" HMENU
     ; 
)

(import "USER32.DLL" "DrawMenuBar" FailOnFalse
    HWND ; hWnd
)

(import "USER32.DLL" "EnableMenuItem" MenuFlags
    HMENU ; hMenu,
    UINT ; uIDEnableItem,
    MenuFlags ; uEnable
)

(import "USER32.DLL" "EndMenu" FailOnFalse
     ; 
)

(import "USER32.DLL" "GetMenu" HMENU
    HWND ; hWnd
)

;; typedef struct tagMENUBARINFO { {
(struct 'tagMENUBARINFO
    DWORD ; cbSize
    ;; rcBar
    LONG ; left
    LONG ; top
    LONG ; right
    LONG ; bottom
    HMENU ; hMenu
    HWND ; hwndMenu
    DWORD ; fFocused
)
(setq MENUBARINFO tagMENUBARINFO)
;; } MENUBARINFO
(setq PMENUBARINFO "void*")
(setq LPMENUBARINFO "void*")

(import "USER32.DLL" "GetMenuBarInfo" FailOnFalse
    HWND ; hwnd,
    SystemObjectId ; idObject,
    LONG ; idItem,
    "void*" ; MENUBARINFO * pmbi
)

(import "USER32.DLL" "GetMenuCheckMarkDimensions" LONG
     ; 
)

(import "USER32.DLL" "GetMenuContextHelpId" DWORD
    HMENU ; hmenu
)

;; mask DWORD GetMenuDefItemFlags {
(setq GetMenuDefItemFlags DWORD)
(setq GMDI_USEDISABLED 0x0001)
(setq GMDI_GOINTOPOPUPS 0x0002)
;; };

(import "USER32.DLL" "GetMenuDefaultItem" LongFailIfNeg1
    HMENU ; hMenu,
    BOOL ; bByPos,
    GetMenuDefItemFlags ; gmdiFlags
)

;; mask DWORD MenuInfoMask {
(setq MenuInfoMask DWORD)
(setq MIM_MAXHEIGHT 0x00000001)
(setq MIM_BACKGROUND 0x00000002)
(setq MIM_HELPID 0x00000004)
(setq MIM_MENUDATA 0x00000008)
(setq MIM_STYLE 0x00000010)
(setq MIM_APPLYTOSUBMENUS 0x80000000)
;; };

;; mask DWORD MenuInfoStyle {
(setq MenuInfoStyle DWORD)
(setq MNS_NOCHECK 0x80000000)
(setq MNS_MODELESS 0x40000000)
(setq MNS_DRAGDROP 0x20000000)
(setq MNS_AUTODISMISS 0x10000000)
(setq MNS_NOTIFYBYPOS 0x08000000)
(setq MNS_CHECKORBMP 0x04000000)
;; };

;; typedef struct tagMENUINFO { {
(struct 'tagMENUINFO
    DWORD ; cbSize
    MenuInfoMask ; fMask
    MenuInfoStyle ; dwStyle
    UINT ; cyMax
    HRSRC ; hbrBack
    DWORD ; dwContextHelpID
    DWORD ; dwMenuData
)
(setq MENUINFO tagMENUINFO)
;; } MENUINFO
(setq LPMENUINFO "void*")

(import "USER32.DLL" "GetMenuInfo" FailOnFalse
    HMENU ; hMenu,
    LPMENUINFO ; lpmi
)

(import "USER32.DLL" "GetMenuItemCount" LongFailIfNeg1
    HMENU ; hMenu
)

(import "USER32.DLL" "GetMenuItemID" LongFailIfNeg1
    HMENU ; hMenu,
    "int" ; nPos
)

;; mask DWORD MenuItemInfoMask {
(setq MenuItemInfoMask DWORD)
(setq MIIM_STATE 0x00000001)
(setq MIIM_ID 0x00000002)
(setq MIIM_SUBMENU 0x00000004)
(setq MIIM_CHECKMARKS 0x00000008)
(setq MIIM_TYPE 0x00000010)
(setq MIIM_DATA 0x00000020)

(setq MIIM_STRING 0x00000040)
(setq MIIM_BITMAP 0x00000080)
(setq MIIM_FTYPE 0x00000100)
;; };

;; mask DWORD MenuItemInfoType {
(setq MenuItemInfoType DWORD)
(setq MFT_STRING 0x00000000)
(setq MFT_BITMAP 0x00000004)
(setq MFT_MENUBARBREAK 0x00000020)
(setq MFT_MENUBREAK 0x00000040)
(setq MFT_OWNERDRAW 0x00000100)
(setq MFT_RADIOCHECK 0x00000200)
(setq MFT_SEPARATOR 0x00000800)
(setq MFT_RIGHTORDER 0x00002000)
(setq MFT_RIGHTJUSTIFY 0x00004000)
;; };

;; mask DWORD MenuItemInfoState {
(setq MenuItemInfoState DWORD)
(setq MFS_CHECKED 0x00000008)
(setq MFS_DEFAULT 0x00001000)
(setq MFS_DISABLED1 0x00000001)
(setq MFS_DISABLED2 0x00000002)
(setq MFS_HILITE 0x00000080)
;; };

;; typedef struct tagMENUITEMINFOA { {
(struct 'tagMENUITEMINFOA
    UINT ; cbSize
    MenuItemInfoMask ; fMask
    MenuItemInfoType ; fType
    MenuItemInfoState ; fState
    UINT ; wID
    HMENU ; hSubMenu
    HRSRC ; hbmpChecked
    HRSRC ; hbmpUnchecked
    DWORD ; dwItemData
    LPSTR ; dwTypeData
    UINT ; cch
    HRSRC ; hbmpItem
)
(setq MENUITEMINFOA tagMENUITEMINFOA)
;; } MENUITEMINFOA
(setq LPMENUITEMINFOA "void*")

;; typedef struct tagMENUITEMINFOW { {
(struct 'tagMENUITEMINFOW
    UINT ; cbSize
    MenuItemInfoMask ; fMask
    MenuItemInfoType ; fType
    MenuItemInfoState ; fState
    UINT ; wID
    HMENU ; hSubMenu
    HRSRC ; hbmpChecked
    HRSRC ; hbmpUnchecked
    DWORD ; dwItemData
    LPWSTR ; dwTypeData
    UINT ; cch
    HRSRC ; hbmpItem
)
(setq MENUITEMINFOW tagMENUITEMINFOW)
;; } MENUITEMINFOW
(setq LPMENUITEMINFOW "void*")


(import "USER32.DLL" "GetMenuItemInfoA" FailOnFalse
    HMENU ; hMenu,
    UINT ; uItem,
    BOOL ; fByPosition,
    LPMENUITEMINFOA ; lpmii
)

(import "USER32.DLL" "GetMenuItemInfoW" FailOnFalse
    HMENU ; hMenu,
    UINT ; uItem,
    BOOL ; fByPosition,
    LPMENUITEMINFOW ; lpmii
)

(import "USER32.DLL" "GetMenuItemRect" FailOnFalse
    HWND ; hWnd,
    HMENU ; hMenu,
    UINT ; uItem,
    LPRECT ; lprcItem
)

(import "USER32.DLL" "GetMenuState" MenuFlags
    HMENU ; hMenu,
    UINT ; uId,
    MenuFlags ; uFlags
)

(import "USER32.DLL" "GetMenuStringA" UintFailIfZero
    HMENU ; hMenu,
    UINT ; uIDItem,
    LPSTR ; lpString,
    "int" ; nMaxCount,
    MenuFlags ; uFlag
)

(import "USER32.DLL" "GetMenuStringW" UintFailIfZero
    HMENU ; hMenu,
    UINT ; uIDItem,
    LPWSTR ; lpString,
    "int" ; nMaxCount,
    MenuFlags ; uFlag
)

(import "USER32.DLL" "GetSubMenu" HMENU
    HMENU ; hMenu,
    "int" ; nPos
)

(import "USER32.DLL" "GetSystemMenu" HMENU
    HWND ; hWnd,
    BOOL ; bRevert
)

(import "USER32.DLL" "HiliteMenuItem" FailOnFalse
    HWND ; hWnd,
    HMENU ; hMenu,
    UINT ; uIDHiliteItem,
    MenuFlags ; uHilite
)

(import "USER32.DLL" "InsertMenuA" FailOnFalse
    HMENU ; hMenu,
    UINT ; uPosition,
    MenuFlags ; uFlags,
    DWORD ; uIDNewItem,
    DWORD ; lpNewItem
)

(import "USER32.DLL" "InsertMenuW" FailOnFalse
    HMENU ; hMenu,
    UINT ; uPosition,
    MenuFlags ; uFlags,
    DWORD ; uIDNewItem,
    DWORD ; lpNewItem
)

(import "USER32.DLL" "InsertMenuItemA" FailOnFalse
    HMENU ; hMenu,
    UINT ; uItem,
    BOOL ; bByPosition,
    LPMENUITEMINFOA ; lpmii
)

(import "USER32.DLL" "InsertMenuItemW" FailOnFalse
    HMENU ; hMenu,
    UINT ; uItem,
    BOOL ; bByPosition,
    LPMENUITEMINFOW ; lpmii
)


(import "USER32.DLL" "MenuItemFromPoint" LongFailIfNeg1
    HWND ; hWnd,
    HMENU ; hMenu,
    "int" ; x,
    "int" ; y
)

(import "USER32.DLL" "ModifyMenuA" FailOnFalse
    HMENU ; hMenu,
    UINT ; uPosition,
    MenuFlags ; uFlags,
    DWORD ; uIDNewItem,
    DWORD ; lpNewItem
)

(import "USER32.DLL" "ModifyMenuW" FailOnFalse
    HMENU ; hMenu,
    UINT ; uPosition,
    MenuFlags ; uFlags,
    DWORD ; uIDNewItem,
    DWORD ; lpNewItem
)


(import "USER32.DLL" "RemoveMenu" FailOnFalse
    HMENU ; hMenu,
    UINT ; uPosition,
    MenuFlags ; uFlags
)

(import "USER32.DLL" "SetMenu" FailOnFalse
    HWND ; hWnd,
    HMENU ; hMenu
)

(import "USER32.DLL" "SetMenuContextHelpId" FailOnFalse
    HMENU ; hmenu,
    DWORD ; dwContextHelpId
)

(import "USER32.DLL" "SetMenuDefaultItem" FailOnFalse
    HMENU ; hMenu,
    UINT ; uItem,
    BOOL ; fByPos
)

(import "USER32.DLL" "SetMenuInfo" FailOnFalse
    HMENU ; hMenu,
    LPMENUINFO ; lpmi
)

(import "USER32.DLL" "SetMenuItemBitmaps" FailOnFalse
    HMENU ; hMenu,
    UINT ; uPosition,
    MenuFlags ; uFlags,
    HRSRC ; hBitmapUnchecked,
    HRSRC ; hBitmapChecked
)

(import "USER32.DLL" "SetMenuItemInfoA" FailOnFalse
    HMENU ; hMenu,
    UINT ; uItem,
    BOOL ; fByPosition,
    LPMENUITEMINFOA ; lpmii
)

(import "USER32.DLL" "SetMenuItemInfoW" FailOnFalse
    HMENU ; hMenu,
    UINT ; uItem,
    BOOL ; fByPosition,
    LPMENUITEMINFOW ; lpmii
)

;; mask DWORD TrackPopupMenuFlags {
(setq TrackPopupMenuFlags DWORD)
(setq TPM_LEFTTOPALIGN 0x0000)
(setq TPM_RECURSE 0x0001)
(setq TPM_RIGHTBUTTON 0x0002)
(setq TPM_CENTERALIGN 0x0004)
(setq TPM_RIGHTALIGN 0x0008)
(setq TPM_VCENTERALIGN 0x0010)
(setq TPM_BOTTOMALIGN 0x0020)
(setq TPM_VERTICAL 0x0040)
(setq TPM_NONOTIFY 0x0080)
(setq TPM_RETURNCMD 0x0100)
(setq TPM_HORPOSANIMATION 0x0400)
(setq TPM_HORNEGANIMATION 0x0800)
(setq TPM_VERPOSANIMATION 0x1000)
(setq TPM_VERNEGANIMATION 0x2000)
(setq TPM_NOANIMATION 0x4000)
;; };


(import "USER32.DLL" "TrackPopupMenu" LongFailIfZero
    HMENU ; hMenu,
    TrackPopupMenuFlags ; uFlags,
    "int" ; x,
    "int" ; y,
    "int" ; nReserved,
    HWND ; hWnd,
    LPRECT ; lprect
)

;; typedef struct tagTPMPARAMS { {
(struct 'tagTPMPARAMS
    UINT ; cbSize
    ;; rcExclude
    LONG ; left
    LONG ; top
    LONG ; right
    LONG ; bottom
)
(setq TPMPARAMS tagTPMPARAMS)
;; } TPMPARAMS
(setq LPTPMPARAMS "void*")

(import "USER32.DLL" "TrackPopupMenuEx" LongFailIfZero
    HMENU ; hMenu,
    TrackPopupMenuFlags ; uFlags,
    "int" ; x,
    "int" ; y,
    HWND ; hWnd,
    LPTPMPARAMS ; lpParams
)


(import "USER32.DLL" "ArrangeIconicWindows" FailOnFalse
    HWND ; hwnd
)

(import "USER32.DLL" "AttachThreadInput" FailOnFalse
    ThreadId ; idAttach,
    ThreadId ; idAttachTo,
    BOOL ; fAttach
)

;; value DWORD HDWP {
(setq HDWP DWORD)
(setq NULL 0)
;; };

alias HDWP;

;; mask DWORD SetWindowPosFlags {
(setq SetWindowPosFlags DWORD)
(setq SWP_NOSIZE 0x0001)
(setq SWP_NOMOVE 0x0002)
(setq SWP_NOZORDER 0x0004)
(setq SWP_NOREDRAW 0x0008)
(setq SWP_NOACTIVATE 0x0010)
(setq SWP_FRAMECHANGED 0x0020)
(setq SWP_SHOWWINDOW 0x0040)
(setq SWP_HIDEWINDOW 0x0080)
(setq SWP_NOCOPYBITS 0x0100)
(setq SWP_NOOWNERZORDER 0x0200)
(setq SWP_NOSENDCHANGING 0x0400)
(setq SWP_DEFERERASE 0x2000)
(setq SWP_ASYNCWINDOWPOS 0x4000)
;; };

(import "USER32.DLL" "SetWindowPos" FailOnFalse
    HWND ; hWnd,
    HWND ; hWndInsertAfter,
    "int" ; x,
    "int" ; y,
    "int" ; cx,
    "int" ; cy,
    SetWindowPosFlags ; uFlags
)

(import "USER32.DLL" "ShowWindow" BOOL
    HWND ; hWnd,
    ShowWindowCommand ; nCmdShow
)

(import "USER32.DLL" "ShowWindowAsync" BOOL
    HWND ; hWnd,
    ShowWindowCommand ; nCmdShow
)

;; typedef struct tagWINDOWPLACEMENT  { {
(struct 'tagWINDOWPLACEMENT
    UINT ; length
    UINT ; flags
    UINT ; showCmd
    ;; ptMinPosition
    LONG ; x
    LONG ; y
    ;; ptMaxPosition
    LONG ; x
    LONG ; y
    ;; rcNormalPosition
    LONG ; left
    LONG ; top
    LONG ; right
    LONG ; bottom
)
(setq WINDOWPLACEMENT tagWINDOWPLACEMENT)
;; } WINDOWPLACEMENT
(setq LPWINDOWPLACEMENT "void*")


(import "USER32.DLL" "SetWindowPlacement" FailOnFalse
    HWND ; hWnd,
    LPWINDOWPLACEMENT ; lpwndpl
)

(import "USER32.DLL" "GetWindowPlacement" FailOnFalse
    HWND ; hWnd,
    LPWINDOWPLACEMENT ; lpwndpl
)


(import "USER32.DLL" "BeginDeferWindowPos" HDWP
    "int" ; nNumWindows
)
(import "USER32.DLL" "DeferWindowPos" HDWP
    HDWP ; hWinPosInfo,
    HWND ; hWnd,
    HWND ; hWndInsertAfter,
    "int" ; x,
    "int" ; y,
    "int" ; cx,
    "int" ; cy,
    SetWindowPosFlags ; uFlags
)

(import "USER32.DLL" "EndDeferWindowPos" FailOnFalse
    HDWP ; hWinPosInfo
)

(import "USER32.DLL" "MoveWindow" FailOnFalse
    HWND ; hWnd,
    "int" ; X,
    "int" ; Y,
    "int" ; nWidth,
    "int" ; nHeight,
    BOOL ; bRepaint
)

;; typedef struct tagPAINTSTRUCT  { {
(struct 'tagPAINTSTRUCT
    HDC ; hdc
    BOOL ; fErase
    ;; rcPaint
    LONG ; left
    LONG ; top
    LONG ; right
    LONG ; bottom
    BOOL ; fRestore
    BOOL ; fIncUpdate
    BYTE ; rgbReserved
)
(setq PAINTSTRUCT tagPAINTSTRUCT)
;; } PAINTSTRUCT
(setq PPAINTSTRUCT "void*")
(setq LPPAINTSTRUCT "void*")


(import "USER32.DLL" "BeginPaint" HDC
    HWND ; hWnd,
    LPPAINTSTRUCT ; lpPaint
)
(import "USER32.DLL" "EndPaint" FailOnFalse
    HWND ; hWnd,
    LPPAINTSTRUCT ; lpPaint
)

;; mask DWORD RedrawWindowFlags {
(setq RedrawWindowFlags DWORD)
(setq RDW_INVALIDATE 0x0001)
(setq RDW_INTERNALPAINT 0x0002)
(setq RDW_ERASE 0x0004)

(setq RDW_VALIDATE 0x0008)
(setq RDW_NOINTERNALPAINT 0x0010)
(setq RDW_NOERASE 0x0020)

(setq RDW_NOCHILDREN 0x0040)
(setq RDW_ALLCHILDREN 0x0080)

(setq RDW_UPDATENOW 0x0100)
(setq RDW_ERASENOW 0x0200)

(setq RDW_FRAME 0x0400)
(setq RDW_NOFRAME 0x0800)
;; };

(import "USER32.DLL" "RedrawWindow" FailOnFalse
    HWND ; hWnd,
    LPRECT ; lprcUpdate,
    HRGN ; hrgnUpdate,
    RedrawWindowFlags ; flags
)

(import "USER32.DLL" "PaintDesktop" FailOnFalse
    HDC ; hdc
)

(import "USER32.DLL" "GetDesktopWindow" HWND
     ; 
)

(import "USER32.DLL" "GetDC" HDC
    HWND ; hWnd
)

;; mask DWORD GetDCExFlags {
(setq GetDCExFlags DWORD)
(setq DCX_WINDOW 0x00000001)
(setq DCX_CACHE 0x00000002)
(setq DCX_NORESETATTRS 0x00000004)
(setq DCX_CLIPCHILDREN 0x00000008)
(setq DCX_CLIPSIBLINGS 0x00000010)
(setq DCX_PARENTCLIP 0x00000020)
(setq DCX_EXCLUDERGN 0x00000040)
(setq DCX_INTERSECTRGN 0x00000080)
(setq DCX_EXCLUDEUPDATE 0x00000100)
(setq DCX_INTERSECTUPDATE 0x00000200)
(setq DCX_LOCKWINDOWUPDATE 0x00000400)
(setq DCX_VALIDATE 0x00200000)
;; };

(import "USER32.DLL" "GetDCEx" HDC
    HWND ; hWnd,
    HRGN ; hrgnClip,
    GetDCExFlags ; flags
)

(import "USER32.DLL" "GetWindowDC" HDC
    HWND ; hWnd
)

(import "USER32.DLL" "ReleaseDC" FailOnFalse
    HWND ; hWnd,
    HDC ; hDC
)

(import "USER32.DLL" "ScrollDC" FailOnFalse
    HDC ; hDC,
    "int" ; dx,
    "int" ; dy,
    LPRECT ; lprcScroll,
    LPRECT ; lprcClip,
    HRGN ; hrgnUpdate,
    LPRECT ; lprcUpdate
)

(import "USER32.DLL" "UpdateWindow" FailOnFalse
    HWND ; hWnd
)

(import "USER32.DLL" "InvalidateRect" FailOnFalse
    HWND ; hWnd,
    LPRECT ; lpRect,
    BOOL ; bErase
)
(import "USER32.DLL" "InvalidateRgn" FailOnFalse
    HWND ; hWnd,
    HRGN ; hRgn,
    BOOL ; bErase
)

(import "USER32.DLL" "ValidateRect" FailOnFalse
    HWND ; hWnd,
    LPRECT ; lpRect
)
(import "USER32.DLL" "ValidateRgn" FailOnFalse
    HWND ; hWnd,
    HRGN ; hRgn
)

(import "USER32.DLL" "ExcludeUpdateRgn" HRGN
    HDC ; hDC,
    HWND ; hWnd
)

(import "USER32.DLL" "GetUpdateRect" FailOnFalse
    HWND ; hWnd,
    LPRECT ; lpRect,
    BOOL ; bErase
)

(import "USER32.DLL" "GetUpdateRgn" HRGN
    HWND ; hWnd,
    HRGN ; hRgn,
    BOOL ; bErase
)


(import "USER32.DLL" "WindowFromDC" HWND
    HDC ; hDC
)

(import "USER32.DLL" "WindowFromPoint" HWND
    "long" ; x,
    "long" ; y
)

(import "USER32.DLL" "ChildWindowFromPoint" HWND
    HWND ; hWndParent,
    "int" ; x,
    "int" ; y
)

;; mask DWORD ChildWindowFromPointExFlags {
(setq ChildWindowFromPointExFlags DWORD)
(setq CWP_ALL 0x0000)
(setq CWP_SKIPINVISIBLE 0x0001)
(setq CWP_SKIPDISABLED 0x0002)
(setq CWP_SKIPTRANSPARENT 0x0004)
;; };

(import "USER32.DLL" "ChildWindowFromPointEx" HWND
    HWND ; hwndParent,
    "int" ; x,
    "int" ; y,
    ChildWindowFromPointExFlags ; dwFlags
)

(import "USER32.DLL" "RealChildWindowFromPoint" HWND
    HWND ; hwndParent,
    "int" ; x,
    "int" ; y
)


(import "USER32.DLL" "ClientToScreen" FailOnFalse
    HWND ; hWnd,
    LPPOINT ; lpPoint
)
(import "USER32.DLL" "ScreenToClient" FailOnFalse
    HWND ; hWnd,
    LPPOINT ; lpPoint
)


(import "USER32.DLL" "ScrollWindow" FailOnFalse
    HWND ; hWnd,
    "int" ; XAmount,
    "int" ; YAmount,
    LPRECT ; lpRect,
    LPRECT ; lpClipRect
)

;; mask DWORD ScrollWindowExFlags {
(setq ScrollWindowExFlags DWORD)
(setq SW_SCROLLCHILDREN 0x0001)
(setq SW_INVALIDATE 0x0002)
(setq SW_ERASE 0x0004)
(setq SW_SMOOTHSCROLL 0x0010)
;; };

(import "USER32.DLL" "ScrollWindowEx" HRGN
    HWND ; hWnd,
    "int" ; dx,
    "int" ; dy,
    LPRECT ; lprcScroll,
    LPRECT ; lprcClip,
    HRGN ; hrgnUpdate,
    LPRECT ; lprcUpdate,
    ScrollWindowExFlags ; flags
)



(import "USER32.DLL" "SendMessageA" LRESULT
    HWND ; hWnd,
    WindowsMessage ; Msg,
    WPARAM ; wParam,
    LPARAM ; lParam
)
(import "USER32.DLL" "SendMessageW" LRESULT
    HWND ; hWnd,
    WindowsMessage ; Msg,
    WPARAM ; wParam,
    LPARAM ; lParam
)

(import "USER32.DLL" "SendDlgItemMessageA" LRESULT
    HWND ; hDlg,
    "int" ; nIDDlgItem,
    WindowsMessage ; Msg,
    WPARAM ; wParam,
    LPARAM ; lParam
)
(import "USER32.DLL" "SendDlgItemMessageW" LRESULT
    HWND ; hDlg,
    "int" ; nIDDlgItem,
    WindowsMessage ; Msg,
    WPARAM ; wParam,
    LPARAM ; lParam
)

(import "USER32.DLL" "PostMessageA" FailOnFalse
    HWND ; hWnd,
    WindowsMessage ; Msg,
    WPARAM ; wParam,
    LPARAM ; lParam
)

(import "USER32.DLL" "PostMessageW" FailOnFalse
    HWND ; hWnd,
    WindowsMessage ; Msg,
    WPARAM ; wParam,
    LPARAM ; lParam
)

(import "USER32.DLL" "PostQuitMessage" VOID
    "int" ; nExitCode
)

(import "USER32.DLL" "PostThreadMessageA" FailOnFalse
    ThreadId ; idThread,
    WindowsMessage ; Msg,
    WPARAM ; wParam,
    LPARAM ; lParam
)

(import "USER32.DLL" "PostThreadMessageW" FailOnFalse
    ThreadId ; idThread,
    WindowsMessage ; Msg,
    WPARAM ; wParam,
    LPARAM ; lParam
)

(import "USER32.DLL" "TranslateMessage" BOOL
    "void*" ; MSG * lpMsg
)


(setq SENDASYNCPROC DWORD)

alias SENDASYNCPROC;

(import "USER32.DLL" "SendMessageCallbackA" FailOnFalse
    HWND ; hWnd,
    WindowsMessage ; Msg,
    WPARAM ; wParam,
    LPARAM ; lParam,
    SENDASYNCPROC ; lpResultCallBack,
    ULONG_PTR ; dwData
)

(import "USER32.DLL" "SendMessageCallbackW" FailOnFalse
    HWND ; hWnd,
    WindowsMessage ; Msg,
    WPARAM ; wParam,
    LPARAM ; lParam,
    SENDASYNCPROC ; lpResultCallBack,
    ULONG_PTR ; dwData
)

;; mask DWORD SendMessageTimeoutFlags {
(setq SendMessageTimeoutFlags DWORD)
(setq SMTO_NORMAL 0x0000)
(setq SMTO_BLOCK 0x0001)
(setq SMTO_ABORTIFHUNG 0x0002)
(setq SMTO_NOTIMEOUTIFNOTHUNG 0x0008)
;; };

(import "USER32.DLL" "SendMessageTimeoutA" LRESULT
    HWND ; hWnd,
    WindowsMessage ; Msg,
    WPARAM ; wParam,
    LPARAM ; lParam,
    SendMessageTimeoutFlags ; fuFlags,
    UINT ; uTimeout,
    LPDWORD ; lpdwResult
)

(import "USER32.DLL" "SendMessageTimeoutW" LRESULT
    HWND ; hWnd,
    WindowsMessage ; Msg,
    WPARAM ; wParam,
    LPARAM ; lParam,
    SendMessageTimeoutFlags ; fuFlags,
    UINT ; uTimeout,
    LPDWORD ; lpdwResult
)

(import "USER32.DLL" "SendNotifyMessageA" FailOnFalse
    HWND ; hWnd,
    WindowsMessage ; Msg,
    WPARAM ; wParam,
    LPARAM ; lParam
)

(import "USER32.DLL" "SendNotifyMessageW" FailOnFalse
    HWND ; hWnd,
    WindowsMessage ; Msg,
    WPARAM ; wParam,
    LPARAM ; lParam
)


(import "USER32.DLL" "InSendMessage" BOOL
     ; 
)

;; mask DWORD InSendMessageExFlags {
(setq InSendMessageExFlags DWORD)
(setq ISMEX_NOSEND 0x00000000)
(setq ISMEX_SEND 0x00000001)
(setq ISMEX_NOTIFY 0x00000002)
(setq ISMEX_CALLBACK 0x00000004)
(setq ISMEX_REPLIED 0x00000008)
;; };

(import "USER32.DLL" "InSendMessageEx" InSendMessageExFlags
    LPVOID ; lpReserved
)


;; mask DWORD BroadcastSystemMessageFlags {
(setq BroadcastSystemMessageFlags DWORD)
(setq BSF_QUERY 0x00000001)
(setq BSF_IGNORECURRENTTASK 0x00000002)
(setq BSF_FLUSHDISK 0x00000004)
(setq BSF_NOHANG 0x00000008)
(setq BSF_POSTMESSAGE 0x00000010)
(setq BSF_FORCEIFHUNG 0x00000020)
(setq BSF_NOTIMEOUTIFNOTHUNG 0x00000040)
(setq BSF_ALLOWSFW 0x00000080)
(setq BSF_SENDNOTIFYMESSAGE 0x00000100)
(setq BSF_RETURNHDESK 0x00000200)
(setq BSF_LUID 0x00000400)
;; };

;; mask DWORD BroadcastSystemMessageRecipients {
(setq BroadcastSystemMessageRecipients DWORD)
(setq BSM_ALLCOMPONENTS 0x00000000)
(setq BSM_VXDS 0x00000001)
(setq BSM_NETDRIVER 0x00000002)
(setq BSM_INSTALLABLEDRIVERS 0x00000004)
(setq BSM_APPLICATIONS 0x00000008)
(setq BSM_ALLDESKTOPS 0x00000010)
;; };

(import "USER32.DLL" "BroadcastSystemMessageA" LongFailIfNeg1
    BroadcastSystemMessageFlags ; Flags,
    "void*" ; BroadcastSystemMessageRecipients * lpRecipients,
    WindowsMessage ; Msg,
    WPARAM ; wParam,
    LPARAM ; lParam
)

(import "USER32.DLL" "BroadcastSystemMessageW" LongFailIfNeg1
    BroadcastSystemMessageFlags ; Flags,
    "void*" ; BroadcastSystemMessageRecipients * lpRecipients,
    WindowsMessage ; Msg,
    WPARAM ; wParam,
    LPARAM ; lParam
)

(import "USER32.DLL" "DispatchMessageA" LRESULT
    "void*" ; MSG * lpMsg
)
(import "USER32.DLL" "DispatchMessageW" LRESULT
    "void*" ; MSG * lpMsg
)

(import "USER32.DLL" "GetMessageA" LongFailIfNeg1
    LPMSG ; lpMsg,
    HWND ; hWnd,
    WindowsMessage ; wMsgFilterMin,
    WindowsMessage ; wMsgFilterMax
)

(import "USER32.DLL" "GetMessageW" LongFailIfNeg1
    LPMSG ; lpMsg,
    HWND ; hWnd,
    WindowsMessage ; wMsgFilterMin,
    WindowsMessage ; wMsgFilterMax
)

(import "USER32.DLL" "WaitMessage" FailOnFalse
     ; 
)

(import "USER32.DLL" "ReplyMessage" BOOL
    LRESULT ; lResult
)

;; mask DWORD PeekMessageFlags {
(setq PeekMessageFlags DWORD)
(setq PM_NOREMOVE 0x0000)
(setq PM_REMOVE 0x0001)
(setq PM_NOYIELD 0x0002)
;; };

(import "USER32.DLL" "PeekMessageA" BOOL
    LPMSG ; lpMsg,
    HWND ; hWnd,
    WindowsMessage ; wMsgFilterMin,
    WindowsMessage ; wMsgFilterMax,
    PeekMessageFlags ; wRemoveMsg
)

(import "USER32.DLL" "PeekMessageW" BOOL
    LPMSG ; lpMsg,
    HWND ; hWnd,
    WindowsMessage ; wMsgFilterMin,
    WindowsMessage ; wMsgFilterMax,
    PeekMessageFlags ; wRemoveMsg
)


(import "USER32.DLL" "GetMessageExtraInfo" LPARAM
     ; 
)
(import "USER32.DLL" "GetMessagePos" DWORD
     ; 
)
(import "USER32.DLL" "GetMessageTime" LONG
     ; 
)

(import "USER32.DLL" "DefWindowProcA" LRESULT
    HWND ; hWnd,
    WindowsMessage ; Msg,
    WPARAM ; wParam,
    LPARAM ; lParam
)

(import "USER32.DLL" "DefWindowProcW" LRESULT
    HWND ; hWnd,
    WindowsMessage ; Msg,
    WPARAM ; wParam,
    LPARAM ; lParam
)

(import "USER32.DLL" "DefDlgProcA" LRESULT
    HWND ; hDlg,
    WindowsMessage ; Msg,
    WPARAM ; wParam,
    LPARAM ; lParam
)

(import "USER32.DLL" "DefDlgProcW" LRESULT
    HWND ; hDlg,
    WindowsMessage ; Msg,
    WPARAM ; wParam,
    LPARAM ; lParam
)

(import "USER32.DLL" "DefFrameProcA" LRESULT
    HWND ; hWnd,
    HWND ; hWndMDIClient,
    WindowsMessage ; uMsg,
    WPARAM ; wParam,
    LPARAM ; lParam
)

(import "USER32.DLL" "DefFrameProcW" LRESULT
    HWND ; hWnd,
    HWND ; hWndMDIClient,
    WindowsMessage ; uMsg,
    WPARAM ; wParam,
    LPARAM ; lParam
)


(import "USER32.DLL" "CallWindowProcA" LRESULT
    WNDPROC ; lpPrevWndFunc,
    HWND ; hWnd,
    WindowsMessage ; Msg,
    WPARAM ; wParam,
    LPARAM ; lParam
)
(import "USER32.DLL" "CallWindowProcW" LRESULT
    WNDPROC ; lpPrevWndFunc,
    HWND ; hWnd,
    WindowsMessage ; Msg,
    WPARAM ; wParam,
    LPARAM ; lParam
)



;; value DWORD WindowLongIndex {
(setq WindowLongIndex DWORD)
(setq GWL_WNDPROC -4)
(setq GWL_HINSTANCE -6)
(setq GWL_HWNDPARENT -8)
(setq GWL_STYLE -16)
(setq GWL_EXSTYLE -20)
(setq GWL_USERDATA -21)
(setq GWL_ID -12)
(setq DWL_MSGRESULT 0)
(setq DWL_DLGPROC 4)
(setq DWL_USER 8)
;; };

(import "USER32.DLL" "GetWindowLongA" DwordFailIfZero
    HWND ; hWnd,
    WindowLongIndex ; nIndex
)
(import "USER32.DLL" "GetWindowLongW" DwordFailIfZero
    HWND ; hWnd,
    WindowLongIndex ; nIndex
)

(import "USER32.DLL" "SetWindowLongA" DwordFailIfZero
    HWND ; hWnd,
    WindowLongIndex ; nIndex,
    DWORD ; dwNewLong
)
(import "USER32.DLL" "SetWindowLongW" DwordFailIfZero
    HWND ; hWnd,
    WindowLongIndex ; nIndex,
    DWORD ; dwNewLong
)

(import "USER32.DLL" "GetWindowWord" DwordFailIfZero
    HWND ; hWnd,
    "int" ; nIndex
)
(import "USER32.DLL" "SetWindowWord" DwordFailIfZero
    HWND ; hWnd,
    "int" ; nIndex,
    DWORD ; wNewWord
)


(import "USER32.DLL" "SetWindowTextA" LongFailIfZero
    HWND ; hWnd,
    LPCSTR ; lpString
)
(import "USER32.DLL" "SetWindowTextW" LongFailIfZero
    HWND ; hWnd,
    LPCWSTR ; lpString
)

(import "USER32.DLL" "GetWindowTextA" LongFailIfZero
    HWND ; hWnd,
    LPSTR ; lpString,
    "int" ; nMaxCount
)
(import "USER32.DLL" "GetWindowTextW" LongFailIfZero
    HWND ; hWnd,
    LPWSTR ; lpString,
    "int" ; nMaxCount
)

(import "USER32.DLL" "GetWindowTextLengthA" LongFailIfZero
    HWND ; hWnd
)
(import "USER32.DLL" "GetWindowTextLengthW" LongFailIfZero
    HWND ; hWnd
)

(import "USER32.DLL" "GetDlgItemTextA" LongFailIfZero
    HWND ; hDlg,
    "int" ; nIDDlgItem,
    LPSTR ; lpString,
    "int" ; nMaxCount
)
(import "USER32.DLL" "GetDlgItemTextW" LongFailIfZero
    HWND ; hDlg,
    "int" ; nIDDlgItem,
    LPWSTR ; lpString,
    "int" ; nMaxCount
)

(import "USER32.DLL" "SetDlgItemInt" FailOnFalse
    HWND ; hDlg,
    "int" ; nIDDlgItem,
    UINT ; uValue,
    BOOL ; bSigned
)

(import "USER32.DLL" "SetDlgItemTextA" FailOnFalse
    HWND ; hDlg,
    "int" ; nIDDlgItem,
    LPCSTR ; lpString
)
(import "USER32.DLL" "SetDlgItemTextW" FailOnFalse
    HWND ; hDlg,
    "int" ; nIDDlgItem,
    LPCWSTR ; lpString
)

(import "USER32.DLL" "GetNextDlgGroupItem" HWND
    HWND ; hDlg,
    HWND ; hCtl,
    BOOL ; bPrevious
)
(import "USER32.DLL" "GetNextDlgTabItem" HWND
    HWND ; hDlg,
    HWND ; hCtl,
    BOOL ; bPrevious
)

;; mask DWORD DlgDirListType {
(setq DlgDirListType DWORD)
(setq DDL_READWRITE 0x0000)
(setq DDL_READONLY 0x0001)
(setq DDL_HIDDEN 0x0002)
(setq DDL_SYSTEM 0x0004)
(setq DDL_DIRECTORY 0x0010)
(setq DDL_ARCHIVE 0x0020)

(setq DDL_POSTMSGS 0x2000)
(setq DDL_DRIVES 0x4000)
(setq DDL_EXCLUSIVE 0x8000)
;; };

(import "USER32.DLL" "DlgDirListA" LongFailIfZero
    HWND ; hDlg,
    LPSTR ; lpPathSpec,
    "int" ; nIDListBox,
    "int" ; nIDStaticPath,
    DlgDirListType ; uFileType
)

(import "USER32.DLL" "DlgDirListW" LongFailIfZero
    HWND ; hDlg,
    LPWSTR ; lpPathSpec,
    "int" ; nIDListBox,
    "int" ; nIDStaticPath,
    DlgDirListType ; uFileType
)

(import "USER32.DLL" "DlgDirSelectExA" BOOL
    HWND ; hDlg,
    LPSTR ; lpString,
    "int" ; nCount,
    "int" ; nIDListBox
)

(import "USER32.DLL" "DlgDirSelectExW" BOOL
    HWND ; hDlg,
    LPWSTR ; lpString,
    "int" ; nCount,
    "int" ; nIDListBox
)

(import "USER32.DLL" "DlgDirListComboBoxA" LongFailIfZero
    HWND ; hDlg,
    LPSTR ; lpPathSpec,
    "int" ; nIDComboBox,
    "int" ; nIDStaticPath,
    DlgDirListType ; uFiletype
)

(import "USER32.DLL" "DlgDirListComboBoxW" LongFailIfZero
    HWND ; hDlg,
    LPWSTR ; lpPathSpec,
    "int" ; nIDComboBox,
    "int" ; nIDStaticPath,
    DlgDirListType ; uFiletype
)

(import "USER32.DLL" "DlgDirSelectComboBoxExA" BOOL
    HWND ; hDlg,
    LPSTR ; lpString,
    "int" ; nCount,
    "int" ; nIDComboBox
)

(import "USER32.DLL" "DlgDirSelectComboBoxExW" BOOL
    HWND ; hDlg,
    LPWSTR ; lpString,
    "int" ; nCount,
    "int" ; nIDComboBox
)


;; value DWORD ChangeDisplaySettingsRet {
(setq ChangeDisplaySettingsRet DWORD)
(setq DISP_CHANGE_SUCCESSFUL 0)
(setq DISP_CHANGE_RESTART 1)
(setq DISP_CHANGE_FAILED -1)
(setq DISP_CHANGE_BADMODE -2)
(setq DISP_CHANGE_NOTUPDATED -3)
(setq DISP_CHANGE_BADFLAGS -4)
(setq DISP_CHANGE_BADPARAM -5)
;; };


;; mask DWORD ChangeDisplaySettingsFlags {
(setq ChangeDisplaySettingsFlags DWORD)
(setq CDS_UPDATEREGISTRY 0x00000001)
(setq CDS_TEST 0x00000002)
(setq CDS_FULLSCREEN 0x00000004)
(setq CDS_GLOBAL 0x00000008)
(setq CDS_SET_PRIMARY 0x00000010)
(setq CDS_VIDEOPARAMETERS 0x00000020)
(setq CDS_RESET 0x40000000)
(setq CDS_NORESET 0x10000000)
;; };

(import "USER32.DLL" "ChangeDisplaySettingsA" ChangeDisplaySettingsRet
    LPDEVMODEA ; lpDevMode,
    ChangeDisplaySettingsFlags ; dwFlags
)
(import "USER32.DLL" "ChangeDisplaySettingsW" ChangeDisplaySettingsRet
    LPDEVMODEW ; lpDevMode,
    ChangeDisplaySettingsFlags ; dwFlags
)

(import "USER32.DLL" "ChangeDisplaySettingsExA" ChangeDisplaySettingsRet
    LPCSTR ; lpszDeviceName,
    LPDEVMODEA ; lpDevMode,
    HWND ; hwnd,
    ChangeDisplaySettingsFlags ; dwflags,
    LPVOID ; lParam
)

(import "USER32.DLL" "ChangeDisplaySettingsExW" ChangeDisplaySettingsRet
    LPCWSTR ; lpszDeviceName,
    LPDEVMODEW ; lpDevMode,
    HWND ; hwnd,
    ChangeDisplaySettingsFlags ; dwflags,
    LPVOID ; lParam
)

;; typedef struct _DISPLAY_DEVICEA  { {
;; (struct '_DISPLAY_DEVICEA
;;     DWORD ; cb
;;     "char[32]" ; DeviceName
;;     "char[128]" ; DeviceString
;;     DWORD ; StateFlags
;;     "char[128]" ; DeviceID
;;     "char[128]" ; DeviceKey
;; )
;; (setq DISPLAY_DEVICEA _DISPLAY_DEVICEA)
;; } DISPLAY_DEVICEA
(setq PDISPLAY_DEVICEA "void*")
(setq LPDISPLAY_DEVICEA "void*")

;; typedef struct _DISPLAY_DEVICEW  { {
(struct '_DISPLAY_DEVICEW
    DWORD ; cb
    WCHAR ; DeviceName
    WCHAR ; DeviceString
    DWORD ; StateFlags
    WCHAR ; DeviceID
    WCHAR ; DeviceKey
)
(setq DISPLAY_DEVICEW _DISPLAY_DEVICEW)
;; } DISPLAY_DEVICEW
(setq PDISPLAY_DEVICEW "void*")
(setq LPDISPLAY_DEVICEW "void*")


(import "USER32.DLL" "EnumDisplayDevicesA" LongFailIfZero
    LPCSTR ; lpDevice,
    DWORD ; iDevNum,
    PDISPLAY_DEVICEA ; lpDisplayDevice,
    DWORD ; dwFlags
)

(import "USER32.DLL" "EnumDisplayDevicesW" LongFailIfZero
    LPCWSTR ; lpDevice,
    DWORD ; iDevNum,
    PDISPLAY_DEVICEW ; lpDisplayDevice,
    DWORD ; dwFlags
)

(setq MONITORENUMPROC LPVOID)

(import "USER32.DLL" "EnumDisplayMonitors" FailOnFalse
    HDC ; hdc,
    LPRECT ; lprcClip,
    MONITORENUMPROC ; lpfnEnum,
    LPARAM ; dwData
)

;; typedef struct tagMONITORINFO { {
(struct 'tagMONITORINFO
    DWORD ; cbSize
    ;; rcMonitor
    LONG ; left
    LONG ; top
    LONG ; right
    LONG ; bottom
    ;; rcWork
    LONG ; left
    LONG ; top
    LONG ; right
    LONG ; bottom
    DWORD ; dwFlags
)
(setq MONITORINFO tagMONITORINFO)
;; } MONITORINFO
(setq LPMONITORINFO "void*")

(import "USER32.DLL" "GetMonitorInfoA" FailOnFalse
    HMONITOR ; hMonitor,
    LPMONITORINFO ; lpmi
)
(import "USER32.DLL" "GetMonitorInfoW" FailOnFalse
    HMONITOR ; hMonitor,
    LPMONITORINFO ; lpmi
)

;; mask DWORD MonitorFlags {
(setq MonitorFlags DWORD)
(setq MONITOR_DEFAULTTONULL 0x00000000)
(setq MONITOR_DEFAULTTOPRIMARY 0x00000001)
(setq MONITOR_DEFAULTTONEAREST 0x00000002)
;; };

(import "USER32.DLL" "MonitorFromPoint" HMONITOR
    "int" ; x,
    "int" ; y,
    MonitorFlags ; dwFlags
)
(import "USER32.DLL" "MonitorFromRect" HMONITOR
    LPRECT ; lprc,
    MonitorFlags ; dwFlags
)
(import "USER32.DLL" "MonitorFromWindow" HMONITOR
    HWND ; hwnd,
    MonitorFlags ; dwFlags
)


;; value DWORD EnumDisplaySettingsIndex {
(setq EnumDisplaySettingsIndex DWORD)
(setq ENUM_CURRENT_SETTINGS -1)
(setq ENUM_REGISTRY_SETTINGS -2)
;; };

(import "USER32.DLL" "EnumDisplaySettingsA" FailOnFalse
    LPCSTR ; lpszDeviceName,
    EnumDisplaySettingsIndex ; iModeNum,
    LPDEVMODEA ; lpDevMode
)

(import "USER32.DLL" "EnumDisplaySettingsW" FailOnFalse
    LPCWSTR ; lpszDeviceName,
    EnumDisplaySettingsIndex ; iModeNum,
    LPDEVMODEW ; lpDevMode
)

(import "USER32.DLL" "EnumDisplaySettingsExA" FailOnFalse
    LPCSTR ; lpszDeviceName,
    EnumDisplaySettingsIndex ; iModeNum,
    LPDEVMODEA ; lpDevMode,
    DWORD ; dwFlags
)

(import "USER32.DLL" "EnumDisplaySettingsExW" FailOnFalse
    LPCWSTR ; lpszDeviceName,
    EnumDisplaySettingsIndex ; iModeNum,
    LPDEVMODEW ; lpDevMode,
    DWORD ; dwFlags
)



(import "USER32.DLL" "SetFocus" HWND
    HWND ; hWnd
)
(import "USER32.DLL" "GetFocus" HWND
     ; 
)

(import "USER32.DLL" "DrawFocusRect" FailOnFalse
    HDC ; hDC,
    "void*" ; LPRECT * lprc
)

;; mask DWORD GetGUIThreadInfoFlags {
(setq GetGUIThreadInfoFlags DWORD)
(setq GUI_CARETBLINKING 0x00000001)
(setq GUI_INMOVESIZE 0x00000002)
(setq GUI_INMENUMODE 0x00000004)
(setq GUI_SYSTEMMENUMODE 0x00000008)
(setq GUI_POPUPMENUMODE 0x00000010)
;; };

;; typedef struct tagGUITHREADINFO { {
(struct 'tagGUITHREADINFO
    DWORD ; cbSize
    GetGUIThreadInfoFlags ; flags
    HWND ; hwndActive
    HWND ; hwndFocus
    HWND ; hwndCapture
    HWND ; hwndMenuOwner
    HWND ; hwndMoveSize
    HWND ; hwndCaret
    ;; rcCaret
    LONG ; left
    LONG ; top
    LONG ; right
    LONG ; bottom
)
(setq GUITHREADINFO tagGUITHREADINFO)
;; } GUITHREADINFO
(setq PGUITHREADINFO "void*")
(setq LPGUITHREADINFO "void*")

(import "USER32.DLL" "GetGUIThreadInfo" FailOnFalse
    ThreadId ; idThread,
    PGUITHREADINFO ; pgui
)

(import "USER32.DLL" "SetCapture" HWND
    HWND ; hWnd
)
(import "USER32.DLL" "GetCapture" HWND
     ; 
)

(import "USER32.DLL" "ReleaseCapture" FailOnFalse
     ; 
)


(import "USER32.DLL" "SetCursor" HRSRC
    HRSRC ; hCursor
)

;; value LPSTR CursorValueA {
(setq CursorValueA LPSTR)
(setq IDC_ARROW 32512)
(setq IDC_IBEAM 32513)
(setq IDC_WAIT 32514)
(setq IDC_CROSS 32515)
(setq IDC_UPARROW 32516)
(setq IDC_SIZE 32640)
(setq IDC_ICON 32641)
(setq IDC_SIZENWSE 32642)
(setq IDC_SIZENESW 32643)
(setq IDC_SIZEWE 32644)
(setq IDC_SIZENS 32645)
(setq IDC_SIZEALL 32646)
(setq IDC_NO 32648)
(setq IDC_HAND 32649)
(setq IDC_APPSTARTING 32650)
(setq IDC_HELP 32651)
;; };

;; value LPWSTR CursorValueW {
(setq CursorValueW LPWSTR)
(setq IDC_ARROW 32512)
(setq IDC_IBEAM 32513)
(setq IDC_WAIT 32514)
(setq IDC_CROSS 32515)
(setq IDC_UPARROW 32516)
(setq IDC_SIZE 32640)
(setq IDC_ICON 32641)
(setq IDC_SIZENWSE 32642)
(setq IDC_SIZENESW 32643)
(setq IDC_SIZEWE 32644)
(setq IDC_SIZENS 32645)
(setq IDC_SIZEALL 32646)
(setq IDC_NO 32648)
(setq IDC_HAND 32649)
(setq IDC_APPSTARTING 32650)
(setq IDC_HELP 32651)
;; };

(import "USER32.DLL" "LoadCursorA" HRSRC
    HINSTANCE ; hInstance,
    CursorValueA ; lpCursorName
)
(import "USER32.DLL" "LoadCursorW" HRSRC
    HINSTANCE ; hInstance,
    CursorValueW ; lpCursorName
)

;; value LPSTR IconValueA {
(setq IconValueA LPSTR)
(setq IDI_APPLICATION 32512)
(setq IDI_HAND 32513)
(setq IDI_QUESTION 32514)
(setq IDI_EXCLAMATION 32515)
(setq IDI_ASTERISK 32516)
(setq IDI_WINLOGO 32517)
;; };

;; value LPWSTR IconValueW {
(setq IconValueW LPWSTR)
(setq IDI_APPLICATION 32512)
(setq IDI_HAND 32513)
(setq IDI_QUESTION 32514)
(setq IDI_EXCLAMATION 32515)
(setq IDI_ASTERISK 32516)
(setq IDI_WINLOGO 32517)
;; };

(import "USER32.DLL" "LoadIconA" HRSRC
    HINSTANCE ; hInstance,
    IconValueA ; lpIconName
)
(import "USER32.DLL" "LoadIconW" HRSRC
    HINSTANCE ; hInstance,
    IconValueW ; lpIconName
)

;; mask DWORD ImageType {
(setq ImageType DWORD)
(setq IMAGE_BITMAP 0)
(setq IMAGE_ICON 1)
(setq IMAGE_CURSOR 2)
(setq IMAGE_ENHMETAFILE 3)
;; };

;; mask DWORD LoadImageFlags {
(setq LoadImageFlags DWORD)
(setq LR_DEFAULTCOLOR 0x0000)
(setq LR_MONOCHROME 0x0001)
(setq LR_COLOR 0x0002)
(setq LR_COPYRETURNORG 0x0004)
(setq LR_COPYDELETEORG 0x0008)
(setq LR_LOADFROMFILE 0x0010)
(setq LR_LOADTRANSPARENT 0x0020)
(setq LR_DEFAULTSIZE 0x0040)
(setq LR_VGACOLOR 0x0080)
(setq LR_LOADMAP3DCOLORS 0x1000)
(setq LR_CREATEDIBSECTION 0x2000)
(setq LR_COPYFROMRESOURCE 0x4000)
(setq LR_SHARED 0x8000)
;; };

;; value LPSTR ImageValueA {
(setq ImageValueA LPSTR)
(setq OBM_CLOSE 32754)
(setq OBM_UPARROW 32753)
(setq OBM_DNARROW 32752)
(setq OBM_RGARROW 32751)
(setq OBM_LFARROW 32750)
(setq OBM_REDUCE 32749)
(setq OBM_ZOOM 32748)
(setq OBM_RESTORE 32747)
(setq OBM_REDUCED 32746)
(setq OBM_ZOOMD 32745)
(setq OBM_RESTORED 32744)
(setq OBM_UPARROWD 32743)
(setq OBM_DNARROWD 32742)
(setq OBM_RGARROWD 32741)
(setq OBM_LFARROWD 32740)
(setq OBM_MNARROW 32739)
(setq OBM_COMBO 32738)
(setq OBM_UPARROWI 32737)
(setq OBM_DNARROWI 32736)
(setq OBM_RGARROWI 32735)
(setq OBM_LFARROWI 32734)

(setq OBM_OLD_CLOSE 32767)
(setq OBM_SIZE 32766)
(setq OBM_OLD_UPARROW 32765)
(setq OBM_OLD_DNARROW 32764)
(setq OBM_OLD_RGARROW 32763)
(setq OBM_OLD_LFARROW 32762)
(setq OBM_BTSIZE 32761)
(setq OBM_CHECK 32760)
(setq OBM_CHECKBOXES 32759)
(setq OBM_BTNCORNERS 32758)
(setq OBM_OLD_REDUCE 32757)
(setq OBM_OLD_ZOOM 32756)
(setq OBM_OLD_RESTORE 32755)

(setq OCR_NORMAL 32512)
(setq OCR_IBEAM 32513)
(setq OCR_WAIT 32514)
(setq OCR_CROSS 32515)
(setq OCR_UP 32516)
(setq OCR_SIZE 32640)
(setq OCR_ICON 32641)
(setq OCR_SIZENWSE 32642)
(setq OCR_SIZENESW 32643)
(setq OCR_SIZEWE 32644)
(setq OCR_SIZENS 32645)
(setq OCR_SIZEALL 32646)
(setq OCR_ICOCUR 32647)
(setq OCR_NO 32648)
(setq OCR_HAND 32649)
(setq OCR_APPSTARTING 32650)

(setq OIC_WINLOGO 32517)
;; };

;; value LPWSTR ImageValueW {
(setq ImageValueW LPWSTR)
(setq OBM_CLOSE 32754)
(setq OBM_UPARROW 32753)
(setq OBM_DNARROW 32752)
(setq OBM_RGARROW 32751)
(setq OBM_LFARROW 32750)
(setq OBM_REDUCE 32749)
(setq OBM_ZOOM 32748)
(setq OBM_RESTORE 32747)
(setq OBM_REDUCED 32746)
(setq OBM_ZOOMD 32745)
(setq OBM_RESTORED 32744)
(setq OBM_UPARROWD 32743)
(setq OBM_DNARROWD 32742)
(setq OBM_RGARROWD 32741)
(setq OBM_LFARROWD 32740)
(setq OBM_MNARROW 32739)
(setq OBM_COMBO 32738)
(setq OBM_UPARROWI 32737)
(setq OBM_DNARROWI 32736)
(setq OBM_RGARROWI 32735)
(setq OBM_LFARROWI 32734)

(setq OBM_OLD_CLOSE 32767)
(setq OBM_SIZE 32766)
(setq OBM_OLD_UPARROW 32765)
(setq OBM_OLD_DNARROW 32764)
(setq OBM_OLD_RGARROW 32763)
(setq OBM_OLD_LFARROW 32762)
(setq OBM_BTSIZE 32761)
(setq OBM_CHECK 32760)
(setq OBM_CHECKBOXES 32759)
(setq OBM_BTNCORNERS 32758)
(setq OBM_OLD_REDUCE 32757)
(setq OBM_OLD_ZOOM 32756)
(setq OBM_OLD_RESTORE 32755)

(setq OCR_NORMAL 32512)
(setq OCR_IBEAM 32513)
(setq OCR_WAIT 32514)
(setq OCR_CROSS 32515)
(setq OCR_UP 32516)
(setq OCR_SIZE 32640)
(setq OCR_ICON 32641)
(setq OCR_SIZENWSE 32642)
(setq OCR_SIZENESW 32643)
(setq OCR_SIZEWE 32644)
(setq OCR_SIZENS 32645)
(setq OCR_SIZEALL 32646)
(setq OCR_ICOCUR 32647)
(setq OCR_NO 32648)
(setq OCR_HAND 32649)
(setq OCR_APPSTARTING 32650)

(setq OIC_WINLOGO 32517)
;; };

(import "USER32.DLL" "LoadImageA" HRSRC
    HINSTANCE ; hInstance,
    ImageValueA ; lpszName,
    ImageType ; uType,
    "int" ; cxDesired,
    "int" ; cyDesired,
    LoadImageFlags ; fuLoad
)

(import "USER32.DLL" "LoadImageW" HRSRC
    HINSTANCE ; hInstance,
    ImageValueW ; lpszName,
    ImageType ; uType,
    "int" ; cxDesired,
    "int" ; cyDesired,
    LoadImageFlags ; fuLoad
)

(import "USER32.DLL" "CopyImage" HRSRC
    HRSRC ; hImage,
    ImageType ; uType,
    "int" ; x,
    "int" ; y,
    LoadImageFlags ; fuFlags
)

(import "USER32.DLL" "CopyIcon" HRSRC
    HRSRC ; hIcon
)

;; typedef struct _ICONINFO  { {
(struct '_ICONINFO
    BOOL ; fIcon
    DWORD ; xHotspot
    DWORD ; yHotspot
    HRSRC ; hbmMask
    HRSRC ; hbmColor
)
(setq ICONINFO _ICONINFO)
;; } ICONINFO
(setq PICONINFO "void*")

(import "USER32.DLL" "GetIconInfo" FailOnFalse
    HRSRC ; hIcon,
    PICONINFO ; piconinfo
)

(import "USER32.DLL" "CreateIcon" HRSRC
    HINSTANCE ; hInstance,
    "int" ; nWidth,
    "int" ; nHeight,
    BYTE ; cPlanes,
    BYTE ; cBitsPixel,
    "void*" ; BYTE * lpbANDbits,
    "void*" ; BYTE * lpbXORbits
)

(import "USER32.DLL" "OpenIcon" FailOnFalse
    HWND ; hWnd
)

(import "USER32.DLL" "CreateIconFromResource" HRSRC
    PBYTE ; presbits,
    DWORD ; dwResSize,
    BOOL ; fIcon,
    DWORD ; dwVer
)

(import "USER32.DLL" "CreateIconFromResourceEx" HRSRC
    PBYTE ; presbits,
    DWORD ; dwResSize,
    BOOL ; fIcon,
    DWORD ; dwVer,
    "int" ; cxDesired,
    "int" ; cyDesired,
    LoadImageFlags ; Flags
)

(import "USER32.DLL" "CreateIconIndirect" HRSRC
    PICONINFO ; piconinfo
)

(import "USER32.DLL" "LookupIconIdFromDirectory" DwordFailIfZero
    PBYTE ; presbits,
    BOOL ; fIcon
)

(import "USER32.DLL" "LookupIconIdFromDirectoryEx" DwordFailIfZero
    PBYTE ; presbits,
    BOOL ; fIcon,
    "int" ; cxDesired,
    "int" ; cyDesired,
    LoadImageFlags ; Flags
)

(import "USER32.DLL" "DestroyCursor" FailOnFalse
    HRSRC ; hCursor
)
(import "USER32.DLL" "DestroyIcon" FailOnFalse
    HRSRC ; hIcon
)

;; value DWORD SystemMetric {
(setq SystemMetric DWORD)
(setq SM_CXSCREEN 0)
(setq SM_CYSCREEN 1)
(setq SM_CXVSCROLL 2)
(setq SM_CYHSCROLL 3)
(setq SM_CYCAPTION 4)
(setq SM_CXBORDER 5)
(setq SM_CYBORDER 6)
(setq SM_CXDLGFRAME 7)
(setq SM_CYDLGFRAME 8)
(setq SM_CYVTHUMB 9)
(setq SM_CXHTHUMB 10)
(setq SM_CXICON 11)
(setq SM_CYICON 12)
(setq SM_CXCURSOR 13)
(setq SM_CYCURSOR 14)
(setq SM_CYMENU 15)
(setq SM_CXFULLSCREEN 16)
(setq SM_CYFULLSCREEN 17)
(setq SM_CYKANJIWINDOW 18)
(setq SM_MOUSEPRESENT 19)
(setq SM_CYVSCROLL 20)
(setq SM_CXHSCROLL 21)
(setq SM_DEBUG 22)
(setq SM_SWAPBUTTON 23)
(setq SM_RESERVED1 24)
(setq SM_RESERVED2 25)
(setq SM_RESERVED3 26)
(setq SM_RESERVED4 27)
(setq SM_CXMIN 28)
(setq SM_CYMIN 29)
(setq SM_CXSIZE 30)
(setq SM_CYSIZE 31)
(setq SM_CXFRAME 32)
(setq SM_CYFRAME 33)
(setq SM_CXMINTRACK 34)
(setq SM_CYMINTRACK 35)
(setq SM_CXDOUBLECLK 36)
(setq SM_CYDOUBLECLK 37)
(setq SM_CXICONSPACING 38)
(setq SM_CYICONSPACING 39)
(setq SM_MENUDROPALIGNMENT 40)
(setq SM_PENWINDOWS 41)
(setq SM_DBCSENABLED 42)
(setq SM_CMOUSEBUTTONS 43)

(setq SM_SECURE 44)
(setq SM_CXEDGE 45)
(setq SM_CYEDGE 46)
(setq SM_CXMINSPACING 47)
(setq SM_CYMINSPACING 48)
(setq SM_CXSMICON 49)
(setq SM_CYSMICON 50)
(setq SM_CYSMCAPTION 51)
(setq SM_CXSMSIZE 52)
(setq SM_CYSMSIZE 53)
(setq SM_CXMENUSIZE 54)
(setq SM_CYMENUSIZE 55)
(setq SM_ARRANGE 56)
(setq SM_CXMINIMIZED 57)
(setq SM_CYMINIMIZED 58)
(setq SM_CXMAXTRACK 59)
(setq SM_CYMAXTRACK 60)
(setq SM_CXMAXIMIZED 61)
(setq SM_CYMAXIMIZED 62)
(setq SM_NETWORK 63)
(setq SM_CLEANBOOT 67)
(setq SM_CXDRAG 68)
(setq SM_CYDRAG 69)
(setq SM_SHOWSOUNDS 70)
(setq SM_CXMENUCHECK 71)
(setq SM_CYMENUCHECK 72)
(setq SM_SLOWMACHINE 73)
(setq SM_MIDEASTENABLED 74)

(setq SM_MOUSEWHEELPRESENT 75)
(setq SM_XVIRTUALSCREEN 76)
(setq SM_YVIRTUALSCREEN 77)
(setq SM_CXVIRTUALSCREEN 78)
(setq SM_CYVIRTUALSCREEN 79)
(setq SM_CMONITORS 80)
(setq SM_SAMEDISPLAYFORMAT 81)
(setq SM_IMMENABLED 82)
(setq SM_CXFOCUSBORDER 83)
(setq SM_CYFOCUSBORDER 84)

(setq SM_REMOTESESSION 0x1000)
;; };

(import "USER32.DLL" "GetSystemMetrics" LongFailIfZero
    SystemMetric ; nIndex
)

(import "USER32.DLL" "LoadAcceleratorsA" HACCEL
    HINSTANCE ; hInstance,
    LPCSTR ; lpTableName
)
(import "USER32.DLL" "LoadAcceleratorsW" HACCEL
    HINSTANCE ; hInstance,
    LPCWSTR ; lpTableName
)

(import "USER32.DLL" "DestroyAcceleratorTable" FailOnFalse
    HACCEL ; hAccel
)

(import "USER32.DLL" "TranslateAcceleratorA" "int"
    HWND ; hWnd,
    HACCEL ; hAccTable,
    LPMSG ; lpMsg
)
(import "USER32.DLL" "TranslateAcceleratorW" "int"
    HWND ; hWnd,
    HACCEL ; hAccTable,
    LPMSG ; lpMsg
)

;; mask DWORD ClassStyles {
(setq ClassStyles DWORD)
(setq CS_VREDRAW 0x0001)
(setq CS_HREDRAW 0x0002)
(setq CS_DBLCLKS 0x0008)
(setq CS_OWNDC 0x0020)
(setq CS_CLASSDC 0x0040)
(setq CS_PARENTDC 0x0080)
(setq CS_NOCLOSE 0x0200)
(setq CS_SAVEBITS 0x0800)
(setq CS_BYTEALIGNCLIENT 0x1000)
(setq CS_BYTEALIGNWINDOW 0x2000)
(setq CS_GLOBALCLASS 0x4000)
(setq CS_IME 0x00010000)
(setq CS_DROPSHADOW 0x00020000)
;; };

;; typedef struct tagWNDCLASSA  { {
(struct 'tagWNDCLASSA
    ClassStyles ; style
    FILLER64 ; align1
    WNDPROC ; lpfnWndProc
    "int" ; cbClsExtra
    "int" ; cbWndExtra
    HINSTANCE ; hInstance
    HRSRC ; hIcon
    HRSRC ; hCursor
    HRSRC ; hbrBackground
    LPCSTR ; lpszMenuName
    LPCSTR ; lpszClassName
)
(setq WNDCLASSA tagWNDCLASSA)
;; } WNDCLASSA
(setq PWNDCLASSA "void*")
(setq LPWNDCLASSA "void*")

;; typedef struct tagWNDCLASSW  { {
(struct 'tagWNDCLASSW
    ClassStyles ; style
    FILLER64 ; align1
    WNDPROC ; lpfnWndProc
    "int" ; cbClsExtra
    "int" ; cbWndExtra
    HINSTANCE ; hInstance
    HRSRC ; hIcon
    HRSRC ; hCursor
    HRSRC ; hbrBackground
    LPCWSTR ; lpszMenuName
    LPCWSTR ; lpszClassName
)
(setq WNDCLASSW tagWNDCLASSW)
;; } WNDCLASSW
(setq PWNDCLASSW "void*")
(setq LPWNDCLASSW "void*")


(import "USER32.DLL" "RegisterClassA" DwordFailIfZero
    "void*" ; WNDCLASSA * lpWndClass
)
(import "USER32.DLL" "RegisterClassW" DwordFailIfZero
    "void*" ; WNDCLASSW * lpWndClass
)

(import "USER32.DLL" "UnregisterClassA" FailOnFalse
    LPCSTR ; lpClassName,
    HINSTANCE ; hInstance
)
(import "USER32.DLL" "UnregisterClassW" FailOnFalse
    LPCWSTR ; lpClassName,
    HINSTANCE ; hInstance
)

;; typedef struct tagWNDCLASSEXA  { {
(struct 'tagWNDCLASSEXA
    UINT ; cbSize
    ClassStyles ; style
    WNDPROC ; lpfnWndProc
    "int" ; cbClsExtra
    "int" ; cbWndExtra
    HINSTANCE ; hInstance
    HRSRC ; hIcon
    HRSRC ; hCursor
    HRSRC ; hbrBackground
    LPCSTR ; lpszMenuName
    LPCSTR ; lpszClassName
    HRSRC ; hIconSm
)
(setq WNDCLASSEXA tagWNDCLASSEXA)
;; } WNDCLASSEXA
(setq PWNDCLASSEXA "void*")
(setq LPWNDCLASSEXA "void*")

;; typedef struct tagWNDCLASSEXW  { {
(struct 'tagWNDCLASSEXW
    UINT ; cbSize
    ClassStyles ; style
    WNDPROC ; lpfnWndProc
    "int" ; cbClsExtra
    "int" ; cbWndExtra
    HINSTANCE ; hInstance
    HRSRC ; hIcon
    HRSRC ; hCursor
    HRSRC ; hbrBackground
    LPCWSTR ; lpszMenuName
    LPCWSTR ; lpszClassName
    HRSRC ; hIconSm
)
(setq WNDCLASSEXW tagWNDCLASSEXW)
;; } WNDCLASSEXW
(setq PWNDCLASSEXW "void*")
(setq LPWNDCLASSEXW "void*")

(import "USER32.DLL" "RegisterClassExA" DwordFailIfZero
    "void*" ; WNDCLASSEXA * lpWndClass
)
(import "USER32.DLL" "RegisterClassExW" DwordFailIfZero
    "void*" ; WNDCLASSEXW * lpWndClass
)

;; typedef struct tagDLGTEMPLATE  { {
(struct 'tagDLGTEMPLATE
    DWORD ; style
    DWORD ; dwExtendedStyle
    WORD ; cdit
    DWORD ; x_y
    DWORD ; cx_cy
)
(setq DLGTEMPLATE tagDLGTEMPLATE)
;; } DLGTEMPLATE

(setq LPDLGTEMPLATEA "void*")
(setq LPDLGTEMPLATEW "void*")

(import "USER32.DLL" "CreateDialogIndirectParamA" HWND
    HINSTANCE ; hInstance,
    LPDLGTEMPLATEA ; lpTemplate,
    HWND ; hWndParent,
    WNDPROC ; lpDialogFunc,
    LPARAM ; dwInitParam
)

(import "USER32.DLL" "CreateDialogIndirectParamW" HWND
    HINSTANCE ; hInstance,
    LPDLGTEMPLATEA ; lpTemplate,
    HWND ; hWndParent,
    WNDPROC ; lpDialogFunc,
    LPARAM ; dwInitParam
)

(import "USER32.DLL" "CreateDialogParamA" HWND
    HINSTANCE ; hInstance,
    LPCSTR ; lpTemplateName,
    HWND ; hWndParent,
    WNDPROC ; lpDialogFunc,
    LPARAM ; dwInitParam
)

(import "USER32.DLL" "CreateDialogParamW" HWND
    HINSTANCE ; hInstance,
    LPCWSTR ; lpTemplateName,
    HWND ; hWndParent,
    WNDPROC ; lpDialogFunc,
    LPARAM ; dwInitParam
)

(import "USER32.DLL" "DialogBoxIndirectParamA" LongFailIfNeg1
    HINSTANCE ; hInstance,
    LPDLGTEMPLATEA ; hDialogTemplate,
    HWND ; hWndParent,
    WNDPROC ; lpDialogFunc,
    LPARAM ; dwInitParam
)

(import "USER32.DLL" "DialogBoxIndirectParamW" LongFailIfNeg1
    HINSTANCE ; hInstance,
    LPDLGTEMPLATEW ; hDialogTemplate,
    HWND ; hWndParent,
    WNDPROC ; lpDialogFunc,
    LPARAM ; dwInitParam
)

(import "USER32.DLL" "DialogBoxParamA" LongFailIfNeg1
    HINSTANCE ; hInstance,
    LPCSTR ; lpTemplateName,
    HWND ; hWndParent,
    WNDPROC ; lpDialogFunc,
    LPARAM ; dwInitParam
)

(import "USER32.DLL" "DialogBoxParamW" LongFailIfNeg1
    HINSTANCE ; hInstance,
    LPCWSTR ; lpTemplateName,
    HWND ; hWndParent,
    WNDPROC ; lpDialogFunc,
    LPARAM ; dwInitParam
)

(import "USER32.DLL" "EndDialog" FailOnFalse
    HWND ; hDlg,
    "int" ; nResult
)

(import "USER32.DLL" "GetDialogBaseUnits" DWORD
     ; 
)

(import "USER32.DLL" "MapDialogRect" FailOnFalse
    HWND ; hDlg,
    LPRECT ; lpRect
)


(import "USER32.DLL" "CreateMDIWindowA" HWND
    LPCSTR ; lpClassName,
    LPCSTR ; lpWindowName,
    WindowStyle ; dwStyle,
    "int" ; X,
    "int" ; Y,
    "int" ; nWidth,
    "int" ; nHeight,
    HWND ; hWndParent,
    HINSTANCE ; hInstance,
    LPARAM ; lParam
)

(import "USER32.DLL" "CreateMDIWindowW" HWND
    LPCWSTR ; lpClassName,
    LPCWSTR ; lpWindowName,
    WindowStyle ; dwStyle,
    "int" ; X,
    "int" ; Y,
    "int" ; nWidth,
    "int" ; nHeight,
    HWND ; hWndParent,
    HINSTANCE ; hInstance,
    LPARAM ; lParam
)

(import "USER32.DLL" "DefMDIChildProcA" LRESULT
    HWND ; hWnd,
    WindowsMessage ; uMsg,
    WPARAM ; wParam,
    LPARAM ; lParam
)

(import "USER32.DLL" "DefMDIChildProcW" LRESULT
    HWND ; hWnd,
    WindowsMessage ; uMsg,
    WPARAM ; wParam,
    LPARAM ; lParam
)

(import "USER32.DLL" "TranslateMDISysAccel" BOOL
    HWND ; hWndClient,
    LPMSG ; lpMsg
)

;; value DWORD MessageBoxReturn {
(setq MessageBoxReturn DWORD)
(setq ERROR 0)
(setq IDOK 1)
(setq IDCANCEL 2)
(setq IDABORT 3)
(setq IDRETRY 4)
(setq IDIGNORE 5)
(setq IDYES 6)
(setq IDNO 7)
(setq IDCLOSE 8)
(setq IDHELP 9)
(setq IDTRYAGAIN 10)
(setq IDCONTINUE 11)
;; };

;; mask DWORD MessageBoxType {
(setq MessageBoxType DWORD)
(setq MB_OK 0x00000000)
(setq MB_OKCANCEL 0x00000001)
(setq MB_ABORTRETRYIGNORE 0x00000002)
(setq MB_YESNOCANCEL 0x00000003)
(setq MB_YESNO 0x00000004)
(setq MB_RETRYCANCEL 0x00000005)
(setq MB_CANCELTRYCONTINUE 0x00000006)

(setq MB_ICONHAND 0x00000010)
(setq MB_ICONQUESTION 0x00000020)
(setq MB_ICONEXCLAMATION 0x00000030)
(setq MB_ICONASTERISK 0x00000040)
(setq MB_USERICON 0x00000080)

(setq MB_DEFBUTTON1 0x00000000)
(setq MB_DEFBUTTON2 0x00000100)
(setq MB_DEFBUTTON3 0x00000200)

(setq MB_SYSTEMMODAL 0x00001000)
(setq MB_TASKMODAL 0x00002000)
(setq MB_HELP 0x00004000)

(setq MB_NOFOCUS 0x00008000)
(setq MB_SETFOREGROUND 0x00010000)
(setq MB_DEFAULT_DESKTOP_ONLY 0x00020000)

(setq MB_TOPMOST 0x00040000)
(setq MB_RIGHT 0x00080000)
(setq MB_RTLREADING 0x00100000)
(setq MB_SERVICE_NOTIFICATION 0x00200000)
;; };

(import "USER32.DLL" "MessageBoxA" MessageBoxReturn
    HWND ; hWnd,
    LPCSTR ; lpText,
    LPCSTR ; lpCaption,
    MessageBoxType ; uType
)

(import "USER32.DLL" "MessageBoxW" MessageBoxReturn
    HWND ; hWnd,
    LPCWSTR ; lpText,
    LPCWSTR ; lpCaption,
    MessageBoxType ; uType
)

;; value DWORD LanguageId {
(setq LanguageId DWORD)
(setq LANG_NEUTRAL 0x00)
(setq LANG_INVARIANT 0x7f)

(setq LANG_AFRIKAANS 0x36)
(setq LANG_ALBANIAN 0x1c)
(setq LANG_ARABIC 0x01)
(setq LANG_ARMENIAN 0x2b)
(setq LANG_ASSAMESE 0x4d)
(setq LANG_AZERI 0x2c)
(setq LANG_BASQUE 0x2d)
(setq LANG_BELARUSIAN 0x23)
(setq LANG_BENGALI 0x45)
(setq LANG_BULGARIAN 0x02)
(setq LANG_CATALAN 0x03)
(setq LANG_CHINESE 0x04)
(setq LANG_CROATIAN 0x1a)
(setq LANG_CZECH 0x05)
(setq LANG_DANISH 0x06)
(setq LANG_DUTCH 0x13)
(setq LANG_ENGLISH 0x09)
(setq LANG_ESTONIAN 0x25)
(setq LANG_FAEROESE 0x38)
(setq LANG_FARSI 0x29)
(setq LANG_FINNISH 0x0b)
(setq LANG_FRENCH 0x0c)
(setq LANG_GEORGIAN 0x37)
(setq LANG_GERMAN 0x07)
(setq LANG_GREEK 0x08)
(setq LANG_GUJARATI 0x47)
(setq LANG_HEBREW 0x0d)
(setq LANG_HINDI 0x39)
(setq LANG_HUNGARIAN 0x0e)
(setq LANG_ICELANDIC 0x0f)
(setq LANG_INDONESIAN 0x21)
(setq LANG_ITALIAN 0x10)
(setq LANG_JAPANESE 0x11)
(setq LANG_KANNADA 0x4b)
(setq LANG_KASHMIRI 0x60)
(setq LANG_KAZAK 0x3f)
(setq LANG_KONKANI 0x57)
(setq LANG_KOREAN 0x12)
(setq LANG_LATVIAN 0x26)
(setq LANG_LITHUANIAN 0x27)
(setq LANG_MACEDONIAN 0x2f)
(setq LANG_MALAY 0x3e)
(setq LANG_MALAYALAM 0x4c)
(setq LANG_MANIPURI 0x58)
(setq LANG_MARATHI 0x4e)
(setq LANG_NEPALI 0x61)
(setq LANG_NORWEGIAN 0x14)
(setq LANG_ORIYA 0x48)
(setq LANG_POLISH 0x15)
(setq LANG_PORTUGUESE 0x16)
(setq LANG_PUNJABI 0x46)
(setq LANG_ROMANIAN 0x18)
(setq LANG_RUSSIAN 0x19)
(setq LANG_SANSKRIT 0x4f)
(setq LANG_SERBIAN 0x1a)
(setq LANG_SINDHI 0x59)
(setq LANG_SLOVAK 0x1b)
(setq LANG_SLOVENIAN 0x24)
(setq LANG_SPANISH 0x0a)
(setq LANG_SWAHILI 0x41)
(setq LANG_SWEDISH 0x1d)
(setq LANG_TAMIL 0x49)
(setq LANG_TATAR 0x44)
(setq LANG_TELUGU 0x4a)
(setq LANG_THAI 0x1e)
(setq LANG_TURKISH 0x1f)
(setq LANG_UKRAINIAN 0x22)
(setq LANG_URDU 0x20)
(setq LANG_UZBEK 0x43)
(setq LANG_VIETNAMESE 0x2a)
;; };

(import "USER32.DLL" "MessageBoxExA" MessageBoxReturn
    HWND ; hWnd,
    LPCSTR ; lpText,
    LPCSTR ; lpCaption,
    MessageBoxType ; uType,
    LanguageId ; dwLanguageId
)

(import "USER32.DLL" "MessageBoxExW" MessageBoxReturn
    HWND ; hWnd,
    LPCWSTR ; lpText,
    LPCWSTR ; lpCaption,
    MessageBoxType ; uType,
    LanguageId ; dwLanguageId
)

;; typedef struct tagMSGBOXPARAMSA { {
(struct 'tagMSGBOXPARAMSA
    UINT ; cbSize
    HWND ; hwndOwner
    HINSTANCE ; hInstance
    LPCSTR ; lpszText
    LPCSTR ; lpszCaption
    MessageBoxType ; dwStyle
    LPCSTR ; lpszIcon
    DWORD ; dwContextHelpId
    WNDPROC ; lpfnMsgBoxCallback
    LanguageId ; dwLanguageId
)
(setq MSGBOXPARAMSA tagMSGBOXPARAMSA)
;; } MSGBOXPARAMSA
(setq PMSGBOXPARAMSA "void*")
(setq LPMSGBOXPARAMSA "void*")

;; typedef struct tagMSGBOXPARAMSW { {
(struct 'tagMSGBOXPARAMSW
    UINT ; cbSize
    HWND ; hwndOwner
    HINSTANCE ; hInstance
    LPCWSTR ; lpszText
    LPCWSTR ; lpszCaption
    MessageBoxType ; dwStyle
    LPCWSTR ; lpszIcon
    DWORD ; dwContextHelpId
    WNDPROC ; lpfnMsgBoxCallback
    LanguageId ; dwLanguageId
)
(setq MSGBOXPARAMSW tagMSGBOXPARAMSW)
;; } MSGBOXPARAMSW
(setq PMSGBOXPARAMSW "void*")
(setq LPMSGBOXPARAMSW "void*")


(import "USER32.DLL" "MessageBoxIndirectA" MessageBoxReturn
    "void*" ; MSGBOXPARAMSA * lpMsgBoxParam
)
(import "USER32.DLL" "MessageBoxIndirectW" MessageBoxReturn
    "void*" ; MSGBOXPARAMSW * lpMsgBoxParam
)

(import "USER32.DLL" "IsDialogMessageA" BOOL
    HWND ; hDlg,
    LPMSG ; lpMsg
)
(import "USER32.DLL" "IsDialogMessageW" BOOL
    HWND ; hDlg,
    LPMSG ; lpMsg
)

(import "USER32.DLL" "IsChild" BOOL
    HWND ; hWndParent,
    HWND ; hWnd
)

(import "USER32.DLL" "IsIconic" BOOL
    HWND ; hWnd
)

(import "USER32.DLL" "IsMenu" BOOL
    HMENU ; hMenu
)

(import "USER32.DLL" "IsRectEmpty" BOOL
    LPRECT ; lprc
)

(import "USER32.DLL" "IntersectRect" BOOL
    LPRECT ; lprcDst,
    LPRECT ; lprcSrc1,
    LPRECT ; lprcSrc2
)

(import "USER32.DLL" "UnionRect" BOOL
    LPRECT ; lprcDst,
    LPRECT ; lprcSrc1,
    LPRECT ; lprcSrc2
)

(import "USER32.DLL" "CopyRect" FailOnFalse
    LPRECT ; lprcDst,
    LPRECT ; lprcSrc
)

(import "USER32.DLL" "SubtractRect" BOOL
    LPRECT ; lprcDst,
    LPRECT ; lprcSrc1,
    LPRECT ; lprcSrc2
)


(import "USER32.DLL" "InvertRect" FailOnFalse
    HDC ; hDC,
    LPRECT ; lprc
)


(import "USER32.DLL" "PtInRect" BOOL
    LPRECT ; lprc,
    "int" ; x,
    "int" ; y
)

(import "USER32.DLL" "IsWindow" FailOnFalse
    HWND ; hWnd
)

(import "USER32.DLL" "IsWindowEnabled" BOOL
    HWND ; hWnd
)

(import "USER32.DLL" "IsWindowUnicode" BOOL
    HWND ; hWnd
)

(import "USER32.DLL" "IsWindowVisible" BOOL
    HWND ; hWnd
)

(import "USER32.DLL" "IsZoomed" BOOL
    HWND ; hWnd
)

(import "USER32.DLL" "RegisterWindowMessageA" DwordFailIfZero
    LPCSTR ; lpString
)
(import "USER32.DLL" "RegisterWindowMessageW" DwordFailIfZero
    LPCWSTR ; lpString
)

(import "USER32.DLL" "SetPropA" FailOnFalse
    HWND ; hWnd,
    LPCSTR ; lpString,
    HANDLE ; hData
)
(import "USER32.DLL" "SetPropW" FailOnFalse
    HWND ; hWnd,
    LPCWSTR ; lpString,
    HANDLE ; hData
)

(import "USER32.DLL" "GetPropA" HANDLE
    HWND ; hWnd,
    LPCSTR ; lpString
)
(import "USER32.DLL" "GetPropW" HANDLE
    HWND ; hWnd,
    LPCWSTR ; lpString
)

(import "USER32.DLL" "RemovePropA" HANDLE
    HWND ; hWnd,
    LPCSTR ; lpString
)
(import "USER32.DLL" "RemovePropW" HANDLE
    HWND ; hWnd,
    LPCWSTR ; lpString
)

(setq PROPENUMPROCA LPVOID)
(setq PROPENUMPROCW LPVOID)
(setq PROPENUMPROCEXA LPVOID)
(setq PROPENUMPROCEXW LPVOID)

(import "USER32.DLL" "EnumPropsA" LongFailIfNeg1
    HWND ; hWnd,
    PROPENUMPROCA ; lpEnumFunc
)
(import "USER32.DLL" "EnumPropsW" LongFailIfNeg1
    HWND ; hWnd,
    PROPENUMPROCW ; lpEnumFunc
)

(import "USER32.DLL" "EnumPropsExA" LongFailIfNeg1
    HWND ; hWnd,
    PROPENUMPROCEXA ; lpEnumFunc,
    LPARAM ; lParam
)
(import "USER32.DLL" "EnumPropsExW" LongFailIfNeg1
    HWND ; hWnd,
    PROPENUMPROCEXW ; lpEnumFunc,
    LPARAM ; lParam
)

;; mask DWORD QueueStates {
(setq QueueStates DWORD)
(setq QS_KEY 0x0001)
(setq QS_MOUSEMOVE 0x0002)
(setq QS_MOUSEBUTTON 0x0004)
(setq QS_POSTMESSAGE 0x0008)
(setq QS_TIMER 0x0010)
(setq QS_PAINT 0x0020)
(setq QS_SENDMESSAGE 0x0040)
(setq QS_HOTKEY 0x0080)
(setq QS_ALLPOSTMESSAGE 0x0100)
(setq QS_RAWINPUT 0x0400)
;; };

(import "USER32.DLL" "MsgWaitForMultipleObjects" WaitReturnValues
    DWORD ; nCount,
    "void*" ; HANDLE * pHandles,
    BOOL ; fWaitAll,
    DWORD ; dwMilliseconds,
    QueueStates ; dwWakeMask
)

;; mask DWORD MWMOFlags {
(setq MWMOFlags DWORD)
(setq MWMO_WAITALL 0x0001)
(setq MWMO_ALERTABLE 0x0002)
(setq MWMO_INPUTAVAILABLE 0x0004)
;; };

(import "USER32.DLL" "MsgWaitForMultipleObjectsEx" WaitReturnValues
    DWORD ; nCount,
    "void*" ; HANDLE * pHandles,
    DWORD ; dwMilliseconds,
    QueueStates ; dwWakeMask,
    MWMOFlags ; dwFlags
)

(import "USER32.DLL" "WaitForInputIdle" WaitReturnValues
    HANDLE ; hProcess,
    DWORD ; dwMilliseconds
)

;; value DWORD GetWindowCmd {
(setq GetWindowCmd DWORD)
(setq GW_HWNDFIRST 0)
(setq GW_HWNDLAST 1)
(setq GW_HWNDNEXT 2)
(setq GW_HWNDPREV 3)
(setq GW_OWNER 4)
(setq GW_CHILD 5)
(setq GW_ENABLEDPOPUP 6)
;; };

(import "USER32.DLL" "GetWindow" HWND
    HWND ; hWnd,
    GetWindowCmd ; uCmd
)

(import "USER32.DLL" "GetWindowContextHelpId" DWORD
    HWND ; hwnd
)

(import "USER32.DLL" "SetWindowContextHelpId" FailOnFalse
    HWND ; hwnd,
    DWORD ; dwHelpId
)

;; typedef struct tagWINDOWINFO { {
(struct 'tagWINDOWINFO
    DWORD ; cbSize
    ;; rcWindow
    LONG ; left
    LONG ; top
    LONG ; right
    LONG ; bottom
    ;; rcClient
    LONG ; left
    LONG ; top
    LONG ; right
    LONG ; bottom
    DWORD ; dwStyle
    DWORD ; dwExStyle
    DWORD ; dwWindowStatus
    UINT ; cxWindowBorders
    UINT ; cyWindowBorders
    ATOM ; atomWindowType
    WORD ; wCreatorVersion
)
(setq WINDOWINFO tagWINDOWINFO)
;; } WINDOWINFO
(setq PWINDOWINFO "void*")
(setq LPWINDOWINFO "void*")


(import "USER32.DLL" "GetWindowInfo" FailOnFalse
    HWND ; hwnd,
    PWINDOWINFO ; pwi
)

(import "USER32.DLL" "GetWindowModuleFileNameA" UINT
    HWND ; hwnd,
    LPSTR ; pszFileName,
    UINT ; cchFileNameMax
)
(import "USER32.DLL" "GetWindowModuleFileNameW" UINT
    HWND ; hwnd,
    LPWSTR ; pszFileName,
    UINT ; cchFileNameMax
)


(import "USER32.DLL" "GetWindowRect" FailOnFalse
    HWND ; hWnd,
    LPRECT ; lpRect
)
(import "USER32.DLL" "GetClientRect" FailOnFalse
    HWND ; hwnd,
    LPRECT ; lprect
)

(import "USER32.DLL" "SetWindowRgn" FailOnFalse
    HWND ; hWnd,
    HRGN ; hRgn,
    BOOL ; bRedraw
)

(import "USER32.DLL" "GetWindowRgn" HRGN
    HWND ; hWnd,
    HRGN ; hRgn
)

(import "USER32.DLL" "GetWindowThreadProcessId" ThreadId
    HWND ; hWnd,
    "void*" ; ProcessId * lpdwProcessId
)

(import "USER32.DLL" "EnableWindow" FailOnFalse
    HWND ; hWnd,
    BOOL ; bEnable
)

;; value DWORD SPIValues {
(setq SPIValues DWORD)
(setq SPI_GETBEEP 1)
(setq SPI_SETBEEP 2)
(setq SPI_GETMOUSE 3)
(setq SPI_SETMOUSE 4)
(setq SPI_GETBORDER 5)
(setq SPI_SETBORDER 6)
(setq SPI_GETKEYBOARDSPEED 10)
(setq SPI_SETKEYBOARDSPEED 11)
(setq SPI_LANGDRIVER 12)
(setq SPI_ICONHORIZONTALSPACING 13)
(setq SPI_GETSCREENSAVETIMEOUT 14)
(setq SPI_SETSCREENSAVETIMEOUT 15)
(setq SPI_GETSCREENSAVEACTIVE 16)
(setq SPI_SETSCREENSAVEACTIVE 17)
(setq SPI_GETGRIDGRANULARITY 18)
(setq SPI_SETGRIDGRANULARITY 19)
(setq SPI_SETDESKWALLPAPER 20)
(setq SPI_SETDESKPATTERN 21)
(setq SPI_GETKEYBOARDDELAY 22)
(setq SPI_SETKEYBOARDDELAY 23)
(setq SPI_ICONVERTICALSPACING 24)
(setq SPI_GETICONTITLEWRAP 25)
(setq SPI_SETICONTITLEWRAP 26)
(setq SPI_GETMENUDROPALIGNMENT 27)
(setq SPI_SETMENUDROPALIGNMENT 28)
(setq SPI_SETDOUBLECLKWIDTH 29)
(setq SPI_SETDOUBLECLKHEIGHT 30)
(setq SPI_GETICONTITLELOGFONT 31)
(setq SPI_SETDOUBLECLICKTIME 32)
(setq SPI_SETMOUSEBUTTONSWAP 33)
(setq SPI_SETICONTITLELOGFONT 34)
(setq SPI_GETFASTTASKSWITCH 35)
(setq SPI_SETFASTTASKSWITCH 36)
(setq SPI_SETDRAGFULLWINDOWS 37)
(setq SPI_GETDRAGFULLWINDOWS 38)
(setq SPI_GETNONCLIENTMETRICS 41)
(setq SPI_SETNONCLIENTMETRICS 42)
(setq SPI_GETMINIMIZEDMETRICS 43)
(setq SPI_SETMINIMIZEDMETRICS 44)
(setq SPI_GETICONMETRICS 45)
(setq SPI_SETICONMETRICS 46)
(setq SPI_SETWORKAREA 47)
(setq SPI_GETWORKAREA 48)
(setq SPI_SETPENWINDOWS 49)

(setq SPI_GETFILTERKEYS 50)
(setq SPI_SETFILTERKEYS 51)
(setq SPI_GETTOGGLEKEYS 52)
(setq SPI_SETTOGGLEKEYS 53)
(setq SPI_GETMOUSEKEYS 54)
(setq SPI_SETMOUSEKEYS 55)
(setq SPI_GETSHOWSOUNDS 56)
(setq SPI_SETSHOWSOUNDS 57)
(setq SPI_GETSTICKYKEYS 58)
(setq SPI_SETSTICKYKEYS 59)
(setq SPI_GETACCESSTIMEOUT 60)
(setq SPI_SETACCESSTIMEOUT 61)
(setq SPI_GETSERIALKEYS 62)
(setq SPI_SETSERIALKEYS 63)
(setq SPI_GETSOUNDSENTRY 64)
(setq SPI_SETSOUNDSENTRY 65)

(setq SPI_GETHIGHCONTRAST 66)
(setq SPI_SETHIGHCONTRAST 67)
(setq SPI_GETKEYBOARDPREF 68)
(setq SPI_SETKEYBOARDPREF 69)
(setq SPI_GETSCREENREADER 70)
(setq SPI_SETSCREENREADER 71)
(setq SPI_GETANIMATION 72)
(setq SPI_SETANIMATION 73)
(setq SPI_GETFONTSMOOTHING 74)
(setq SPI_SETFONTSMOOTHING 75)
(setq SPI_SETDRAGWIDTH 76)
(setq SPI_SETDRAGHEIGHT 77)
(setq SPI_SETHANDHELD 78)
(setq SPI_GETLOWPOWERTIMEOUT 79)
(setq SPI_GETPOWEROFFTIMEOUT 80)
(setq SPI_SETLOWPOWERTIMEOUT 81)
(setq SPI_SETPOWEROFFTIMEOUT 82)
(setq SPI_GETLOWPOWERACTIVE 83)
(setq SPI_GETPOWEROFFACTIVE 84)
(setq SPI_SETLOWPOWERACTIVE 85)
(setq SPI_SETPOWEROFFACTIVE 86)
(setq SPI_SETCURSORS 87)
(setq SPI_SETICONS 88)
(setq SPI_GETDEFAULTINPUTLANG 89)
(setq SPI_SETDEFAULTINPUTLANG 90)
(setq SPI_SETLANGTOGGLE 91)
(setq SPI_GETWINDOWSEXTENSION 92)
(setq SPI_SETMOUSETRAILS 93)
(setq SPI_GETMOUSETRAILS 94)

(setq SPI_GETSNAPTODEFBUTTON 95)
(setq SPI_SETSNAPTODEFBUTTON 96)

(setq SPI_SETSCREENSAVERRUNNING 97)

(setq SPI_GETMOUSEHOVERWIDTH 98)
(setq SPI_SETMOUSEHOVERWIDTH 99)
(setq SPI_GETMOUSEHOVERHEIGHT 100)
(setq SPI_SETMOUSEHOVERHEIGHT 101)
(setq SPI_GETMOUSEHOVERTIME 102)
(setq SPI_SETMOUSEHOVERTIME 103)
(setq SPI_GETWHEELSCROLLLINES 104)
(setq SPI_SETWHEELSCROLLLINES 105)
(setq SPI_GETMENUSHOWDELAY 106)
(setq SPI_SETMENUSHOWDELAY 107)

(setq SPI_GETSHOWIMEUI 110)
(setq SPI_SETSHOWIMEUI 111)


(setq SPI_GETMOUSESPEED 112)
(setq SPI_SETMOUSESPEED 113)
(setq SPI_GETSCREENSAVERRUNNING 114)
(setq SPI_GETDESKWALLPAPER 115)

(setq SPI_GETACTIVEWINDOWTRACKING 0x1000)
(setq SPI_SETACTIVEWINDOWTRACKING 0x1001)
(setq SPI_GETMENUANIMATION 0x1002)
(setq SPI_SETMENUANIMATION 0x1003)
(setq SPI_GETCOMBOBOXANIMATION 0x1004)
(setq SPI_SETCOMBOBOXANIMATION 0x1005)
(setq SPI_GETLISTBOXSMOOTHSCROLLING 0x1006)
(setq SPI_SETLISTBOXSMOOTHSCROLLING 0x1007)
(setq SPI_GETGRADIENTCAPTIONS 0x1008)
(setq SPI_SETGRADIENTCAPTIONS 0x1009)
(setq SPI_GETKEYBOARDCUES 0x100A)
(setq SPI_SETKEYBOARDCUES 0x100B)
(setq SPI_GETACTIVEWNDTRKZORDER 0x100C)
(setq SPI_SETACTIVEWNDTRKZORDER 0x100D)
(setq SPI_GETHOTTRACKING 0x100E)
(setq SPI_SETHOTTRACKING 0x100F)
(setq SPI_GETMENUFADE 0x1012)
(setq SPI_SETMENUFADE 0x1013)
(setq SPI_GETSELECTIONFADE 0x1014)
(setq SPI_SETSELECTIONFADE 0x1015)
(setq SPI_GETTOOLTIPANIMATION 0x1016)
(setq SPI_SETTOOLTIPANIMATION 0x1017)
(setq SPI_GETTOOLTIPFADE 0x1018)
(setq SPI_SETTOOLTIPFADE 0x1019)
(setq SPI_GETCURSORSHADOW 0x101A)
(setq SPI_SETCURSORSHADOW 0x101B)
(setq SPI_GETMOUSESONAR 0x101C)
(setq SPI_SETMOUSESONAR 0x101D)
(setq SPI_GETMOUSECLICKLOCK 0x101E)
(setq SPI_SETMOUSECLICKLOCK 0x101F)
(setq SPI_GETMOUSEVANISH 0x1020)
(setq SPI_SETMOUSEVANISH 0x1021)
(setq SPI_GETFLATMENU 0x1022)
(setq SPI_SETFLATMENU 0x1023)
(setq SPI_GETDROPSHADOW 0x1024)
(setq SPI_SETDROPSHADOW 0x1025)

(setq SPI_GETUIEFFECTS 0x103E)
(setq SPI_SETUIEFFECTS 0x103F)

(setq SPI_GETFOREGROUNDLOCKTIMEOUT 0x2000)
(setq SPI_SETFOREGROUNDLOCKTIMEOUT 0x2001)
(setq SPI_GETACTIVEWNDTRKTIMEOUT 0x2002)
(setq SPI_SETACTIVEWNDTRKTIMEOUT 0x2003)
(setq SPI_GETFOREGROUNDFLASHCOUNT 0x2004)
(setq SPI_SETFOREGROUNDFLASHCOUNT 0x2005)
(setq SPI_GETCARETWIDTH 0x2006)
(setq SPI_SETCARETWIDTH 0x2007)

(setq SPI_GETMOUSECLICKLOCKTIME 0x2008)
(setq SPI_SETMOUSECLICKLOCKTIME 0x2009)
(setq SPI_GETFONTSMOOTHINGTYPE 0x200A)
(setq SPI_SETFONTSMOOTHINGTYPE 0x200B)

(setq SPI_GETFONTSMOOTHINGGAMMA 0x200C)
(setq SPI_SETFONTSMOOTHINGGAMMA 0x200D)

(setq SPI_GETFOCUSBORDERWIDTH 0x200E)
(setq SPI_SETFOCUSBORDERWIDTH 0x200F)
(setq SPI_GETFOCUSBORDERHEIGHT 0x2010)
(setq SPI_SETFOCUSBORDERHEIGHT 0x2011)
;; };

;; mask DWORD SPIWinini {
(setq SPIWinini DWORD)
(setq SPIF_UPDATEINIFILE 0x0001)
(setq SPIF_SENDWININICHANGE 0x0002)
;; };

(import "USER32.DLL" "SystemParametersInfoA" FailOnFalse
    SPIValues ; uiAction,
    UINT ; uiParam,
    LPVOID ; pvParam,
    SPIWinini ; fWinIni
)

(import "USER32.DLL" "SystemParametersInfoW" FailOnFalse
    SPIValues ; uiAction,
    UINT ; uiParam,
    LPVOID ; pvParam,
    SPIWinini ; fWinIni
)

;; value DWORD ColorIndex {
(setq ColorIndex DWORD)
(setq CTLCOLOR_MSGBOX 0)
(setq CTLCOLOR_EDIT 1)
(setq CTLCOLOR_LISTBOX 2)
(setq CTLCOLOR_BTN 3)
(setq CTLCOLOR_DLG 4)
(setq CTLCOLOR_SCROLLBAR 5)
(setq CTLCOLOR_STATIC 6)
(setq CTLCOLOR_MAX 7)

(setq COLOR_SCROLLBAR 0)
(setq COLOR_BACKGROUND 1)
(setq COLOR_ACTIVECAPTION 2)
(setq COLOR_INACTIVECAPTION 3)
(setq COLOR_MENU 4)
(setq COLOR_WINDOW 5)
(setq COLOR_WINDOWFRAME 6)
(setq COLOR_MENUTEXT 7)
(setq COLOR_WINDOWTEXT 8)
(setq COLOR_CAPTIONTEXT 9)
(setq COLOR_ACTIVEBORDER 10)
(setq COLOR_INACTIVEBORDER 11)
(setq COLOR_APPWORKSPACE 12)
(setq COLOR_HIGHLIGHT 13)
(setq COLOR_HIGHLIGHTTEXT 14)
(setq COLOR_BTNFACE 15)
(setq COLOR_BTNSHADOW 16)
(setq COLOR_GRAYTEXT 17)
(setq COLOR_BTNTEXT 18)
(setq COLOR_INACTIVECAPTIONTEXT 19)
(setq COLOR_BTNHIGHLIGHT 20)

(setq COLOR_3DDKSHADOW 21)
(setq COLOR_3DLIGHT 22)
(setq COLOR_INFOTEXT 23)
(setq COLOR_INFOBK 24)

(setq COLOR_HOTLIGHT 26)
(setq COLOR_GRADIENTACTIVECAPTION 27)
(setq COLOR_GRADIENTINACTIVECAPTION 28)
(setq COLOR_MENUHILIGHT 29)
(setq COLOR_MENUBAR 30)
;; };

(import "USER32.DLL" "GetSysColor" DWORD
    ColorIndex ; nIndex
)

(import "USER32.DLL" "SetSysColors" FailOnFalse
    "int" ; cElements,
    "void*" ; ColorIndex * lpaElements,
    "void*" ; DWORD * lpaRgbValues
)

(import "USER32.DLL" "GetSysColorBrush" HRSRC
    ColorIndex ; nIndex
)

(import "USER32.DLL" "SetParent" HWND
    HWND ; hWndChild,
    HWND ; hWndNewParent
)
(import "USER32.DLL" "GetParent" HWND
    HWND ; hWnd
)

;; value DWORD GetAncestorType {
(setq GetAncestorType DWORD)
(setq GA_PARENT 1)
(setq GA_ROOT 2)
(setq GA_ROOTOWNER 3)
;; };

(import "USER32.DLL" "GetAncestor" HWND
    HWND ; hwnd,
    GetAncestorType ; gaFlags
)

(import "USER32.DLL" "GetTopWindow" HWND
    HWND ; hWnd
)

(import "USER32.DLL" "ClipCursor" FailOnFalse
    LPRECT ; lpRect
)
(import "USER32.DLL" "GetClipCursor" FailOnFalse
    LPRECT ; lpRect
)

(import "USER32.DLL" "CreateCursor" HRSRC
    HINSTANCE ; hInst,
    "int" ; xHotSpot,
    "int" ; yHotSpot,
    "int" ; nWidth,
    "int" ; nHeight,
    LPVOID ; pvANDPlane,
    LPVOID ; pvXORPlane
)

(import "USER32.DLL" "LoadCursorFromFileA" HRSRC
    LPCSTR ; lpFileName
)
(import "USER32.DLL" "LoadCursorFromFileW" HRSRC
    LPCWSTR ; lpFileName
)

(import "USER32.DLL" "GetCursor" HRSRC
     ; 
)

;; value DWORD CursorInfoFlags {
(setq CursorInfoFlags DWORD)
(setq CURSOR_HIDDEN 0x00000000)
(setq CURSOR_SHOWING 0x00000001)
;; };

;; typedef struct tagCURSORINFO { {
(struct 'tagCURSORINFO
    DWORD ; cbSize
    CursorInfoFlags ; flags
    HRSRC ; hCursor
    ;; ptScreenPos
    LONG ; x
    LONG ; y
)
(setq CURSORINFO tagCURSORINFO)
;; } CURSORINFO
(setq PCURSORINFO "void*")
(setq LPCURSORINFO "void*")

(import "USER32.DLL" "GetCursorInfo" FailOnFalse
    PCURSORINFO ; pci
)

(import "USER32.DLL" "SetCursorPos" FailOnFalse
    "int" ; X,
    "int" ; Y
)
(import "USER32.DLL" "GetCursorPos" FailOnFalse
    LPPOINT ; lpPoint
)

(import "USER32.DLL" "SetSystemCursor" FailOnFalse
    HRSRC ; hcur,
    ImageValueA ; id
)

(import "USER32.DLL" "ShowCursor" "int"
    BOOL ; bShow
)


(import "USER32.DLL" "GetClassInfoA" FailOnFalse
    HINSTANCE ; hInstance,
    LPCSTR ; lpClassName,
    LPWNDCLASSA ; lpWndClass
)

(import "USER32.DLL" "GetClassInfoW" FailOnFalse
    HINSTANCE ; hInstance,
    LPCWSTR ; lpClassName,
    LPWNDCLASSW ; lpWndClass
)

(import "USER32.DLL" "GetClassInfoExA" FailOnFalse
    HINSTANCE ; hInstance,
    LPCSTR ; lpClassName,
    LPWNDCLASSEXA ; lpWndClassEx
)

(import "USER32.DLL" "GetClassInfoExW" FailOnFalse
    HINSTANCE ; hInstance,
    LPCWSTR ; lpClassName,
    LPWNDCLASSEXW ; lpWndClassEx
)

;; value DWORD ClassLongIndex {
(setq ClassLongIndex DWORD)
(setq GWLP_WNDPROC -4)
(setq GWLP_HINSTANCE -6)
(setq GWLP_HWNDPARENT -8)
(setq GWLP_USERDATA -21)
(setq GWLP_ID -12)

(setq GCL_MENUNAME -8)
(setq GCL_HBRBACKGROUND -10)
(setq GCL_HCURSOR -12)
(setq GCL_HICON -14)
(setq GCL_HMODULE -16)
(setq GCL_CBWNDEXTRA -18)
(setq GCL_CBCLSEXTRA -20)
(setq GCL_WNDPROC -24)
(setq GCL_STYLE -26)
(setq GCW_ATOM -32)
;; };

(import "USER32.DLL" "GetClassLongA" DwordFailIfZero
    HWND ; hWnd,
    ClassLongIndex ; nIndex
)
(import "USER32.DLL" "GetClassLongW" DwordFailIfZero
    HWND ; hWnd,
    ClassLongIndex ; nIndex
)

(import "USER32.DLL" "SetClassLongA" DwordFailIfZero
    HWND ; hWnd,
    ClassLongIndex ; nIndex,
    DWORD ; dwNewLong
)
(import "USER32.DLL" "SetClassLongW" DwordFailIfZero
    HWND ; hWnd,
    ClassLongIndex ; nIndex,
    DWORD ; dwNewLong
)

(import "USER32.DLL" "GetClassNameA" LongFailIfZero
    HWND ; hWnd,
    LPSTR ; lpClassName,
    "int" ; nMaxCount
)
(import "USER32.DLL" "GetClassNameW" LongFailIfZero
    HWND ; hWnd,
    LPWSTR ; lpClassName,
    "int" ; nMaxCount
)

(import "USER32.DLL" "GetLastActivePopup" HWND
    HWND ; hWnd
)

(import "USER32.DLL" "ShowOwnedPopups" FailOnFalse
    HWND ; hWnd,
    BOOL ; fShow
)

;; mask DWORD ExitWindowsExFlags {
(setq ExitWindowsExFlags DWORD)
(setq EWX_LOGOFF 0x00000000)
(setq EWX_SHUTDOWN 0x00000001)
(setq EWX_REBOOT 0x00000002)
(setq EWX_FORCE 0x00000004)
(setq EWX_POWEROFF 0x00000008)
(setq EWX_FORCEIFHUNG 0x00000010)
;; };

(import "USER32.DLL" "ExitWindowsEx" FailOnFalse
    ExitWindowsExFlags ; uFlags,
    DWORD ; dwReserved
)

(import "USER32.DLL" "FillRect" LongFailIfZero
    HDC ; hDC,
    LPRECT ; lprc,
    HRSRC ; hbr
)

(import "USER32.DLL" "FindWindowA" HWND
    LPCSTR ; lpClassName,
    LPCSTR ; lpWindowName
)
(import "USER32.DLL" "FindWindowW" HWND
    LPCWSTR ; lpClassName,
    LPCWSTR ; lpWindowName
)

(import "USER32.DLL" "FindWindowExA" HWND
    HWND ; hwndParent,
    HWND ; hwndChildAfter,
    LPCSTR ; lpszClass,
    LPCSTR ; lpszWindow
)
(import "USER32.DLL" "FindWindowExW" HWND
    HWND ; hwndParent,
    HWND ; hwndChildAfter,
    LPCWSTR ; lpszClass,
    LPCWSTR ; lpszWindow
)

(import "USER32.DLL" "FlashWindow" BOOL
    HWND ; hWnd,
    BOOL ; bInvert
)

;; mask DWORD FlashWindowExFlags {
(setq FlashWindowExFlags DWORD)
(setq FLASHW_STOP 0)
(setq FLASHW_CAPTION 0x00000001)
(setq FLASHW_TRAY 0x00000002)
(setq FLASHW_TIMER 0x00000004)
(setq FLASHW_TIMERNOFG 0x00000008)
;; };

;; typedef struct _FLASHWINFO  { {
(struct '_FLASHWINFO
    UINT ; cbSize
    HWND ; hwnd
    FlashWindowExFlags ; dwFlags
    UINT ; uCount
    DWORD ; dwTimeout
)
(setq FLASHWINFO _FLASHWINFO)
;; } FLASHWINFO
(setq PFLASHWINFO "void*")

(import "USER32.DLL" "FlashWindowEx" BOOL
    PFLASHWINFO ; pfwi
)

(import "USER32.DLL" "FrameRect" LongFailIfZero
    HDC ; hDC,
    LPRECT ; lprc,
    HRSRC ; hbr
)

(import "USER32.DLL" "SetRect" FailOnFalse
    LPRECT ; lprc,
    "int" ; xLeft,
    "int" ; yTop,
    "int" ; xRight,
    "int" ; yBottom
)

(import "USER32.DLL" "SetRectEmpty" FailOnFalse
    LPRECT ; lprc
)

(import "USER32.DLL" "EqualRect" FailOnFalse
    LPRECT ; lprc1,
    LPRECT ; lprc2
)

(import "USER32.DLL" "OffsetRect" FailOnFalse
    LPRECT ; lprc,
    "int" ; dx,
    "int" ; dy
)

(import "USER32.DLL" "InflateRect" FailOnFalse
    LPRECT ; lprc,
    "int" ; dx,
    "int" ; dy
)

;; value DWORD VirtualKey {
(setq VirtualKey DWORD)
(setq VK_LBUTTON 0x01)
(setq VK_RBUTTON 0x02)
(setq VK_CANCEL 0x03)
(setq VK_MBUTTON 0x04)

(setq VK_XBUTTON1 0x05)
(setq VK_XBUTTON2 0x06)

(setq VK_BACK 0x08)
(setq VK_TAB 0x09)

(setq VK_CLEAR 0x0C)
(setq VK_RETURN 0x0D)

(setq VK_SHIFT 0x10)
(setq VK_CONTROL 0x11)
(setq VK_MENU 0x12)
(setq VK_PAUSE 0x13)
(setq VK_CAPITAL 0x14)

(setq VK_KANA 0x15)
(setq VK_JUNJA 0x17)
(setq VK_FINAL 0x18)
(setq VK_KANJI 0x19)

(setq VK_ESCAPE 0x1B)

(setq VK_CONVERT 0x1C)
(setq VK_NONCONVERT 0x1D)
(setq VK_ACCEPT 0x1E)
(setq VK_MODECHANGE 0x1F)

(setq VK_SPACE 0x20)
(setq VK_PRIOR 0x21)
(setq VK_NEXT 0x22)
(setq VK_END 0x23)
(setq VK_HOME 0x24)
(setq VK_LEFT 0x25)
(setq VK_UP 0x26)
(setq VK_RIGHT 0x27)
(setq VK_DOWN 0x28)
(setq VK_SELECT 0x29)
(setq VK_PRINT 0x2A)
(setq VK_EXECUTE 0x2B)
(setq VK_SNAPSHOT 0x2C)
(setq VK_INSERT 0x2D)
(setq VK_DELETE 0x2E)
(setq VK_HELP 0x2F)

(setq VK_0 0x30)
(setq VK_1 0x31)
(setq VK_2 0x32)
(setq VK_3 0x33)
(setq VK_4 0x34)
(setq VK_5 0x35)
(setq VK_6 0x36)
(setq VK_7 0x37)
(setq VK_8 0x38)
(setq VK_9 0x39)

(setq VK_A 0x41)
(setq VK_B 0x42)
(setq VK_C 0x43)
(setq VK_D 0x44)
(setq VK_E 0x45)
(setq VK_F 0x46)
(setq VK_G 0x47)
(setq VK_H 0x48)
(setq VK_I 0x49)
(setq VK_J 0x4A)
(setq VK_K 0x4B)
(setq VK_L 0x4C)
(setq VK_M 0x4D)
(setq VK_N 0x4E)
(setq VK_O 0x4F)
(setq VK_P 0x50)
(setq VK_Q 0x51)
(setq VK_R 0x52)
(setq VK_S 0x53)
(setq VK_T 0x54)
(setq VK_U 0x55)
(setq VK_V 0x56)
(setq VK_W 0x57)
(setq VK_X 0x58)
(setq VK_Y 0x59)
(setq VK_Z 0x5A)

(setq VK_LWIN 0x5B)
(setq VK_RWIN 0x5C)
(setq VK_APPS 0x5D)

(setq VK_SLEEP 0x5F)

(setq VK_NUMPAD0 0x60)
(setq VK_NUMPAD1 0x61)
(setq VK_NUMPAD2 0x62)
(setq VK_NUMPAD3 0x63)
(setq VK_NUMPAD4 0x64)
(setq VK_NUMPAD5 0x65)
(setq VK_NUMPAD6 0x66)
(setq VK_NUMPAD7 0x67)
(setq VK_NUMPAD8 0x68)
(setq VK_NUMPAD9 0x69)
(setq VK_MULTIPLY 0x6A)
(setq VK_ADD 0x6B)
(setq VK_SEPARATOR 0x6C)
(setq VK_SUBTRACT 0x6D)
(setq VK_DECIMAL 0x6E)
(setq VK_DIVIDE 0x6F)
(setq VK_F1 0x70)
(setq VK_F2 0x71)
(setq VK_F3 0x72)
(setq VK_F4 0x73)
(setq VK_F5 0x74)
(setq VK_F6 0x75)
(setq VK_F7 0x76)
(setq VK_F8 0x77)
(setq VK_F9 0x78)
(setq VK_F10 0x79)
(setq VK_F11 0x7A)
(setq VK_F12 0x7B)
(setq VK_F13 0x7C)
(setq VK_F14 0x7D)
(setq VK_F15 0x7E)
(setq VK_F16 0x7F)
(setq VK_F17 0x80)
(setq VK_F18 0x81)
(setq VK_F19 0x82)
(setq VK_F20 0x83)
(setq VK_F21 0x84)
(setq VK_F22 0x85)
(setq VK_F23 0x86)
(setq VK_F24 0x87)

(setq VK_NUMLOCK 0x90)
(setq VK_SCROLL 0x91)

(setq VK_OEM_FJ_JISHO 0x92)
(setq VK_OEM_FJ_MASSHOU 0x93)
(setq VK_OEM_FJ_TOUROKU 0x94)
(setq VK_OEM_FJ_LOYA 0x95)
(setq VK_OEM_FJ_ROYA 0x96)

(setq VK_LSHIFT 0xA0)
(setq VK_RSHIFT 0xA1)
(setq VK_LCONTROL 0xA2)
(setq VK_RCONTROL 0xA3)
(setq VK_LMENU 0xA4)
(setq VK_RMENU 0xA5)

(setq VK_BROWSER_BACK 0xA6)
(setq VK_BROWSER_FORWARD 0xA7)
(setq VK_BROWSER_REFRESH 0xA8)
(setq VK_BROWSER_STOP 0xA9)
(setq VK_BROWSER_SEARCH 0xAA)
(setq VK_BROWSER_FAVORITES 0xAB)
(setq VK_BROWSER_HOME 0xAC)

(setq VK_VOLUME_MUTE 0xAD)
(setq VK_VOLUME_DOWN 0xAE)
(setq VK_VOLUME_UP 0xAF)
(setq VK_MEDIA_NEXT_TRACK 0xB0)
(setq VK_MEDIA_PREV_TRACK 0xB1)
(setq VK_MEDIA_STOP 0xB2)
(setq VK_MEDIA_PLAY_PAUSE 0xB3)
(setq VK_LAUNCH_MAIL 0xB4)
(setq VK_LAUNCH_MEDIA_SELECT 0xB5)
(setq VK_LAUNCH_APP1 0xB6)
(setq VK_LAUNCH_APP2 0xB7)

(setq VK_OEM_1 0xBA)
(setq VK_OEM_PLUS 0xBB)
(setq VK_OEM_COMMA 0xBC)
(setq VK_OEM_MINUS 0xBD)
(setq VK_OEM_PERIOD 0xBE)
(setq VK_OEM_2 0xBF)
(setq VK_OEM_3 0xC0)

(setq VK_OEM_4 0xDB)
(setq VK_OEM_5 0xDC)
(setq VK_OEM_6 0xDD)
(setq VK_OEM_7 0xDE)
(setq VK_OEM_8 0xDF)

(setq VK_OEM_AX 0xE1)
(setq VK_OEM_102 0xE2)
(setq VK_ICO_HELP 0xE3)
(setq VK_ICO_00 0xE4)

(setq VK_PROCESSKEY 0xE5)

(setq VK_ICO_CLEAR 0xE6)

(setq VK_PACKET 0xE7)

(setq VK_OEM_RESET 0xE9)
(setq VK_OEM_JUMP 0xEA)
(setq VK_OEM_PA1 0xEB)
(setq VK_OEM_PA2 0xEC)
(setq VK_OEM_PA3 0xED)
(setq VK_OEM_WSCTRL 0xEE)
(setq VK_OEM_CUSEL 0xEF)
(setq VK_OEM_ATTN 0xF0)
(setq VK_OEM_FINISH 0xF1)
(setq VK_OEM_COPY 0xF2)
(setq VK_OEM_AUTO 0xF3)
(setq VK_OEM_ENLW 0xF4)
(setq VK_OEM_BACKTAB 0xF5)

(setq VK_ATTN 0xF6)
(setq VK_CRSEL 0xF7)
(setq VK_EXSEL 0xF8)
(setq VK_EREOF 0xF9)
(setq VK_PLAY 0xFA)
(setq VK_ZOOM 0xFB)
(setq VK_NONAME 0xFC)
(setq VK_PA1 0xFD)
(setq VK_OEM_CLEAR 0xFE)
;; };

(import "USER32.DLL" "GetKeyState" DWORD
    VirtualKey ; nVirtKey
)
(import "USER32.DLL" "GetAsyncKeyState" DWORD
    VirtualKey ; vKey
)

(import "USER32.DLL" "VkKeyScanA" DwordFailIfNeg1
    "char" ; ch
)
(import "USER32.DLL" "VkKeyScanW" DwordFailIfNeg1
    WCHAR ; ch
)

(import "USER32.DLL" "VkKeyScanExA" DwordFailIfNeg1
    "char" ; ch,
    HKL ; dwhkl
)
(import "USER32.DLL" "VkKeyScanExW" DwordFailIfNeg1
    WCHAR ; ch,
    HKL ; dwhkl
)


;; mask DWORD KeyModifier {
(setq KeyModifier DWORD)
(setq MOD_ALT 0x0001)
(setq MOD_CONTROL 0x0002)
(setq MOD_SHIFT 0x0004)
(setq MOD_WIN 0x0008)
;; };

(import "USER32.DLL" "RegisterHotKey" FailOnFalse
    HWND ; hWnd,
    "int" ; id,
    KeyModifier ; fsModifiers,
    VirtualKey ; vk
)

(import "USER32.DLL" "UnregisterHotKey" FailOnFalse
    HWND ; hWnd,
    "int" ; id
)


(import "USER32.DLL" "GetKeyNameTextA" LongFailIfZero
    LONG ; lParam,
    LPSTR ; lpString,
    "int" ; nSize
)
(import "USER32.DLL" "GetKeyNameTextW" LongFailIfZero
    LONG ; lParam,
    LPWSTR ; lpString,
    "int" ; nSize
)

;; typedef struct tagKEYSTATE { {
(struct 'tagKEYSTATE
    BYTE ; st
)
(setq KEYSTATE tagKEYSTATE)
;; } KEYSTATE
(setq LPKEYSTATE "void*")

(import "USER32.DLL" "GetKeyboardState" FailOnFalse
    LPKEYSTATE ; lpKeyState
)
(import "USER32.DLL" "SetKeyboardState" FailOnFalse
    LPKEYSTATE ; lpKeyState
)

(import "USER32.DLL" "GetKeyboardType" LongFailIfZero
    "int" ; nTypeFlag
)

;; typedef struct tagLASTINPUTINFO  { {
(struct 'tagLASTINPUTINFO
    UINT ; cbSize
    DWORD ; dwTime
)
(setq LASTINPUTINFO tagLASTINPUTINFO)
;; } LASTINPUTINFO
(setq PLASTINPUTINFO "void*")

(import "USER32.DLL" "GetLastInputInfo" FailOnFalse
    PLASTINPUTINFO ; plii
)

(setq WNDENUMPROC LPVOID)

(import "USER32.DLL" "EnumThreadWindows" FailOnFalse
    ThreadId ; dwThreadId,
    WNDENUMPROC ; lpfn,
    LPARAM ; lParam
)

(import "USER32.DLL" "EnumWindows" FailOnFalse
    WNDENUMPROC ; lpEnumFunc,
    LPARAM ; lParam
)

(import "USER32.DLL" "EnumChildWindows" FailOnFalse
    HWND ; hWndParent,
    WNDENUMPROC ; lpEnumFunc,
    LPARAM ; lParam
)

(import "USER32.DLL" "EnumDesktopWindows" FailOnFalse
    HDESK ; hDesktop,
    WNDENUMPROC ; lpfn,
    LPARAM ; lParam
)

(import "USER32.DLL" "GetThreadDesktop" HDESK
    ThreadId ; dwThreadId
)

(import "USER32.DLL" "CloseDesktop" FailOnFalse
    HDESK ; hDesktop
)

;; mask DWORD DesktopAccessMask {
(setq DesktopAccessMask DWORD)
(setq DESKTOP_READOBJECTS 0x0001)
(setq DESKTOP_CREATEWINDOW 0x0002)
(setq DESKTOP_CREATEMENU 0x0004)
(setq DESKTOP_HOOKCONTROL 0x0008)
(setq DESKTOP_JOURNALRECORD 0x0010)
(setq DESKTOP_JOURNALPLAYBACK 0x0020)
(setq DESKTOP_ENUMERATE 0x0040)
(setq DESKTOP_WRITEOBJECTS 0x0080)
(setq DESKTOP_SWITCHDESKTOP 0x0100)
;; };

(import "USER32.DLL" "CreateDesktopA" HDESK
    LPCSTR ; lpszDesktop,
    LPCSTR ; lpszDevice,
    LPDEVMODEA ; pDevmode,
    DWORD ; dwFlags,
    DesktopAccessMask ; dwDesiredAccess,
    LPSECURITY_ATTRIBUTES ; lpsa
)

(import "USER32.DLL" "CreateDesktopW" HDESK
    LPCWSTR ; lpszDesktop,
    LPCWSTR ; lpszDevice,
    LPDEVMODEW ; pDevmode,
    DWORD ; dwFlags,
    DesktopAccessMask ; dwDesiredAccess,
    LPSECURITY_ATTRIBUTES ; lpsa
)

(setq DESKTOPENUMPROCA LPVOID)
(setq DESKTOPENUMPROCW LPVOID)

(import "USER32.DLL" "EnumDesktopsA" FailOnFalse
    HWINSTA ; hwinsta,
    DESKTOPENUMPROCA ; lpEnumFunc,
    LPARAM ; lParam
)
(import "USER32.DLL" "EnumDesktopsW" FailOnFalse
    HWINSTA ; hwinsta,
    DESKTOPENUMPROCW ; lpEnumFunc,
    LPARAM ; lParam
)

(import "USER32.DLL" "OpenInputDesktop" HDESK
    DWORD ; dwFlags,
    BOOL ; fInherit,
    DesktopAccessMask ; dwDesiredAccess
)

(import "USER32.DLL" "SetThreadDesktop" FailOnFalse
    HDESK ; hDesktop
)

(import "USER32.DLL" "OpenDesktopA" HDESK
    LPCSTR ; lpszDesktop,
    DWORD ; dwFlags,
    BOOL ; fInherit,
    DesktopAccessMask ; dwDesiredAccess
)

(import "USER32.DLL" "OpenDesktopW" HDESK
    LPCWSTR ; lpszDesktop,
    DWORD ; dwFlags,
    BOOL ; fInherit,
    DesktopAccessMask ; dwDesiredAccess
)

(import "USER32.DLL" "SwitchDesktop" FailOnFalse
    HDESK ; hDesktop
)

(import "USER32.DLL" "TileWindows" LongFailIfZero
    HWND ; hwndParent,
    UINT ; wHow,
    LPRECT ; lpRect,
    UINT ; cKids,
    "void*" ; HWND * lpKids
)

(import "USER32.DLL" "CascadeWindows" LongFailIfZero
    HWND ; hwndParent,
    UINT ; wHow,
    LPRECT ; lpRect,
    UINT ; cKids,
    "void*" ; HWND * lpKids
)

(import "USER32.DLL" "BringWindowToTop" FailOnFalse
    HWND ; hWnd
)

;; mask DWORD ButtonState {
(setq ButtonState DWORD)
(setq BST_UNCHECKED 0x0000)
(setq BST_CHECKED 0x0001)
(setq BST_INDETERMINATE 0x0002)
(setq BST_PUSHED 0x0004)
(setq BST_FOCUS 0x0008)
;; };

(import "USER32.DLL" "CheckDlgButton" FailOnFalse
    HWND ; hDlg,
    "int" ; nIDButton,
    ButtonState ; uCheck
)

(import "USER32.DLL" "CheckRadioButton" FailOnFalse
    HWND ; hDlg,
    "int" ; nIDFirstButton,
    "int" ; nIDLastButton,
    "int" ; nIDCheckButton
)

(import "USER32.DLL" "IsDlgButtonChecked" ButtonState
    HWND ; hDlg,
    "int" ; nIDButton
)

(import "USER32.DLL" "GetDlgCtrlID" LongFailIfZero
    HWND ; hWnd
)

(import "USER32.DLL" "GetDlgItem" HWND
    HWND ; hDlg,
    "int" ; nIDDlgItem
)

(import "USER32.DLL" "GetDlgItemInt" LongFailIfZero
    HWND ; hDlg,
    "int" ; nIDDlgItem,
    "void*" ; BOOL * lpTranslated,
    BOOL ; bSigned
)


;; mask DWORD DrawTextFlags {
(setq DrawTextFlags DWORD)
(setq DT_TOP 0x00000000)
(setq DT_LEFT 0x00000000)
(setq DT_CENTER 0x00000001)
(setq DT_RIGHT 0x00000002)
(setq DT_VCENTER 0x00000004)
(setq DT_BOTTOM 0x00000008)
(setq DT_WORDBREAK 0x00000010)
(setq DT_SINGLELINE 0x00000020)
(setq DT_EXPANDTABS 0x00000040)
(setq DT_TABSTOP 0x00000080)
(setq DT_NOCLIP 0x00000100)
(setq DT_EXTERNALLEADING 0x00000200)
(setq DT_CALCRECT 0x00000400)
(setq DT_NOPREFIX 0x00000800)
(setq DT_INTERNAL 0x00001000)

(setq DT_EDITCONTROL 0x00002000)
(setq DT_PATH_ELLIPSIS 0x00004000)
(setq DT_END_ELLIPSIS 0x00008000)
(setq DT_MODIFYSTRING 0x00010000)
(setq DT_RTLREADING 0x00020000)
(setq DT_WORD_ELLIPSIS 0x00040000)
(setq DT_NOFULLWIDTHCHARBREAK 0x00080000)
(setq DT_HIDEPREFIX 0x00100000)
(setq DT_PREFIXONLY 0x00200000)
;; };

(import "USER32.DLL" "DrawTextA" LongFailIfZero
    HDC ; hDC,
    LPCSTR ; lpString,
    "int" ; nCount,
    LPRECT ; lpRect,
    DrawTextFlags ; uFormat
)

(import "USER32.DLL" "DrawTextW" LongFailIfZero
    HDC ; hDC,
    LPCWSTR ; lpString,
    "int" ; nCount,
    LPRECT ; lpRect,
    DrawTextFlags ; uFormat
)

;; typedef struct tagDRAWTEXTPARAMS { {
(struct 'tagDRAWTEXTPARAMS
    UINT ; cbSize
    "int" ; iTabLength
    "int" ; iLeftMargin
    "int" ; iRightMargin
    UINT ; uiLengthDrawn
)
(setq DRAWTEXTPARAMS tagDRAWTEXTPARAMS)
;; } DRAWTEXTPARAMS
(setq LPDRAWTEXTPARAMS "void*")

(import "USER32.DLL" "DrawTextExA" LongFailIfZero
    HDC ; hDC,
    LPSTR ; lpString,
    "int" ; nCount,
    LPRECT ; lpRect,
    DrawTextFlags ; uFormat,
    LPDRAWTEXTPARAMS ; lpDrawTextParams
)

(import "USER32.DLL" "DrawTextExW" LongFailIfZero
    HDC ; hDC,
    LPWSTR ; lpString,
    "int" ; nCount,
    LPRECT ; lpRect,
    DrawTextFlags ; uFormat,
    LPDRAWTEXTPARAMS ; lpDrawTextParams
)

(import "USER32.DLL" "GetTabbedTextExtentA" DwordFailIfZero
    HDC ; hDC,
    LPCSTR ; lpString,
    "int" ; nCount,
    "int" ; nTabPositions,
    "void*" ; "int" * lpnTabStopPositions
)

(import "USER32.DLL" "GetTabbedTextExtentW" DwordFailIfZero
    HDC ; hDC,
    LPCWSTR ; lpString,
    "int" ; nCount,
    "int" ; nTabPositions,
    "void*" ; "int" * lpnTabStopPositions
)

(import "USER32.DLL" "TabbedTextOutA" DwordFailIfZero
    HDC ; hDC,
    "int" ; X,
    "int" ; Y,
    LPCSTR ; lpString,
    "int" ; nCount,
    "int" ; nTabPositions,
    "void*" ; "int" * lpnTabStopPositions,
    "int" ; nTabOrigin
)

(import "USER32.DLL" "TabbedTextOutW" DwordFailIfZero
    HDC ; hDC,
    "int" ; X,
    "int" ; Y,
    LPCWSTR ; lpString,
    "int" ; nCount,
    "int" ; nTabPositions,
    "void*" ; "int" * lpnTabStopPositions,
    "int" ; nTabOrigin
)



;; typedef struct tagALTTABINFO { {
(struct 'tagALTTABINFO
    DWORD ; cbSize
    "int" ; cItems
    "int" ; cColumns
    "int" ; cRows
    "int" ; iColFocus
    "int" ; iRowFocus
    "int" ; cxItem
    "int" ; cyItem
    ;; ptStart
    LONG ; x
    LONG ; y
)
(setq ALTTABINFO tagALTTABINFO)
;; } ALTTABINFO
(setq PALTTABINFO "void*")
(setq LPALTTABINFO "void*")

(import "USER32.DLL" "GetAltTabInfoA" FailOnFalse
    HWND ; hwnd,
    "int" ; iItem,
    PALTTABINFO ; pati,
    LPSTR ; pszItemText,
    UINT ; cchItemText
)

(import "USER32.DLL" "GetAltTabInfoW" FailOnFalse
    HWND ; hwnd,
    "int" ; iItem,
    PALTTABINFO ; pati,
    LPWSTR ; pszItemText,
    UINT ; cchItemText
)

(import "USER32.DLL" "RealGetWindowClassA" LongFailIfZero
    HWND ; hwnd,
    LPSTR ; pszType,
    UINT ; cchType
)
(import "USER32.DLL" "RealGetWindowClassW" LongFailIfZero
    HWND ; hwnd,
    LPWSTR ; pszType,
    UINT ; cchType
)

(import "USER32.DLL" "GetQueueStatus" DWORD
    QueueStates ; flags
)

(import "USER32.DLL" "BlockInput" FailOnFalse
    BOOL ; fBlockIt
)




;; mask DWORD KeybdEventFlags {
(setq KeybdEventFlags DWORD)
(setq KEYEVENTF_EXTENDEDKEY 0x0001)
(setq KEYEVENTF_KEYUP 0x0002)
(setq KEYEVENTF_UNICODE 0x0004)
(setq KEYEVENTF_SCANCODE 0x0008)
;; };

(import "USER32.DLL" "keybd_event" VOID
    VirtualKey ; bVk,
    BYTE ; bScan,
    KeybdEventFlags ; dwFlags,
    DWORD ; dwExtraInfo
)

;; mask DWORD MouseEventFlags {
(setq MouseEventFlags DWORD)
(setq MOUSEEVENTF_MOVE 0x0001)
(setq MOUSEEVENTF_LEFTDOWN 0x0002)
(setq MOUSEEVENTF_LEFTUP 0x0004)
(setq MOUSEEVENTF_RIGHTDOWN 0x0008)
(setq MOUSEEVENTF_RIGHTUP 0x0010)
(setq MOUSEEVENTF_MIDDLEDOWN 0x0020)
(setq MOUSEEVENTF_MIDDLEUP 0x0040)
(setq MOUSEEVENTF_XDOWN 0x0080)
(setq MOUSEEVENTF_XUP 0x0100)
(setq MOUSEEVENTF_WHEEL 0x0800)
(setq MOUSEEVENTF_VIRTUALDESK 0x4000)
(setq MOUSEEVENTF_ABSOLUTE 0x8000)
;; };

(import "USER32.DLL" "mouse_event" VOID
    MouseEventFlags ; dwFlags,
    DWORD ; dx,
    DWORD ; dy,
    DWORD ; dwData,
    DWORD ; dwExtraInfo
)


(import "USER32.DLL" "GetInputState" BOOL
     ; 
)

;; mask DWORD DrawCaptionFlags {
(setq DrawCaptionFlags DWORD)
(setq DC_ACTIVE 0x0001)
(setq DC_SMALLCAP 0x0002)
(setq DC_ICON 0x0004)
(setq DC_TEXT 0x0008)
(setq DC_INBUTTON 0x0010)
(setq DC_GRADIENT 0x0020)
;; };

(import "USER32.DLL" "DrawCaption" FailOnFalse
    HWND ; hwnd,
    HDC ; hdc,
    LPRECT ; lprc,
    DrawCaptionFlags ; dwFlags
)

(import "USER32.DLL" "DrawAnimatedRects" FailOnFalse
    HWND ; hwnd,
    "int" ; idAni,
    LPRECT ; lprcFrom,
    LPRECT ; lprcTo
)

;; mask DWORD BorderStyle {
(setq BorderStyle DWORD)
(setq BDR_RAISEDOUTER 0x0001)
(setq BDR_SUNKENOUTER 0x0002)
(setq BDR_RAISEDINNER 0x0004)
(setq BDR_SUNKENINNER 0x0008)
;; };

;; mask DWORD BorderType {
(setq BorderType DWORD)
(setq BF_LEFT 0x0001)
(setq BF_TOP 0x0002)
(setq BF_RIGHT 0x0004)
(setq BF_BOTTOM 0x0008)

(setq BF_DIAGONAL 0x0010)

(setq BF_MIDDLE 0x0800)
(setq BF_SOFT 0x1000)
(setq BF_ADJUST 0x2000)
(setq BF_FLAT 0x4000)
(setq BF_MONO 0x8000)
;; };

(import "USER32.DLL" "DrawEdge" FailOnFalse
    HDC ; hdc,
    LPRECT ; lprc,
    BorderStyle ; edge,
    BorderType ; grfFlags
)

;; value DWORD DrawFrameControlType {
(setq DrawFrameControlType DWORD)
(setq DFC_CAPTION 1)
(setq DFC_MENU 2)
(setq DFC_SCROLL 3)
(setq DFC_BUTTON 4)
(setq DFC_POPUPMENU 5)
;; };

;; mask DWORD DrawFrameControlState {
(setq DrawFrameControlState DWORD)
(setq DFCS_INACTIVE 0x0100)
(setq DFCS_PUSHED 0x0200)
(setq DFCS_CHECKED 0x0400)

(setq DFCS_TRANSPARENT 0x0800)
(setq DFCS_HOT 0x1000)

(setq DFCS_ADJUSTRECT 0x2000)
(setq DFCS_FLAT 0x4000)
(setq DFCS_MONO 0x8000)
;; };

(import "USER32.DLL" "DrawFrameControl" FailOnFalse
    HDC ; hDC,
    LPRECT ; lprc,
    DrawFrameControlType ; type,
    DrawFrameControlState ; state
)

(import "USER32.DLL" "DrawIcon" FailOnFalse
    HDC ; hDC,
    "int" ; X,
    "int" ; Y,
    HRSRC ; hIcon
)

;; value DWORD DrawIconExFlags {
(setq DrawIconExFlags DWORD)
(setq DI_MASK 0x0001)
(setq DI_IMAGE 0x0002)
(setq DI_NORMAL 0x0003)
(setq DI_COMPAT 0x0004)
(setq DI_DEFAULTSIZE 0x0008)
;; };


(import "USER32.DLL" "DrawIconEx" FailOnFalse
    HDC ; hdc,
    "int" ; xLeft,
    "int" ; yTop,
    HRSRC ; hIcon,
    "int" ; cxWidth,
    "int" ; cyWidth,
    UINT ; istepIfAniCur,
    HRSRC ; hbrFlickerFreeDraw,
    DrawIconExFlags ; diFlags
)

(setq DRAWSTATEPROC LPVOID)

;; mask DWORD DrawStateFlags {
(setq DrawStateFlags DWORD)
(setq DSS_NORMAL 0x0000)
(setq DSS_UNION 0x0010)
(setq DSS_DISABLED 0x0020)
(setq DSS_MONO 0x0080)
(setq DSS_HIDEPREFIX 0x0200)
(setq DSS_PREFIXONLY 0x0400)
(setq DSS_RIGHT 0x8000)
;; };

(import "USER32.DLL" "DrawStateA" FailOnFalse
    HDC ; hDC,
    HRSRC ; hBrush,
    DRAWSTATEPROC ; pfnOutput,
    LPARAM ; lParam,
    WPARAM ; wParam,
    "int" ; x,
    "int" ; y,
    "int" ; cx,
    "int" ; cy,
    DrawStateFlags ; flags
)

(import "USER32.DLL" "DrawStateW" FailOnFalse
    HDC ; hDC,
    HRSRC ; hBrush,
    DRAWSTATEPROC ; pfnOutput,
    LPARAM ; lParam,
    WPARAM ; wParam,
    "int" ; x,
    "int" ; y,
    "int" ; cx,
    "int" ; cy,
    DrawStateFlags ; flags
)

(setq GRAYSTRINGPROC LPVOID)

(import "USER32.DLL" "GrayStringA" FailOnFalse
    HDC ; hDC,
    HRSRC ; hBrush,
    GRAYSTRINGPROC ; lpOutputFunc,
    LPARAM ; lpData,
    "int" ; nCount,
    "int" ; X,
    "int" ; Y,
    "int" ; nWidth,
    "int" ; nHeight
)

(import "USER32.DLL" "GrayStringW" FailOnFalse
    HDC ; hDC,
    HRSRC ; hBrush,
    GRAYSTRINGPROC ; lpOutputFunc,
    LPARAM ; lpData,
    "int" ; nCount,
    "int" ; X,
    "int" ; Y,
    "int" ; nWidth,
    "int" ; nHeight
)

(import "USER32.DLL" "CreateCaret" FailOnFalse
    HWND ; hWnd,
    HRSRC ; hBitmap,
    "int" ; nWidth,
    "int" ; nHeight
)

(import "USER32.DLL" "DestroyCaret" FailOnFalse
     ; 
)

(import "USER32.DLL" "SetCaretBlinkTime" FailOnFalse
    UINT ; uMSeconds
)

(import "USER32.DLL" "GetCaretBlinkTime" LongFailIfZero
     ; 
)

(import "USER32.DLL" "SetCaretPos" FailOnFalse
    "int" ; X,
    "int" ; Y
)

(import "USER32.DLL" "GetCaretPos" FailOnFalse
    LPPOINT ; lpPoint
)

(import "USER32.DLL" "ShowCaret" FailOnFalse
    HWND ; hWnd
)

(import "USER32.DLL" "HideCaret" FailOnFalse
    HWND ; hWnd
)



;; mask DWORD WinstaAccessMask {
(setq WinstaAccessMask DWORD)
(setq WINSTA_ENUMDESKTOPS 0x0001)
(setq WINSTA_READATTRIBUTES 0x0002)
(setq WINSTA_ACCESSCLIPBOARD 0x0004)
(setq WINSTA_CREATEDESKTOP 0x0008)
(setq WINSTA_WRITEATTRIBUTES 0x0010)
(setq WINSTA_ACCESSGLOBALATOMS 0x0020)
(setq WINSTA_EXITWINDOWS 0x0040)
(setq WINSTA_ENUMERATE 0x0100)
(setq WINSTA_READSCREEN 0x0200)
;; };

(import "USER32.DLL" "CreateWindowStationA" HWINSTA
    LPCSTR ; lpwinsta,
    DWORD ; dwReserved,
    WinstaAccessMask ; dwDesiredAccess,
    LPSECURITY_ATTRIBUTES ; lpsa
)

(import "USER32.DLL" "CreateWindowStationW" HWINSTA
    LPCWSTR ; lpwinsta,
    DWORD ; dwReserved,
    WinstaAccessMask ; dwDesiredAccess,
    LPSECURITY_ATTRIBUTES ; lpsa
)

(import "USER32.DLL" "CloseWindowStation" FailOnFalse
    HWINSTA ; hWinSta
)

(setq WINSTAENUMPROCA LPVOID)
(setq WINSTAENUMPROCW LPVOID)

(import "USER32.DLL" "EnumWindowStationsA" FailOnFalse
    WINSTAENUMPROCA ; lpEnumFunc,
    LPARAM ; lParam
)
(import "USER32.DLL" "EnumWindowStationsW" FailOnFalse
    WINSTAENUMPROCW ; lpEnumFunc,
    LPARAM ; lParam
)

(import "USER32.DLL" "GetProcessWindowStation" HWINSTA
     ; 
)

(import "USER32.DLL" "SetProcessWindowStation" FailOnFalse
    HWINSTA ; hWinSta
)

(import "USER32.DLL" "OpenWindowStationA" HWINSTA
    LPCSTR ; lpszWinSta,
    BOOL ; fInherit,
    WinstaAccessMask ; dwDesiredAccess
)
(import "USER32.DLL" "OpenWindowStationW" HWINSTA
    LPCWSTR ; lpszWinSta,
    BOOL ; fInherit,
    WinstaAccessMask ; dwDesiredAccess
)



;; value DWORD ScrollWhich {
(setq ScrollWhich DWORD)
(setq SB_HORZ 0)
(setq SB_VERT 1)
(setq SB_CTL 2)
(setq SB_BOTH 3)
;; };

;; mask DWORD ScrollEnableFlags {
(setq ScrollEnableFlags DWORD)
(setq ESB_ENABLE_BOTH 0x0000)
(setq ESB_DISABLE_LEFT 0x0001)
(setq ESB_DISABLE_RIGHT 0x0002)
;; };

(import "USER32.DLL" "EnableScrollBar" FailOnFalse
    HWND ; hWnd,
    ScrollWhich ; wSBflags,
    ScrollEnableFlags ; wArrows
)

;; mask DWORD ScrollInfoFlags {
(setq ScrollInfoFlags DWORD)
(setq SIF_RANGE 0x0001)
(setq SIF_PAGE 0x0002)
(setq SIF_POS 0x0004)
(setq SIF_DISABLENOSCROLL 0x0008)
(setq SIF_TRACKPOS 0x0010)
;; };

;; typedef struct tagSCROLLINFO { {
(struct 'tagSCROLLINFO
    UINT ; cbSize
    ScrollInfoFlags ; fMask
    "int" ; nMin
    "int" ; nMax
    UINT ; nPage
    "int" ; nPos
    "int" ; nTrackPos
)
(setq SCROLLINFO tagSCROLLINFO)
;; } SCROLLINFO
(setq LPSCROLLINFO "void*")

(import "USER32.DLL" "SetScrollInfo" "int"
    HWND ; hWnd,
    ScrollWhich ; nWhich,
    LPSCROLLINFO ; lpScrollInfo,
    BOOL ; fRedraw
)

(import "USER32.DLL" "SetScrollPos" LongFailIfZero
    HWND ; hWnd,
    ScrollWhich ; nBar,
    "int" ; nPos,
    BOOL ; bRedraw
)

(import "USER32.DLL" "SetScrollRange" FailOnFalse
    HWND ; hWnd,
    ScrollWhich ; nBar,
    "int" ; nMinPos,
    "int" ; nMaxPos,
    BOOL ; bRedraw
)

;; typedef struct tagSCROLLBARINFO { {
(struct 'tagSCROLLBARINFO
    DWORD ; cbSize
    ;; rcScrollBar
    LONG ; left
    LONG ; top
    LONG ; right
    LONG ; bottom
    "int" ; dxyLineButton
    "int" ; xyThumbTop
    "int" ; xyThumbBottom
    "int" ; reserved
    DWORD ; rgstate
)
(setq SCROLLBARINFO tagSCROLLBARINFO)
;; } SCROLLBARINFO
(setq PSCROLLBARINFO "void*")
(setq LPSCROLLBARINFO "void*")

(import "USER32.DLL" "GetScrollBarInfo" FailOnFalse
    HWND ; hwnd,
    SystemObjectId ; idObject,
    PSCROLLBARINFO ; psbi
)

(import "USER32.DLL" "GetScrollInfo" FailOnFalse
    HWND ; hwnd,
    ScrollWhich ; nBar,
    LPSCROLLINFO ; lpScrollInfo
)

(import "USER32.DLL" "GetScrollPos" LongFailIfZero
    HWND ; hWnd,
    ScrollWhich ; nBar
)

(import "USER32.DLL" "GetScrollRange" FailOnFalse
    HWND ; hWnd,
    ScrollWhich ; nBar,
    "void*" ; "int" * lpMinPos,
    "void*" ; "int" * lpMaxPos
)

(import "USER32.DLL" "ShowScrollBar" FailOnFalse
    HWND ; hWnd,
    ScrollWhich ; nBar,
    BOOL ; bShow
)

;; typedef struct tagCOMBOBOXINFO { {
(struct 'tagCOMBOBOXINFO
    DWORD ; cbSize
    ;; rcItem
    LONG ; left
    LONG ; top
    LONG ; right
    LONG ; bottom
    ;; rcButton
    LONG ; left
    LONG ; top
    LONG ; right
    LONG ; bottom
    DWORD ; stateButton
    HWND ; hwndCombo
    HWND ; hwndItem
    HWND ; hwndList
)
(setq COMBOBOXINFO tagCOMBOBOXINFO)
;; } COMBOBOXINFO
(setq PCOMBOBOXINFO "void*")
(setq LPCOMBOBOXINFO "void*")

(import "USER32.DLL" "GetComboBoxInfo" FailOnFalse
    HWND ; hwndCombo,
    PCOMBOBOXINFO ; pcbi
)

(import "USER32.DLL" "GetListBoxInfo" "int"
    HWND ; hwnd
)

;; typedef struct tagTITLEBARINFO { {
(struct 'tagTITLEBARINFO
    DWORD ; cbSize
    ;; rcTitleBar
    LONG ; left
    LONG ; top
    LONG ; right
    LONG ; bottom
    DWORD ; rgstate
)
(setq TITLEBARINFO tagTITLEBARINFO)
;; } TITLEBARINFO
(setq PTITLEBARINFO "void*")
(setq LPTITLEBARINFO "void*")

(import "USER32.DLL" "GetTitleBarInfo" BOOL
    HWND ; hwnd,
    PTITLEBARINFO ; pti
)

(setq TIMERPROC LPVOID)

(import "USER32.DLL" "SetTimer" DwordFailIfZero
    HWND ; hWnd,
    DWORD ; nIDEvent,
    "int" ; uElapse,
    TIMERPROC ; lpTimerFunc
)

(import "USER32.DLL" "KillTimer" FailOnFalse
    HWND ; hWnd,
    DWORD ; uIDEvent
)

(import "USER32.DLL" "SetDoubleClickTime" FailOnFalse
    "int" ; nTimeout
)

(import "USER32.DLL" "GetDoubleClickTime" "int"
     ; 
)

(import "USER32.DLL" "SetMessageExtraInfo" LPARAM
    LPARAM ; lParam
)

;; mask DWORD TrackMouseEventFlags {
(setq TrackMouseEventFlags DWORD)
(setq TME_HOVER 0x00000001)
(setq TME_LEAVE 0x00000002)
(setq TME_NONCLIENT 0x00000010)
(setq TME_QUERY 0x40000000)
(setq TME_CANCEL 0x80000000)
;; };

;; typedef struct tagTRACKMOUSEEVENT  { {
(struct 'tagTRACKMOUSEEVENT
    DWORD ; cbSize
    TrackMouseEventFlags ; dwFlags
    HWND ; hwndTrack
    DWORD ; dwHoverTime
)
(setq TRACKMOUSEEVENT tagTRACKMOUSEEVENT)
;; } TRACKMOUSEEVENT
(setq LPTRACKMOUSEEVENT "void*")



(import "USER32.DLL" "TrackMouseEvent" FailOnFalse
    LPTRACKMOUSEEVENT ; lpEventTrack
)

(import "USER32.DLL" "SwapMouseButton" BOOL
    BOOL ; fSwap
)

(import "USER32.DLL" "MapWindowPoints" LongFailIfZero
    HWND ; hWndFrom,
    HWND ; hWndTo,
    LPPOINT ; lpPoints,
    "int" ; cPoints
)


;; category User32StringExports:

(import "USER32.DLL" "LoadStringA" LongFailIfZero
    HINSTANCE ; hInstance,
    UINT ; uID,
    LPSTR ; lpBuffer,
    "int" ; nBufferMax
)
(import "USER32.DLL" "LoadStringW" LongFailIfZero
    HINSTANCE ; hInstance,
    UINT ; uID,
    LPWSTR ; lpBuffer,
    "int" ; nBufferMax
)

(load "clipboard.nl")
(load "hook.nl")
