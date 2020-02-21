@echo off
title Generador de Diccionario
color f0

REM .--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------.
REM . Armar un script comentado, linea por linea qué tarea realiza en cada paso..                                                                                                          .
REM . con el objetivo de que se cree un diccionario para ataques de fuerza bruta introduciendo por consola palabras claves, teniendo en cuenta los siguientes parámetros..                 .
REM .                                                                                                                                                                                      .
REM . a.- El usuario debe ingresar por consola palabras, de hasta 4 caracteres como por ejemplo: Hola, Pepe, FTP, 2020, etc, etc..                                                         .
REM .                                                                                                                                                                                      .
REM . b.- Una vez que se termina de ingresar palabras, el script debe tomar los caracteres de cada una de ellas y dejarlos único e irrepetibles.                                           .
REM .     O sea debe usar los caracteres únicos de cada palabra, teniendo en cuenta su variante en mayúscula.                                                                              .
REM .    Por ejemplo: Si el usuario ingreso las palabras: Telnet, Server, el script para armar el diccionario tendrá en cuenta solo los siguientes caracteres: t,e,l,n,s,r,v               .
REM .                                                                                                                                                                                      .
REM . c.- El script debe generar claves de hasta 4 caracteres (por cuestión de uso y como es un ejemplo no se requiere más que eso) y almacenarlas en un archivo denominado diccionario.txt.
REM .--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------.

:menu
if exist tmp.txt del tmp.txt
if exist datos.txt del datos.txt	
if exist diccionario.txt del diccionario.txt
if exist diccionario2.txt del diccionario2.txt
echo ..........................
echo . 1. Ingresar palabra    .
echo . 2. Generar diccionario .
echo ..........................
set /p opci=. Seleccione una opcion:
cls
if %opci%==1 goto menu1
if %opci%==2 goto menu2


:menu1
echo Para finalizar ingrese la letra "c".
set /p datos=Ingrese una palabra (4 caracteres):
if %datos%==c goto menu2
if %datos%==C goto menu2
echo.%datos:~0,1%>> tmp.txt
echo.%datos:~1,1%>> tmp.txt
echo.%datos:~2,1%>> tmp.txt
echo.%datos:~3,1%>> tmp.txt
echo.%datos:~4,1%>> tmp.txt
echo.%datos:~5,1%>> tmp.txt
echo.%datos:~6,1%>> tmp.txt
echo.%datos:~7,1%>> tmp.txt
echo.%datos:~8,1%>> tmp.txt
echo.%datos:~9,1%>> tmp.txt

goto menu1

pause
goto menu

:menu2
for /F "tokens=*" %%i in (tmp.txt) do (
if %%i==a set a=%%i
if %%i==b set b=%%i
if %%i==c set c=%%i
if %%i==d set d=%%i
if %%i==e set e=%%i
if %%i==f set f=%%i
if %%i==g set g=%%i
if %%i==h set h=%%i
if %%i==i set i=%%i
if %%i==j set j=%%i
if %%i==k set k=%%i
if %%i==l set l=%%i
if %%i==m set m=%%i
if %%i==n set n=%%i
if %%i==o set o=%%i
if %%i==p set p=%%i
if %%i==q set q=%%i
if %%i==r set r=%%i
if %%i==s set s=%%i
if %%i==t set t=%%i
if %%i==u set u=%%i
if %%i==v set v=%%i
if %%i==w set w=%%i
if %%i==x set x=%%i
if %%i==y set y=%%i
if %%i==z set z=%%i
if %%i==A set a=a
if %%i==B set b=b
if %%i==C set c=c
if %%i==D set d=d
if %%i==E set e=e
if %%i==F set f=f
if %%i==G set g=g
if %%i==H set h=h
if %%i==I set i=i
if %%i==J set j=j
if %%i==K set k=k
if %%i==L set l=l
if %%i==M set m=m
if %%i==N set n=n
if %%i==O set o=o
if %%i==P set p=p
if %%i==Q set q=q
if %%i==R set r=r
if %%i==S set s=s
if %%i==T set t=t
if %%i==U set u=u
if %%i==V set v=v
if %%i==W set w=w
if %%i==X set x=x
if %%i==Y set y=y
if %%i==Z set z=z
if %%i==0 set n0=%%i
if %%i==1 set n1=%%i
if %%i==2 set n2=%%i
if %%i==3 set n3=%%i
if %%i==4 set n4=%%i
if %%i==5 set n5=%%i
if %%i==6 set n6=%%i
if %%i==7 set n7=%%i
if %%i==8 set n8=%%i
if %%i==9 set n9=%%i
)

echo Letras a utilizar:

set palabra=%a%%b%%c%%d%%e%%f%%g%%h%%i%%j%%k%%l%%m%%n%%o%%p%%q%%r%%s%%t%%u%%v%%w%%x%%y%%z%%n0%%n1%%n2%%n3%%n4%%n5%%n6%%n7%%n8%%n9%
echo.%palabra%
echo.%palabra:~0,1%>> datos.txt
echo.%palabra:~1,1%>> datos.txt
echo.%palabra:~2,1%>> datos.txt
echo.%palabra:~3,1%>> datos.txt
echo.%palabra:~4,1%>> datos.txt
echo.%palabra:~5,1%>> datos.txt
echo.%palabra:~6,1%>> datos.txt
echo.%palabra:~7,1%>> datos.txt
echo.%palabra:~8,1%>> datos.txt
echo.%palabra:~9,1%>> datos.txt
pause

:diccio1
echo Generando Diccionario 1 ..
for /F "tokens=* delims=.,;:" %%a in (datos.txt) do (
for /F "tokens=* delims=.,;:" %%b in (datos.txt) do (
for /F "tokens=* delims=.,;:" %%c in (datos.txt) do (
for /F "tokens=* delims=.,;:" %%d in (datos.txt) do (
echo.%%a%%b%%c%%d >> diccionario.txt
)
)
)
)
echo Diccionario 1 Generado: diccionario.txt
pause


:diccio2
echo Generando Diccionario 2..
for /F "tokens=*" %%a in (datos.txt) do (
for /F "tokens=*" %%b in (datos.txt) do (
for /F "tokens=*" %%c in (datos.txt) do (
for /F "tokens=*" %%d in (datos.txt) do (
if not %%a==%%b (
if not %%a==%%c (
if not %%a==%%d (
if not %%b==%%c (
if not %%b==%%d (
if not %%d==%%c (
echo.%%a%%b%%c%%d >>diccionario2.txt
)
)
)
)
)
)
)
)
)
)
echo Diccionario 2 Generado: diccionario2.txt
pause



exit
pause