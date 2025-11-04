@echo off
echo ============================================
echo TP Document Divider System Setup
echo ============================================
echo.

REM Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo [ERROR] Python is not installed!
    echo.
    echo Please install Python 3.8 or higher from:
    echo https://www.python.org/downloads/
    echo.
    echo Make sure to check "Add Python to PATH" during installation!
    pause
    exit /b 1
)

echo [1/4] Python detected:
python --version
echo.

REM Check if templates folder exists
if not exist "templates" (
    echo [2/4] Creating templates folder...
    mkdir templates
) else (
    echo [2/4] Templates folder exists
)
echo.

REM Check if index.html exists in templates
if not exist "templates\index.html" (
    echo [WARNING] index.html not found in templates folder!
    echo Please make sure index.html is in the templates\ folder
    echo.
)

REM Install dependencies
echo [3/4] Installing Python packages...
pip install Flask python-docx flask-cors
if errorlevel 1 (
    echo [ERROR] Failed to install packages!
    pause
    exit /b 1
)
echo.

echo [4/4] Starting TP Document Divider System...
echo.
echo ============================================
echo SERVER STARTING
echo ============================================
echo.
echo The application will open at: http://localhost:5000
echo.
echo To stop the server: Press CTRL+C
echo.
echo ============================================
echo.

REM Run the Flask app
python app.py

pause
