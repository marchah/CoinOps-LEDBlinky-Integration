@echo off
call config.cmd
set rom_path=%1
set rom_name=%2

cd..\LEDBlinky
start "" LEDBlinky.exe %rom_name% MAME

cd..\..\emulators\mame
start /wait "" mame.exe snes -cart %rom_path% -view %rom_name%

:WAITLOOP
tasklist /FI "IMAGENAME eq mame.exe" 2>NUL | find /I /N "mame.exe">NUL
if "%ERRORLEVEL%"=="0" goto RUNNING
goto NOTRUNNING

:RUNNING
timeout /t 5
goto WAITLOOP

:NOTRUNNING
cd..\..\plugins\LEDBlinky
start "" LEDBlinky.exe %frontend_default_animation%