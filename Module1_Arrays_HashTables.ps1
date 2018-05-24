#MODULE 1
#ARRAYS

$array1 = @(“Llama”,”Duck”,23,$false)
foreach ($item in $array1)
{
    $item
}

$array1[3] = $true

foreach ($item in $array1)
{
    $item
}

#HASHTABLES
#initialize, add kv pairs, retrieve values by key name, update value by key name
$ht = @{}
$ht.Add("George","23")
$ht.Add("Frank","31")
$ht["Frank"]
$ht["George"] = 24

#initialize with values
$ht2 = @{
    Llama = "Awesome"
    Alpaca = "Fluffy"
}
#lookup table
$environments = @{
    prod = "srvProd02"
    uat = "srvUat05"
    sit = "sitSrv01"
}
$env = "uat"
$server = $environments[$env]

#Not working?!?
$ht2 | foreach {$_.Name}
#GetEnumerator method
$ht2.GetEnumerator() | foreach {$_.Name}
