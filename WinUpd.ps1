Install-Module PSWindowsUpdate
sc.exe config wuauserv start= demand
sc.exe start wuauserv
Set-PSRepository PSGallery
Set-ExecutionPolicy Unrestricted -force
Install-WindowsUpdate
Set-ExecutionPolicy Restricted -force