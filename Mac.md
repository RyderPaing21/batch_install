# Index:
You can either manually create and run the batchfile or download it. You ***do not*** have to do both.
- ## [Homebrew](#Homebrew)
- ## [Manual Script Creation](#Manual_Script_Creation)
- ## [Script Download](#Script_Download)
- ## [Next Step](#Next_Step)

<a name="Homebrew"></a>
## Homebrew
Open the terminal. <br>
![image](https://github.com/Nairbuul/Lab_00-Write-Up/assets/42011526/470e4beb-b62c-4e72-a998-12ce609d64e7) <br>

- Check if homebrew is installed using "homebrew --version" without the quotation marks.
- If it is not installed click [here](https://brew.sh/) to go to homebrew website and copy and paste the command into the terminal.
- If it is installed continue to the next step.
  
![image](https://github.com/Nairbuul/Lab_00-Write-Up/assets/42011526/47bfa352-cccd-4aa5-af33-8bc5983c9e68) <br>

<br><br><br><br><br><br><br>

<a name="Manual_Script_Creation"></a>
## 🟢 Manual Script Creation
```
#!/bin/bash

FILE=/usr/bin/git
if test -f "$FILE"; then
    echo "$FILE exists."
    brew upgrade git
else
    echo "$FILE doesn't exist."
    brew install git
fi

FILE=/usr/local/bin/cmake
if test -f "$FILE"; then
    echo "$FILE exists."
    brew upgrade cmake
else
    echo "$FILE doesn't exist."
    brew install cmake
fi

FILE=/usr/bin/clang
if test -f "$FILE"; then
    echo "$FILE exists."
    current_clang_ver=$(eval clang -dumpversion)
    recommended_clang_ver="14.0.3"
    echo $recommended_clang_ver
    echo $current_clang_ver

    if [[ "$current_clang_ver" == "$recommended_clang_ver" ]]; then
        echo "latest version is installed."
    else
        echo "installing latest version"
        sudo rm -rf /Library/Developer/CommandLineTools
        xcode-select --install
    fi
else
    echo "$FILE doesn't exist. Installing clang"
    xcode-select --install
fi

brew install --cask visual-studio-code
```
- Create a folder named installs
- Open terminal
- Go to the folder destination using this command (without quotation marks)
  - cd Desktop/My \installs
- Create a .sh file
  - vim setup.sh <--- .sh file named setup remember the file name we'll use it later.* <br>  
- Enter insert mode by pressing I
- Copy and paste the source code posted above.
- After pasting the code into the terminal press esc and type this into the terminal.
  - wq!
- Give the file executable permission by using this command
  - chmod 755 setup.sh
- Run the script by typing
  -  ./setup.sh
  
<br><br><br><br><br><br><br>

<a name="Script_Download"></a>
## 🟢 Script Download
Go to this [link](https://github.com/barkeshli-pcc/batch_install/blob/main/Mac/Mac_Setup.sh) and download the file and store in your desktop.
- Go to your terminal.
  - cd Desktop                      
  - Type in chmod 755 Mac_Setup.sh (This'll allow your script to run on your machine.)
  - Type in ./Mac_setup.sh         (This'll run the script on your machine.)

<br><br><br><br><br><br><br>

<a name="VSC_extensions"></a>
## 🟢 VSC Extensions
- Cmake tools
- C/C++

![image](https://github.com/Nairbuul/Lab_00-Write-Up/assets/42011526/44cd96dd-37f5-41ed-9702-662bf891ab9c)
![image](https://github.com/Nairbuul/Lab_00-Write-Up/assets/42011526/d50051d2-e9cb-4b9c-84ac-7d6f3ca2083a)
![image](https://github.com/Nairbuul/Lab_00-Write-Up/assets/42011526/40babe5c-0de9-4a7a-a753-a35409496afe) <br> 

<a name="Next_Step"></a>
# After you finish running the scripts move onto the [next step.](https://github.com/barkeshli-pcc/lab-00-writeup/blob/master/start_project.md)
