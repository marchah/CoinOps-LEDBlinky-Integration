@echo off
call ..\config.cmd
set rom_name=%1

set "EMULATOR_PATH=..\..\Emulators Official\Sega Model 2"

cd..\..\LEDBlinky
if %is_ledblinky_activated%==1 (
  start /wait LEDBlinky.exe %rom_name% Sega_Model_2
)

cd "%EMULATOR_PATH%"
PING -n 3 127.0.0.1>nul 
start /wait %rom_name%.bat

if %is_ledblinky_activated%==1 (
  start /wait LEDBlinky.exe %frontend_default_animation%
)