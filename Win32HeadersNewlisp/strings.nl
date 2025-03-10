(context 'WIN32)

;; module KERNEL32.DLL:
;; category StringManipulation:

(import "KERNEL32.DLL" "CompareStringA" "int"
  LCID ; Locale,
  DWORD ; dwCmpFlags,
  LPCSTR ; lpString1,
  "int" ; cchCount1,
  LPCSTR ; lpString2,
  "int" ; cchCount2
  )

(import "KERNEL32.DLL" "CompareStringW" "int"
  LCID ; Locale,
  DWORD ; dwCmpFlags,
  LPCWSTR ; lpString1,
  "int" ; cchCount1,
  LPCWSTR ; lpString2,
  "int" ; cchCount2
  )

;(import "KERNEL32.DLL" "lstrcat" LPSTR
;  LPSTR ; lpString1,
;  LPCSTR ; lpString2
;  )

(import "KERNEL32.DLL" "lstrcatA" LPSTR
  LPSTR ; lpString1,
  LPCSTR ; lpString2
  )

(import "KERNEL32.DLL" "lstrcatW" LPWSTR
  LPWSTR ; lpString1,
  LPCWSTR ; lpString2
  )

(import "KERNEL32.DLL" "lstrcmp" "int"
  LPCSTR ; lpString1,
  LPCSTR ; lpString2
  )

(import "KERNEL32.DLL" "lstrcmpA" "int"
  LPCSTR ; lpString1,
  LPCSTR ; lpString2
  )

(import "KERNEL32.DLL" "lstrcmpW" "int"
  LPCWSTR ; lpString1,
  LPCWSTR ; lpString2
  )

(import "KERNEL32.DLL" "lstrcmpi" "int"
  LPCSTR ; lpString1,
  LPCSTR ; lpString2
  )

(import "KERNEL32.DLL" "lstrcmpiA" "int"
  LPCSTR ; lpString1,
  LPCSTR ; lpString2
  )

(import "KERNEL32.DLL" "lstrcmpiW" "int"
  LPCWSTR ; lpString1,
  LPCWSTR ; lpString2
  )

(import "KERNEL32.DLL" "lstrcpy" LPSTR
  LPSTR  ;lpString1,
  LPCSTR ; lpString2
  )

(import "KERNEL32.DLL" "lstrcpyA" LPSTR
  LPSTR  ;lpString1,
  LPCSTR ; lpString2
  )

(import "KERNEL32.DLL" "lstrcpyW" LPWSTR
  LPWSTR ; lpString1,
  LPCWSTR ; lpString2
  )

(import "KERNEL32.DLL" "lstrcpyn" LPSTR
   LPSTR ; lpString1,
  LPCSTR ; lpString2,
  "int" ; iMaxLength
  )

(import "KERNEL32.DLL" "lstrcpynA" LPSTR
  LPSTR ; lpString1,
  LPCSTR ; lpString2,
  "int" ; iMaxLength
  )

(import "KERNEL32.DLL" "lstrcpynW" LPWSTR
  LPWSTR ; lpString1,
  LPCWSTR ; lpString2,
  "int" ; iMaxLength
  )

(import "KERNEL32.DLL" "lstrlen" "int"
    LPCSTR ; lpszString
)

(import "KERNEL32.DLL" "lstrlenA" "int"
    LPCSTR ; lpszString
)

(import "KERNEL32.DLL" "lstrlenW" "int"
    LPCWSTR ; lpszString
)
