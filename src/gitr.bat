@echo off

for /f "tokens=1 delims=/" %%i in ('echo %1') DO set owner=%%i
for /f "tokens=2 delims=/" %%i in ('echo %1') DO set repo=%%i

powershell -command iwr https://api.github.com/repos/%owner%/%repo%/zipball -outfile c.zip
powershell -command expand-archive -path c.zip -destinationpath .\repoexpanded
powershell -command move repoexpanded\*\* .

rd repoexpanded /s /q
del c.zip

@echo on
