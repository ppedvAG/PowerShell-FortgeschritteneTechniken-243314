class Fahrzeug {
    [void] Fahren() {
        Write-Host "Das Fahrzeug fährt."
    }
}

class Auto : Fahrzeug {
    [void] Fahren() {
    Write-Host "Das Auto fährt schnell."
    }
}

class Fahrrad : Fahrzeug {
    [void] Fahren() {
        Write-Host "Das Fahrrad fährt langsam."
    }
}

$meinAuto = [Auto]::new()
$meinFahrrad = [Fahrrad]::new()

$meinAuto.Fahren()
$meinFahrrad.Fahren()

$fahrzeug = [Fahrzeug]::new()
$fahrzeug.Fahren()