# Funktion 1
function Get-Greeting {
    param(
        [string]$Name = "User"
    )
    Write-Host "Hi, $name! Willkommen bei Powershell Modulen!"
}