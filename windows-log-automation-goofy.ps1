# $InstallerCheck = (Get-Service | Where-Object { $_.Name -eq 'nxlog' }).DisplayName

# if ( $InstallerCheck -ne "nxlog" ) {

#     $InstallerPresenceCheck = (Get-Childitem "C:\Windows\Temp"| where {$_.name -eq "nxlog-ce.msi"}).Name
#     if ($InstallerPresenceCheck -ne "nxlog-ce.msi"){
#         [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
#         $url = "https://dl.nxlog.co/dl/65ea5ac19f191" 
#         $path_to_file = "C:\Windows\Temp\nxlog-ce.msi"
#         $Client = New-Object System.Net.WebClient
#         $Client.DownloadFile($url, $path_to_file)


#         }
# }
# $url = "https://dl.nxlog.co/dl/65ea5ac19f191" 
# $path_to_file = "C:\Windows\Temp\nxlog-ce.msi"
# $Client = New-Object System.Net.WebClient
# $Client.DownloadFile($url, $path_to_file)


wget https://dl.nxlog.co/dl/65ea5ac19f191

