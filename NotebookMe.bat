@echo off
setlocal
set "APP_HOME=%~dp0"
set "JAVA_EXE=%APP_HOME%runtime\bin\javaw.exe"

if not exist "%JAVA_EXE%" (
    echo Portable runtime is missing: %JAVA_EXE%
    pause
    exit /b 1
)

if not exist "%APP_HOME%data" mkdir "%APP_HOME%data"

start "" "%JAVA_EXE%" "-Dnotebookme.portable=true" "-Dnotebookme.dataDir=%APP_HOME%data" -jar "%APP_HOME%app\NotebookMe.jar" %*
