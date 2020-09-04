@echo off
call ..\config.cmd
set rom_path=%1
set rom_name=%2

cd..\..\LEDBlinky
if %is_ledblinky_activated%==1 (
  start "" LEDBlinky.exe %rom_name% Sony_Playstation
)

cd..\..\emulators\MAME
start /wait /B "" mameNEW64.exe psu -cdrom %rom_path%

:WAITLOOP
tasklist /FI "IMAGENAME eq mameNEW64.exe" 2>NUL | find /I /N "mameNEW64.exe">NUL
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