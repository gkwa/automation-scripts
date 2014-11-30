#*********************************************************************** 
# "Remove-StartupItems.ps1" 
# 
# Written by Aaron Wurthmann (aaron <AT> wurthmann <DOT> com) 
#                    http://irl33t.com 
# 
# If you edit please keep my name as an original author and 
# keep me apprised of the changes, see email address above. 
# This code may not be used for commercial purposes. 
# You the executor, runner, user accept all liability. 
# This code comes with ABSOLUTELY NO WARRANTY. 
# You may redistribute copies of the code under the terms of the GPL v2. 
# ----------------------------------------------------------------------- 
# Prerequisite: 
# Possibly PowerShell v2. I haven't tested with v1 yet. 
# ----------------------------------------------------------------------- 
# 2010.04.07 ver 1.0 
# 
# Summary: 
# Enumerate items in Startup locations, checks for original file name then, 
# if changed remove item, checks against custom safe list and safe vendor 
# list. If not in either safe list, remove item. 
# 
# Instructions: 
# You need to customize your safe list for your environment BEFORE trying. 
# Autoruns for Windows (see credit below) works great for this. Remember 
# in Autoruns the display pane on the bottom shows you the Company Name. 
# The 'Publisher Name' is not always the same as the Company Name. 
# 
# Known Issues: 
# This method won't work forever and can easily be bypassed, its not the  
# end all be all of startup security. For that we need all the legit vendors 
# Microsoft included, to digitally sign their apps all the time. 
# 
# Furture Versions: 
# In future versions I'll check PowerShell v1 compatability as well as add 
# Schecduled tasks, Services AND a way to autogenerate a safe list. 
# 
# Greets: 
# The inspiration for this script was from...  
# Mark Russinovich and Bryce Cogswell of Sysinternals\Microsoft 
# Thank you guys for Autoruns and so many other tools that I use everyday. 
# 
# Shay Levy, PowerShell MVP - Helped me with parsing the registry. 
# Thank you Shay I would probably still be banging my head on my desk. 
# 
# Tobias Speckbacher, Thanks for being a second set of eyes and my own 
# personal regex dictionary. :) 
#************************************************************************ 
 
function Test-Entry{ 
    Param($Entry,$File) 
    $objFile=Get-Item (Find-Path $File) 
    if ($objFile){ 
        if ($colSafeFiles -notcontains $File){ 
            if ($objFile.GetType().Name -eq 'FileInfo') { 
                $Filename=$objFile.Name 
                $OriginalFilename=[System.Diagnostics.FileVersionInfo]::GetVersionInfo($objFile).OriginalFilename 
                $CompanyName=[System.Diagnostics.FileVersionInfo]::GetVersionInfo($objFile).CompanyName 
                if ($Filename -ne $OriginalFilename -or $colSafeVendors -notcontains $CompanyName){ 
                    if ($Filename -ne $OriginalFilename){write-host 'Filename:'$Filename 'Expected:'$OriginalFilename 'Removing:' $Entry} 
                    if ($colSafeVendors -notcontains $CompanyName){write-host $CompanyName 'not found in safe vendors list. Removing:' $Entry} 
                    Remove-Entry $Entry 
                } 
            } 
        } 
    } 
    ELSE{ 
        Remove-Entry $Entry 
    } 
} 
 
function Find-Path{ 
param($Path, [switch]$All=$false, [Microsoft.PowerShell.Commands.TestPathType]$type="Any") 
    if($(Test-Path $Path -Type $type)) { 
        return $path 
    } else { 
        [string[]]$paths = @($pwd); 
        $paths += "$pwd;$env:path".Replace(';;',';').Replace('%SystemRoot%',$env:SystemRoot).Split(";") 
        $paths = Join-Path $paths $(Split-Path $Path -leaf) | ? { Test-Path $_ -Type $type } 
        if($paths.Length -gt 0) { 
            if($All) { 
                return $paths; 
            } else { 
                return $paths[0] 
            } 
        } 
    } 
} 
 
function Remove-Entry{ 
    Param($Entry) 
    Remove-ItemProperty -Path $regLoc -Name $Entry 
} 
 
$colRegLocs=@( 
    "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run", 
    "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Run", 
    "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run", 
    "HKCU:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Run"; 
) 
 
$colSafeVendors=@( 
    'Alps Electric Co., Ltd.',        #Alps Touchpad 
    'Microsoft Corporation',        #Office 2010, Security Essentials (Virus Scan) 
    'Dell Inc.',                    #Dell Wireless Card Tray, Control Point 
    'Smith Micro Software, Inc.',    #Dell Connection Manager 
    'Intel Corporation',            #Intel Event Monitor 
    'NVIDIA Corporation',            #NVIDIA Display Properies, Hotkey Service, nView Wizard 
    'IDT, Inc.',                    #PC Audio Tray 
    'Broadcom Corporation',            #Dell Security Device and Task Status 
    'Trend Micro Inc.';                #Virus Scan 
) 
 
$colSafeNames=@( 
    'PSPath', 
    'PSParentPath', 
    'PSChildName', 
    'PSDrive', 
    'PSProvider', 
    '(default)', 
    'Synergy Client',                #Synergy, No vendor name. 
    'Synergy Server',                #Synergy, No vendor name. 
    'RESTART_STICKY_NOTES';            #Sticky Notes, Orginal filename mismatch 
) 
 
$colSafeFiles=@( 
    'C:\Program Files (x86)\Synergy\synergyc.exe',        #Synergy, No vendor name. 
    'C:\Program Files\Synergy\synergyc.exe',            #Synergy, No vendor name. 
    'C:\Program Files (x86)\Synergy\synergy.exe',        #Synergy, No vendor name. 
    'C:\Program Files\Synergy\synergy.exe';                #Synergy, No vendor name. 
) 
 
#Clean Registry Entries 
foreach ($regLoc in $colRegLocs) { 
    if (Test-Path $regLoc){ 
        $objRegLoc=Get-ItemProperty $regLoc 
        $list=$objRegLoc.psobject.properties  | select name,value 
        $list|ForEach-Object{ 
            if  ($colSafeNames -notcontains $_.Name) { 
                $Entry=$_.Name 
                $File=$_.Value.Split(',/')[0].Trim() -replace ('rundll32.exe ','') -replace ('^"','') -replace ('\".*','') 
                Test-Entry $Entry $File 
            } 
        } 
    } 
}