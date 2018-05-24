#MODULE 2
#.NET Objects

#PUBLIC STATIC
[System.Math]::Round(22/7)
[Guid]::NewGuid()
[System.IO.File]::ReadAllText("$env:windir\system.ini")
[datetime]::Now

#NEW OBJECT INSTANCE
$randomizer = New-Object System.Random
$randomizer.NextDouble()

#REFLECTION
#https://blog.netspi.com/using-powershell-and-reflection-api-to-invoke-methods-from-net-assemblies/
[System.IO.Compression.ZipFile]::CreateFromDirectory
[Reflection.Assembly]::LoadWithPartialName( "System.IO.Compression.FileSystem" )
[System.IO.Compression.ZipFile]::CreateFromDirectory("C:\temp\1", "C:\Temp\1.zip")

[datetime]::Parse("5/23/2018 11:39PM")

#External DLL
Add-Type -Path "C:\Program Files (x86)\Microsoft SQL Server\120\DAC\bin\Microsoft.SqlServer.Dac.dll"
[Microsoft.SqlServer.Dac.DacPackage]::Load("C:\Path to\DacPackage.dacpac")

Add-Type C:\Users\ilpe\Downloads\RavenDB-3.5.4\Client\Raven.Client.Lightweight.dll

function Create-DefaultRavenIndex
{
    param (
        $url = 'http://localhost:8080',
        [Parameter(Mandatory)]
        $apiKey,
        [Parameter(Mandatory)]
        $Database,
        $AssemblyDir = $PSScriptRoot
    )

    [System.Reflection.Assembly]::LoadFrom("$AssemblyDir\Raven.Client.Lightweight.dll") | Out-Null
    [System.Reflection.Assembly]::LoadFrom("$AssemblyDir\Raven.Abstractions.dll") | Out-Null

    $documentStore = new-object Raven.Client.Document.DocumentStore
    $documentStore.Url = $url
    $documentStore.ApiKey = $apiKey
    $documentStore.DefaultDatabase = $Database
    [void]$documentStore.Initialize() 

    $index = New-object Raven.Client.Indexes.RavenDocumentsByEntityName

    $index.Execute($documentStore)
        
    $documentStore.Dispose()
}


