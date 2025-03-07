@echo off
color 0a
cls
echo Loading...
:loop
echo Good Moring Guys... %random%
ping 127.0.0.1 -n 2 >nul
goto loop
