<#
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
CERTIFICATION AUTOMATION

GENERATES A GUI FOR HS CERTIFCATION AUTOMATION

ASSUMES PROGRAMS ARE PREVIOUSLY INSTALLED

BY: TREVAR HUPF
<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
#>



#Windows form assembly
Add-Type -Assembly system.windows.forms

#Variables for SN and Hostname 
$serialnumber1 = wmic bios get serialnumber
$serialnumber = $serialnumber.serialnumber
$hostname = "Hostname          " + $env:computername | Select-Object


#----------------------------------------------------------------
#BEGIN FORM ASSEMBLY
#----------------------------------------------------------------

#Setup initial form
$main_form = New-Object System.Windows.Forms.Form
$main_form.Text = 'Certification Automation' 
$main_form.Width = 750
$main_form.Height = 410
$main_form.AutoSize = $true
$Main_Form.Backcolor = "midnightblue"
$main_form.ForeColor ="SpringGreen"


#Group Box for Benchmarking 
$groupBox = New-Object System.Windows.Forms.GroupBox 
$groupBox.Location = New-Object System.Drawing.Size(20,20) 
$groupBox.size = New-Object System.Drawing.Size(170,120)
$groupBox.BackColor = "midnightblue"
$groupBox.foreColor = "SpringGreen" 
$groupBox.text = "Benchmarking" 
$main_Form.Controls.Add($groupBox) 

#Group Box for Stress Testing
$groupBox2 = New-Object System.Windows.Forms.GroupBox 
$groupBox2.Location = New-Object System.Drawing.Size(200,20) 
$groupBox2.size = New-Object System.Drawing.Size(170,120) 
$groupbox2.font = "arial"
$groupBox2.BackColor = "midnightblue"
$groupBox2.foreColor = "SpringGreen"
$groupBox2.text = "Stress Testing" 
$main_Form.Controls.Add($groupBox2) 

#Group Box for Tools
$groupBox3 = New-Object System.Windows.Forms.GroupBox 
$groupBox3.Location = New-Object System.Drawing.Size(380,20) 
$groupBox3.size = New-Object System.Drawing.Size(340,120) 
$groupBox3.text = "Tools" 
$groupBox3.BackColor = "midnightblue"
$groupBox3.foreColor = "SpringGreen"
$main_Form.Controls.Add($groupBox3) 

#Group Box For System Info
$groupBox4 = New-Object System.Windows.Forms.GroupBox 
$groupBox4.Location = New-Object System.Drawing.Size(200,150) 
$groupBox4.size = New-Object System.Drawing.Size(190,120) 
$groupBox4.text = "System Info" 
$groupBox4.BackColor = "midnightblue"
$groupBox4.foreColor = "SpringGreen"
$main_Form.Controls.Add($groupBox4) 

#Group box for Status
$groupBox5 = New-Object System.Windows.Forms.GroupBox 
$groupBox5.Location = New-Object System.Drawing.Size(400,150) 
$groupBox5.size = New-Object System.Drawing.Size(320,120) 
$groupBox5.text = "Status"
$groupBox5.BackColor = "midnightblue"
$groupBox5.foreColor = "SpringGreen" 
$main_Form.Controls.Add($groupBox5) 

#Group Box for CP Tools
$groupBox6 = New-Object System.Windows.Forms.GroupBox 
$groupBox6.Location = New-Object System.Drawing.Size(20,150) 
$groupBox6.size = New-Object System.Drawing.Size(170,120) 
$groupBox6.text = "CP Tools" 
$groupBox6.BackColor = "midnightblue"
$groupBox6.foreColor = "SpringGreen" 
$main_Form.Controls.Add($groupBox6) 

