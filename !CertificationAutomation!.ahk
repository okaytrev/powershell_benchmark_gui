#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
FileCreateDir, C:\Certification 
FileCreateDir, C:\Certification\data 

		
Progress, 10, Unpacking Certification Automation, Unpacking, Certification Install Progress
FileInstall, C:\Users\trevar.hupf\Documents\ProductCertification\Cert_Automation\Certifications.ps1, C:\Certification\Certifications.ps1, 1

Progress, 15, Unpacking Certification Automation, Unpacking, Certification Install Progress
FileInstall, C:\Users\trevar.hupf\Documents\ProductCertification\Cert_Automation\Core-Temp-setup.exe, C:\Certification\Core-Temp-setup.exe, 1

Progress, 17, Unpacking Certification Automation, Unpacking, Certification Install Progress
FileInstall, C:\Users\trevar.hupf\Documents\ProductCertification\Cert_Automation\CoreTemp.ini, C:\Program Files\Core Temp\CoreTemp.ini, 1

Progress, 20, Unpacking Certification Automation, Unpacking, Certification Install Progress
FileInstall, C:\Users\trevar.hupf\Documents\ProductCertification\Cert_Automation\cpu-z_1.87-en.exe, C:\Certification\cpu-z_1.87-en.exe, 1

Progress, 25, Unpacking Certification Automation, Unpacking, Certification Install Progress
FileInstall, C:\Users\trevar.hupf\Documents\ProductCertification\Cert_Automation\FurMark_1.19.0.0_Setup.exe, C:\Certification\FurMark_1.19.0.0_Setup.exe, 1

Progress, 30, Unpacking Certification Automation, Unpacking, Certification Install Progress
FileInstall, C:\Users\trevar.hupf\Documents\ProductCertification\Cert_Automation\Geekbench4.exe, C:\Certification\Geekbench4.exe, 1

Progress, 32, Unpacking Certification Automation, Unpacking, Certification Install Progress
FileInstall, C:\Users\trevar.hupf\Documents\ProductCertification\Cert_Automation\Geekbench4.preferences, C:\Certification\Geekbench4.preferences, 1

Progress, 35, Unpacking Certification Automation, Unpacking, Certification Install Progress
FileInstall, C:\Users\trevar.hupf\Documents\ProductCertification\Cert_Automation\GPU-Z.2.9.0.exe, C:\Certification\GPU-Z.2.9.0.exe, 1

Progress, 40, Unpacking Certification Automation, Unpacking, Certification Install Progress
FileInstall, C:\Users\trevar.hupf\Documents\ProductCertification\Cert_Automation\Passmark.exe, C:\Certification\Passmark.exe, 1

Progress, 45, Unpacking Certification Automation, Unpacking, Certification Install Progress
FileInstall, C:\Users\trevar.hupf\Documents\ProductCertification\Cert_Automation\prime95.exe, C:\Certification\prime95.exe, 1

Progress, 50, Unpacking Certification Automation, Unpacking, Certification Install Progress
FileInstall, C:\Users\trevar.hupf\Documents\ProductCertification\Cert_Automation\wirelessmon.exe, C:\Certification\wirelessmon.exe, 1

Progress, 55, Unpacking Certification Automation, Unpacking, Certification Install Progress
FileInstall, C:\Users\trevar.hupf\Documents\ProductCertification\Cert_Automation\startcert.cmd, C:\Certification\startcert.cmd, 1

Progress, 57, Unpacking Certification Automation, Unpacking, Certification Install Progress
FileInstall, C:\Users\trevar.hupf\Documents\ProductCertification\Cert_Automation\FWI_Tools_Setup_0.7.4.exe, C:\Certification\FWI_Tools_Setup_0.7.4.exe, 1

Progress, 57, Unpacking Certification Automation, Unpacking, Certification Install Progress
FileInstall, C:\Users\trevar.hupf\Documents\ProductCertification\Cert_Automation\PerformanceTestAutomation.ptscript, C:\Certification\PerformanceTestAutomation.ptscript, 1


Progress, 63, Installing Core Temp, Running Installer, Certification Install Progress
RunWait, cmd.exe /c ""C:\Certification\Core-Temp-setup.exe" /Verysilent"

Progress, 65, Installing CPU Z, Running Installer, Certification Install Progress
RunWait, cmd.exe /c ""C:\Certification\cpu-z_1.87-en.exe" /Verysilent"

Progress, 70, Installing Fur Mark, Running Installer, Certification Install Progress
RunWait, cmd.exe /c ""C:\Certification\FurMark_1.19.0.0_Setup.exe" /Verysilent"

Progress, 80, Installing Wirelessmon, Running Installer, Certification Install Progress
RunWait, cmd.exe /c ""C:\Certification\wirelessmon.exe" /Verysilent"

Progress, 80, Installing Wirelessmon, Running Installer, Certification Install Progress
RunWait, cmd.exe /c ""C:\Certification\passmark.exe" /Verysilent"

Progress, 90, Installing FWI TOOLS - Follow prompts, Running Installer, Certification Install Progress
RunWait, cmd.exe /c ""C:\Certification\FWI_Tools_Setup_0.7.4.exe" /Verysilent"

Progress, 93, Licensing Passmark, Running Installer, Certification Install Progress
FileInstall, C:\Users\trevar.hupf\Documents\ProductCertification\Cert_Automation\key.dat, C:\Program Files\PerformanceTest\key.dat, 1

Progress, 95, Launching Automation , Running PS Script, Certification Install Progress
Run, cmd.exe /c "PowerShell.exe -executionpolicy remotesigned -File certifications.ps1", C:\Certification, Hide



