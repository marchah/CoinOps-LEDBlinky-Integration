@echo off
call config.cmd
set rom_name=%1


cd..\LEDBlinky
start "" LEDBlinky.exe %rom_name% MAME

cd..\..\emulators\mame
start /wait "" mameNEW64.exe %rom_name%

:WAITLOOP
tasklist /FI "IMAGENAME eq mameNEW64.exe" 2>NUL | find /I /N "mameNEW64.exe">NUL
if "%ERRORLEVEL%"=="0" goto RUNNING
goto NOTRUNNING

:RUNNING
timeout /t 5
goto WAITLOOP

:NOTRUNNING
cd..\..\plugins\LEDBlinky
start "" LEDBlinky.exe %frontend_default_animation%