@echo off

:restart
echo Starting notNotOdd...
node index.js

if %ERRORLEVEL%==0 (
    REM If the exit code is 0, the script exited normally
    echo Script exited normally.
    exit
) else (
    REM Account for heisenbugs
    echo Script crashed with exit code %ERRORLEVEL%, restarting in 5 seconds...
    REM Wait for 5 seconds before restarting the script
    timeout /t 5
    REM Go back to the start of the script to restart
    goto restart
)
