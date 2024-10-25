class Fahrzeug {

    # Properties definieren
    [string]$Farbe
    [int]$Geschwindigkeit
    
    # Methoden definieren
    [void] Beschleunigen([int]$wert) {
        $this.Geschwindigkeit += $wert
        Write-Output "Das Fahrzeug beschleunigt auf $($this.Geschwindigkeit) km/h."
    }

    # Konstruktor definieren
    Fahrzeug([string]$farbe, [int]$geschwindigkeit) {
        $this.farbe = $farbe
        $this.Geschwindigkeit = $geschwindigkeit
    }

}

# Objekt der Klasse erstellen
$fzg = [Fahrzeug]::new("Rot", 50)
$fzg.Beschleunigen(30)
