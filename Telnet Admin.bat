@echo off
REM ***********************
REM * Autor: Jimmy Duarte *
REM * Last Edit: 16/11/18 *
REM ***********************

set logdir=.\logs\

title Telnet Admin
color 0A
:MENU
echo  ****************************
echo  * %DATE%   %TIME% *
echo  *    Bienvenido %USERNAME%    *
echo  ****************************
echo  ****************************
echo  * 1. Habilitar Telnet      *
echo  * 2. Deshabilitar Telnet   *
echo  * 3. Telnet                *
echo  * 4. Salir                 *
echo  ****************************

set /p opci=Seleccione una opcion:

if %opci%==1 goto TELNETON
if %opci%==2 goto TELNETOFF
if %opci%==3 goto TELNET
if %opci%==4 goto SALIR
echo %opci%
goto menu

:TELNETON
dism /online /enable-feature /featurename:TelnetClient
echo %DATE% ; %TIME% ; %USERNAME% ; Habilito Telnet >> %logdir%logtelnetadmin.txt 
goto MENU

:TELNETOFF
dism /online /disable-feature /featurename:TelnetClient
echo %DATE% ; %TIME% ; %USERNAME% ; Deshabilito Telnet >> %logdir%logtelnetadmin.txt 
goto MENU

:TELNET
set /p ip=Ingrese la IP:
set /p port=Ingrese el Puerto:
echo %DATE% ; %TIME% ; %USERNAME% ; Intento conexion Telnet ; %ip% ; %port% >> %logdir%logtelnetadmin.txt 
telnet %ip% %port%

goto MENU

:SALIR
exit
pause