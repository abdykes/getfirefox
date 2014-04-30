#   This program is free software: you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation, either version 3 of the License, or
#   (at your option) any later version.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
# Originally created by: Alan Dykes
# Twitter - @dykesa
#
#
# After a fresh installation of Windows Server, IE can be difficult to use and sometimes you just want a web browser for
# important things like downloading updates, new software, or playing games.
#
# This script will download the FireFox 29 installer to your machine saving you from needing to fight IE to get it.

#server information.  Tried to use releases.mozilla.org but that didn't work.
$remotePath = "/pub/mozilla.org/firefox/releases/29.0/win32/en-US/Firefox%20Setup%2029.0.exe"

$ftpServer = "ftp.mozilla.org"

$ftpURL = "http://"+$ftpServer+$remotePath

$webRequest = New-Object System.Net.WebClient
$file = (Get-Item -Path ".\" -Verbose).FullName+"\Firefox Setup 29.0.exe"
$webRequest.DownloadFile($ftpURL,$file)

