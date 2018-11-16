@echo off
REM ***********************
REM * Autor: Jimmy Duarte *
REM * Last Edit: 16/11/18 *
REM ***********************
color 70
title Chess
echo.
echo               ,....,                ,....,
echo             ,::::::^<                ^>::::::,
echo            ,::/^^\"``.              .``"/^^\::,
echo           ,::/, `   O`.          .`O   ` ,\::,
echo          ,::; ^|        '.      .'        ^| ;::,
echo          ,::^|  \___,-.  o)    (o  .-,___/  ^|::,
echo          ;::^|     \   '-'      `-'   /     ^|::;
echo          ;::^|      \                /      ^|::;
echo          ;::^|   _.=`\              /`=._   ^|::;
echo          `;:^|.=` _.=`\            /`=._ `=.^|:;"
echo            '^|_.=`   __\          /__   `=._^|'
echo             `\_..==`` /          \ ``==.._/` 
echo              .'.___.-'.          .'-.___.'.
echo             /          \        /          \
echo            ('--......--')      ('--......--')
echo            /'--......--'\      /'--......--'\
echo            `"--......--"`      `"--......--"`

REM CARGA DE ESPACIOS
set space=  
set A1=  
set A2=  
set A3=  
set A4=  
set A5=  
set A6=  
set A7=  
set A8=  
set B1=  
set B2=  
set B3=  
set B4=  
set B5=  
set B6=  
set B7=  
set B8=  
set C1=  
set C2=  
set C3=  
set C4=  
set C5=  
set C6=  
set C7=  
set C8=  
set D1=  
set D2=  
set D3=  
set D4=  
set D5=  
set D6=  
set D7=  
set D8=  
set E1=  
set E2=  
set E3=  
set E4=  
set E5=  
set E6=  
set E7=  
set E8=  
set F1=  
set F2=  
set F3=  
set F4=  
set F5=  
set F6=  
set F7=  
set F8=  
set G1=  
set G2=  
set G3=  
set G4=  
set G5=  
set G6=  
set G7=  
set G8=  
set H1=  
set H2=  
set H3=  
set H4=  
set H5=  
set H6=  
set H7=  
set H8=  
REM CARGA DE PIEZAS BLANCAS
set A1= T
set B1= C
set C1= A
set D1= Q
set E1= K
set F1= A
set G1= C
set H1= T
set A2= P
set B2= P
set C2= P
set D2= P
set E2= P
set F2= P
set G2= P
set H2= P
REM CARGA DE PIEZAS NEGRAS
set A8= t
set B8= c
set C8= a
set D8= q
set E8= k
set F8= a
set G8= c
set H8= t
set A7= p
set B7= p
set C7= p
set D7= p
set E7= p
set F7= p
set G7= p
set H7= p

goto tableroBlancas

:tablero1
echo Hola %USERNAME%
echo.
echo     A    B    C    D    E    F    G    H
echo.
echo   _________________________________________
echo 8 l %A8% l*%B8%*l %C8% l*%D8%*l %E8% l*%F8%*l %G8% l*%H8%*l 8
echo   l____l*__*l____l*__*l____l*__*l____l*__*l
echo 7 l*%A7%*l %B7% l*%C7%*l %D7% l*%E7%*l %F7% l*%G7%*l %H7% l 7 
echo   l*__*l____l*__*l____l*__*l____l*__*l____l
echo 6 l %A6% l*%B6%*l %C6% l*%D6%*l %E6% l*%F6%*l %G6% l*%H6%*l 6
echo   l____l*__*l____l*__*l____l*__*l____l*__*l
echo 5 l*%A5%*l %B5% l*%C5%*l %D5% l*%E5%*l %F5% l*%G5%*l %H5% l 5
echo   l*__*l____l*__*l____l*__*l____l*__*l____l
echo 4 l %A4% l*%B4%*l %C4% l*%D4%*l %E4% l*%F4%*l %G4% l*%H4%*l 4
echo   l____l*__*l____l*__*l____l*__*l____l*__*l
echo 3 l*%A3%*l %B3% l*%C3%*l %D3% l*%E3%*l %F3% l*%G3%*l %H3% l 3
echo   l*__*l____l*__*l____l*__*l____l*__*l____l
echo 2 l %A2% l*%B2%*l %C2% l*%D2%*l %E2% l*%F2%*l %G2% l*%H2%*l 2
echo   l____l*__*l____l*__*l____l*__*l____l*__*l
echo 1 l*%A1%*l %B1% l*%C1%*l %D1% l*%E1%*l %F1% l*%G1%*l %H1% l 1
echo   l*__*l____l*__*l____l*__*l____l*__*l____l
echo.
echo     A    B    C    D    E    F    G    H
pause



:tableroBlancas
title Chess - Juegan Blancas
echo.
echo      A       B     C       D     E       F     G       H
echo.
echo   _________________________________________________________
echo 8 l      l******l      l******l      l******l      l******l 8
echo   l  %A8%  l* %B8% *l  %C8%  l* %D8% *l  %E8%  l* %F8% *l  %G8%  l* %H8% *l
echo   l______l******l______l******l______l******l______l******l
echo 7 l******l      l******l      l******l      l******l      l 7 
echo   l* %A7% *l  %B7%  l* %C7% *l  %D7%  l* %E7% *l  %F7%  l* %G7% *l  %H7%  l
echo   l******l______l******l______l******l______l******l______l 
echo 6 l      l******l      l******l      l******l      l******l 6
echo   l  %A6%  l* %B6% *l  %C6%  l* %D6% *l  %E6%  l* %F6% *l  %G6%  l* %H6% *l
echo   l______l******l______l******l______l******l______l******l
echo 5 l******l      l******l      l******l      l******l      l 5
echo   l* %A5% *l  %B5%  l* %C5% *l  %D5%  l* %E5% *l  %F5%  l* %G5% *l  %H5%  l
echo   l******l______l******l______l******l______l******l______l
echo 4 l      l******l      l******l      l******l      l******l 4
echo   l  %A4%  l* %B4% *l  %C4%  l* %D4% *l  %E4%  l* %F4% *l  %G4%  l* %H4% *l
echo   l______l******l______l******l______l******l______l******l
echo 3 l******l      l******l      l******l      l******l      l 3
echo   l* %A3% *l  %B3%  l* %C3% *l  %D3%  l* %E3% *l  %F3%  l* %G3% *l  %H3%  l
echo   l******l______l******l______l******l______l******l______l
echo 2 l      l******l      l******l      l******l      l******l 2
echo   l  %A2%  l* %B2% *l  %C2%  l* %D2% *l  %E2%  l* %F2% *l  %G2%  l* %H2% *l
echo   l______l******l______l******l______l******l______l******l
echo 1 l******l      l******l      l******l      l******l      l 1
echo   l* %A1% *l  %B1%  l* %C1% *l  %D1%  l* %E1% *l  %F1%  l* %G1% *l  %H1%  l
echo   l******l______l******l______l******l______l******l______l
echo.
echo      A       B     C       D     E       F     G       H


set /p origen=Seleccione la pieza que desea mover:
set /p destino=Seleccione el espacio a donde va mover:

if %origen%==A1 set aux=%A1%
if %origen%==A2 set aux=%A2%
if %origen%==A3 set aux=%A3%
if %origen%==A4 set aux=%A4%
if %origen%==A5 set aux=%A5%
if %origen%==A6 set aux=%A6%
if %origen%==A7 set aux=%A7%
if %origen%==A8 set aux=%A8%
if %origen%==B1 set aux=%B1%
if %origen%==B2 set aux=%B2%
if %origen%==B3 set aux=%B3%
if %origen%==B4 set aux=%B4%
if %origen%==B5 set aux=%B5%
if %origen%==B6 set aux=%B6%
if %origen%==B7 set aux=%B7%
if %origen%==B8 set aux=%B8%
if %origen%==C1 set aux=%C1%
if %origen%==C2 set aux=%C2%
if %origen%==C3 set aux=%C3%
if %origen%==C4 set aux=%C4%
if %origen%==C5 set aux=%C5%
if %origen%==C6 set aux=%C6%
if %origen%==C7 set aux=%C7%
if %origen%==C8 set aux=%C8%
if %origen%==D1 set aux=%D1%
if %origen%==D2 set aux=%D2%
if %origen%==D3 set aux=%D3%
if %origen%==D4 set aux=%D4%
if %origen%==D5 set aux=%D5%
if %origen%==D6 set aux=%D6%
if %origen%==D7 set aux=%D7%
if %origen%==D8 set aux=%D8%
if %origen%==E1 set aux=%E1%
if %origen%==E2 set aux=%E2%
if %origen%==E3 set aux=%E3%
if %origen%==E4 set aux=%E4%
if %origen%==E5 set aux=%E5%
if %origen%==E6 set aux=%E6%
if %origen%==E7 set aux=%E7%
if %origen%==E8 set aux=%E8%
if %origen%==F1 set aux=%F1%
if %origen%==F2 set aux=%F2%
if %origen%==F3 set aux=%F3%
if %origen%==F4 set aux=%F4%
if %origen%==F5 set aux=%F5%
if %origen%==F6 set aux=%F6%
if %origen%==F7 set aux=%F7%
if %origen%==F8 set aux=%F8%
if %origen%==G1 set aux=%G1%
if %origen%==G2 set aux=%G2%
if %origen%==G3 set aux=%G3%
if %origen%==G4 set aux=%G4%
if %origen%==G5 set aux=%G5%
if %origen%==G6 set aux=%G6%
if %origen%==G7 set aux=%G7%
if %origen%==G8 set aux=%G8%
if %origen%==H1 set aux=%H1%
if %origen%==H2 set aux=%H2%
if %origen%==H3 set aux=%H3%
if %origen%==H4 set aux=%H4%
if %origen%==H5 set aux=%H5%
if %origen%==H6 set aux=%H6%
if %origen%==H7 set aux=%H7%
if %origen%==H8 set aux=%H8%

set %destino%=%aux%

set %origen%=  

cls
echo.
echo      A       B     C       D     E       F     G       H
echo.
echo   _________________________________________________________
echo 8 l      l******l      l******l      l******l      l******l 8
echo   l  %A8%  l* %B8% *l  %C8%  l* %D8% *l  %E8%  l* %F8% *l  %G8%  l* %H8% *l
echo   l______l******l______l******l______l******l______l******l
echo 7 l******l      l******l      l******l      l******l      l 7 
echo   l* %A7% *l  %B7%  l* %C7% *l  %D7%  l* %E7% *l  %F7%  l* %G7% *l  %H7%  l
echo   l******l______l******l______l******l______l******l______l 
echo 6 l      l******l      l******l      l******l      l******l 6
echo   l  %A6%  l* %B6% *l  %C6%  l* %D6% *l  %E6%  l* %F6% *l  %G6%  l* %H6% *l
echo   l______l******l______l******l______l******l______l******l
echo 5 l******l      l******l      l******l      l******l      l 5
echo   l* %A5% *l  %B5%  l* %C5% *l  %D5%  l* %E5% *l  %F5%  l* %G5% *l  %H5%  l
echo   l******l______l******l______l******l______l******l______l
echo 4 l      l******l      l******l      l******l      l******l 4
echo   l  %A4%  l* %B4% *l  %C4%  l* %D4% *l  %E4%  l* %F4% *l  %G4%  l* %H4% *l
echo   l______l******l______l******l______l******l______l******l
echo 3 l******l      l******l      l******l      l******l      l 3
echo   l* %A3% *l  %B3%  l* %C3% *l  %D3%  l* %E3% *l  %F3%  l* %G3% *l  %H3%  l
echo   l******l______l******l______l******l______l******l______l
echo 2 l      l******l      l******l      l******l      l******l 2
echo   l  %A2%  l* %B2% *l  %C2%  l* %D2% *l  %E2%  l* %F2% *l  %G2%  l* %H2% *l
echo   l______l******l______l******l______l******l______l******l
echo 1 l******l      l******l      l******l      l******l      l 1
echo   l* %A1% *l  %B1%  l* %C1% *l  %D1%  l* %E1% *l  %F1%  l* %G1% *l  %H1%  l
echo   l******l______l******l______l******l______l******l______l
echo.
echo      A       B     C       D     E       F     G       H
pause

goto tableroNegras

:tableroNegras
title Chess - Juegan Negras
echo.
echo      A       B     C       D     E       F     G       H
echo.
echo   _________________________________________________________
echo 1 l******l      l******l      l******l      l******l      l 8
echo   l* %A1% *l  %B1%  l* %C1% *l  %D1%  l* %E1% *l  %F1%  l* %G1% *l  %H1%  l
echo   l******l______l******l______l******l______l******l______l
echo 2 l      l******l      l******l      l******l      l******l 7 
echo   l  %A2%  l* %B2% *l  %C2%  l* %D2% *l  %E2%  l* %F2% *l  %G2%  l* %H2% *l
echo   l______l******l______l******l______l******l______l******l 
echo 3 l******l      l******l      l******l      l******l      l 6
echo   l* %A3% *l  %B3%  l* %C3% *l  %D3%  l* %E3% *l  %F3%  l* %G3% *l  %H3%  l
echo   l******l______l******l______l******l______l******l______l
echo 4 l      l******l      l******l      l******l      l******l 5
echo   l  %A4%  l* %B4% *l  %C4%  l* %D4% *l  %E4%  l* %F4% *l  %G4%  l* %H4% *l
echo   l______l******l______l******l______l******l______l******l
echo 5 l******l      l******l      l******l      l******l      l 4
echo   l* %A5% *l  %B5%  l* %C5% *l  %D5%  l* %E5% *l  %F5%  l* %G5% *l  %H5%  l
echo   l******l______l******l______l******l______l******l______l
echo 6 l      l******l      l******l      l******l      l******l 3
echo   l  %A6%  l* %B6% *l  %C6%  l* %D6% *l  %E6%  l* %F6% *l  %G6%  l* %H6% *l
echo   l______l******l______l******l______l******l______l******l
echo 7 l******l      l******l      l******l      l******l      l 2
echo   l* %A7% *l  %B7%  l* %C7% *l  %D7%  l* %E7% *l  %F7%  l* %G7% *l  %H7%  l
echo   l******l______l******l______l******l______l******l______l
echo 8 l      l******l      l******l      l******l      l******l 1
echo   l  %A8%  l* %B8% *l  %C8%  l* %D8% *l  %E8%  l* %F8% *l  %G8%  l* %H8% *l
echo   l______l******l______l******l______l******l______l******l
echo.
echo      A       B     C       D     E       F     G       H

set /p origen=Seleccione la pieza que desea mover:
set /p destino=Seleccione el espacio a donde va mover:

if %origen%==A1 set aux=%A1%
if %origen%==A2 set aux=%A2%
if %origen%==A3 set aux=%A3%
if %origen%==A4 set aux=%A4%
if %origen%==A5 set aux=%A5%
if %origen%==A6 set aux=%A6%
if %origen%==A7 set aux=%A7%
if %origen%==A8 set aux=%A8%
if %origen%==B1 set aux=%B1%
if %origen%==B2 set aux=%B2%
if %origen%==B3 set aux=%B3%
if %origen%==B4 set aux=%B4%
if %origen%==B5 set aux=%B5%
if %origen%==B6 set aux=%B6%
if %origen%==B7 set aux=%B7%
if %origen%==B8 set aux=%B8%
if %origen%==C1 set aux=%C1%
if %origen%==C2 set aux=%C2%
if %origen%==C3 set aux=%C3%
if %origen%==C4 set aux=%C4%
if %origen%==C5 set aux=%C5%
if %origen%==C6 set aux=%C6%
if %origen%==C7 set aux=%C7%
if %origen%==C8 set aux=%C8%
if %origen%==D1 set aux=%D1%
if %origen%==D2 set aux=%D2%
if %origen%==D3 set aux=%D3%
if %origen%==D4 set aux=%D4%
if %origen%==D5 set aux=%D5%
if %origen%==D6 set aux=%D6%
if %origen%==D7 set aux=%D7%
if %origen%==D8 set aux=%D8%
if %origen%==E1 set aux=%E1%
if %origen%==E2 set aux=%E2%
if %origen%==E3 set aux=%E3%
if %origen%==E4 set aux=%E4%
if %origen%==E5 set aux=%E5%
if %origen%==E6 set aux=%E6%
if %origen%==E7 set aux=%E7%
if %origen%==E8 set aux=%E8%
if %origen%==F1 set aux=%F1%
if %origen%==F2 set aux=%F2%
if %origen%==F3 set aux=%F3%
if %origen%==F4 set aux=%F4%
if %origen%==F5 set aux=%F5%
if %origen%==F6 set aux=%F6%
if %origen%==F7 set aux=%F7%
if %origen%==F8 set aux=%F8%
if %origen%==G1 set aux=%G1%
if %origen%==G2 set aux=%G2%
if %origen%==G3 set aux=%G3%
if %origen%==G4 set aux=%G4%
if %origen%==G5 set aux=%G5%
if %origen%==G6 set aux=%G6%
if %origen%==G7 set aux=%G7%
if %origen%==G8 set aux=%G8%
if %origen%==H1 set aux=%H1%
if %origen%==H2 set aux=%H2%
if %origen%==H3 set aux=%H3%
if %origen%==H4 set aux=%H4%
if %origen%==H5 set aux=%H5%
if %origen%==H6 set aux=%H6%
if %origen%==H7 set aux=%H7%
if %origen%==H8 set aux=%H8%

set %destino%=%aux%

set %origen%=  

cls
echo.
echo      A       B     C       D     E       F     G       H
echo.
echo   _________________________________________________________
echo 1 l******l      l******l      l******l      l******l      l 8
echo   l* %A1% *l  %B1%  l* %C1% *l  %D1%  l* %E1% *l  %F1%  l* %G1% *l  %H1%  l
echo   l******l______l******l______l******l______l******l______l
echo 2 l      l******l      l******l      l******l      l******l 7 
echo   l  %A2%  l* %B2% *l  %C2%  l* %D2% *l  %E2%  l* %F2% *l  %G2%  l* %H2% *l
echo   l______l******l______l******l______l******l______l******l 
echo 3 l******l      l******l      l******l      l******l      l 6
echo   l* %A3% *l  %B3%  l* %C3% *l  %D3%  l* %E3% *l  %F3%  l* %G3% *l  %H3%  l
echo   l******l______l******l______l******l______l******l______l
echo 4 l      l******l      l******l      l******l      l******l 5
echo   l  %A4%  l* %B4% *l  %C4%  l* %D4% *l  %E4%  l* %F4% *l  %G4%  l* %H4% *l
echo   l______l******l______l******l______l******l______l******l
echo 5 l******l      l******l      l******l      l******l      l 4
echo   l* %A5% *l  %B5%  l* %C5% *l  %D5%  l* %E5% *l  %F5%  l* %G5% *l  %H5%  l
echo   l******l______l******l______l******l______l******l______l
echo 6 l      l******l      l******l      l******l      l******l 3
echo   l  %A6%  l* %B6% *l  %C6%  l* %D6% *l  %E6%  l* %F6% *l  %G6%  l* %H6% *l
echo   l______l******l______l******l______l******l______l******l
echo 7 l******l      l******l      l******l      l******l      l 2
echo   l* %A7% *l  %B7%  l* %C7% *l  %D7%  l* %E7% *l  %F7%  l* %G7% *l  %H7%  l
echo   l******l______l******l______l******l______l******l______l
echo 8 l      l******l      l******l      l******l      l******l 1
echo   l  %A8%  l* %B8% *l  %C8%  l* %D8% *l  %E8%  l* %F8% *l  %G8%  l* %H8% *l
echo   l______l******l______l******l______l******l______l******l
echo.
echo      A       B     C       D     E       F     G       H
pause
goto tableroBlancas