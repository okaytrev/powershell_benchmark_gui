@echo off

SET inst=%~dp0

REM Allow PowerShell scripts to run
reg add HKLM\Software\Microsoft\PowerShell\1\ShellIds\Microsoft.PowerShell /v ExecutionPolicy /d Unrestricted /f

REM This script enables Autohide of the start menu
powershell -ExecutionPolicy Unrestricted -File "C:\Certification\Certifications.ps1"

