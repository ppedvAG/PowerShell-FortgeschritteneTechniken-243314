#Definition der DSC-Konfiguration mit Parameter
Configuration WebServerConfig {

    param(
        [string[]]$NodeName = "localhost"
    )
    
    Import-DscResource -ModuleName PSDesiredStateConfiguration

    Node $NodeName {
        WindowsFeature IIS {
            Name = "Web-Server"
            Ensure = "Present" # Ensure dass IIS installiert ist
        }
    }
}

# Übergabe der Konfigurationsdaten beim Aufruf
WebServerConfig -nodeName "MyServer"
