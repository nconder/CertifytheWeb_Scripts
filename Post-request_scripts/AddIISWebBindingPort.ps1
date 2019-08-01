# Update port #, site name, and IP(optional) from IIS usually port 80 and 443 are required for https://letsencrypt.org
# Port redirects are currently not allowed for Let's Encrypts verifacation. 
# This will add port 80 to your IIS site then you can remove it with RemoveIISWebBindingPort.ps1.


New-WebBinding -Name "ADD YOUR SITE NAME" -IPAddress "*" -Port 80