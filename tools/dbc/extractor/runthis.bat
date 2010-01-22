:TOP
@CLS
@ECHO OFF

:Begin

CLS
ECHO.
ECHO OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO
ECHO OO Welcome to the Universal DBC extractor of Kameleon20          OO
ECHO OO This extractor will extract your dbc files for you            OO
ECHO OO Make sure you have placed the files in the correct directory  OO
ECHO OO See Help.txt for an explanation on where to place these files OO
ECHO OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO
ECHO.
ECHO 	1 - start
ECHO 	0 - Exit this extractor
ECHO.
SET /p v= 		Enter a number:
IF %v%==1 GOTO START
IF %v%==0 GOTO exit
IF %v%==* GOTO error
GOTO error

:START
mpqe  patch.MPQ DBFilesClient\*.dbc
mpqe  patch-2.MPQ DBFilesClient\*.dbc
mpqe /p backup.MPQ DBFilesClient\*.dbc
mpqe /p base.MPQ DBFilesClient\*.dbc
mpqe /p dbc.MPQ DBFilesClient\*.dbc
mpqe /p fonts.MPQ DBFilesClient\*.dbc
mpqe /p interface.MPQ DBFilesClient\*.dbc
mpqe /p misc.MPQ DBFilesClient\*.dbc
mpqe /p model.MPQ DBFilesClient\*.dbc
mpqe /p sound.MPQ DBFilesClient\*.dbc
mpqe /p speech.MPQ DBFilesClient\*.dbc
mpqe /p terrain.MPQ DBFilesClient\*.dbc
mpqe /p texture.MPQ DBFilesClient\*.dbc
mpqe /p wmo.MPQ DBFilesClient\*.dbc
ECHO Done.
PAUSE
GOTO begin

:error
ECHO 	Please enter a correct number.
PAUSE
GOTO begin

:exit