Function foo()
{
	echo “Hello World”
}

function bar
{
    param (
        $Name,
        $Age
    )
    $hash = @{}
    $hash.Add($Name,$Age)
    return $hash
}


function Start-Things
{
    param (
        $processName
    )
    Start-Process "$processName.exe"
    Write-Output "$ProcessName started"
    $process = Get-Process $processName
    $process | select Name, FileVersion, StartTime
    Stop-Process $process
}