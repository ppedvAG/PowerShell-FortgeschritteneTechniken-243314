#Definition der DSC-Konfiguration
Configuration WebServerConfig {
    
    Import-DscResource -ModuleName PSDesiredStateConfiguration

    Node "localhost" {
        WindowsFeature IIS {
            Name = "Web-Server"
            Ensure = "Present" # Ensure dass IIS installiert ist
        }
    }
}

# Erstellen der MOF-Datei (Management Object Format) aus der Konfiguration
WebServerConfig

# Anwenden der Konfiguration auf den lokalen Computer
Start-DscConfiguration -path ./WebServerConfig -Wait -Verbose