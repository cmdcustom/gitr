@echo off
for /f "tokens=*" %%i in ('type %1.kfi') DO del %%i
for /f "tokens=*" %%i in ('type %1-dirs.kfi') DO rd %%i /s /q
del %1.kfi
del %1-dirs.kfi
@echo on
