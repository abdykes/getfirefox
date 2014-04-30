#

#server information.  Tried to use releases.mozilla.org but that didn't work.
$remotePath = "/pub/mozilla.org/firefox/releases/29.0/win32/en-US/Firefox%20Setup%2029.0.exe"

$ftpServer = "ftp.mozilla.org"

$ftpURL = "http://"+$ftpServer+$remotePath

$webRequest = New-Object System.Net.WebClient
$file = (Get-Item -Path ".\" -Verbose).FullName+"Firefox Setup 29.0.exe"
$webRequest.DownloadFile($ftpURL,$file)

