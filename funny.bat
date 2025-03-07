@echo off
title Windows Terminal
color 0A
mode 80,25
echo Initializing...
ping -n 2 127.0.0.1 >nul
cls

:: Fake system check
echo Verifying system integrity...
ping -n 3 127.0.0.1 >nul
echo Done!
ping -n 2 127.0.0.1 >nul
cls

:: Start the funny loop
:loop
echo Hello, %USERNAME%. I see you.
ping -n 3 127.0.0.1 >nul
echo Are you alone? I'm always watching...
ping -n 3 127.0.0.1 >nul
echo Just kidding! Or am I? 
ping -n 3 127.0.0.1 >nul

:: Fake hacking effect
cls
echo Accessing classified files...
ping -n 2 127.0.0.1 >nul
echo Uploading personal data to the dark web...
ping -n 3 127.0.0.1 >nul
echo Just kidding! LOL.
ping -n 3 127.0.0.1 >nul
cls

:: Random funny message generator
set /a randmsg=%random% %% 5
if %randmsg%==0 echo I am your computer. Obey me.
if %randmsg%==1 echo What if I told you... your mouse is haunted?
if %randmsg%==2 echo Try turning me off. I dare you.
if %randmsg%==3 echo Your password is... incorrect. Just kidding.
if %randmsg%==4 echo I'm thinking... about world domination.

ping -n 4 127.0.0.1 >nul
goto loop