#Group Box for other
$groupBox7 = New-Object System.Windows.Forms.GroupBox 
$groupBox7.Location = New-Object System.Drawing.Size(20,275) 
$groupBox7.size = New-Object System.Drawing.Size(700,80) 
$groupBox7.text = "Reboots" 
$groupBox7.BackColor = "midnightblue"
$groupBox7.foreColor = "SpringGreen" 
$main_Form.Controls.Add($groupBox7) 

#Creates status label 
$Label3 = New-Object System.Windows.Forms.Label
$Label3.Text = "*** Select a program ***"
$Label3.Location  = New-Object System.Drawing.Point(40,50)
$Label3.AutoSize = $true
$Label3.Font = "Arial,18"
$main_form.Controls.Add($Label3)

#creates serial number lable
$Label2 = New-Object System.Windows.Forms.Label
$Label2.Text = "$serialnumber1"
$Label2.Location  = New-Object System.Drawing.Point(05,30)
$Label2.AutoSize = $true
$main_form.Controls.Add($Label2)

#Creates hostname label 
$Label6 = New-Object System.Windows.Forms.Label
$Label6.Text = "$hostname"
$Label6.Location  = New-Object System.Drawing.Point(05,60)
$Label6.AutoSize = $true
$main_form.Controls.Add($Label6)

#Label for Perft test scores
$Label7 = New-Object System.Windows.Forms.Label
$Label7.Text = "PassMark :"
$Label7.Location  = New-Object System.Drawing.Point(05,90)
$Label7.AutoSize = $true
$main_form.Controls.Add($Label7)

#Performance Scores
$Label8 = New-Object System.Windows.Forms.Label
$Label8.Text = "xxx xxx xxx"
$Label8.Location  = New-Object System.Drawing.Point(75,90)
$Label8.AutoSize = $true
$main_form.Controls.Add($Label8)


#Creates Computer info label
$Label4 = New-Object System.Windows.Forms.Label
$Label4.Text = "Computer Info"
$Label4.Location  = New-Object System.Drawing.Point(20,80)
$Label4.AutoSize = $true
$main_form.Controls.Add($Label4)

#Pass Mark BUTTON
$Button2 = New-Object System.Windows.Forms.Button
$Button2.Location = New-Object System.Drawing.Size(10,20)
$Button2.Size = New-Object System.Drawing.Size(150,40)
$Button2.Text = "Passmark"
$Button2.Font = "Arial"
$Button2.ForeColor = "SpringGreen"
$main_form.Controls.Add($Button2)

#GEEK BENCH BuTTON
$Button1 = New-Object System.Windows.Forms.Button
$Button1.Location = New-Object System.Drawing.Size(10,70)
$Button1.Size = New-Object System.Drawing.Size(150,40)
$Button1.Text = "Geek Bench"
$Button1.Font = "Arial"
$Button1.ForeColor = "SpringGreen"
$main_form.Controls.Add($Button1)

#Wireless Mon BUTTON
$Button5 = New-Object System.Windows.Forms.Button
$Button5.Location = New-Object System.Drawing.Size(10,20)
$Button5.Size = New-Object System.Drawing.Size(150,40)
$Button5.Text = "WirelessMon"
$Button5.Font = "Arial"
$Button5.ForeColor = "SpringGreen"
$main_form.Controls.Add($Button5)

#CoreTemp BUTTON
$Button6 = New-Object System.Windows.Forms.Button
$Button6.Location = New-Object System.Drawing.Size(10,70)
$Button6.Size = New-Object System.Drawing.Size(150,40)
$Button6.Text = "Core Temp"
$Button6.Font = "Arial"
$Button6.ForeColor = "SpringGreen"
$main_form.Controls.Add($Button6)

#GPU Z BUTTON
$Button3 = New-Object System.Windows.Forms.Button
$Button3.Location = New-Object System.Drawing.Size(175,20)
$Button3.Size = New-Object System.Drawing.Size(150,40)
$Button3.Text = "GPU Z"
$Button3.Font = "Arial"
$Button3.ForeColor = "SpringGreen"
$main_form.Controls.Add($Button3)

