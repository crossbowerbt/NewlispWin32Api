(context 'WIN32)

;; category WinSock2:
;; module WS2_32.DLL:


(setq SOCKET "void*") ; UINT *

;; typedef struct sockaddr { {
(struct 'sockaddr
    "short int" ; sa_family;
    "char" ; sa_data;
    "char" ; sa_data;
    "char" ; sa_data;
    "char" ; sa_data;
    "char" ; sa_data;
    "char" ; sa_data;
    "char" ; sa_data;
    "char" ; sa_data;
    "char" ; sa_data;
    "char" ; sa_data;
    "char" ; sa_data;
    "char" ; sa_data;
    "char" ; sa_data;
    "char" ; sa_data;
)
;(setq  sockaddr)
;; }sockaddr

;; typedef struct  hostent  { {
(struct 'hostent
    LPSTR ; h_name;
    "void*" ; LPSTR * h_aliases;
    "short int" ; h_addrtype;
    "short int" ; h_length;
    "void*" ; LPSTR * h_addr_list;
)
;(setq  hostent)
;; }hostent
;; typedef struct  servent  { {
(struct 'servent
    LPSTR ; s_name;
    "void*" ; LPSTR * s_aliases;
    "short int" ; s_port;
    LPSTR ; s_proto;
)
;(setq  servent)
;; }servent
;; typedef struct  protoent  { {
(struct 'protoent
    LPSTR ; p_name;
    "void*" ; LPSTR * p_aliases;
    "short int" ; p_proto;
)
;(setq  protoent)
;; }protoent
;; typedef struct WSAData  { {
;(struct 'WSAData
;    WORD ; wVersion
;    WORD ; wHighVersion
;    char ; szDescription
;    char ; szSystemStatus
;    USHORT ; iMaxSockets
;    USHORT ; iMaxUdpDg
;    LPSTR ; lpVendorInfo
;)
;(setq WSADATA WSAData)
;; } WSADATA
(setq LPWSADATA "void*") ; WSAData *
(import "WS2_32.DLL" "accept" SOCKET
    SOCKET ; s,
    "void*" ; sockaddr * addr,
    "void*" ; int * addrlen
)


(import "WS2_32.DLL" "bind" "int"
    SOCKET ; s,
    "void*" ; sockaddr * name,
    "int" ; namelen
)



(import "WS2_32.DLL" "closesocket" "int"
    SOCKET ; s
)



(import "WS2_32.DLL" "connect" "int"
    SOCKET ; s,
    "void*" ; sockaddr * name,
    "int" ; namelen
)



(import "WS2_32.DLL" "ioctlsocket" "int"
    SOCKET ; s,
    "void*" ; long cmd,
    "void*" ; int * argp
)


(import "WS2_32.DLL" "getpeername" "int"
    SOCKET ; s,
    "void*" ; sockaddr * name,
    "void*" ; int * namelen
)


(import "WS2_32.DLL" "getsockname" "int"
    SOCKET ; s,
    "void*" ; sockaddr * name,
    "void*" ; int * namelen
)



(import "WS2_32.DLL" "getsockopt" "int"
    SOCKET ; s,
    "int" ; level,
    "int" ; optname,
    LPSTR ; optval,
    "void*" ; int * optlen
)


(import "WS2_32.DLL" "htonl" "int"
    "int" ; hostlong
)


(import "WS2_32.DLL" "htons" "int"
    "int" ; hostshort
)

(import "WS2_32.DLL" "inet_addr" "int"
    LPSTR ; cp
)

(import "WS2_32.DLL" "listen" "int"
    SOCKET ; s,
    "int" ; backlog
)


(import "WS2_32.DLL" "ntohl" "int"
    "int" ; netlong
)

(import "WS2_32.DLL" "ntohs" "int"
    "int" ; netshort
)


(import "WS2_32.DLL" "recv" "int"
    SOCKET ; s,
    LPSTR ; buf,
    "int" ; len,
    "int" ; flags
)


(import "WS2_32.DLL" "recvfrom" "int"
    SOCKET ; s,
    LPSTR ; buf,
    "int" ; len,
    "int" ; flags,
    "void*" ; sockaddr * from,
    "void*" ; int * fromlen
)


(import "WS2_32.DLL" "send" "int"
    SOCKET ; s,
    LPSTR ; buf,
    "int" ; len,
    "int" ; flags
)


(import "WS2_32.DLL" "sendto" "int"
    SOCKET ; s,
    LPSTR ; buf,
    "int" ; len,
    "int" ; flags,
    "void*" ; sockaddr * to,
    "int" ; tolen
)


(import "WS2_32.DLL" "setsockopt" "int"
    SOCKET ; s,
    "int" ; level,
    "int" ; optname,
    LPSTR ; optval,
    "int" ; optlen
)




(import "WS2_32.DLL" "shutdown" "int"
    SOCKET ; s,
    "int" ; how
)




(import "WS2_32.DLL" "socket" SOCKET
    "int" ; af,
    "int" ; type,
    "int" ; protocol
)




(import "WS2_32.DLL" "gethostbyaddr" "void*" ; hostent *
    LPSTR ; addr,
    "int" ; len,
    "int" ; type
)
(import "WS2_32.DLL" "gethostbyname" "void*" ; hostent *
    LPSTR ; name
)

(import "WS2_32.DLL" "gethostname" "int"
    LPSTR ; name,
    "int" ; namelen
)


(import "WS2_32.DLL" "getservbyport" "void*" ; servent * 
    "int" ; port,
    LPSTR ; proto
)


(import "WS2_32.DLL" "getservbyname" "void*" ; servent * 
    LPSTR ; name,
    LPSTR ; proto
)

(import "WS2_32.DLL" "getprotobynumber" "void*" ; protoent *
    "int" ; number
)

(import "WS2_32.DLL" "getprotobyname" "void*" ; protoent *
    LPSTR ; name
)
