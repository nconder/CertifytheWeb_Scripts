# Credit j0mbie https://github.com/j0mbie  https://github.com/webprofusion/certify/issues/447 
# Enable/renew certificate for SSTP VPN

param($result)

# Store certificate in variable
$cert = Get-ChildItem -Path Cert:\LocalMachine\My | Where-Object {$_.Thumbprint -match $result.ManagedItem.CertificateThumbprintHash}

# Stop RRAS, set cert, start RRAS
Import-Module RemoteAccess
Stop-Service RemoteAccess
Set-RemoteAccess -SslCertificate $cert
Start-Service RemoteAccess
