#MODULE 1
# Operators
#TIP: You can use Built-In help to get more details about comparison operators
# Get-Help about_Operators

#COMPARISON
123 -eq 123
123 -eq "123"
"blabla" -ne  "blibli"
26 + 4 -gt 26
13 -ge 13
13 -ge 12
5 -lt "powershell"
"cat" -le "llama"
"Llamas are" -like "*amas*" #Wildcard comparison
"PowerShell" -notlike "Boring"
"abcdefgh" -match "cde" #Regular expression comparison
"supercalifragilisticexpialidocious" -match ".*ili.*"
"llama" -notmatch ".*cat.*"
"SuperLlama" -contains "Llama" #EEEEEK
"Super","Llama" -contains "Llama"
"dogs","cats","bysons"-notcontains "broccoli"
"Cats are really awesome" -replace "Cats","Llamas"
#In is like contains only operands are reversed
"Llama" -in "Super","Llama"
"Cat" -notin "Awesome","Animals","List"

#TYPE
"Kap'lah" -is [string]
3389 -is [int]
"2291" -isnot [int]
123 -as [char]

#LOGICAL
1 -eq 1 -and $true
33 -lt 21 -or $true
"roses" -eq "red" -xor 3 -eq 3
-not 3 -eq 3
! ("bla" -eq "bli")