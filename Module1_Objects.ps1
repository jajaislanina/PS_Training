#MODULE 1
#WORKING WITH OBJECTS


#ForEach-Object
$coolStuff = 'Llamas','dogs','motorcycles','powertools'
$coolStuff | ForEach-Object {"$_ are awesome!"}

#Group-Object
Get-Service | Group-Object -Property StartType
dir c:\Windows | Group-Object -Property extension

#Select-Object
Get-Service | Select-Object DisplayName 
Get-Service | Select-Object -ExpandProperty DisplayName 
Get-Service | Select-Object -First 10
Get-Service | Select-Object -Last 1
Get-Service | select -Skip 5

#Sort-Object
Get-Process | Sort-Object PrivateMemorySize -Descending

#Where-Object
Get-ChildItem $env:windir | Where-Object Name -eq notepad.exe
Get-Process | Where-Object PagedMemorySize -gt 100Mb
Get-EventLog –LogName System –Newest 10 | Sort-Object –Property TimeWritten -Descending

#Measure-Object
Get-Process | Measure-Object -Property workingset -Minimum -Maximum -Average
Get-Content $env:windir\system.ini | Measure-Object -Character -Line -Word


#Compare-Object
$Processes_Before = Get-Process
.\notepad.exe
$Processes_After = Get-Process
Compare-Object -ReferenceObject $Processes_Before -DifferenceObject $Processes_After
