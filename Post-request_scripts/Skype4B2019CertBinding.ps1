# Asign certs to Skype for Business server 2019 Default and External type
Set-CSCertificate -Type Default,WebServicesExternal -Thumbprint $result.ManagedItem.CertificateThumbprintHash -Confirm:$false
