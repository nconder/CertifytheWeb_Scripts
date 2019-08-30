# Assign certs to Skype for Business server 2019 Default and External type
Import-Module SkypeforBusiness

# set cert to default and external
#Set-CSCertificate -Type Default,WebServicesExternal -Thumbprint $result.ManagedItem.CertificateThumbprintHash -Confirm:$false

# set cert to all sites good for split brain dns
Set-CSCertificate -Type Default,WebServicesInternal,WebServicesExternal -Thumbprint $result.ManagedItem.CertificateThumbprintHash -Confirm:$false
