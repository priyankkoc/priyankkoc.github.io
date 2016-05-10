@ECHO OFF

:TOP

ECHO -----------------------------
ECHO 2.Replicate workspace directory
ECHO -----------------------------

set CHOICE=2

set SERVERSOURCE="192.168.10.74"
set /p SERVERSOURCE="ENTER SOURCE SERVER [192.168.10.74]: "

set /p SERVERDEST="ENTER DESTINATION SERVER: "

set DRYRUN=N
set /p DRYRUN="Dry run ? [N]: "

ECHO SOURCE SERVER is %SERVERSOURCE%

ECHO DESTINATION SERVER is %SERVERDEST%    

set EXTEND=
if %DRYRUN% == y set EXTEND=-whatif
if %DRYRUN% == Y set EXTEND=-whatif

ECHO EXTEND is %EXTEND%

"C:\Program Files\IIS\Microsoft Web Deploy V3\msdeploy.exe" -verb:sync -source:dirPath="C:\Program Files (x86)\Jenkins\workspace\own-test" -dest:dirPath="D:\kantar-web-app"
pause

GOTO TOP
exit

