(context 'WIN32)

;; module DPLAYX.DLL:
;; category DirectPlay:


;;  class __declspec(uuid("D1EB6D20-8923-11d0-9D97-00A0C90A43CB"))  DirectPlay;
(struct 'DirectPlay)
;;  class __declspec(uuid("2b74f7c0-9154-11cf-a9cd-00aa006886e3"))  IDirectPlay2;
(struct 'IDirectPlay2)
;;  class __declspec(uuid("9d460580-a822-11cf-960c-0080c7534e82"))  IDirectPlay2A;
(struct 'IDirectPlay2A)
;;  class __declspec(uuid("133efe40-32dc-11d0-9cfb-00a0c90a43cb"))  IDirectPlay3;
(struct 'IDirectPlay3)
;;  class __declspec(uuid("133efe41-32dc-11d0-9cfb-00a0c90a43cb"))  IDirectPlay3A;
(struct 'IDirectPlay3A)
;;  class __declspec(uuid("0ab1c530-4745-11d1-a7a1-0000f803abfc"))  IDirectPlay4;
(struct 'IDirectPlay4)
;;  class __declspec(uuid("0ab1c531-4745-11d1-a7a1-0000f803abfc"))  IDirectPlay4A;
(struct 'IDirectPlay4A)

;; struct __declspec(uuid("685BC400-9D2C-11cf-A9CD-00AA006886E3")) DPSPGUID_IPX;
(struct 'DPSPGUID_IPX)
;; struct __declspec(uuid("36E95EE0-8577-11cf-960C-0080C7534E82")) DPSPGUID_TCPIP;
(struct 'DPSPGUID_TCPIP)
;; struct __declspec(uuid("0F1D6860-88D9-11cf-9C4E-00A0C905425E")) DPSPGUID_SERIAL;
(struct 'DPSPGUID_SERIAL)
;; struct __declspec(uuid("44EAA760-CB68-11cf-9C4E-00A0C905425E")) DPSPGUID_MODEM;
(struct 'DPSPGUID_MODEM)

(setq LPDIRECTPLAY (string IUnknown "*"))
(setq LPDIRECTPLAY2 (string IDirectPlay2 "*"))
(setq LPDIRECTPLAY2A (string IDirectPlay2 "*"))
(setq IDirectPlay2A IDirectPlay2)

(setq LPDIRECTPLAY3 (string IDirectPlay3 "*"))
(setq LPDIRECTPLAY3A (string IDirectPlay3 "*"))
(setq IDirectPlay3A IDirectPlay3)

(setq LPDIRECTPLAY4 (string IDirectPlay4 "*"))
(setq LPDIRECTPLAY4A (string IDirectPlay4 "*"))
(setq IDirectPlay4A IDirectPlay4)


(setq DPID DWORD)
(setq LPDPID (string DWORD "*"))



;; mask DWORD DPlayObjectFlags {

(setq DPCAPS_ISHOST 0x00000002)


(setq DPCAPS_GROUPOPTIMIZED 0x00000008)


(setq DPCAPS_KEEPALIVEOPTIMIZED 0x00000010)


(setq DPCAPS_GUARANTEEDOPTIMIZED 0x00000020)


(setq DPCAPS_GUARANTEEDSUPPORTED 0x00000040)


(setq DPCAPS_SIGNINGSUPPORTED 0x00000080)


(setq DPCAPS_ENCRYPTIONSUPPORTED 0x00000100)

;; };



;; typedef struct _DPCAPS { {
(struct '_DPCAPS
    DWORD ; dwSize;
    DPlayObjectFlags ; dwFlags;
    DWORD ; dwMaxBufferSize;
    DWORD ; dwMaxQueueSize;
    DWORD ; dwMaxPlayers;
    DWORD ; dwHundredBaud;
    DWORD ; dwLatency;
    DWORD ; dwMaxLocalPlayers;
    DWORD ; dwHeaderLength;
    DWORD ; dwTimeout;
    } ; DPCAPS
(setq LPDPCAPS (string DPCAPS "*"))


(setq LPCDPSESSIONDESC2 (string DPSESSIONDESC2 "*"))

;; mask DWORD DPSESSION_Flags {

(setq DPSESSION_NEWPLAYERSDISABLED 0x00000001)


(setq DPSESSION_MIGRATEHOST 0x00000004)


(setq DPSESSION_NOMESSAGEID 0x00000008)



(setq DPSESSION_JOINDISABLED 0x00000020)


(setq DPSESSION_KEEPALIVE 0x00000040)


(setq DPSESSION_NODATAMESSAGES 0x00000080)


(setq DPSESSION_SECURESERVER 0x00000100)


(setq DPSESSION_PRIVATE 0x00000200)


(setq DPSESSION_PASSWORDREQUIRED 0x00000400)


(setq DPSESSION_MULTICASTSERVER 0x00000800)


(setq DPSESSION_CLIENTSERVER 0x00001000)


(setq DPSESSION_DIRECTPLAYPROTOCOL 0x00002000)


(setq DPSESSION_NOPRESERVEORDER 0x00004000)

)
(setq  _DPCAPS)
;; }



;; typedef struct _DPSESSIONDESC2 { {
(struct '_DPSESSIONDESC2
    DWORD ; dwSize;
    DWORD ; dwFlags;
    GUID ; guidInstance;
    GUID ; guidApplication;
    DWORD ; dwMaxPlayers;
    DWORD ; dwCurrentPlayers;
    LPSTR ; lpszSessionNameA;
    LPSTR ; lpszPasswordA;
    DWORD ; dwReserved1;
    DWORD ; dwReserved2
    DWORD ; dwUser1;
    DWORD ; dwUser2
    DWORD ; dwUser3
    DWORD ; dwUser4
)
(setq DPSESSIONDESC2 _DPSESSIONDESC2)
;; } DPSESSIONDESC2
(setq LPDPSESSIONDESC2 (string DPSESSIONDESC2 "*"))


;; typedef struct _DPNAME { {
(struct '_DPNAME
    DWORD ; dwSize;
    DWORD ; dwFlags;



    LPSTR ; lpszShortNameA;




    LPSTR ; lpszLongNameA;


)
(setq DPNAME _DPNAME)
;; } DPNAME
(setq LPDPNAME (string DPNAME "*"))


(setq LPCDPNAME (string DPNAME "*"))


;; typedef struct _DPCREDENTIALS { {
(struct '_DPCREDENTIALS
    DWORD ; dwSize;
    DWORD ; dwFlags;



    LPSTR ; lpszUsernameA;




    LPSTR ; lpszPasswordA;




    LPSTR ; lpszDomainA;

)
(setq DPCREDENTIALS _DPCREDENTIALS)
;; } DPCREDENTIALS
(setq LPDPCREDENTIALS (string DPCREDENTIALS "*"))

(setq LPCDPCREDENTIALS (string DPCREDENTIALS "*"))


;; typedef struct _DPSECURITYDESC { {
(struct '_DPSECURITYDESC
    DWORD ; dwSize;
    DWORD ; dwFlags;



    LPSTR ; lpszSSPIProviderA;




    LPSTR ; lpszCAPIProviderA;

    DWORD ; dwCAPIProviderType;
    DWORD ; dwEncryptionAlgorithm;
)
(setq DPSECURITYDESC _DPSECURITYDESC)
;; } DPSECURITYDESC
(setq LPDPSECURITYDESC (string DPSECURITYDESC "*"))

(setq LPCDPSECURITYDESC (string DPSECURITYDESC "*"))


;; typedef struct _DPACCOUNTDESC { {
(struct '_DPACCOUNTDESC
    DWORD ; dwSize;
    DWORD ; dwFlags;



    LPSTR ; lpszAccountIDA;

)
(setq DPACCOUNTDESC _DPACCOUNTDESC)
;; } DPACCOUNTDESC
(setq LPDPACCOUNTDESC (string DPACCOUNTDESC "*"))

(setq LPCDPACCOUNTDESC (string DPACCOUNTDESC "*"))


(setq LPCGUID (string GUID "*"))


;; mask DWORD DPLCONNECTIONFlags {


(setq DPLCONNECTION_CREATESESSION 0x00000002)


(setq DPLCONNECTION_JOINSESSION 0x00000001)

;; };


;; typedef struct _DPLCONNECTION { {
(struct '_DPLCONNECTION
    DWORD ; dwSize;
    DPLCONNECTIONFlags ; dwFlags;
    LPDPSESSIONDESC2 ; lpSessionDesc;
    LPDPNAME ; lpPlayerName;
    GUID ; guidSP;
    LPVOID ; lpAddress;
    DWORD ; dwAddressSize;
)
(setq DPLCONNECTION _DPLCONNECTION)
;; } DPLCONNECTION
(setq LPDPLCONNECTION (string DPLCONNECTION "*"))


(setq LPCDPLCONNECTION (string DPLCONNECTION "*"))


;; typedef struct _DPCHAT { {
(struct '_DPCHAT
    DWORD ; dwSize
    DWORD ; dwFlags



    LPSTR ; lpszMessageA;

)
(setq DPCHAT _DPCHAT)
;; } DPCHAT
(setq LPDPCHAT (string DPCHAT "*"))


;; typedef struct _SGBUFFER { {
(struct '_SGBUFFER
    UINT ; len;
    (string CHAR "*") ; pData;
)
(setq SGBUFFER _SGBUFFER)
;; } SGBUFFER
(setq PSGBUFFER (string SGBUFFER "*"))
(setq LPSGBUFFER (string SGBUFFER "*"))


;; value DWORD DPRESULT {


(setq DP_OK 0)
(setq DPERR_ALREADYINITIALIZED 0x88770005L)
(setq DPERR_ACCESSDENIED 0x8877000AL)
(setq DPERR_ACTIVEPLAYERS 0x88770014L)
(setq DPERR_BUFFERTOOSMALL 0x8877001EL)
(setq DPERR_CANTADDPLAYER 0x88770028L)
(setq DPERR_CANTCREATEGROUP 0x88770032L)
(setq DPERR_CANTCREATEPLAYER 0x8877003CL)
(setq DPERR_CANTCREATESESSION 0x88770046L)
(setq DPERR_CAPSNOTAVAILABLEYET 0x88770050L)
(setq DPERR_EXCEPTION 0x8877005AL)
(setq DPERR_GENERIC 0x80004005L)
(setq DPERR_INVALIDFLAGS 0x88770078L)
(setq DPERR_INVALIDOBJECT 0x88770082L)
(setq DPERR_INVALIDPARAM 0x80070057L)
(setq DPERR_INVALIDPARAMS 0x80070057L)
(setq DPERR_INVALIDPLAYER 0x88770096L)
(setq DPERR_INVALIDGROUP 0x8877009BL)
(setq DPERR_NOCAPS 0x887700A0L)
(setq DPERR_NOCONNECTION 0x887700AAL)
(setq DPERR_NOMEMORY 0x8007000EL)
(setq DPERR_OUTOFMEMORY 0x8007000EL)
(setq DPERR_NOMESSAGES 0x887700BEL)
(setq DPERR_NONAMESERVERFOUND 0x887700C8L)
(setq DPERR_NOPLAYERS 0x887700D2L)
(setq DPERR_NOSESSIONS 0x887700DCL)
(setq DPERR_PENDING 0x8000000AL)
(setq DPERR_SENDTOOBIG 0x887700E6L)
(setq DPERR_TIMEOUT 0x887700F0L)
(setq DPERR_UNAVAILABLE 0x887700FAL)
(setq DPERR_UNSUPPORTED 0x80004001L)
(setq DPERR_BUSY 0x8877010EL)
(setq DPERR_USERCANCEL 0x88770118L)
(setq DPERR_NOINTERFACE 0x80004002L)
(setq DPERR_CANNOTCREATESERVER 0x88770122L)
(setq DPERR_PLAYERLOST 0x8877012CL)
(setq DPERR_SESSIONLOST 0x88770136L)
(setq DPERR_UNINITIALIZED 0x88770140L)
(setq DPERR_NONEWPLAYERS 0x8877013AL)
(setq DPERR_INVALIDPASSWORD 0x88770154L)
(setq DPERR_CONNECTING 0x8877015EL)
(setq DPERR_CONNECTIONLOST 0x88770168L)
(setq DPERR_UNKNOWNMESSAGE 0x88770172L)
(setq DPERR_CANCELFAILED 0x8877017CL)
(setq DPERR_INVALIDPRIORITY 0x88770186L)
(setq DPERR_NOTHANDLED 0x88770190L)
(setq DPERR_CANCELLED 0x8877019AL)
(setq DPERR_ABORTED 0x887701A4L)


(setq DPERR_BUFFERTOOLARGE 0x887703E8L)
(setq DPERR_CANTCREATEPROCESS 0x887703F2L)
(setq DPERR_APPNOTSTARTED 0x887703FCL)
(setq DPERR_INVALIDINTERFACE 0x88770406L)
(setq DPERR_NOSERVICEPROVIDER 0x88770410L)
(setq DPERR_UNKNOWNAPPLICATION 0x8877041AL)
(setq DPERR_NOTLOBBIED 0x8877042EL)
(setq DPERR_SERVICEPROVIDERLOADED 0x88770438L)
(setq DPERR_ALREADYREGISTERED 0x88770442L)
(setq DPERR_NOTREGISTERED 0x8877044CL)




(setq DPERR_AUTHENTICATIONFAILED 0x887707D0L)
(setq DPERR_CANTLOADSSPI 0x887707DAL)
(setq DPERR_ENCRYPTIONFAILED 0x887707E4L)
(setq DPERR_SIGNFAILED 0x887707EEL)
(setq DPERR_CANTLOADSECURITYPACKAGE 0x887707F8L)
(setq DPERR_ENCRYPTIONNOTSUPPORTED 0x88770802L)
(setq DPERR_CANTLOADCAPI 0x8877080CL)
(setq DPERR_NOTLOGGEDIN 0x88770816L)
(setq DPERR_LOGONDENIED 0x88770820L)

;; };



(setq LPDPENUMSESSIONSCALLBACK2 LPVOID)
(setq LPDPENUMPLAYERSCALLBACK2 LPVOID)
(setq LPDPENUMDPCALLBACK LPVOID)
(setq LPDPENUMDPCALLBACKA LPVOID)
(setq LPDPENUMCONNECTIONSCALLBACK LPVOID)



;; mask DWORD EnumConnectionsFlags {

(setq DPCONNECTION_DIRECTPLAY 0x00000001)


(setq DPCONNECTION_DIRECTPLAYLOBBY 0x00000002)

;; };


;; mask DWORD EnumPlayersMask {

(setq DPENUMPLAYERS_ALL 0x00000000)




(setq DPENUMPLAYERS_LOCAL 0x00000008)



(setq DPENUMPLAYERS_REMOTE 0x00000010)



(setq DPENUMPLAYERS_GROUP 0x00000020)


(setq DPENUMPLAYERS_SESSION 0x00000080)



(setq DPENUMPLAYERS_SERVERPLAYER 0x00000100)


(setq DPENUMPLAYERS_SPECTATOR 0x00000200)


(setq DPENUMGROUPS_SHORTCUT 0x00000400)


(setq DPENUMGROUPS_STAGINGAREA 0x00000800)

(setq DPENUMGROUPS_HIDDEN 0x00001000)


(setq DPENUMPLAYERS_OWNER 0x00002000)

;; };



;; mask DWORD CreatePlayerFlags {

(setq DPPLAYER_SERVERPLAYER 0x00000100)


(setq DPPLAYER_SPECTATOR 0x00000200)


(setq DPPLAYER_LOCAL 0x00000008)


(setq DPPLAYER_OWNER 0x00002000)

;; };




;; mask DWORD CreateGroupFlags {

(setq DPGROUP_STAGINGAREA 0x00000800)


(setq DPGROUP_LOCAL 0x00000008)


(setq DPGROUP_HIDDEN 0x00001000)
;; };



;; mask DWORD EnumSessionsFlags {

(setq DPENUMSESSIONS_AVAILABLE 0x00000001)


(setq DPENUMSESSIONS_ALL 0x00000002)



(setq DPENUMSESSIONS_ASYNC 0x00000010)


(setq DPENUMSESSIONS_STOPASYNC 0x00000020)


(setq DPENUMSESSIONS_PASSWORDREQUIRED 0x00000040)


(setq DPENUMSESSIONS_RETURNSTATUS 0x00000080)
;; };


;; mask DWORD GetCapsFlags {

(setq DPGETCAPS_GUARANTEED 0x00000001)

;; };



;; mask DWORD GetDataFlags {

(setq DPGET_REMOTE 0x00000000)


(setq DPGET_LOCAL 0x00000001)

;; };



;; mask DWORD OpenFlags {

(setq DPOPEN_JOIN 0x00000001)


(setq DPOPEN_CREATE 0x00000002)


(setq DPOPEN_RETURNSTATUS 0x00000080L)

;; };


;; mask DWORD ReceiveFlags {

(setq DPRECEIVE_ALL 0x00000001)


(setq DPRECEIVE_TOPLAYER 0x00000002)


(setq DPRECEIVE_FROMPLAYER 0x00000004)


(setq DPRECEIVE_PEEK 0x00000008)

;; };


;; mask DWORD SendFlags {


(setq DPSEND_GUARANTEED 0x00000001)



(setq DPSEND_HIGHPRIORITY 0x00000002)


(setq DPSEND_OPENSTREAM 0x00000008)


(setq DPSEND_CLOSESTREAM 0x00000010)


(setq DPSEND_SIGNED 0x00000020)


(setq DPSEND_ENCRYPTED 0x00000040)


(setq DPSEND_LOBBYSYSTEMMESSAGE 0x00000080)



(setq DPSEND_ASYNC 0x00000200)


(setq DPSEND_NOSENDCOMPLETEMSG 0x00000400)



(setq DPSEND_MAX_PRIORITY 0x0000FFFF)

;; };



;; mask DWORD SetDataFlags {

(setq DPSET_REMOTE 0x00000000)


(setq DPSET_LOCAL 0x00000001)


(setq DPSET_GUARANTEED 0x00000002)

;; };


;; mask DWORD GetMessageQueueFlags {

(setq DPMESSAGEQUEUE_SEND 0x00000001)


(setq DPMESSAGEQUEUE_RECEIVE 0x00000002)

;; };










;; value DWORD DirectPlayMessages {

(setq DPSYS_CREATEPLAYERORGROUP 0x0003)


(setq DPSYS_DESTROYPLAYERORGROUP 0x0005)


(setq DPSYS_ADDPLAYERTOGROUP 0x0007)


(setq DPSYS_DELETEPLAYERFROMGROUP 0x0021)


(setq DPSYS_SESSIONLOST 0x0031)


(setq DPSYS_HOST 0x0101)


(setq DPSYS_SETPLAYERORGROUPDATA 0x0102)


(setq DPSYS_SETPLAYERORGROUPNAME 0x0103)


(setq DPSYS_SETSESSIONDESC 0x0104)


(setq DPSYS_ADDGROUPTOGROUP 0x0105)


(setq DPSYS_DELETEGROUPFROMGROUP 0x0106)


(setq DPSYS_SECUREMESSAGE 0x0107)


(setq DPSYS_STARTSESSION 0x0108)


(setq DPSYS_CHAT 0x0109)


(setq DPSYS_SETGROUPOWNER 0x010A)


(setq DPSYS_SENDCOMPLETE 0x010d)

;; };


;; value DWORD PlayerTypeValue {

(setq DPPLAYERTYPE_GROUP 0x00000000)
(setq DPPLAYERTYPE_PLAYER 0x00000001)

;; };



;; typedef struct _DPMSG_GENERIC { {
(struct '_DPMSG_GENERIC
    DirectPlayMessages ; dwType;
)
(setq DPMSG_GENERIC _DPMSG_GENERIC)
;; } DPMSG_GENERIC
(setq LPDPMSG_GENERIC (string DPMSG_GENERIC "*"))


;; typedef struct _DPMSG_CREATEPLAYERORGROUP { {
(struct '_DPMSG_CREATEPLAYERORGROUP
    DWORD ; dwType;
    PlayerTypeValue ; dwPlayerType;
    DPID ; dpId;
    DWORD ; dwCurrentPlayers;
    LPVOID ; lpData;
    DWORD ; dwDataSize;
    DPNAME ; dpnName;
    DPID ; dpIdParent;
    DWORD ; dwFlags;
)
(setq DPMSG_CREATEPLAYERORGROUP _DPMSG_CREATEPLAYERORGROUP)
;; } DPMSG_CREATEPLAYERORGROUP
(setq LPDPMSG_CREATEPLAYERORGROUP (string DPMSG_CREATEPLAYERORGROUP "*"))


;; typedef struct _DPMSG_DESTROYPLAYERORGROUP { {
(struct '_DPMSG_DESTROYPLAYERORGROUP
    DWORD ; dwType;
    DWORD ; dwPlayerType;
    DPID ; dpId;
    LPVOID ; lpLocalData;
    DWORD ; dwLocalDataSize;
    LPVOID ; lpRemoteData;
    DWORD ; dwRemoteDataSize;
    DPNAME ; dpnName;
    DPID ; dpIdParent;
    DWORD ; dwFlags;
)
(setq DPMSG_DESTROYPLAYERORGROUP _DPMSG_DESTROYPLAYERORGROUP)
;; } DPMSG_DESTROYPLAYERORGROUP
(setq LPDPMSG_DESTROYPLAYERORGROUP (string DPMSG_DESTROYPLAYERORGROUP "*"))


;; typedef struct _DPMSG_ADDPLAYERTOGROUP { {
(struct '_DPMSG_ADDPLAYERTOGROUP
    DWORD ; dwType;
    DPID ; dpIdGroup;
    DPID ; dpIdPlayer;
)
(setq DPMSG_ADDPLAYERTOGROUP _DPMSG_ADDPLAYERTOGROUP)
;; } DPMSG_ADDPLAYERTOGROUP
(setq LPDPMSG_ADDPLAYERTOGROUP (string DPMSG_ADDPLAYERTOGROUP "*"))


(setq DPMSG_DELETEPLAYERFROMGROUP DPMSG_ADDPLAYERTOGROUP)
(setq LPDPMSG_DELETEPLAYERFROMGROUP (string DPMSG_DELETEPLAYERFROMGROUP "*"))


;; typedef struct _DPMSG_ADDGROUPTOGROUP { {
(struct '_DPMSG_ADDGROUPTOGROUP
    DWORD ; dwType;
    DPID ; dpIdParentGroup;
    DPID ; dpIdGroup;
)
(setq DPMSG_ADDGROUPTOGROUP _DPMSG_ADDGROUPTOGROUP)
;; } DPMSG_ADDGROUPTOGROUP
(setq LPDPMSG_ADDGROUPTOGROUP (string DPMSG_ADDGROUPTOGROUP "*"))


(setq DPMSG_DELETEGROUPFROMGROUP DPMSG_ADDGROUPTOGROUP)
(setq LPDPMSG_DELETEGROUPFROMGROUP (string DPMSG_DELETEGROUPFROMGROUP "*"))


;; typedef struct _DPMSG_SETPLAYERORGROUPDATA { {
(struct '_DPMSG_SETPLAYERORGROUPDATA
    DWORD ; dwType;
    DWORD ; dwPlayerType;
    DPID ; dpId;
    LPVOID ; lpData;
    DWORD ; dwDataSize;
)
(setq DPMSG_SETPLAYERORGROUPDATA _DPMSG_SETPLAYERORGROUPDATA)
;; } DPMSG_SETPLAYERORGROUPDATA
(setq LPDPMSG_SETPLAYERORGROUPDATA (string DPMSG_SETPLAYERORGROUPDATA "*"))


;; typedef struct _DPMSG_SETPLAYERORGROUPNAME { {
(struct '_DPMSG_SETPLAYERORGROUPNAME
    DWORD ; dwType;
    DWORD ; dwPlayerType;
    DPID ; dpId;
    DPNAME ; dpnName;
)
(setq DPMSG_SETPLAYERORGROUPNAME _DPMSG_SETPLAYERORGROUPNAME)
;; } DPMSG_SETPLAYERORGROUPNAME
(setq LPDPMSG_SETPLAYERORGROUPNAME (string DPMSG_SETPLAYERORGROUPNAME "*"))


;; typedef struct _DPMSG_SETSESSIONDESC { {
(struct '_DPMSG_SETSESSIONDESC
    DWORD ; dwType;
    DPSESSIONDESC2 ; dpDesc;
)
(setq DPMSG_SETSESSIONDESC _DPMSG_SETSESSIONDESC)
;; } DPMSG_SETSESSIONDESC
(setq LPDPMSG_SETSESSIONDESC (string DPMSG_SETSESSIONDESC "*"))


(setq DPMSG_HOST DPMSG_GENERIC)
(setq LPDPMSG_HOST (string DPMSG_HOST "*"))


(setq DPMSG_SESSIONLOST DPMSG_GENERIC)
(setq LPDPMSG_SESSIONLOST (string DPMSG_SESSIONLOST "*"))


;; typedef struct _DPMSG_SECUREMESSAGE { {
(struct '_DPMSG_SECUREMESSAGE
    DWORD ; dwType;
    DWORD ; dwFlags;
    DPID ; dpIdFrom;
    LPVOID ; lpData;
    DWORD ; dwDataSize;
)
(setq DPMSG_SECUREMESSAGE _DPMSG_SECUREMESSAGE)
;; } DPMSG_SECUREMESSAGE
(setq LPDPMSG_SECUREMESSAGE (string DPMSG_SECUREMESSAGE "*"))


;; typedef struct _DPMSG_STARTSESSION { {
(struct '_DPMSG_STARTSESSION
    DWORD ; dwType;
    LPDPLCONNECTION ; lpConn;
)
(setq DPMSG_STARTSESSION _DPMSG_STARTSESSION)
;; } DPMSG_STARTSESSION
(setq LPDPMSG_STARTSESSION (string DPMSG_STARTSESSION "*"))


;; typedef struct _DPMSG_CHAT { {
(struct '_DPMSG_CHAT
    DWORD ; dwType;
    DWORD ; dwFlags;
    DPID ; idFromPlayer;
    DPID ; idToPlayer;
    DPID ; idToGroup;
    LPDPCHAT ; lpChat;
)
(setq DPMSG_CHAT _DPMSG_CHAT)
;; } DPMSG_CHAT
(setq LPDPMSG_CHAT (string DPMSG_CHAT "*"))


;; typedef struct _DPMSG_SETGROUPOWNER { {
(struct '_DPMSG_SETGROUPOWNER
    DWORD ; dwType;
    DPID ; idGroup;
    DPID ; idNewOwner;
    DPID ; idOldOwner;
)
(setq DPMSG_SETGROUPOWNER _DPMSG_SETGROUPOWNER)
;; } DPMSG_SETGROUPOWNER
(setq LPDPMSG_SETGROUPOWNER (string DPMSG_SETGROUPOWNER "*"))


;; typedef struct _DPMSG_SENDCOMPLETE { {
(struct '_DPMSG_SENDCOMPLETE
    DWORD ; dwType
    DPID ; idFrom
    DPID ; idTo
    DWORD ; dwFlags
    DWORD ; dwPriority
    DWORD ; dwTimeout
    LPVOID ; lpvContext
    DWORD ; dwMsgID
    DPRESULT ; hr
    DWORD ; dwSendTime
)
(setq DPMSG_SENDCOMPLETE _DPMSG_SENDCOMPLETE)
;; } DPMSG_SENDCOMPLETE
(setq LPDPMSG_SENDCOMPLETE (string DPMSG_SENDCOMPLETE "*"))






;; interface IDirectPlay2 : IUnknown
;; {
;;          DPRESULT AddPlayerToGroup(
;;     DPID idGroup,
;;      DPID idPlayer 
;; );
;;     DPRESULT Close(
;;     
;; );
;;     DPRESULT CreateGroup(
;;      LPDPID lpidGroup,
;;      LPDPNAME lpGroupName,
;;      LPVOID lpData,
;;      DWORD dwDataSize,
;;      CreateGroupFlags dwFlags
;; );
;;     DPRESULT CreatePlayer(
;;      LPDPID lpidPlayer,
;;      LPDPNAME lpPlayerName,
;;      HANDLE hEvent,
;;      LPVOID lpData,
;;      DWORD dwDataSize,
;;      CreatePlayerFlags dwFlags
;; );
;;     DPRESULT DeletePlayerFromGroup(
;;     DPID idGroup,
;;      DPID idPlayer 
;; );
;;     DPRESULT DestroyGroup(
;;      DPID idGroup
;; );
;;     DPRESULT DestroyPlayer(
;;      DPID idPlayer
;; );
;;     DPRESULT EnumGroupPlayers(
;;      DPID idGroup,
;;      LPGUID lpguidInstance,
;;      LPDPENUMPLAYERSCALLBACK2 lpEnumPlayersCallback2,
;;      LPVOID lpContext,
;;      DWORD dwFlags
;; );
;;     DPRESULT EnumGroups(
;;      LPGUID lpguidInstance,
;;      LPDPENUMPLAYERSCALLBACK2 lpEnumPlayersCallback2,
;;      LPVOID lpContext,
;;      DWORD dwFlags 
;; );
;;     DPRESULT EnumPlayers(
;;     LPGUID lpguidInstance,
;;      LPDPENUMPLAYERSCALLBACK2 lpEnumPlayersCallback2,
;;      LPVOID lpContext,
;;      EnumPlayersMask dwFlags
;; );
;;     DPRESULT EnumSessions(
;;     LPDPSESSIONDESC2 lpsd,
;;      DWORD dwTimeout,
;;      LPDPENUMSESSIONSCALLBACK2 lpEnumSessionsCallback2,
;;      LPVOID lpContext,
;;      EnumSessionsFlags dwFlags 
;; );
;;     DPRESULT GetCaps(
;;       LPDPCAPS lpDPCaps,
;;      GetCapsFlags dwFlags
;; );
;;     DPRESULT GetGroupData(
;;      DPID idGroup,
;;       LPVOID lpData,
;;       LPDWORD lpdwDataSize,
;;      GetDataFlags dwFlags
;; );
;;     DPRESULT GetGroupName(
;;      DPID idGroup,
;;       LPVOID lpData,
;;       LPDWORD lpdwDataSize
;; );
;;     DPRESULT GetMessageCount(
;;      DPID idPlayer,
;;       LPDWORD lpdwCount 
;; );
;;     DPRESULT GetPlayerAddress(
;;      DPID idPlayer,
;;       LPVOID lpData,
;;       LPDWORD lpdwDataSize 
;; );
;;     DPRESULT GetPlayerCaps(
;;      DPID idPlayer,
;;       LPDPCAPS lpPlayerCaps ,
;;      GetCapsFlags dwFlags
;; );
;;     DPRESULT GetPlayerData(
;;      DPID idPlayerD,
;;       LPVOID lpData,
;;       LPDWORD lpdwDataSize,
;;      GetDataFlags dwFlags
;; );
;;     DPRESULT GetPlayerName(
;;      DPID idPlayerD,
;;       LPVOID lpData,
;;       LPDWORD lpdwDataSize 
;; );
;;     DPRESULT GetSessionDesc(
;;       LPVOID lpData,
;;       LPDWORD lpdwDataSize 
;; );
;;     DPRESULT Initialize(
;;      LPGUID lpGUID 
;; );
;;     DPRESULT Open(
;;      LPDPSESSIONDESC2 lpsd ,
;;      OpenFlags dwFlags
;; );
;;     DPRESULT Receive(
;;      LPDPID lpidFrom,
;;      LPDPID lpidTo,
;;      ReceiveFlags dwFlags,
;;       LPVOID lpData,
;;       LPDWORD lpdwDataSize 
;; );
;;     DPRESULT Send(
;;      DPID idFrom,
;;      DPID idTo,
;;      SendFlags dwFlags,
;;      LPVOID lpData,
;;      DWORD dwDataSize
;; );
;;     DPRESULT SetGroupData(
;;      DPID idGroup,
;;      LPVOID lpData,
;;      DWORD dwDataSize,
;;      SetDataFlags dwFlags
;; );
;;     DPRESULT SetGroupName(
;;      DPID idGroup,
;;      LPDPNAME lpGroupName,
;;      SetDataFlags dwFlags
;; );
;;     DPRESULT SetPlayerData(
;;      DPID idPlayer,
;;      LPVOID lpData,
;;      DWORD dwDataSize,
;;      SetDataFlags dwFlags
;; );
;;     DPRESULT SetPlayerName(
;;      DPID idPlayer,
;;      LPDPNAME lpPlayerName,
;;      SetDataFlags dwFlags
;; );
;;     DPRESULT SetSessionDesc(
;;      LPDPSESSIONDESC2 lpSessDesc ,
;;      SetDataFlags dwFlags
;; );
;; };



;; interface IDirectPlay3 : IDirectPlay2
;; {
;;           DPRESULT AddGroupToGroup(
;;     DPID idParentGroup,
;;      DPID idGroup
;; );
;;     DPRESULT CreateGroupInGroup(
;;     DPID idParentGroup ,
;;      LPDPID lpidGroup ,
;;      LPDPNAME lpGroupName ,
;;      LPVOID lpData,
;;      DWORD dwDataSize,
;;      CreateGroupFlags dwFlags
;; );
;;     DPRESULT DeleteGroupFromGroup(
;;     DPID idParentGroup,
;;      DPID idGroup
;; );
;;     DPRESULT EnumConnections(
;;      LPCGUID lpguidApplication,
;;      LPDPENUMCONNECTIONSCALLBACK lpEnumCallback,
;;      LPVOID lpContext,
;;      EnumConnectionsFlags dwFlags
;; );
;;     DPRESULT EnumGroupsInGroup(
;;      DPID idGroup,
;;      LPGUID lpguidInstance,
;;      LPDPENUMPLAYERSCALLBACK2 lpEnumPlayersCallback2,
;;      LPVOID lpContext,
;;      EnumPlayersMask dwFlags
;; );
;;     DPRESULT GetGroupConnectionSettings(
;;     DWORD dwFlags,
;;      DPID idGroup,
;;       LPVOID lpData,
;;       LPDWORD dwDataSize
;; );
;;     DPRESULT InitializeConnection(
;;     LPVOID lpData,
;;      DWORD dwDataSize
;; );
;;     DPRESULT SecureOpen(
;;     LPCDPSESSIONDESC2 lpsd,
;;      DWORD dwFlags,
;;      LPCDPSECURITYDESC lpSecurity,
;;      LPCDPCREDENTIALS lpCredentials
;; );
;;     DPRESULT SendChatMessage(
;;     DPID idFrom,
;;      DPID idTo,
;;      SendFlags dwFlags,
;;      LPDPCHAT lpChatMessage 
;; );
;;     DPRESULT SetGroupConnectionSettings(
;;     DWORD dwFlags,
;;      DPID idGroup,
;;      LPDPLCONNECTION lpConnection 
;; );
;;     DPRESULT StartSession(
;;     DWORD dwFlags,
;;      DPID idGroup 
;; );
;;     DPRESULT GetGroupFlags(
;;     DPID idGroup,
;;       CreateGroupFlags* lpdwFlags 
;; );
;;     DPRESULT GetGroupParent(
;;     DPID idGroup,
;;       LPDPID lpidParentGroup
;; );
;;     DPRESULT GetPlayerAccount(
;;     DPID idPlayer,
;;      DWORD dwFlags,
;;       LPVOID lpData ,
;;       LPDWORD lpdwDataSize 
;; );
;;     DPRESULT GetPlayerFlags(
;;     DPID idPlayer,
;;        LPDWORD lpdwDataSize 
;; );
;; };


;; interface IDirectPlay4 : IDirectPlay3
;; {
;;          DPRESULT GetGroupOwner(
;;      DPID idGroup,
;;        LPDPID lpidOwner 
;; );
;;     DPRESULT SetGroupOwner(
;;     DPID idGroup,
;;      DPID idOwner
;; );
;;     DPRESULT SendEx(
;;      DPID idFrom,
;;      DPID idTo,
;;      SendFlags dwFlags,
;;      LPVOID lpData,
;;      DWORD dwDataSize,
;;      DWORD dwPriority,
;;      DWORD dwTimeout,
;;      LPVOID lpContext,
;;      LPDWORD lpdwMsgID 
;; );
;;     DPRESULT GetMessageQueue(
;;     DPID idFrom,
;;      DPID idTo,
;;      GetMessageQueueFlags dwFlags,
;;       LPDWORD lpdwNumMsgs,
;;       LPDWORD lpdwNumBytes 
;; );
;;     DPRESULT CancelMessage(
;;      DWORD dwMsgID,
;;      DWORD dwFlags 
;; );
;;     DPRESULT CancelPriority(
;;      DWORD dwMinPriority,
;;      DWORD dwMaxPriority,
;;      DWORD dwFlags 
;; );
;; };





(import "DPLAYX.DLL" "DirectPlayEnumerateA" DPRESULT
    LPDPENUMDPCALLBACKA ; lpCallback,
    LPVOID ; lpContext
)
(import "DPLAYX.DLL" "DirectPlayEnumerateW" DPRESULT
    LPDPENUMDPCALLBACK ; lpCallback,
    LPVOID ; lpContext
)
(import "DPLAYX.DLL" "DirectPlayCreate" DPRESULT
    LPGUID ; lpGUID,
    (string LPDIRECTPLAY "*") ; lplpDP,
    (string IUnknown "*") ; pUnk
)

(import "DPLAYX.DLL" "DllGetClassObject" HRESULT
  REFCLSID rclsid,
     ; 
   REFIID riid,
     ; 
    (string COM_INTERFACE_PTR "*") ; ppv
