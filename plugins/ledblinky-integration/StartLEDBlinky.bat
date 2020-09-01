@echo off
call config.cmd

if %is_ledblinky_activated%==1 (
  start "" LEDBlinky.exe %frontend_default_animation%
)