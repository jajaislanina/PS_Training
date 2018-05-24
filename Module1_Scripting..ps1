#MODULE 1
#SCRIPTS

$WifiAdapter = Get-NetAdapter | where Name -eq "Wi-Fi" 
$MAC = $WifiAdapter | select MacAddress
$IP = Get-NetIPAddress | Where InterfaceIndex -eq $WifiAdapter.InterfaceIndex
$diskSize = [math]::Round((Get-Disk | Select -ExpandProperty Size) / 1GB)

$output = @{
    MAC = $MAC.MacAddress
    IPv4 = ($IP | Where AddressFamily -eq IPv4).IPAddress
    "Disk Size" = $diskSize
    ComputerName = $env:COMPUTERNAME
}
$output

