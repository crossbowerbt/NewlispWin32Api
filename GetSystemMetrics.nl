#!/bin/newlisp

(change-dir "Win32HeadersNewlisp")
(load "builtin.nl")
(load "main.nl")

(context 'WIN32)

;; Usage

(let ((cx-screen (GetSystemMetrics SM_CXSCREEN))
      (cy-screen (GetSystemMetrics SM_CYSCREEN)))
  (MessageBoxA 0
	       (string "Resolution: " cx-screen "x" cy-screen " pixels")
	       "Screen Resolution"
               MB_OK))

(exit)
