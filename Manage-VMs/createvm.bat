@echo off
cd /d "C:\Program Files\Oracle\VirtualBox"

setlocal
echo Creating a new VM
echo.
set /p vmName=Enter the name for the new VM: 
set /p osType="Enter the OS type (e.g., Windows10_64, Ubuntu_64): "
VBoxManage createvm --name %vmName% --ostype %osType% --register

echo.
echo Would you like to Modify any VM? (Y/n)
set /p modify=
if "%modify%" == "y" (
    call "%~dp0modifyVM.bat"
) else (
    goto end
)
:end
