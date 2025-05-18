@echo off
:: Set Cygwin path
set CYGWIN_BIN=C:\cygwin64\bin
set PATH=%CYGWIN_BIN%;%PATH%

:: Set your project path inside Cygwin and Windows
set PROJECT_PATH=/home/058yr/google_Test
set WIN_PROJECT_PATH=C:\cygwin64\home\058yr\google_Test

set EXECUTABLE=ExampleTests.exe

:MENU
cls
echo ===============================
echo       CMake Build System
echo ===============================
echo [1] Configure (Generate CMake build files)
echo [2] Build (Compile the project)
echo [3] Clean (Delete build folder)
echo [4] Run Executable
echo [5] Exit
echo.
set /p choice=Enter your choice: 

if "%choice%"=="1" goto CONFIGURE
if "%choice%"=="2" goto BUILD
if "%choice%"=="3" goto CLEAN
if "%choice%"=="4" goto RUN
if "%choice%"=="5" exit
goto MENU

:CONFIGURE
echo --- Running CMake configuration...
if not exist build mkdir build
bash -lc "cd %PROJECT_PATH%/build && cmake .."
pause
goto MENU

:BUILD
if not exist build (
    echo Build folder does not exist. Please run [1] Configure first.
    pause
    goto MENU
)
echo --- Building the project...
bash -lc "cd %PROJECT_PATH%/build && cmake --build ."
pause
goto MENU

:CLEAN
echo --- Cleaning build folder...
bash -lc "cd %PROJECT_PATH% && rm -rf build"
echo Done.
pause
goto MENU

:RUN
if not exist build\%EXECUTABLE% (
    echo %EXECUTABLE% not found. Please build the project first.
    pause
    goto MENU
)
echo --- Running %EXECUTABLE% ---
echo.
build\%EXECUTABLE%
echo.
pause
goto MENU
