$obj = Read-Host -Prompt "Input process"
#get $obj process
$obj = Get-Process $obj -ErrorAction SilentlyContinue
if ($obj) {
 $obj.CloseMainWindow()
 Sleep 5
 if (!$obj.HasExited) {
  $obj | Stop-Process -Force
 }
}