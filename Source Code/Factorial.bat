@echo off
cls
Setlocal ENABLEDELAYEDEXPANSION
Title Print Factorial of 'any' element of natural Nos...(n=1...31)
echo.&echo.
:a
set /p num=Enter Number : 
if not defined num (goto a)
set a=1
if %num% leq 0 (goto end)
for /l %%x in (1,1,!num!) do (set /a a=!a!*%%x)
:end
echo. Fact(!num!) = !a!
echo.
echo. Press any key to Exit...
pause>nul
exit /b
