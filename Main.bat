@REM * Hecho por @horahenaripo en Github

@REM ! DEV CHECK

@REM * Config
@echo off

@REM * Variables
set "version=0.1.0 ALPHA"
set "precd=%cd%"

@REM * Extra config
title FolderPrograms %version%


@REM * Functions

@REM * Check if installed
REG QUERY "HKCU\Software\HoraHena" /v "installed" >nul 2>&1

if %errorlevel% == 0 (

    goto :INSTALLED
    
) else (

    goto :INSTALL
    
)

:INSTALL

echo It seems that the script is not installed, do you want to install it now?
echo 1. Yeah
echo 2. Yes, but without WinR launcher
echo 3. No

set /p ans=
set "errorlevel=0"
if ans LSS 1 ( set "errorlevel=1" )
if ans GTR 3 ( set "errorlevel=1" )
if %errorlevel% EQU 1 ( 
    cls
    echo Error: entered an invalid option
)

:INSTALLED