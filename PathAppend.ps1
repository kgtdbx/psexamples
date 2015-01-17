<#
This script updates the Windows Path Property
#>

$oldPath =(Get-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Environment' -Name PATH).Path 
$newPath = Read-Host -Prompt "Enter path to append"

$path = $oldPath+’;$newPath’
Set-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Environment' -Name PATH –Value $path

