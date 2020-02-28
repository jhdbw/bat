@echo off
REM *************************
REM * AUTOR: JIMMY DUARTE   *
REM * LAST EDIT: 25/02/2020 *
REM *************************

REM ALMACENAR FECHA Y HORA EN VARIABLES
set aa=%date:~8,4%
set mm=%date:~3,2%
set dd=%date:~0,2%
set aammdd=%date:~8,2%%date:~3,2%%date:~0,2%
set aaaa=%date:~6,4%
set aaaammdd=%date:~6,4%%date:~3,2%%date:~0,2%



REM DEFINIR LOGS
set LOG1=%aaaammdd%_UserAdmin.txt
set LOG2=%aaaammdd%_log.txt
set LOG3=%aaaammdd%_ListUserAdmin.txt
set LOG4=%aaaammdd%_equipos.csv
set LOG5=%aaaammdd%_equipos.txt
set LOG6=USUARIOS_AUTORIZADOS.csv
set LOG7=%aaaammdd%_EliminarAdmin.txt



REM GENERACION DEL MENU
:INICIO
title Usuarios Administradores
echo %aaaa%/%mm%/%dd%
echo ...............................................
echo .          Bienvenido %username%
echo ...............................................
echo . 1. Escanear un solo equipo                  .
echo . 2. Agregar usuario administrador.           .
echo . 3. Borrar usuario administrador.            .
echo ...............................................
echo ...............................................
echo . 4. Descargar lista de equipos del dominio   .                 
echo . 5. Escanear Lista de Equipso                .
echo . 6. Lista de Administradores a Eliminar      .
echo ...............................................
echo ...............................................
echo .                                             .
echo .                                             .
echo ...............................................
set /p opci= Seleccione una opcion: 
if %opci%==1 goto OPCI1
if %opci%==2 goto OPCI2
if %opci%==3 goto OPCI3
if %opci%==4 goto OPCI4
if %opci%==5 goto OPCI5
if %opci%==6 goto OPCI6
goto INICIO



REM /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
:OPCI1
title Usuarios Administradores - Escanear un solo equipo
set /p EQUIPO=Ingrese el nombre del equipo:
set /p USUARIO=Ingrese el usuario:
set /p PASS=Ingrese el password:
WMIC /node:%EQUIPO% /user:%USUARIO% /password:%PASS% path win32_groupuser where (groupcomponent="win32_group.name=\"Administradores\",domain=\"%EQUIPO%\"")
REM psexec \\%EQUIPO% net localgroup Administradores
echo %DATE% %TIME%
pause
goto INICIO



REM /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
:OPCI2
title Usuarios Administradores - Agregar Usuario Administrador
echo Debe ejecutar como Administrador de Dominio
pause
set /p EQUIPO=Ingrese el nombre del equipo:
set /p DOMINIO=Ingrese el dominio:
set /p USUARIO=Ingrese el usuario a agregar:
psexec \\%EQUIPO% net localgroup Administradores "%DOMINIO%\%USUARIO%" /add 
psexec \\%EQUIPO% net localgroup Administradores
pause
goto INICIO



REM /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
:OPCI3
title Usuarios Administradores - Borrar Usuario
echo Debe ejecutar como Administrador de Dominio
pause
set /p EQUIPO=Ingrese el nombre del equipo:
set /p DOMINIO=Ingrese el dominio:
set /p USUARIO=Ingrese el usuario a borrar:
psexec \\%EQUIPO% net localgroup Administradores "%DOMINIO%\%USUARIO%" /delete
psexec \\%EQUIPO% net localgroup Administradores
pause
goto INICIO



REM /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
:OPCI4
title Usuarios Administradores - Descargar Lista de Equipos
echo %DATE% %TIME%
echo Descargando datos:
REM DESCARGAR LISTA DE EQUIPOS DEL DOMINIO
CSVDE -f %aaaammdd%_equipos.csv -r objectClass=computer -l "name"
REM csvde  -r "(objectClass=computer)"  -f equipos.csv -l "name, DN"
REM VERIFICAR POR PING LIVE HOSTS Y GENERAR LOG
for /F "skip=1 tokens=2 delims=,=" %%i in (%LOG4%) do (
ping -n 1 %%i
if %ERRORLEVEL%==0 echo %%i>> %LOG5%
)
echo %DATE% %TIME%
pause
goto INICIO



REM /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
:OPCI5
title Usuarios Administradores - Escanear Lista de Equipos
echo %DATE% %TIME%
echo Verifica que la lista de equipos esta cargada en %LOG5%
pause
set /p USUARIO=Ingrese el usuario:
set /p PASS=Ingrese el password:
cls
REM ESCANEAR USUARIOS ADMINISTRADORES DE LA LISTA DE EQUIPOS
for /f "tokens=1 delims=" %%i in (%LOG5%) do title Usuarios Administradores - Escaneando Equipo: %%i && WMIC /Node:%%i /user:%USUARIO% /password:%PASS% path win32_groupuser where (groupcomponent="win32_group.name=\"Administradores\",domain=\"%%i\"") >> %LOG1%
REM ELIMINAR ESPACIOS EN BLANCO
find "win32" %LOG1% >> %LOG2%
REM GENERAR LOG
for /f tokens^=2^,6^,8^ delims^=^" %%a in (%LOG2%) do (
echo %%a;%%b;%%c>> %LOG3%
)
echo %DATE% %TIME%
pause
goto opci2



REM /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
:OPCI6
title Usuarios Administradores - Lista de Administradores a Eliminar
for /f "tokens=*" %%i in (%LOG3%) do (
set cadena=%%i
call :BUSCADOR
)
pause
goto INICIO



REM /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
:BUSCADOR
find "%cadena%" %LOG6%
echo %ERRORLEVEL%
if %ERRORLEVEL%==1 echo %cadena%>>%LOG7%
echo END: %DATE% %TIME%
goto :eof



REM /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

pause