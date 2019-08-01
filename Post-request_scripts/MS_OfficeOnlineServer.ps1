# Microsoft Office Online Server script to set the certificate after Certify the Web app runs.
# Note that OOS does not have the ability to set certificate by thumbprint. 
# No modifications should be needed besides your URL

Import-Module -Name OfficeWebApps

$OOSUrl = "ENTER OOS URL"

$certFN = dir cert: -Recurse | Where-Object { $_.Thumbprint -eq "$result.ManagedItem.CertificateThumbprintHash" } | Select-Object FriendlyName

New-OfficeWebAppsFarm -InternalUrl $OOSUrl -ExternalUrl $OOSUrl -CertificateName $results -EditingEnabled -OfficeAddinEnabled -OnlinePictureEnabled -OnlineVideoEnabled -ClipartEnabled -TranslationEnabled -AllowOutboundHttp -ExcelAbortOnRefreshOnOpenFail $true -ExcelAllowExternalData`
