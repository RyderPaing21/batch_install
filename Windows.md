
# Index:
You can either manually create and run the batchfile or download it. You ***do not*** have to do both.
- ### [Powershell Prerequesite](#Powershell_Prerequesite) 
- ### [Manual Batchfile Creation](#Batch_File_Creation)
- ### [Download Batchfile](#Batch_File_Download)
- ### [Mingw Installation](#MinGW_Installation)
<br><br><br><br><br><br><br>

<a name="Powershell_Prerequesite"></a>
## 🟢 Powershell Prerequesite 
Type PowerShell in the search bar and run it as administrator.  <br>
Then inside the shell type "Set-ExecutionPolicy RemoteSigned"   <br><br>
![image](https://github.com/Nairbuul/Lab_00-Write-Up/assets/42011526/49548807-5faa-4540-bc73-0e02c820cb4e)  <br>
![image](https://github.com/Nairbuul/Lab_00-Write-Up/assets/42011526/096d0394-8dd9-4f2d-bd70-e7862d27f29c)  <br>
![image](https://github.com/Nairbuul/Lab_00-Write-Up/assets/42011526/0c866b2a-4caa-479d-9400-74c2b3640074)  <br><br>
Type in y and press enter. <br>
![image](https://github.com/Nairbuul/Lab_00-Write-Up/assets/42011526/42110158-bccb-4700-a8c0-9a5bfa94e50f)  <br><br>

<br><br><br><br><br><br><br>

<a name="Batch_File_Creation"></a>
## 🟢 Batch File Creation
To create a batch file create a new .txt file and rename it so that it ends with .bat.

#### Chocolatey
```
REM Install Chocolatey (if needed)
where choco.exe > nul 2>&1 || powershell.exe -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))"
```
<br>

#### Build
```
REM Install Git version control system (if needed)
where git.exe > nul 2>&1 || choco install git -y

REM Install CMake build system (if needed)
where cmake.exe > nul 2>&1 && choco upgrade cmake|| choco install cmake --installargs 'ADD_CMAKE_TO_PATH=User'

REM Install Clang C++ compiler (if needed)
where clang.exe > nul 2>&1 || choco install llvm -y

REM Install Google Chrome web browser (if needed)
where chrome.exe > nul 2>&1 || choco install googlechrome -y

REM Install TightVNC VNC server (if needed)
where tvnserver.exe > nul 2>&1 || choco install tightvnc -y
```

<br>

#### VSCode 
```
REM Install Visual Studio Code text editor (if needed)
where code.exe > nul 2>&1 || choco install vscode -y

REM refreshing environment.
call refreshenv.cmd

cd /d %~dp0
for /F "tokens=*" %%A in (name of text file .txt) do %%A
```
Create a text file with these comamnds and put the name of the text file between the bracket in the command above.

```
REM Install Visual Studio Code C++ extension (if needed)
code --list-extensions | findstr /C:"ms-vscode.cpptools" > nul 2>&1 || code --install-extension ms-vscode.cpptools

REM Install Visual Studio Code Cmake Tools Extension (if needed)
code --list extensions | findstr /C:"ms-vscode.cmake-tools" > nul 2>&1 || code --install-extension ms-vscode.cmake-tools
```
You should end up with three .bat files and a .txt file. <br>
![image](https://github.com/Nairbuul/Lab_00-Write-Up/assets/42011526/d3a6b6b4-2cab-4cbe-affa-41cca276bef2) <br>
![image](https://github.com/Nairbuul/Lab_00-Write-Up/assets/42011526/ad6b4671-8c25-4af5-86e7-8381233cab0f) <br>

<br><br><br><br><br><br><br>

<a name="Batch_File_Download"></a>
## 🟢 Batch File Download
Go to this [link](https://github.com/barkeshli-pcc/batch_install/tree/main/Windows) and download these files. <br>
Make sure you completed the [Powershell Prerequesite](#Powershell-Prerequesite) then run these files in this order as ADMINISTRATOR.
- #1.) Chocolatey
- #2.) Build
- #3.) VSCode <br><br>
![image](https://github.com/Nairbuul/Lab_00-Write-Up/assets/42011526/6d897c9b-f154-4bf4-895f-82b461157f85) <br>
![image](https://github.com/Nairbuul/Lab_00-Write-Up/assets/42011526/9c9a2946-cfff-4047-ae9d-35c66d979074) <br>
![image](https://github.com/Nairbuul/Lab_00-Write-Up/assets/42011526/08e1cd04-aca2-43c0-93c9-e35a738a345b) <br>


<br><br><br><br><br><br><br>

<a name="MinGW_Installation"></a>
## 🟢 MinGW Installation
Click on this link and follow the installation instructions. [MinGW install](https://sourceforge.net/projects/mingw/) <br> 

Right click and press mark for installation for all of the packages.  <br>
![image](https://github.com/Nairbuul/Lab_00-Write-Up/assets/42011526/0bd0c2d4-26c4-4f53-a583-d44567adbeb0)  <br><br>

Now click installation and press apply changes. <br>
Then wait for the prompt to say "All changes were applied successfully; you may now close this dialoug." <br>
or <br>
Click the checkbox to close the dialouge after the installation finishes <br>
![image](https://github.com/Nairbuul/Lab_00-Write-Up/assets/42011526/56c6c43e-7164-4ea5-b86f-d514cb9168c2)  <br>
![image](https://github.com/Nairbuul/Lab_00-Write-Up/assets/42011526/690b2147-54e1-49c3-8698-9c3db0fb037b)  <br>
![image](https://github.com/Nairbuul/Lab_00-Write-Up/assets/42011526/e2c889df-c254-4319-8188-735268e40f63)  <br>

## MinGW Setup
Now we will set the MinGW path. <br> 
1.) Go to the search bar and type in Path <br>
![image](https://github.com/Nairbuul/Lab_00-Write-Up/assets/42011526/61f74c36-b6eb-433a-a801-3781b11aef14)  <br>

2.) Click on the Path in System variables then click edit <br>
![image](https://github.com/Nairbuul/Lab_00-Write-Up/assets/42011526/55fd7249-ad4e-4c38-98ed-f61cc4b68b89)  <br>

3a.) Click New on the top right. <br> 
3b.) Then type in C:\MinGW\bin <br> 
3c.) Click ok. <br><br>
![image](https://github.com/Nairbuul/Lab_00-Write-Up/assets/42011526/90bdfef4-9718-4f5e-a1e8-806589878683)  <br><br><br>

# After you finish running the scripts and installing MinGW move onto the [next step.](https://github.com/barkeshli-pcc/lab-00-writeup/blob/master/start_project.md)
