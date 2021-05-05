a = MsgBox("Are you sure you want to reboot LGCR2?",20,"Please Confirm")
if a = 6 then
	set oShell = CreateObject("WScript.Shell")
	oShell.run("Telnet")
	WScript.Sleep 500
	oShell.SendKeys("Open 172.27.19.124")
	WScript.Sleep 500
	oShell.SendKeys("{Enter}")
	WScript.Sleep 500
	oShell.SendKeys"LGCR2"
	WScript.Sleep 500
	oShell.SendKeys("{Enter}")
	WScript.Sleep 500
	oShell.SendKeys("FERRIS")
	WScript.Sleep 500
	oShell.SendKeys("{Enter}")
	WScript.Sleep 500
	oShell.SendKeys("pdu 3")
	WScript.Sleep 500
	oShell.SendKeys("set pdu.outletsystem.outlet[5].togglecontrol 1")
	WScript.Sleep 500
	oShell.SendKeys("{Enter}")
	WScript.Sleep 500
	oShell.SendKeys("quit")
	WScript.Sleep 500
	oShell.SendKeys("{Enter}")
	WScript.Sleep 500
	oShell.SendKeys("{Enter}")
	WScript.Sleep 500
	oShell.SendKeys("quit")
	WScript.Sleep 500
	oShell.SendKeys("{Enter}")
	WScript.Sleep 500
else
	WScript.Quit
end if
