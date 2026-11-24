@echo off
chcp 65001 > nul
cd /d "%~dp0"

rem =================================================================
rem [任意設定] Cloudflare R2 同期モードを使う場合は以下に値を記入してください
rem （すべて空欄のまま起動すると、完全ローカル単体モードで動作します）
rem =================================================================
set "R2_ACCOUNT_ID="
set "R2_BUCKET="
set "R2_ACCESS_KEY_ID="
set "R2_SECRET_ACCESS_KEY="
set "R2_OBJECT_KEY=vault.db"

echo Password Vault を起動しています...
echo 終了するときはこの画面で Ctrl+C を押してください。
echo.

rem サーバー起動（R2同期通信を含む）を2秒待ってから、裏で既定ブラウザを開く
start "" /b cmd /c "timeout /t 2 /nobreak > nul && start http://localhost:3000"

"%~dp0node.exe" "%~dp0server.mjs"
pause