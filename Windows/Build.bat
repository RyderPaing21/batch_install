REM Install Git version control system (if needed)
where git.exe > nul 2>&1 || choco install git -y

REM Install CMake build system (if needed)
where cmake.exe > nul 2>&1 && choco upgrade cmake|| choco install cmake --installargs 'ADD_CMAKE_TO_PATH=User'

REM Install Clang C++ compiler (if needed)
where clang.exe > nul 2>&1 || choco install llvm -y

pause