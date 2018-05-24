#MODULE 1
#PIPELINE

Get-Help about* | Measure-Object
Get-Process notepad | Stop-Process
Get-Process notepad | Stop-Process –PassThru
Get-Service | Out-File Services.txt
Get-EventLog –LogName System –Newest 5 | Out-GridView
Get-Process | Where-Object { $_.ID -gt 300 } | Sort-Object -Property ID | Format-Table -Property ProcessName, ID
