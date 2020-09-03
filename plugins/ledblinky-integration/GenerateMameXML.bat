@echo off

cd ..\..\emulators\MAME
mame64.exe -listxml 1>mame.xml
move mame.xml ..\..\plugins\ledblinky-integration\
