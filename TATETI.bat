@echo off
title TATETI
set ESP= 
set A1= 
set A2= 
set A3= 
set B1= 
set B2= 
set B3= 
set C1= 
set C2= 
set C3= 
set num=1
set auxA1=0
set auxA2=0
set auxA3=0
set auxB1=0
set auxB2=0
set auxB3=0
set auxC1=0
set auxC2=0
set auxC3=0


:X
set ficha=X
Title TATETI - %ficha%

echo      1   2   3  
echo    *************
echo  A * %A1% * %A2% * %A3% *
echo    *************
echo  B * %B1% * %B2% * %B3% *
echo    *************
echo  C * %C1% * %C2% * %C3% *
echo    *************

set /p destino=Ingrese las cordenadas:
cls

if %destino%==A1 set A1=%ficha%
if %destino%==A2 set A2=%ficha%
if %destino%==A3 set A3=%ficha%
if %destino%==B1 set B1=%ficha%
if %destino%==B2 set B2=%ficha%
if %destino%==B3 set B3=%ficha%
if %destino%==C1 set C1=%ficha%
if %destino%==C2 set C2=%ficha%
if %destino%==C3 set C3=%ficha%

echo      1   2   3  
echo    *************
echo  A * %A1% * %A2% * %A3% *
echo    *************
echo  B * %B1% * %B2% * %B3% *
echo    *************
echo  C * %C1% * %C2% * %C3% *
echo    *************
pause
cls
goto check

:O
set ficha=O
Title TATETI - %ficha%

echo      1   2   3  
echo    *************
echo  A * %A1% * %A2% * %A3% *
echo    *************
echo  B * %B1% * %B2% * %B3% *
echo    *************
echo  C * %C1% * %C2% * %C3% *
echo    *************

set /p destino=Ingrese las cordenadas:
cls

if %destino%==A1 set A1=%ficha%
if %destino%==A2 set A2=%ficha%
if %destino%==A3 set A3=%ficha%
if %destino%==B1 set B1=%ficha%
if %destino%==B2 set B2=%ficha%
if %destino%==B3 set B3=%ficha%
if %destino%==C1 set C1=%ficha%
if %destino%==C2 set C2=%ficha%
if %destino%==C3 set C3=%ficha%

echo      1   2   3  
echo    *************
echo  A * %A1% * %A2% * %A3% *
echo    *************
echo  B * %B1% * %B2% * %B3% *
echo    *************
echo  C * %C1% * %C2% * %C3% *
echo    *************
pause
cls
goto check



:check
if %A1%==X set /a auxA1=%num%
if %A1%==O set /a auxA1=%num%

REM IF /I %A1%==X & %A2%==X & %A3%==X goto ENDX else

:check2


set /a num=%auxA1%+%auxA2%+%auxA3%+%auxB1%+%auxB2%+%auxB3%+%auxC1%+%auxC2%+%auxC3%
echo %num%

pause

if %ficha%==X goto O
if %ficha%==O goto X

:ENDX
echo GANA X

pause