@echo off
chcp 65001 > nul
cd /d "%~dp0"

rem =================================================================
rem Cloudflare R2 同期を使う場合は、事前にコマンドプロンプトで
rem 「node.exe server.mjs --setup-r2」を実行してDB内に暗号化保存してください。
rem =================================================================

echo Password Vault を起動しています...
echo 終了するときはこの画面で Ctrl+C を押してください。
echo.

rem サーバー起動を2秒待ってから、裏で既定ブラウザを開く
start "" /b cmd /c "timeout /t 2 /nobreak > nul && start http://localhost:3000"

"%~dp0node.exe" "%~dp0server.mjs"
pause