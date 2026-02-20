@echo off
echo ==========================================
echo      Starting Frontend Preview
echo ==========================================

:: Add detected Node.js path to environment for this session
set "PATH=%PATH%;C:\Program Files\Microsoft Visual Studio\18\Community\MSBuild\Microsoft\VisualStudio\NodeJs"

cd frontend

echo Installing dependencies (if needed)...
call npm install
if %errorlevel% neq 0 (
    echo.
    echo ERROR: Could not install dependencies.
    pause
    exit /b
)

echo.
echo Starting Development Server...
echo.
echo Once started, open your browser to: http://localhost:5173
echo.
call npm run dev
pause
