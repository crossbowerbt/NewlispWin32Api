(context 'WIN32)

(setq VOID  "void")               ; 0 bytes
(setq BYTE  "char")               ; 1 byte   (hex)
(setq WORD  "unsigned short int") ; 2 bytes  (hex)
(setq DWORD "unsigned int")       ; 4 bytes  (hex)
(setq LONG  "int")                ; 4 bytes  (dec)
(setq BOOL BYTE)                  ; Boolean
(setq FLOAT "float")              ; Float
(setq DOUBLE "double float")      ; Double
(setq CHAR "char")                ; Character
(setq WCHAR "short int")          ; Wide character
(setq LPVOID "void**")            ; Generic pointer
(setq LPSTR "char*")              ; ANSI string
(setq LPWSTR "char*")             ; Wide character string
(setq GUID "int")                 ; Globally Unique Identifier
(setq COM_INTERFACE_PTR "void*")  ; COM interface pointer
(setq SIZE_T "void*")             ; 32-Bit on x86/64-Bit on x64

(setq ProcessId DWORD)
(setq ThreadId DWORD)

(setq FILLER64 "void*")            ; works only on 64bits system
