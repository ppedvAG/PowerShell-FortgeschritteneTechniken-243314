Configuration PullServerConfig {
    Import-DscResource -ModuleName PSDesiredStateConfiguration

    Node "PullServer" {
        WindowsFeature DSCServiceFeature {
            Name = "DSC-Service"
            Ensure = "Present"
        }

        xDscWebService PSDSCPullServer {
            Ensure = "Present"
            EndpointName = "PSDSCPullServer"
            Port = 8080
            PhysicalPath = "$env:ProgramFiles\WindowsPowerShell\DscService"
            CertificateThumbPrint = "AllowUnencryptedTraffic"
            ModulePath = "$env:ProgramFiles\WindowsPowerShell\DscService\Modules"
            ConfigurationPath = "$env:ProgramFiles\WindowsPowerShell\DscService\Configuration"
            State = "Started"
        }
    }
}

PullServerConfig

Start-DscConfiguration -Path ./PullServerConfig -Wait -Verbose