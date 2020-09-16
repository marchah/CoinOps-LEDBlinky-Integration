@echo off
call ..\config.cmd
set rom_path=%1
set rom_name=%2

set "EMULATOR_PATH=..\..\Emulators Official\Xiso Official"
set EMULATOR_EXE = "retroarch.exe"
set LEDBLINKY_EMULATOR_NAME = "Sammy_Atomiswave"

cd..\..\LEDBlinky
if %is_ledblinky_activated%==1 (
  start "" LEDBlinky.exe %rom_name% %LEDBLINKY_EMULATOR_NAME%
)

cd "%EMULATOR_PATH%"
start /wait /B "" %EMULATOR_EXE% -L cores\flycast_libretro.dll %rom_path%

:WAITLOOP
tasklist /FI "IMAGENAME eq %EMULATOR_EXE%" 2>NUL | find /I /N %EMULATOR_EXE%>NUL
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