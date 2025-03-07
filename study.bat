@echo off
title Study Assistant
color 0B
mode 100,30
cls

:menu
echo ==============================================
echo           Welcome to Study Assistant
echo ==============================================
echo 1. Take Notes
echo 2. Quick Math Calculator
echo 3. Random Motivational Quote
echo 4. Exit
echo ==============================================
set /p choice=Enter your choice (1-4): 

if "%choice%"=="1" goto notes
if "%choice%"=="2" goto calculator
if "%choice%"=="3" goto quotes
if "%choice%"=="4" exit
cls
goto menu

:: Note-Taking Section
:notes
cls
echo ==============================================
echo                 Note-Taking
echo ==============================================
set /p note=Type your note: 
echo %date% %time% - %note% >> notes.txt
echo Note saved successfully! (Check "notes.txt")
pause
cls
goto menu

:: Simple Calculator
:calculator
cls
echo ==============================================
echo                 Quick Math
echo ==============================================
set /p num1=Enter first number: 
set /p op=Enter operator (+, -, *, /): 
set /p num2=Enter second number: 
set /a result=%num1% %op% %num2%
echo Result: %result%
pause
cls
goto menu

:: Motivational Quotes Section
:quotes
cls
echo ==============================================
echo          Random Motivational Quote
echo ==============================================
set /a rand=%random% %% 5
if %rand%==0 echo "Success is not final, failure is not fatal: It is the courage to continue that counts."
if %rand%==1 echo "The secret of getting ahead is getting started."
if %rand%==2 echo "Believe you can and you're halfway there."
if %rand%==3 echo "The best way to predict the future is to create it."
if %rand%==4 echo "Don't watch the clock; do what it does. Keep going."
pause
cls
goto menu
