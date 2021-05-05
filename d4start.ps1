$Prog = "C:\Program Files (x86)\D4\D4.exe"
$Running = Get-Process D4 -ErrorAction SilentlyContinue
$Start = {([wmiclass]"win32_process").Create($Prog)} 
if($Running -eq $null) # check if $running has a value or not
{& $Start} # if null value then the $start gets run, nothing happens if $running has a value