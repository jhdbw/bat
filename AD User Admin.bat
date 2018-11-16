@echo off
REM ***********************
REM * Autor: Jimmy Duarte *
REM * Last Edit: 08/03/18 *
REM ***********************
REM Establecemos las variables de fecha
set aa=%date:~8,4%
set mm=%date:~3,2%
set dd=%date:~0,2%
set aammdd=%date:~8,2%%date:~3,2%%date:~0,2%
set aaaa=%date:~6,4%
set aaaammdd=%date:~6,4%%date:~3,2%%date:~0,2%

set logdir=C:\Users\jduarte\Documents\6.SCRIPTS\logs\

title AD User Admin
color 1F
:menu
echo  *****************************
echo  * %DATE%   %TIME%  *
echo  *    Bienvenido %USERNAME%     *
echo  *****************************
echo  *****************************
echo  * 1. Visualizar Usuario     *
echo  * 2. Desbloqueo de Usuario  *
echo  * 3. Bloqueo de Usuario     *
echo  *****************************
echo  * 4. Inventario Usuarios AD *
echo  * 5. Inventario Equipos AD  *
echo  *****************************
echo  * 6. Forzar cambio de pass  *
echo  * 99. Salir                 *
echo  *****************************

set /p opci=Seleccione una opcion:

if %opci%==1 goto menu1
if %opci%==2 goto menu2
if %opci%==3 goto menu3
if %opci%==4 goto menu4
if %opci%==5 goto menu5
if %opci%==6 goto menu6
if %opci%==99 goto menu99
echo %opci%
goto menu

:menu1
cls
title Visualizar Usuario AD
set /p usuario=Ingrese el usuario:
net user /domain %usuario%
REM LOG
echo %DATE% ; %TIME% ; %USERNAME% ; Visualizar usuario ; %usuario% >> %logdir%logaduseradmin.txt 
pause
goto menu

:menu2
title Desbloqueo de Usuario AD
cls
set /p usuario=Ingrese el usuario:
net user /domain %usuario% /active:yes
REM LOG
echo %DATE% ; %TIME% ; %USERNAME% ; Desbloquear usuario ; %usuario% >> %logdir%logaduseradmin.txt 
pause
goto menu

:menu3
title Bloqueo de Usuario AD
cls
set /p usuario=Ingrese el usuario:
net user /domain %usuario% /active:no
REM LOG
echo %DATE% ; %TIME% ; %USERNAME% ; Bloquear usuario ; %usuario% >> %logdir%logaduseradmin.txt  
pause
goto menu

:menu4
csvde  -r "(objectClass=user)"  -f %logdir%UsuariosAD_%aaaammdd%.csv
REM CSVDE -d "DC=dominio,dc=local" -f %logdir%UsuariosAD_%aaaammdd%.csv -r "(&(objectCategory=person)(objectClass=user))" -l "cn, description, whenCreated,	whenChanged, displayName, name, badPwdCount, badPasswordTime, lastLogon, pwdLastSet, accountExpires, logonCount, sAMAccountName, lastLogonTimestamp, adminCount, userPrincipalName"

pause
goto menu

:menu5
csvde  -r "(objectClass=computer)"  -f %logdir%EquiposAD_%aaaammdd%.csv
pause
goto menu

:menu6
title Forzar cambio de pass
cls
set /p usuario=Ingrese el usuario:
net user /domain %usuario% /logonpasswordchg:yes
echo %DATE% ; %TIME% ; %USERNAME% ; Forzar cambio de pass ; %usuario% >> %logdir%logaduseradmin.txt  
pause
goto menu

:menu99
title Salir
exit
pause
