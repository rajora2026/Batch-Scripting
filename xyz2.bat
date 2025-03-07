batch
@echo off
set /p remote_computer=Enter the IP address or hostname of the remote laptop: 
set /p folder_name=Enter the shared folder name (e.g., "SharedFolder"): 

:: Open the shared folder directly
start \\%remote_computer%\%folder_name%

pause