REM Install Chocolatey (if needed)
where choco.exe > nul 2>&1 || powershell.exe -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))"

pause