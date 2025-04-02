@ECHO OFF

ECHO =============================
ECHO Start Generate Project Files
ECHO =============================

@ECHO OFF
where cmake > nul 2>&1
if %ERRORLEVEL% EQU 0 (
    ECHO CMake is installed on this system...
) else (
    ECHO CMake is not installed on this system...
    GOTO:EOF
)

SET VISUAL_STUDIO="Visual Studio 17 2022"

SET PROJECT_NAME=%1
if "%PROJECT_NAME%" == "" (
    ECHO Project name is empty...
    GOTO:EOF
) else (
    ECHO Project name is "%PROJECT_NAME%"...
)

SET RUN_OPTION=%2
if "%RUN_OPTION%" == "on" (
    SET RUN="on"
) else if "%RUN_OPTION%" == "On" (
    SET RUN="on"
) else if "%RUN_OPTION%" == "off" (
    SET RUN="off"
) else if "%RUN_OPTION%" == "Off" (
    SET RUN="off"
) else (
    SET RUN="off"
)
ECHO Switch %RUN% run Visual Studio Solution...

SET SOLUTION_PATH=%~dp0..\Solution

if not exist "%SOLUTION_PATH%" (
    mkdir "%SOLUTION_PATH%"
)

SET CURRENT_PATH=%~dp0

PUSHD "%CURRENT_PATH%"
PUSHD "%SOLUTION_PATH%"

cmake .. -G %VISUAL_STUDIO% -A "x64"

if %RUN% == "on" (
    start %PROJECT_NAME%.sln
)

POPD
POPD

ECHO =============================
ECHO Done Generate Project Files
ECHO =============================