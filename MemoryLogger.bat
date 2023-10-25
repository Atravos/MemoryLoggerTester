@echo off
cls

:mainMenu
echo Main Menu
echo 1) Search application memory
echo 2) Exit

set /p option=Enter your selection then press enter:  
if %option%==1 goto classSearch
if %option%==2 goto quit

echo Invalid selection
PAUSE
goto mainMenu

:classSearch

set /p appMemory=Enter the number of maegabytes of memory usage you would like to search for: 
set /a result= %appMemory% * 1000
tasklist /FI "MEMUSAGE gt %result%"


echo going to end screen...
PAUSE
goto classEnding

:classEnding

echo End Screen!
echo 1) go back to Memory Search
echo 2) exit

set /p option=Enter your selection then press enter:  
if %option%==1 goto classSearch
if %option%==2 goto quit

echo Invalid selection, try again
PAUSE
goto classEnding

PAUSE
cls
