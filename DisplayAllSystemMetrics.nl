#!/bin/newlisp

(change-dir "Win32HeadersNewlisp")
(load "builtin.nl")
(load "main.nl")

(context 'WIN32)

; Utils

(define (create-wndclass style lpfnWndProc cbClsExtra cbWndExtra
			 hInstance hIcon hCursor hbrBackground
			 lpszMenuName lpszClassName)
        (pack WNDCLASSA (list style lpfnWndProc cbClsExtra cbWndExtra
			      hInstance hIcon hCursor hbrBackground
			      lpszMenuName lpszClassName)))

(define (create-wndproc-callback callback-func)
  (callback callback-func "void*" "void*" "unsigned int" "void*" "void*"))

;; Metrics to display

(setq metrics
      (list (list SM_CXSCREEN "SM_CXSCREEN" "Screen width in pixels")
	    (list SM_CYSCREEN "SM_CYSCREEN" "Screen height in pixels")
	    (list SM_CXVSCROLL "SM_CXVSCROLL" "Vertical scroll width")
	    (list SM_CYHSCROLL "SM_CYHSCROLL" "Horizontal scroll height")
	    (list SM_CYCAPTION "SM_CYCAPTION" "Caption bar height")
	    (list SM_CXBORDER "SM_CXBORDER" "Window border width")
	    (list SM_CYBORDER "SM_CYBORDER" "Window border height")
	    (list SM_CXDLGFRAME "SM_CXFIXEDFRAME" "Dialog window frame width")
	    (list SM_CYDLGFRAME "SM_CYFIXEDFRAME" "Dialog window frame height")
	    (list SM_CYVTHUMB "SM_CYVTHUMB" "Vertical scroll thumb height")
	    (list SM_CXHTHUMB "SM_CXHTHUMB" "Horizontal scroll thumb width")
	    (list SM_CXICON "SM_CXICON" "Icon width")
	    (list SM_CYICON "SM_CYICON" "Icon height")
	    (list SM_CXCURSOR "SM_CXCURSOR" "Cursor width")
	    (list SM_CYCURSOR "SM_CYCURSOR" "Cursor height")
	    (list SM_CYMENU "SM_CYMENU" "Menu bar height")
	    (list SM_CXFULLSCREEN "SM_CXFULLSCREEN" "Full screen client area width")
	    (list SM_CYFULLSCREEN "SM_CYFULLSCREEN" "Full screen client area height")
	    (list SM_CYKANJIWINDOW "SM_CYKANJIWINDOW" "Kanji window height")
	    (list SM_MOUSEPRESENT "SM_MOUSEPRESENT" "Mouse present flag")
	    (list SM_CYVSCROLL "SM_CYVSCROLL" "Vertical scroll arrow height")
	    (list SM_CXHSCROLL "SM_CXHSCROLL" "Horizontal scroll arrow width")
	    (list SM_DEBUG "SM_DEBUG" "Debug version flag")
	    (list SM_SWAPBUTTON "SM_SWAPBUTTON" "Mouse buttons swapped flag")
	    (list SM_CXMIN "SM_CXMIN" "Minimum window width")
	    (list SM_CYMIN "SM_CYMIN" "Minimum window height")
	    (list SM_CXSIZE "SM_CXSIZE" "Min/Max/Close button width")
	    (list SM_CYSIZE "SM_CYSIZE" "Min/Max/Close button height")
	    (list SM_CXFRAME "SM_CXSIZEFRAME" "Window sizing frame width")
	    (list SM_CYFRAME "SM_CYSIZEFRAME" "Window sizing frame height")
	    (list SM_CXMINTRACK "SM_CXMINTRACK" "Minimum window tracking width")
	    (list SM_CYMINTRACK "SM_CYMINTRACK" "Minimum window tracking height")
	    (list SM_CXDOUBLECLK "SM_CXDOUBLECLK" "Double click x tolerance")
	    (list SM_CYDOUBLECLK "SM_CYDOUBLECLK" "Double click y tolerance")
	    (list SM_CXICONSPACING "SM_CXICONSPACING" "Horizontal icon spacing")
	    (list SM_CYICONSPACING "SM_CYICONSPACING" "Vertical icon spacing")
	    (list SM_MENUDROPALIGNMENT "SM_MENUDROPALIGNMENT" "Left or right menu drop")
	    (list SM_PENWINDOWS "SM_PENWINDOWS" "Pen extensions installed")
	    (list SM_DBCSENABLED "SM_DBCSENABLED" "Double-Byte Char Set enabled")
	    (list SM_CMOUSEBUTTONS "SM_CMOUSEBUTTONS" "Number of mouse buttons")
	    (list SM_SECURE "SM_SECURE" "Security present flag")
	    (list SM_CXEDGE "SM_CXEDGE" "3-D border width")
	    (list SM_CYEDGE "SM_CYEDGE" "3-D border height")
	    (list SM_CXMINSPACING "SM_CXMINSPACING" "Minimized window spacing width")
	    (list SM_CYMINSPACING "SM_CYMINSPACING" "Minimized window spacing height")
	    (list SM_CXSMICON "SM_CXSMICON" "Small icon width")
	    (list SM_CYSMICON "SM_CYSMICON" "Small icon height")
	    (list SM_CYSMCAPTION "SM_CYSMCAPTION" "Small caption height")
	    (list SM_CXSMSIZE "SM_CXSMSIZE" "Small caption button width")
	    (list SM_CYSMSIZE "SM_CYSMSIZE" "Small caption button height")
	    (list SM_CXMENUSIZE "SM_CXMENUSIZE" "Menu bar button width")
	    (list SM_CYMENUSIZE "SM_CYMENUSIZE" "Menu bar button height")
	    (list SM_ARRANGE "SM_ARRANGE" "How minimized windows arranged")
	    (list SM_CXMINIMIZED "SM_CXMINIMIZED" "Minimized window width")
	    (list SM_CYMINIMIZED "SM_CYMINIMIZED" "Minimized window height")
	    (list SM_CXMAXTRACK "SM_CXMAXTRACK" "Maximum draggable width")
	    (list SM_CYMAXTRACK "SM_CYMAXTRACK" "Maximum draggable height")
	    (list SM_CXMAXIMIZED "SM_CXMAXIMIZED" "Width of maximized window")
	    (list SM_CYMAXIMIZED "SM_CYMAXIMIZED" "Height of maximized window")
	    (list SM_NETWORK "SM_NETWORK" "Network present flag")
	    (list SM_CLEANBOOT "SM_CLEANBOOT" "How system was booted")
	    (list SM_CXDRAG "SM_CXDRAG" "Avoid drag x tolerance")
	    (list SM_CYDRAG "SM_CYDRAG" "Avoid drag y tolerance")
	    (list SM_SHOWSOUNDS "SM_SHOWSOUNDS" "Present sounds visually")
	    (list SM_CXMENUCHECK "SM_CXMENUCHECK" "Menu check-mark width")
	    (list SM_CYMENUCHECK "SM_CYMENUCHECK" "Menu check-mark height")
	    (list SM_SLOWMACHINE "SM_SLOWMACHINE" "Slow processor flag")
	    (list SM_MIDEASTENABLED "SM_MIDEASTENABLED" "Hebrew and Arabic enabled flag")
	    (list SM_MOUSEWHEELPRESENT "SM_MOUSEWHEELPRESENT" "Mouse wheel present flag")
	    (list SM_XVIRTUALSCREEN "SM_XVIRTUALSCREEN" "Virtual screen x origin")
	    (list SM_YVIRTUALSCREEN "SM_YVIRTUALSCREEN" "Virtual screen y origin")
	    (list SM_CXVIRTUALSCREEN "SM_CXVIRTUALSCREEN" "Virtual screen width")
	    (list SM_CYVIRTUALSCREEN "SM_CYVIRTUALSCREEN" "Virtual screen height")
	    (list SM_CMONITORS "SM_CMONITORS" "Number of monitors")
	    (list SM_SAMEDISPLAYFORMAT "SM_SAMEDISPLAYFORMAT" "Same color format flag")))

;; Usage

(define (WndProc hwnd message wParam lParam)
  (println "Message in WndProc: " message)
  (cond ((= message WM_CREATE)
	 (letn ((hdc (GetDC hwnd))
		(tm (dup "\000" 256)))
           (GetTextMetricsA hdc tm)
	   (letn ((tmUnpacked (unpack TEXTMETRICA tm))
		  (tmAveCharWidth (tmUnpacked 5))
		  (tmPitchAndFamily (tmUnpacked 19))
		  (tmHeight (tmUnpacked 0))
		  (tmExternalLeading (tmUnpacked 4)))
	     (setq cxChar tmAveCharWidth)
	     (setq cxCaps (/ (* (if (zero? (& tmPitchAndFamily 1)) 2 3) cxChar) 2))
	     (setq cyChar (+ tmHeight tmExternalLeading)))
	   (ReleaseDC hwnd hdc)))

	((= message WM_DESTROY)
	 (PostQuitMessage 0))
	
	((= message WM_PAINT)
	 (letn ((ps (dup "\000" 256))
		(rect (dup "\000" 256))
		(hdc (BeginPaint hwnd ps)))

	   (dotimes (i (length metrics))
	     (letn ((metricIndex (metrics i 0))
		    (metricLabel (metrics i 1))
		    (metricDescr (metrics i 2))
		    (metricValue (string (GetSystemMetrics metricIndex))))

	       (println "metric: " i " " metricLabel " " metricDescr " " metricValue)

	       (TextOutA hdc 0 (* cyChar i) metricLabel (length metricLabel))
	       (TextOutA hdc (* cxCaps 22) (* cyChar i) metricDescr (length metricDescr))
	       (TextOutA hdc (+ (* cxCaps 22) (* cxChar 40)) (* cyChar i)
			metricValue (length metricValue))))
	       
	   (EndPaint hwnd ps)))
	 
	(true (DefWindowProcA hwnd message wParam lParam))))

(set 'WndProcCallback
     (create-wndproc-callback 'WndProc))

(setq szAppName "SysMets1")

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
                    "Window caption"     ; window caption
                    WS_OVERLAPPEDWINDOW  ; window style
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
