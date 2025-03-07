@echo off
set /p shutdown_time=Enter the time to shutdown (HH:MM format): 
echo Your system will shutdown at %shutdown_time%.

:: Convert shutdown time to seconds
for /f "tokens=1,2 delims=:" %%a in ("%shutdown_time%") do (
    set /a hour=%%a
    set /a minute=%%b
)

:: Calculate the number of seconds until the shutdown time
set /a now_hour=%time:~0,2%
set /a now_minute=%time:~3,2%
set /a now_second=%time:~6,2%

set /a target_seconds=(%hour%*3600 + %minute%*60)
set /a current_seconds=(%now_hour%*3600 + %now_minute%*60 + %now_second%)

set /a delay_seconds=%target_seconds% - %current_seconds%

if %delay_seconds% LEQ 0 (
    echo The time has already passed for today. Please enter a future time.
    pause
    exit
)

:: Set the shutdown timer
shutdown /s /f /t %delay_seconds%
echo Shutdown scheduled in %delay_seconds% seconds.
pause
