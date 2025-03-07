@echo off
set /p remote_computer=Enter the IP address or hostname of the remote laptop: 
set /p folder_name=Enter the shared folder name (e.g., "SharedFolder"): 
set /p drive_letter=Enter the drive letter to map (e.g., "Z"): 

:: Map the shared folder to a network drive
net use %drive_letter% \\%remote_computer%\%folder_name%

:: Open the shared folder in File Explorer
start %drive_letter%:

pause
