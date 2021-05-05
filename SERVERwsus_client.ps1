New-Item -Path "HKLM:Software\Policies\Microsoft\Windows\WindowsUpdate"
New-Item -Path "HKLM:Software\Policies\Microsoft\Windows\WindowsUpdate\AU"
Set-ItemProperty -Path "HKLM:\software\policies\Microsoft\Windows\WindowsUpdate" -Name WUServer -Value "http://172.27.16.102:8530" -Type String -force
Set-ItemProperty -Path "HKLM:\software\policies\Microsoft\Windows\WindowsUpdate" -Name WUStatusServer -Value "http://172.27.16.102:8530" -Type String -force
Set-ItemProperty -Path "HKLM:\software\policies\Microsoft\Windows\WindowsUpdate\AU" -Name UseWUServer -Value "1" -Type DWORD -force