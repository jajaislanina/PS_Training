#CMDLETS
#Contain [CmdletBinding()], OutputType, Begin, Process blocks

function Get-RandomLlama
{
    [CmdletBinding()]
    [OutputType([string])]
    Param
    (
        # Param1 help description
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$false,
                   Position=0)]
        $count
    )

    Begin
    {
        $llamaList = "Fuzzy", "Funny", "Little","Duck"
    }
    Process
    {
        $result = $llamaList | Get-Random -Count $count
    }
    End
    {
        return $result
    }
}