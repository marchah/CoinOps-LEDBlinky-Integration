@echo off

set "NEXT_MAME_PATH=..\..\..\Emulators Official\mame\"
set "RETRO_MAME_PATH=..\..\..\emulators\mame\"

if exist "%NEXT_MAME_PATH%" (
  cd %NEXT_MAME_PATH%
) else (
  cd "%RETRO_MAME_PATH%"
)
mame64.exe -listxml 1>mame.xml
move mame.xml ..\..\plugins\ledblinky-integration\
