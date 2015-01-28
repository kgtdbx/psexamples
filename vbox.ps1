<#
PowerShell VirtualBox COM Object
There are to interfaces for the Virtualbox COM Object.
	VirtualBox
	Session
#>

$vBox = New-Object -ComObject VirtualBox.Virtualbox
$vbox | Get-Member
$vSession = New-Object -ComObject VirtualBox.Session
v$Session | Get-Member
$vHost = $vBox.Host
$vHost | Get-Member
$vif = $Host.NetworkInterfaces
$vif | Get-Member