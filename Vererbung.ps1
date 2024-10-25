class Fahrzeug {

    # Properties definieren
    [string]$Farbe
    [int]$Geschwindigkeit
    
    # Methoden definieren
    [void] Beschleunigen([int]$wert) {
        $this.Geschwindigkeit += $wert
        Write-Host "Das Fahrzeug beschleunigt auf $($this.Geschwindigkeit) km/h."
    }

    # Konstruktor definieren
    Fahrzeug([string]$farbe, [int]$geschwindigkeit) {
        $this.farbe = $farbe
        $this.Geschwindigkeit = $geschwindigkeit
    }
}

class Auto : Fahrzeug {

    [string]$Marke

    Auto([string]$farbe, [int]$geschwindigkeit, [string]$marke) : base($farbe, $geschwindigkeit) {
        $this.Marke = $marke
    }

    [void] ZeigeMarke() {
        Write-Host "Marke des Autos: $($this.Marke)"
    }

}

$meinAuto = [Auto]::new("Weiß", 100, "BMW")
$meinAuto.ZeigeMarke()
$meinAuto.Beschleunigen(20)