#FURMARK BUTTON
$Button4 = New-Object System.Windows.Forms.Button
$Button4.Location = New-Object System.Drawing.Size(10,20)
$Button4.Size = New-Object System.Drawing.Size(150,40)
$Button4.Text = "FurMark"
$Button4.Font = "Arial"
$Button4.ForeColor = "SpringGreen"
$main_form.Controls.Add($Button4)

#Prime95 BUTTON
$Button8 = New-Object System.Windows.Forms.Button
$Button8.Location = New-Object System.Drawing.Size(10,70)
$Button8.Size = New-Object System.Drawing.Size(150,40)
$Button8.Text = "Prime95"
$Button8.Font = "Arial"
$Button8.ForeColor = "SpringGreen"
$main_form.Controls.Add($Button8)

#Content Player BUTTON
$Button10 = New-Object System.Windows.Forms.Button
$Button10.Location = New-Object System.Drawing.Size(10,20)
$Button10.Size = New-Object System.Drawing.Size(150,40)
$Button10.Text = "Content Player"
$Button10.Font = "Arial"
$Button10.ForeColor = "SpringGreen"
$main_form.Controls.Add($Button10)

#FWI TOOLS BUTTON
$Button9 = New-Object System.Windows.Forms.Button
$Button9.Location = New-Object System.Drawing.Size(10,70)
$Button9.Size = New-Object System.Drawing.Size(150,40)
$Button9.Text = "FWI TOOLS"
$Button9.Font = "Arial"
$Button9.ForeColor = "SpringGreen"
$main_form.Controls.Add($Button9)

#Specs BUTTON
$Button7 = New-Object System.Windows.Forms.Button
$Button7.Location = New-Object System.Drawing.Size(175,70)
$Button7.Size = New-Object System.Drawing.Size(150,40)
$Button7.Text = "View Specs"
$Button7.Font = "Arial"
$Button7.ForeColor = "SpringGreen"
$main_form.Controls.Add($Button7)

#24 hour reboot button
$Button11 = New-Object System.Windows.Forms.Button
$Button11.Location = New-Object System.Drawing.Size(20,20)
$Button11.Size = New-Object System.Drawing.Size(200,40)
$Button11.Text = "24 Reboot Test"
$Button11.Font = "Arial"
$Button11.ForeColor = "SpringGreen"
$main_form.Controls.Add($Button11)

#No reboot
$Button12 = New-Object System.Windows.Forms.Button
$Button12.Location = New-Object System.Drawing.Size(250,20)
$Button12.Size = New-Object System.Drawing.Size(200,40)
$Button12.Text = "No scheduled reboot"
$Button12.Font = "Arial"
$Button12.ForeColor = "SpringGreen"
$main_form.Controls.Add($Button12)

#Standard Reboot
$Button13 = New-Object System.Windows.Forms.Button
$Button13.Location = New-Object System.Drawing.Size(485,20)
$Button13.Size = New-Object System.Drawing.Size(200,40)
$Button13.Text = "Normal FWI Reboot"
$Button13.Font = "Arial"
$Button13.ForeColor = "SpringGreen"
$main_form.Controls.Add($Button13)

#*************************************************************
#END FORM ASSEMBLY


#ADDS BUTTONS TO GROUP BOX
#************************************
$groupBox.Controls.Add($Button2)
$groupBox.Controls.Add($Button1)


$groupBox2.Controls.Add($Button4)
$groupBox2.Controls.Add($Button8)

$groupBox3.Controls.Add($Button5)
$groupBox3.Controls.Add($Button6)
$groupBox3.Controls.Add($Button7)
$groupBox3.Controls.Add($Button3)

$groupBox4.Controls.Add($label2)
$groupBox4.Controls.Add($label6)
$groupBox4.Controls.Add($Label7)
$groupBox4.Controls.Add($Label8)


