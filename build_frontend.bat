@echo off
echo ==========================================
echo      Generating Frontend "Key" (Build)
echo ==========================================

:: Add detected Node.js path to environment for this session
set "PATH=%PATH%;C:\Program Files\Microsoft Visual Studio\18\Community\MSBuild\Microsoft\VisualStudio\NodeJs"

cd frontend

echo [1/2] Installing dependencies...
call npm install
if %errorlevel% neq 0 (
    echo.
    echo ERROR: Could not install dependencies.
    pause
    exit /b
)

echo.
echo [2/2] Building the project...
call npm run build
if %errorlevel% neq 0 (
    echo.
    echo ERROR: Build failed.
    pause
    exit /b
)

echo.
echo ==========================================
echo    SUCCESS! "The Key" is ready.
echo ==========================================
echo.
echo The build files are in: frontend\dist
echo.
echo Please send the 'frontend\dist' folder to your backend developer.
echo.
pause
