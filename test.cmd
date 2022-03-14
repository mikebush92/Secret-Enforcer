@echo off
if not exist "users" mkdir  "users"
echo "Hello World">users:test.txt
pause
cls
echo Press 1 to view in notepad, 2 to extract.
set /p ans="Enter Number:"
if %ans%==1  (goto 1) if %ans%==2  (goto 2) else (goto exit)

:1
notepad users:test.txt
exit

:2
expand users
exit

:exit
exit
