@echo off
chcp 65001 > nul
echo start password manger
cd /d "%~dp0"

start "" /b cmd /c "timeout /t 2 /nobreak > nul && start http://localhost:3000"

".\node.exe" .\server.mjs

pause