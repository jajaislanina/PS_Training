#MODULE 2
#JSON XML CSV

Get-Service BITS | Export-Csv C:\Temp\BITS.csv
Import-Csv C:\Temp\BITS.csv

$json = Get-Service BITS | Convertto-Json 
ConvertFrom-Json $json


Get-Service BITS | Export-Clixml C:\Temp\BITS.xml
Import-Clixml C:\Temp\BITS.xml

function Set-NlogLogFolder
{
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [ValidateScript({Test-Path $_})]
        $configPath,

        [Parameter(Mandatory)]
        $logFolder
    )
    Write-Verbose "Getting configuration file content from $configPath"
    [xml]$nlogConfig = Get-Content $configPath

    Write-Verbose "Updating LogFOlder value to $logFolder"
    ($nlogConfig.nlog.variable | where Name -eq LogFolder).Value = $logFolder
    try
    {
        Write-Verbose "Saving configuration"
        $nlogConfig.Save($configPath)
        Write-Verbose "Saving successful"
    }
    catch
    {
        Write-Verbose "Saving configuration failed"
        throw $_.Exception
    }
}
