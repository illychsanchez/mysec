$FTPserverIP = "ftp1.speedgaze.com"
$FTPuser = "PFA"
$FTPpassword = "in9DFF@8"
$FTPtargetfolder = "d:\\"
$FTPfilename ="test.rar"

$client = New-Object System.Net.WebClient
$client.Credentials = New-Object System.Net.NetworkCredential("$FTPuser", "$FTPpassword")

$client.DownloadFile("ftp://$FTPserverIP/$FTPfilename", "$FTPtargetfolder\\$FTPfilename")