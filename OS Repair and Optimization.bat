@echo off
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo ==================================================
    echo   ERROR: This script MUST be run as Administrator.
    echo   Please right-click the script and select:
    echo   "Run as administrator"
    echo ==================================================
    pause
    exit /b
)
echo.
title System Repair and Optimization
cls
echo.
echo Starting System Maintenance...
pause
echo.
echo.
echo ==================================================
echo Checking Health...
Dism.exe /online /Cleanup-Image /checkhealth
echo ==================================================
pause
echo.
echo.
echo ==================================================
echo Scanning system image health...
Dism.exe /online /Cleanup-Image /scanhealth
echo ==================================================
pause
echo.
echo.
echo ==================================================
echo Restoring system image health...
Dism.exe /online /Cleanup-Image /Restorehealth
echo ==================================================
pause
echo.
echo.
echo ==================================================
echo Running System File Checker...
sfc /scannow
echo ==================================================
pause
echo.
echo.
echo ==================================================
echo Analyzing component store...
Dism.exe /Online /Cleanup-Image /AnalyzeComponentStore
echo ==================================================
pause
echo.
echo.
echo ==================================================
echo Starting component cleanup...
Dism.exe /Online /Cleanup-Image /StartComponentCleanup
echo ==================================================
pause
echo.
echo.
echo Script completed. Press any key to exit.
pause >nul