$groupBox5.Controls.Add($label3)

$groupBox6.Controls.Add($Button9)
$groupBox6.Controls.Add($Button10)

$groupBox7.Controls.Add($Button11)
$groupBox7.Controls.Add($Button12)
$groupBox7.Controls.Add($Button13)

#-----------------------------------------------------------------------
#END FORM ASSEMBLY
#-----------------------------------------------------------------------


#-----------------------------------------------------------------------
#BEGIN BUTTON CLICK LOGIC
#-----------------------------------------------------------------------


#GEEK BENCH BUTTON CLICK FUNCTION
#**********************************************************
$Button1.Add_Click(
{
$Label3.Text =  ("Opening Geek Bench!!")
Start-Process -wait -FilePath "C:\Certification\geekbench4.exe"
$Label3.Text = "*** Select a program ***"
}
)
#**********************************************************

#PASSMARK BUTTON CLICK FUNCTION
#**********************************************************
$Button2.Add_Click(
{
$Label3.Text =  ("Opening Passmark!!")
$Passmark = "C:\Program Files\PerformanceTest\performancetest64.exe"
# Not used at this time 
#$argspm = "/s C:\Certification\PerformanceTestAutomation.ptscript"
Start-process $passmark #$argspm
$PerformanceData = import-csv C:\Certification\data\PerformanceTest.csv |  select -Skip 6 -ExpandProperty "PassMark Rating (Composite average)" 
$Label8.Text = "$performancedata"
[System.Windows.MessageBox]::Show('Performance test ran three times, Results are located in C:\Certification\Data\Performancetest.csv')

$Label3.Text = "*** Select a program ***"
}
)

#GPUZ BUTTON CLICK FUNCTION
#**********************************************************
$Button3.Add_Click(
{
$Label3.Text =  ("Opening GPU Z!!")
Start-Process -wait -FilePath "C:\Program Files (x86)\Geeks3D\Benchmarks\FurMark\gpuz.exe"
$Label3.Text = "*** Select a program ***"
}
)

#FURMARK BUTTON CLICK FUNCTION
#**********************************************************
$Button4.Add_Click(
{
$Label3.Text =  ("Running Fur Mark!!")
$Furmark = "C:\Program Files (x86)\Geeks3D\Benchmarks\FurMark\furmark.exe"
$args = "/width=1920 /height=1080 /msaa=4 /nogui /run_mode=2"
Start-Process $Furmark $args
$Label3.Text = "*** Select a program ***"
}
)

#WIRELESSMON BUTTON CLICK FUNCTION
#**********************************************************
$Button5.Add_Click(
{
$Label3.Text =  ("Opening Wireless mon!!")
Start-Process -FilePath "C:\Program Files (x86)\WirelessMon\Wirelessmon.exe" 
$Label3.Text = "*** Select a program ***"
}
)


#CORE TEMP BUTTON CLICK FUNCTION
#**********************************************************
$Button6.Add_Click(
{
$Label3.Text =  ("Opening Core Temp!!")
Start-Process -FilePath "C:\Program Files\Core Temp\Core temp.exe" 
$file = Get-Childitem –Path "C:\Program Files\Core Temp\" -Include *CT* -Recurse -ErrorAction SilentlyContinue
Get-Content -path $file | select -First 9 -last 5| Set-Content C:\certification\data\Temp.csv
$Label3.Text = "*** Select a program ***"
}
)

#PRIME95 BUTTON CLICK FUNCTION
#**********************************************************
$Button8.Add_Click(
{
$Label3.Text =  ("Running prime 95!!")
$Prime95 = "$psscriptroot\prime95.exe"
$args2 = "-t"
Start-Process $Prime95 $args2
start-sleep -s 5 
$Label3.Text = "Kill prime95 Process"
#Prime95 process continues to run after closes, this kills process
#Stop-Process -Name "Prime95.exe" -Force
}
)


