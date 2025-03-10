(context 'WIN32)

;; typedef struct tagCWPSTRUCT  { {
(struct 'tagCWPSTRUCT
    LPARAM ; lParam
    WPARAM ; wParam
    UINT ; message
    HWND ; hwnd
)
(setq CWPSTRUCT tagCWPSTRUCT)
;; } CWPSTRUCT
(setq PCWPSTRUCT (string tagCWPSTRUCT "*"))

;; typedef struct tagCWPRETSTRUCT  { {
(struct 'tagCWPRETSTRUCT
    LRESULT ; lResult
    LPARAM ; lParam
    WPARAM ; wParam
    UINT ; message
    HWND ; hwnd
)
(setq CWPRETSTRUCT tagCWPRETSTRUCT)
;; } CWPRETSTRUCT
(setq PCWPRETSTRUCT (string tagCWPRETSTRUCT "*"))

;; value INT CBTHookCodes {
(setq CBTHookCodes INT)
(setq HCBT_MOVESIZE 0)
(setq HCBT_MINMAX 1)
(setq HCBT_QS 2)
(setq HCBT_CREATEWND 3)
(setq HCBT_DESTROYWND 4)
(setq HCBT_ACTIVATE 5)
(setq HCBT_CLICKSKIPPED 6)
(setq HCBT_KEYSKIPPED 7)
(setq HCBT_SYSCOMMAND 8)
(setq HCBT_SETFOCUS 9)
;; };

;; value WPARAM HookProcType {
(setq HookProcType WPARAM)
(setq WH_CALLWNDPROC 4)
(setq WH_CALLWNDPROCRET 12)
(setq WH_CBT 5)
(setq WH_DEBUG 9)
(setq WH_FOREGROUNDIDLE 11)
(setq WH_GETMESSAGE 3)
(setq WH_JOURNALPLAYBACK 1)
(setq WH_JOURNALRECORD 0)
(setq WH_KEYBOARD 2)
(setq WH_KEYBOARD_LL 13)
(setq WH_MOUSE 7)
(setq WH_MOUSE_LL 14)
(setq WH_MSGFILTER -1)
(setq WH_SHELL 10)
(setq WH_SYSMSGFILTER 6)
;; };

;; typedef struct tagDEBUGHOOKINFO  { {
(struct 'tagDEBUGHOOKINFO
    DWORD ; idThread
    DWORD ; idThreadInstaller
    LPARAM ; lParam
    WPARAM ; wParam
    INT ; code
)
(setq DEBUGHOOKINFO tagDEBUGHOOKINFO)
;; } DEBUGHOOKINFO
(setq PDEBUGHOOKINFO (string tagDEBUGHOOKINFO "*"))

;; typedef struct tagEVENTMSG  { {
(struct 'tagEVENTMSG
    UINT ; message
    UINT ; paramL
    UINT ; paramH
    DWORD ; time
    HWND ; hwnd
)
(setq EVENTMSG tagEVENTMSG)
;; } EVENTMSG
(setq PEVENTMSG (string tagEVENTMSG "*"))

;; value INT HookCode {
(setq HookCode INT)
(setq HC_GETNEXT 1)
(setq HC_SKIP 2)
(setq HC_NOREMOVE 3)
(setq HC_SYSMODALON 4)
(setq HC_SYSMODALOFF 5)
;; };

;; typedef struct tagKBDLLHOOKSTRUCT  { {
(struct 'tagKBDLLHOOKSTRUCT
    DWORD ; vkCode
    DWORD ; scanCode
    DWORD ; flags
    DWORD ; time
    ULONG_PTR ; dwExtraInfo
)
(setq KBDLLHOOKSTRUCT tagKBDLLHOOKSTRUCT)
;; } KBDLLHOOKSTRUCT
(setq PKBDLLHOOKSTRUCT (string tagKBDLLHOOKSTRUCT "*"))

;; typedef struct tagMSLLHOOKSTRUCT  { {
(struct 'tagMSLLHOOKSTRUCT
    ;; pt
    LONG ; x
    LONG ; y
    DWORD ; mouseData
    DWORD ; flags
    DWORD ; time
    ULONG_PTR ; dwExtraInfo
)
(setq MSLLHOOKSTRUCT tagMSLLHOOKSTRUCT)
;; } MSLLHOOKSTRUCT
(setq PMSLLHOOKSTRUCT (string tagMSLLHOOKSTRUCT "*"))

;; value INT InputWhichGeneratedMessage {
(setq InputWhichGeneratedMessage INT)
(setq MSGF_DDEMGR 0x8001)
(setq MSGF_DIALOGBOX 0)
(setq MSGF_MENU 2)
(setq MSGF_SCROLLBAR 5)
;; };

;; typedef struct tagMOUSEHOOKSTRUCT  { {
(struct 'tagMOUSEHOOKSTRUCT
    ;; pt
    LONG ; x
    LONG ; y
    HWND ; hwnd
    UINT ; wHitTestCode
    ULONG_PTR ; dwExtraInfo
)
(setq MOUSEHOOKSTRUCT tagMOUSEHOOKSTRUCT)
;; } MOUSEHOOKSTRUCT
(setq PMOUSEHOOKSTRUCT (string tagMOUSEHOOKSTRUCT "*"))

;; value INT ShellProcHookCode {
(setq ShellProcHookCode INT)
(setq HSHELL_ACCESSIBILITYSTATE 11)
(setq HSHELL_ACTIVATESHELLWINDOW 3)
(setq HSHELL_GETMINRECT 5)
(setq HSHELL_LANGUAGE 8)
(setq HSHELL_REDRAW 6)
(setq HSHELL_TASKMAN 7)
(setq HSHELL_WINDOWACTIVATED 4)
(setq HSHELL_WINDOWCREATED 1)
(setq HSHELL_WINDOWDESTROYED 2)
;; };

;; category HookingFunctions:
;; module USER32.DLL:

(import "USER32.DLL" "CallMsgFilter" BOOL
    LPMSG ; lpMsg,
    "int" ; nCode
)

(import "USER32.DLL" "CallNextHookEx" LRESULT
    HHOOK ; hhk,
    "int" ; nCode,
    WPARAM ; wParam,
    LPARAM ; lParam
)

(import "USER32.DLL" "SetWindowsHookExA" HHOOK
    HookProcType ; idHook,
    HOOKPROC ; lpfn,
    HINSTANCE ; hMod,
    DWORD ; dwThreadId
)

(import "USER32.DLL" "SetWindowsHookExW" HHOOK
    HookProcType ; idHook,
    HOOKPROC ; lpfn,
    HINSTANCE ; hmod,
    DWORD ; dwThreadId
)

(import "USER32.DLL" "UnhookWindowsHookEx" FailOnFalse
    HHOOK ; hhk
)


