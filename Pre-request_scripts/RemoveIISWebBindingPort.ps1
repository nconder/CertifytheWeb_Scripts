# Update port #, site name, and IP(optional) from IIS usually port 80 and 443 are required for https://letsencrypt.org
# Port redirects are currently not allowed for Let's Encrypts verifacation. 
# This will remove port 80 from your IIS site. You can add a port with AddIISWebBindingPort.ps1.


Get-WebBinding -Port 80 -Name "ADD YOUR SITE NAME" | Remove-WebBinding