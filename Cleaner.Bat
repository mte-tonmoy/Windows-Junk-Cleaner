@echo off
title Permanent Junk Cleaner
color 0C

:: Check admin privileges
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Please run this as Administrator!
    pause
    exit
)

echo ===========================================
echo Deleting junk files permanently (Force Mode)
echo ===========================================

:: Stop SysMain (formerly Superfetch) - optional
echo Stopping SysMain service temporarily...
net stop SysMain >nul 2>&1

:: Clean Prefetch
echo Cleaning Prefetch...
takeown /f C:\Windows\Prefetch /r /d y >nul 2>&1
icacls C:\Windows\Prefetch /grant administrators:F /t >nul 2>&1
del /f /s /q C:\Windows\Prefetch\*.* >nul 2>&1

:: Clean Windows Temp
echo Cleaning Windows Temp...
takeown /f C:\Windows\Temp /r /d y >nul 2>&1
icacls C:\Windows\Temp /grant administrators:F /t >nul 2>&1
del /f /s /q C:\Windows\Temp\*.* >nul 2>&1

:: Clean User Temp
echo Cleaning User Temp...
del /f /s /q "%temp%\*.*" >nul 2>&1

:: Restart SysMain if it was running
echo Restarting SysMain...
net start SysMain >nul 2>&1

echo ===========================================
echo All junk files permanently deleted.
echo ===========================================
pause
exit
