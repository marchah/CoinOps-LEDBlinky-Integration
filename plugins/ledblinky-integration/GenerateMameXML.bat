@echo off

cd ..\..\emulators\MAME
mame64.exe -listxml 1>mameTest.xml
move mameTest.xml ..\..\plugins\ledblinky-integration\
