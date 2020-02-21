@echo off
REM *******************************
REM * Autor: Jimmy Duarte         *
REM * Seguridad de la Información *
REM * Last Edit: 01/10/19         *
REM *******************************

start C:\Users\beyond\Desktop\AS_PRODUCCION.WS

set t=10

:verificador
timeout %t%

tasklist /FI "IMAGENAME eq PCSWS.EXE" 2>NUL | find /I /N "PCSWS.EXE">NUL
if "%ERRORLEVEL%"=="0" goto inicio
if "%ERRORLEVEL%"=="1" goto fin 


:inicio
echo %DATE% %TIME% El programa se esta ejecutando >> log.txt
goto verificador

:fin
echo %DATE% %TIME% El programa NO se esta ejecutando >> log.txt
REM logoff
goto verificador