#FWITOOLS BUTTON CLICK FUNCTION
#**********************************************************
$Button9.Add_Click(
{
$Label3.Text =  ("Running FWI TOOLS!!")

Start-Process "C:\Program Files (x86)\FWI Internal Tools\FWI Tools\FWI TOOLS.exe" 
$Label3.Text = "*** Select a program ***"
}
)

#CONTENT PLAYER BUTTON CLICK FUNCTION
#**********************************************************
$Button10.Add_Click(
{
$Label3.Text =  ("Running Content Player!!")
Start-process "C:\Program Files (x86)\Four Winds Interactive\Content Player\signage.exe"
$Label3.Text = "*** Select a program ***"
#Stop-Process -Name "Prime95" -Force
}
)


#24 Hour Reboot Button
#**********************************************************
$Button11.Add_Click(
{
$Label3.Text =  ("PC will reboot in 5min")
Start-Sleep -Seconds 3 
$time = get-date -Format HH:mm
$time5 = [timespan] $time + [timespan] '00:05'
cmd /c SCHTASKS.EXE /delete /TN "reboot" /f
cmd /c SCHTASKS.EXE /delete /TN "FWI reboot" /f
cmd /c SCHTASKS.EXE /delete /TN "fwi restart" /f
cmd /c SCHTASKS.EXE /delete /TN "fwi-restart" /f
cmd /c SCHTASKS.EXE /delete /TN "fwi-nightly" /f
SCHTASKS.EXE /CREATE /F /SC minute /TN "FWI reboot" /ST $time5 /mo 5 /SD 01/01/2000 /TR  "c:\windows\system32\shutdown.exe -r -f -t 10" /RU SYSTEM
$Label3.Text = "*** Select a program ***"
#Stop-Process -Name "Prime95" -Force
}
)

#No reboot button
#**********************************************************
$Button12.Add_Click(
{
$Label3.Text =  ("PC will no longer reboot")
Start-Sleep -Seconds 3 
$time = get-date -Format HH:mm
$time5 = [timespan] $time + [timespan] '00:05'
cmd /c SCHTASKS.EXE /delete /TN "reboot" /f
cmd /c SCHTASKS.EXE /delete /TN "FWI reboot" /f
cmd /c SCHTASKS.EXE /delete /TN "fwi restart" /f
cmd /c SCHTASKS.EXE /delete /TN "fwi-restart" /f
cmd /c SCHTASKS.EXE /delete /TN "fwi-nightly" /f
$Label3.Text = "*** Select a program ***"
#Stop-Process -Name "Prime95" -Force
}
)


#Standard Reboot
#**********************************************************
$Button13.Add_Click(
{
$Label3.Text =  ("Normal daily reboot")
Start-Sleep -Seconds 3 
$time = get-date -Format HH:mm
$time5 = [timespan] $time + [timespan] '00:05'
cmd /c SCHTASKS.EXE /delete /TN "reboot" /f
cmd /c SCHTASKS.EXE /delete /TN "FWI reboot" /f
cmd /c SCHTASKS.EXE /delete /TN "fwi restart" /f
cmd /c SCHTASKS.EXE /delete /TN "fwi-restart" /f
cmd /c SCHTASKS.EXE /delete /TN "fwi-nightly" /f
SCHTASKS.EXE /CREATE /F /SC DAILY /TN "FWI reboot" /ST 02:30:00 /SD 01/01/2000 /TR "c:\windows\system32\shutdown.exe -r -f -t 10" /RU SYSTEM
$Label3.Text = "*** Select a program ***"
#Stop-Process -Name "Prime95" -Force
}
)

