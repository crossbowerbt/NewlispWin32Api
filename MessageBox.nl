#!/bin/newlisp

(change-dir "Win32HeadersNewlisp")
(load "builtin.nl")
(load "main.nl")

(context 'WIN32)

(setq result
      (MessageBoxA 0
		   "This is the text of the message box\non multiple lines."
		   "Title of Message Box"
		   (| MB_YESNOCANCEL MB_ICONQUESTION)))

(print "Result: " result)

(exit)
