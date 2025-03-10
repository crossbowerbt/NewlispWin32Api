#!/bin/newlisp

(change-dir "Win32HeadersNewlisp")
(load "builtin.nl")
(load "main.nl")

(context 'WIN32)

;; Utils

(define (create-wndclass style lpfnWndProc cbClsExtra cbWndExtra
			 hInstance hIcon hCursor hbrBackground
			 lpszMenuName lpszClassName)
        (pack WNDCLASSA (list style lpfnWndProc cbClsExtra cbWndExtra
			      hInstance hIcon hCursor hbrBackground
			      lpszMenuName lpszClassName)))

(define (create-wndproc-callback callback-func)
  (callback callback-func "void*" "void*" "unsigned int" "void*" "void*"))

;; Main

(define (WndProc hwnd message wParam lParam)
  (println "Message in WndProc: " message)
  (cond ((= message WM_DESTROY)
	 (PostQuitMessage 0))
	((= message WM_PAINT)
	 (letn ((ps (dup "\000" 256))
		(rect (dup "\000" 256))
		(hdc (BeginPaint hwnd ps)))
	   (GetClientRect hwnd rect)
	   (DrawTextA hdc "Hello world!" -1 rect
		      (| DT_SINGLELINE DT_CENTER DT_VCENTER))
	   (EndPaint hwnd ps)))
	(true (DefWindowProcA hwnd message wParam lParam))))

(set 'WndProcCallback
     (create-wndproc-callback 'WndProc))

(setq szAppName "MyWindow")

(setq wndclass (create-wndclass
		(| CS_HREDRAW CS_VREDRAW)     ; style
                WndProcCallback               ; window procedure
                0                             ; cls extra
		0                             ; wnd extra
		0                             ; hInstance
		0                             ; hIcon
		0                             ; hCursor
		(GetStockObject WHITE_BRUSH)  ; hbrBackground
		0                             ; menu's class name
		szAppName))                   ; class name

(setq hwclass (RegisterClassA wndclass))

(println "Window class: " hwclass ", last error: " (GetLastError))

(setq hwnd
      (CreateWindowExA
                    0                    ; window ex style
                    szAppName            ; window class name
                    "My test window"     ; window caption
                    WS_OVERLAPPEDWINDOW        ; window style
                    200 ; CW_USEDEFAULT        ; initial x position
                    200 ; CW_USEDEFAULT        ; initial y position
                    300 ;CW_USEDEFAULT        ; initial x size
                    200 ;CW_USEDEFAULT        ; initial y size
                    0                    ; parent window handle
                    0                    ; window menu handle
                    0                    ; program instance handle
                    0                    ; creation parameters
                    ))

(println "Window handle: " hwnd ", last error: " (GetLastError))

(setq rshow (ShowWindow hwnd SW_MAXIMIZE))

(println "Show window: " rshow ", last error: " (GetLastError))

(setq rupdate (UpdateWindow hwnd))

(println "Update window: " rupdate ", last error: " (GetLastError))

(setq msgbuf (dup "\000" 256))
(setq rmsg 1)

(while (> rmsg 0)
  (setq rmsg (GetMessageA msgbuf 0 0 0))
  (println "Get Message: " rmsg ", last error: " (GetLastError))
    (setq msg (unpack MSG msgbuf))
    (println "Message: " msg)
    ;(if (= (msg 1) 96) (setq rmsg 0))
    (TranslateMessage msgbuf)
    (DispatchMessageA msgbuf))

(exit)
