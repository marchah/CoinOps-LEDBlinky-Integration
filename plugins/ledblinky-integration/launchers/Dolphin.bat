@echo off
call ..\config.cmd
set rom_path=%1
set rom_name=%2

cd..\..\LEDBlinky
if %is_ledblinky_activated%==1 (
  start "" LEDBlinky.exe %rom_name% Nintendo_GameCube
)

cd..\..\emulators\RetroArchXiso
start /wait /B "" retroarch.exe -L cores\dolphin_libretro.dll %rom_path%

:WAITLOOP
tasklist /FI "IMAGENAME eq retroarch.exe" 2>NUL | find /I /N "retroarch.exe">NUL
if "%ERRORLEVEL%"=="0" goto RUNNING
goto NOTRUNNING

:RUNNING
timeout /t 5
goto WAITLOOP

:NOTRUNNING
cd..\..\plugins\LEDBlinky
if %is_ledblinky_activated%==1 (
  start "" LEDBlinky.exe %frontend_default_animation%
)