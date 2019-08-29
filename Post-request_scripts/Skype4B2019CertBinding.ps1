# Assign certs to Skype for Business server 2019 Default and External type
Import-Module SkypeforBusiness
Set-CSCertificate -Type Default,WebServicesExternal -Thumbprint $result.ManagedItem.CertificateThumbprintHash -Confirm:$false
