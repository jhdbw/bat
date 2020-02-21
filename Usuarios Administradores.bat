@echo off
REM *************************
REM * Autor: Jimmy Duarte   *
REM * Last Edit: 22/01/2020 *
REM *************************

set aa=%date:~8,4%
set mm=%date:~3,2%
set dd=%date:~0,2%
set aammdd=%date:~8,2%%date:~3,2%%date:~0,2%
set aaaa=%date:~6,4%
set aaaammdd=%date:~6,4%%date:~3,2%%date:~0,2%

:inicio
title Usuarios Administradores
echo ...............................................
echo .          Bienvenido %username%
echo ...............................................
echo . 1. Verificar un solo equipo                 .
echo . 2. Verificar lista de equipos               .
echo . 3. Descargar lista de equipos del dominio.  .
echo ...............................................
echo ...............................................
echo . 4. Agregar usuario administrador.           .
echo . 5. Borrar usuario administrador.            .
echo ...............................................

set /p opci= Seleccione una opcion: 
if %opci%==1 goto opci1
if %opci%==2 goto opci2
if %opci%==3 goto opci3
if %opci%==4 goto opci4
if %opci%==5 goto opci5

goto inicio



:opci1
title Usuarios Administradores - Verificar un solo equipo
set /p EQUIPO=Ingrese el nombre del equipo:
set /p USUARIO=Ingrese el usuario:
set /p PASS=Ingrese el password:
WMIC /node:%EQUIPO% /user:%USUARIO% /password:%PASS% path win32_groupuser where (groupcomponent="win32_group.name=\"Administradores\",domain=\"%EQUIPO%\"")
psexec \\%EQUIPO% net localgroup Administradores
echo %DATE% %TIME%
pause
goto inicio

:opci2
title Usuarios Administradores - Verificar lista de equipos
echo Verifica que la lista de equipos esta cargada en equipos.txt
pause
set /p USUARIO=Ingrese el usuario:
set /p PASS=Ingrese el password:

for /f %%i in (equipos.txt) do WMIC /Node:%%i /user:%USUARIO% /password:%PASS% path win32_groupuser where (groupcomponent="win32_group.name=\"Administradores\",domain=\"%%i\"") >> Usuarios_Administradores.txt

echo %DATE% %TIME% >> Usuarios_Administradores.txt
pause
goto opci2

:opci3
title Usuarios Administradores - Descargar lista de equipso
echo Descargando datos:
CSVDE -f %aaammdd%_equipos.csv -r objectClass=computer -l "name"

REM csvde  -r "(objectClass=computer)"  -f equipos.csv -l "name, DN"
pause
goto inicio

:opci4
title Usuarios Administradores - Agregar Usuarios
echo Debe ejecutar como Administrador de Dominio
pause
set /p EQUIPO=Ingrese el nombre del equipo:
set /p DOMINIO=Ingrese el dominio:
set /p USUARIO=Ingrese el usuario a agregar:

psexec \\%EQUIPO% net localgroup Administradores "%DOMINIO%\%USUARIO%" /add 

psexec \\%EQUIPO% net localgroup Administradores

pause
goto inicio

:opci5
title Usuarios Administradores - Borrar Usuarios
echo Debe ejecutar como Administrador de Dominio
pause
set /p EQUIPO=Ingrese el nombre del equipo:
set /p DOMINIO=Ingrese el dominio:
set /p USUARIO=Ingrese el usuario a borrar:

psexec \\%EQUIPO% net localgroup Administradores "%DOMINIO%\%USUARIO%" /delete

psexec \\%EQUIPO% net localgroup Administradores

pause
goto inicio