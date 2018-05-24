#MODULE 2
#Debugging

Write-Host "Gathering machine info..."
Write-Host "  Getting OS information..." -NoNewline
$OS = Get-WmiObject win32_operatingsystem
Write-Host -ForegroundColor Green " OK"
Write-Host "  Getting Network information..." -NoNewline
$Nets = Get-NetAdapter
Write-Host -ForegroundColor Green " OK"
Write-Host "  Getting Disk information..." -NoNewline
$disks = Get-Disk
Write-Host -ForegroundColor Green " OK"
Write-Host "  Getting Service information..." -NoNewline
$services = Get-WmiObject win32_service
Write-Host -ForegroundColor Green " OK"
Write-Host "  Getting Process information..." -NoNewline
$processes = Get-Process
Write-Host -ForegroundColor Green " OK"

$machineObj = [PSCustomObject]@{
    OS = "Windows $($OS.Version)"
    ComputerName = $OS.PSComputerName
    User = $OS.RegisteredUser
    WiFiMAC = ($Nets | where Name -eq "Wi-Fi").MacAddress
    WiFiLink = ($Nets | where Name -eq "Wi-Fi").LinkSpeed
    DiskName = $disks.Name
    DiskSerial = $disks.SerialNumber
    DiskHealth = $disks.HealthStatus
    DiskSize = [math]::Round($disks.DiskSize / 1GB)
    Services = $services.DisplayName
    Processes = $processes.Name | select -Unique
}
$machineObj