$ProcessActive = Get-Process explorer -ErrorAction SilentlyContinue

if($ProcessActive)
{
Write-host "Explorer is currently running"
}
else
{
Start-Process -FilePath C:\Windows\explorer.exe
}