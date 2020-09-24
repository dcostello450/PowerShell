Get-Process | Where-Object {$_.WorkingSet -gt 20000000} | Get-Unique


$obj = Read-Host -Prompt "Input process to be killed"
$obj = Get-Process $obj
Stop-Process $obj -Force
