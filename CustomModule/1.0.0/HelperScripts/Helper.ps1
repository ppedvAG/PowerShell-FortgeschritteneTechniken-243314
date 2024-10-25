function Get-Double {
    param(
        [int]$Number
    )
    Write-Host ($Number*2)
}

# Funktion 2
function Get-Square {
    param(
        [int]$Number   
    )
    Write-Host ($Number*$Number)
}