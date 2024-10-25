@{
    ModuleVersion = '1.0.0'
    GUID = '12345678-cdef-1234-567890abcdef'

    # Name des Moduls
    RootModule = 'MyModule.psm1'

    #Name vom Author und Lizenzierung
    Author = 'Daniel Rerich'
    Description = 'Ein einfachs Modul mit Beispiels-Funktionen'

    #PowerShell Kompatibilität
    PowerShellVersion = '5.1'

    #Exportierte Funktionen und Cmdlets
    FunctionsToExport = @('Get-Greeting', 'Get-Square')
    CmdletsToExport = @()
    VariablesToExport = @()
    AliasesToExport = @()

    # Private Daten
    PrivateData = @{
        PSData = @{
                Tags = @('Beispiel', 'Modul')
                ProjectUri = 'https://ppedv.de'
                LicenseUri = 'https://ppedv.de/license'
            }
        }
}