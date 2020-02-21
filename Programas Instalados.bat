@echo off
REM *************************
REM * Autor: jhdbw          *
REM * Last Edit: 22/01/2020 *
REM *************************
set aa=%date:~8,4%
set mm=%date:~3,2%
set dd=%date:~0,2%
set aammdd=%date:~8,2%%date:~3,2%%date:~0,2%
set aaaa=%date:~6,4%
set aaaammdd=%date:~6,4%%date:~3,2%%date:~0,2%


:inicio
color 0c
title Lista de Programas 
echo ...............................................
echo .          Bienvenido %username%
echo ...............................................
echo . 1. Verificar un solo equipo                 .
echo . 2. Verificar lista de equipos               .
echo . 3. Buscar Antivirus                         .
echo ...............................................
echo ...............................................

set /p opci= Seleccione una opcion: 
if %opci%==1 goto opci1
if %opci%==2 goto opci2
if %opci%==3 goto opci3

goto inicio


:opci1
set /p EQUIPO=Ingrese el nombre del equipo:
set /p USUARIO=Ingrese el usuario:
WMIC /node:%EQUIPO% /user:%USUARIO% product get name,version,vendor,installdate
pause
goto inicio

:opci2
title 
echo Verifica que la lista de equipos esta cargada en equipos.txt
pause
set /p USUARIO=Ingrese el usuario:
set /p PASS=Ingrese el password:

for /f %%i in (equipos.txt) do WMIC /Node:%%i /user:%USUARIO% /password:%PASS% product get name,version,vendor,installdate >> Lista_Programas.txt

echo %DATE% %TIME% >> Lista_Programas.txt
pause
goto inicio
pause

:opci3
title Buscando Instalacion de Antivirus.
echo Verifica que la lista de equipos esta cargada en equipos.txt
pause
set /p USUARIO=Ingrese el usuario:
set /p PASS=Ingrese el password:

for /f %%i in (equipos.txt) do (
echo %%i >> Lista_Programas.txt
WMIC /Node:%%i /user:%USUARIO% /password:%PASS% product where "name like 'Symantec Endpoint Protection'" get name,version,vendor,installdate >> Lista_Programas.txt
echo %%i
echo .......... >> Lista_Programas.txt
)
echo %DATE% %TIME%
pause
goto inicio