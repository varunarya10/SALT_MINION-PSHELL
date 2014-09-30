Invoke-Command -ComputerName ??? -ScriptBlock { Start-Process -Wait -FilePath C:\Users\pandy\downloads\Salt-Minion-2014.1.7-AMD64-Setup.exe -ArgumentList  '/S' }

---+ CHANGE CONFIG FILE SETTINGS

(Get-Content C:\salt\conf\minion) | Foreach-object {$_ -replace "#master: salt","master: 10.137.2.58"}{$_ -replace "#id:","id: <hostname>.jiocloud.rjil.net"} | Set-Content C:\salt\conf\minion

---+ To check the Changes 
Get-content c:\salt\config\minion