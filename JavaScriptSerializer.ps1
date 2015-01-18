#[Reflection.Assembly]::LoadWithPartialName("System.Web")
[Reflection.Assembly]::LoadWithPartialName("System.Web.Extensions")
$json=[System.Web.Script.Serialization.JavaScriptSerializer]

$json | Get-Member