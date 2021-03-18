@echo off
echo Run as admin
set /p dir= "Directory: "

move %dir%\src\gitr.bat %windir%\System32
move %dir%\src\gitr-remove.bat %windir%\System32