#HARDWARE SPECS BUTTON CLICK FUNCTION
#***************************************************************************************
$Button7.Add_Click(
{
$Label3.Text =  ("Gathering Specs!!")


function global:Get-SystemInfo { 
 
#Requires -Version 3.0 
[CmdletBinding()] 
 Param  
   ( 
    [Parameter(Position=0, 
               ValueFromPipeline=$true, 
               ValueFromPipelineByPropertyName=$true)] 
    [String[]]$ComputerName = ($Env:COMPUTERNAME), 
    [Parameter(Position=1)] 
    [PSCredential]$Credential, 
    [ValidateScript({Test-Path -Path $_})] 
    [String]$LogDir = "$Home\Documents"         
   )#End Param  
 
Begin 
{ 
 ##not needed 
 Write-Verbose "Retrieving Computer Info . . ." 
 if ($Credential) 
    { 
        $PSDefaultParameterValues = $Global:PSDefaultParameterValues.Clone() 
        $PSDefaultParameterValues["Get-WmiObject:Credential"]=$Credential   
    } 
} 
Process 
{ 
    #for parsing WMIOBJECTS
    $ComputerName | ForEach-Object {  
    Write-Verbose ">> ComputerName: $_" 
    
    #variable used below
    $ErrorActionPreference = "SilentlyContinue" 

    #OS info variable
    $os = Get-WmiObject -class Win32_OperatingSystem -ComputerName $_ | 
        select caption, OSArchitecture | Format-Table -AutoSize | Out-String

    #HD Size to GB
    #HDD var
    #$HDD1 = get-wmiobject -class win32_diskdrive|ForEach-Object {$_.size/1gb}
    
    $col4 = @{Name='Size (GB)'; Expression={ $_.size/1GB } }

    $HDD = get-wmiobject -class win32_diskdrive | Select-Object Model, $col4 | 
    Format-Table -AutoSize | Out-String


    $col6 = @{Name='Size (GB)'; Expression={ $_.adapterram/1GB } }
    
    
    #Variable for adapter sizes correctly for multiple adaptors      
    $GraphicsAdapter = Get-WmiObject -class Win32_VideoController | 
        select Name, $col6 | Format-Table -AutoSize | Out-String

    #Adapter ram sizes for multiple adaptors    
    #$graphicsram = Get-WmiObject -class Win32_VideoController |ForEach-Object {$_.adapterram/1gb} | Format-Table -AutoSize | Out-String
    
    #System var 
    $sys = Get-WmiObject -Class win32_Computersystem -ComputerName $_ | 
        select Manufacturer, Model | Format-Table -AutoSize | Out-String

    $sys2 = Get-WmiObject -Class win32_Computersystem -ComputerName $_

    #Gets number of ram channels stores in var
    $Channels = Get-WmiObject Win32_PhysicalMemory | Measure-Object -Property Capacity -Sum

    #Get Motherboard
    $motherboard = Get-WmiObject -Class win32_baseboard | Select Manufacturer, Product | 
    Format-Table -AutoSize | Out-String 
    

    #Gets Ram Details
    $memorytype = "Unknown", "Other", "DRAM", "Synchronous DRAM", "Cache DRAM",
    "EDO", "EDRAM", "VRAM", "SRAM", "RAM", "ROM", "Flash", "EEPROM", "FEPROM",
    "EPROM", "CDRAM", "3DRAM", "SDRAM", "SGRAM", "RDRAM", "DDR", "DDR-2", "DDR-3"

    $formfactor = "Unknown", "Other", "SIP", "DIP", "ZIP", "SOJ", "Proprietary",
    "SIMM", "DIMM", "TSOP", "PGA", "RIMM", "SODIMM", "SRIMM", "SMD", "SSMP",
    "QFP", "TQFP", "SOIC", "LCC", "PLCC", "BGA", "FPBGA", "LGA"

    $col1 = @{Name='Size (GB)'; Expression={ $_.Capacity/1GB } }

    $col2 = @{Name='Form Factor'; Expression={$formfactor[$_.FormFactor]} }

    $col3 = @{Name='Memory Type'; Expression={ $memorytype[$_.MemoryType] } }

    $memoryinfo= Get-WmiObject Win32_PhysicalMemory | Select-Object Manufacturer,PartNumber, $col1, $col2 |
    Format-Table -AutoSize | Out-String

     
    
    #Bios var 
    $bios = Get-WmiObject -Class win32_Bios -ComputerName $_ |  
        Select  Manufacturer , Version| Format-Table -AutoSize | Out-String
    
    #serialnumber
    $Serial = Get-WmiObject -Class win32_Bios -ComputerName $_
     
    #PageFIle Var correctly sizes
    $PageFile = Get-WmiObject Win32_PageFileSetting -ComputerName $_ |  
        Select Name, InitialSize, MaximumSize | Format-Table -AutoSize | Out-String 
    

    $col5 = @{Name='Size (GB)'; Expression={ $_.speed/1GB } }

    #Net adaptor var formats list for multiple adaptors
    $Network = Get-WmiObject Win32_NetworkAdapter -Filter "PhysicalAdapter='True'" | 
    Select Name | Format-Table -AutoSize | Out-String
    
    #CPU var 
    $CPU = @(Get-WmiObject -Class Win32_Processor -ComputerName $_ )[0] |  
        Select Name, Description | Format-Table -AutoSize | Out-String 
 
    #Error Checking
    if (($os -eq $Null) -and ($sys -eq $Null) -and ($bios -eq $Null)) 
        { 
          $_ | Out-File -FilePath C:Programdata\HardwareInfoLog.txt -noclobber -Append 
        } 
    #last boot
    if ($os.LastBootupTime) 
        { 
        $LastBoot = $os.ConvertToDateTime($os.LastBootupTime) 
        } 
    #OS install date
    if ($os.InstallDate) 
        { 
        $InstallDate = $os.ConvertToDateTime($os.InstallDate) 
        } 
    #CP name to upper
    if ($sys2.Name) 
        { 
        $CompName = $sys2.Name.toUpper() 
        } 
    #physical memory to mb
    if ($sys2.TotalPhysicalMemory) 
        { 
        $Memory=($sys2.TotalPhysicalMemory)/1MB -as [int] 
        $memory= "$memory MB"
        } 
    #Accounts for automatic page filing
    if ($Pagefile) 
        { 
            $PageFile = $PageFile.Substring(1,$PageFile.length-5) 
        } 
    else {$PageFile = "Automatic"} 
 
    [PSCustomObject][Ordered]@{ 

        HardwareINFO = $name 
        PCModel = $sys 
        SerialNumber   =$serial.serialnumber 
        OperatingSystem=$os
        #PCModel =$sys.Model
        Motherboard = $motherboard
        Bios = $bios
        CPU  = $CPU

        #Unsused variables
        ##############################  
        #LastBoot       =$LastBoot 
        #InstallDate    =$InstallDate 
        ##############################
        
        RAM =$Memory
        RamDetails = $memoryinfo
        #Unused
        #RamChannels = $Channels.count 
        DiskModel = $HDD
       # DiskSizeGB = $HDD1
        GraphicsAdapter = $Graphicsadapter
       # GraphicsRamGB = $GraphicsRAm
        NetworkAdapters = $Network
        PageFileInfo   =$PageFile 
     
        } 
      
  } 
 
} 
 
}


#Calls functions outputs to textfile
Get-SystemInfo | Out-File C:\Specs.txt

#opens text file
start-process -wait C:\Specs.txt
$Label3.Text = "*** Select a program ***"
}
)
#***************************************************************************************


#-----------------------------------------------------------------------
#END BUTTON CLICK LOGIC
#-----------------------------------------------------------------------


#Place this ps in startup
Copy-Item -Force "C:\Certification\startcert.cmd" -Destination "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp"

#Create FORM 
$main_form.ShowDialog()




#----------------------------------------------------------------------
#END SCRIPT 
#----------------------------------------------------------------------