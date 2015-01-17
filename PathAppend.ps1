<#
This script updates the Windows Path Property and is not for automation
#>

#Prompt for directory path, test validity, exit if invalid
$newPath = Read-Host -Prompt "Enter directory path"
try {if((test-path $newpath) -eq $false){Write-Host "Invalid Path"; exit}} catch{$_; exit}
Write-Host "`nPath validated `n"

#Get current path, 
try
   {$oldPath =(Get-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Environment' -Name PATH).Path
    Write-Host "Review and confirm new path: `n`n$oldPath;$NewPath`n"

    #Create simple prompt test. Did not use -continue option in Set-ItemProperty because it is crap
    if($y=(read-host -prompt "Update registry (y)") -ne "y"){Write-Host "Quitting"; Exit}
    
    #No exit then update registry and display new path from registry to confirm
    Set-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Environment' -Name PATH –Value "$oldPath;$newPath"
    #Updating PS Environment Path variable
    $env:Path=(Get-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Environment' -Name PATH).Path
   }
Catch {$_}

