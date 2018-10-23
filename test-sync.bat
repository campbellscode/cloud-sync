ECHO OFF

CLS

:MENU
ECHO.
ECHO ...............
ECHO flashCraft (F:)
ECHO ...............
ECHO.
ECHO 1 - Student
ECHO 2 - Professional
ECHO 3 - New Folder
ECHO 4 - Exit
ECHO.
SET /P M=Select a folder to sync:
IF %M%==1 GOTO Student
IF %M%==2 GOTO Professional
IF %M%==3 GOTO NewFolder
IF %M%==4 GOTO Exit

:Student
xcopy /s /i /e /y /d f:\Student d:\MyDocuments\Student
xcopy /s /i /e /y /r /d f:\Student "c:\users\kidka\onedrive - kctcs"
GOTO MENU

:Professional
xcopy /s /i /e /y /r /d f:\Professional "c:\users\kidka\onedrive - kctcs\Professional"
xcopy /s /i /e /y /r /d f:\Professional "c:\users\kidka\Google Drive (lcampbell.developer@gmail.com)"
GOTO MENU

:NewFolder
xcopy /s /i /e /y /d "f:\New folder" d:\MyDocuments\Student
xcopy /s /i /e /y /r /d "f:\New folder" "c:\users\kidka\onedrive - kctcs"
GOTO MENU

:Exit
EOF


