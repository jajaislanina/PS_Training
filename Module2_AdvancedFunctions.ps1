#MODULE 2
#Advanced functions

function Damn-PS
{
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true,
        ValueFromPipelineByPropertyName = $true)]
        [int]$param
    )
    BEGIN
    {
        $output = @{}
        Write-Verbose "Starting processing $param"
    }
    PROCESS
    {
        $mathStuff = ($param + 10 - 1) * 9
        $output.Add($param,$mathStuff)
    }
    END
    {
        return $output
    }
}