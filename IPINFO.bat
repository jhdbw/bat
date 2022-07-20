@echo off
REM Author: JHDBW
color 0c
title IPINFO

REM - CHANGE THIS -
set DIRECTORY=C:\IPINFO\
set INPUT=ipinfo_IPlist.txt
set OUTPUT=ipinfo_result.json
REM - - - - - - - -

echo The directory for the inputs and outputs is:
cd %RUTA%
cd
pause

echo [>>%DIRECTORY%%OUTPUT%
FOR /f "tokens=*" %%I IN (%DIRECTORY%%INPUT%) DO curl http://ipinfo.io/%%I>>%DIRECTORY%%OUTPUT% & echo ,>>%DIRECTORY%%OUTPUT%
echo ]>>%DIRECTORY%%OUTPUT%

echo -----------------------------------
type %DIRECTORY%%OUTPUT%
echo -----------------------------------
pause
