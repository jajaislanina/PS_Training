#MODULE2
#REMOTING

Get-Command | where { $_.parameters.keys -contains "ComputerName" -and $_.parameters.keys -notcontains "Session"}


Get-Command *-pssession

#Remote run command
Invoke-Command -ComputerName Node0 -ScriptBlock {Write-Host "Helo World"}
$session = New-PSSession -ComputerName Node0,Node2
Invoke-Command -Session $session -ScriptBlock {Get-UICulture}
