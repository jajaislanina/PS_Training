function Divide-Numbers
{
    param (
        $number1, 
        $number2
    )
    Write-Host "I am dividing $number by $number2"
    return $number / $number2
}

try
{
    dir "c:\TibCo Spotfire"
}
catch 
{
    Write-Host "folder missing"
}
