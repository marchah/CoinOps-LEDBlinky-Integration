@echo off
set rom_name=%1


cd..
cd..
cd..
cd plugins
cd LEDBlinky
start "" LEDBlinky.exe %rom_name% MAME
cd..
cd..
cd emulators
cd mame

rem Use the following mame version depending on the following:

rem Use 'mame64.exe' (v0.196 roms) or 'mameNEW64.exe' (later v0.215 roms) if using a 64-bit CPU / OS, otherwise use "mame.exe" for 32-bit CPU / OS.

start /wait "" mameNEW64.exe %rom_name%

:WAITLOOP
tasklist /FI "IMAGENAME eq mameNEW64.exe" 2>NUL | find /I /N "mameNEW64.exe">NUL
if "%ERRORLEVEL%"=="0" goto RUNNING
goto NOTRUNNING

:RUNNING
timeout /t 5
goto WAITLOOP

:NOTRUNNING
cd..
cd..
cd plugins
cd LEDBlinky
start "" LEDBlinky.exe random.lwax