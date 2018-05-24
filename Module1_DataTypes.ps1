#MODULE 1
#Data types
#TIP: You can use | Get-Member or .GetType() to find out type of the object you are working with.
#For example: $false.GetType()

"string"
([char]0x263a)
([byte]0xFF)
([int]"0064")
$true
([int]$false)
([datetime]"2018-05-22 9:30:01Z")

#Full list of type accelerators usable in Powershell
$AcceleratorType = [psobject].Assembly.GetType("System.Management.Automation.TypeAccelerators")
$AcceleratorType::Get