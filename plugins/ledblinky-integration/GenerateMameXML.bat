@echo off

cd ..\..\emulators\MAME
start /wait "" mame64.exe -listxml > mameTest.xml
move mameTest.xml ..\..\plugins\ledblinky-integration\
