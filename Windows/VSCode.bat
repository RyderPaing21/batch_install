REM Install Visual Studio Code text editor (if needed)
where code.exe > nul 2>&1 || choco install vscode -y

REM refreshing environment.
call refreshenv.cmd

cd /d %~dp0
for /F "tokens=*" %%A in (Extensions.txt) do %%A

pause