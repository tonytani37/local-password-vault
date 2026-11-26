#!/bin/sh
cd "$(dirname "$0")"

# =================================================================
# Cloudflare R2 同期を使う場合は、事前にターミナルで
# 「node ./server.mjs --setup-r2」を実行してDB内に暗号化保存してください。
# =================================================================

echo "Password Vault を起動しています..."
echo "終了するときは Ctrl+C を押してください。"
echo ""

(sleep 2 && (open "http://localhost:3000" 2>/dev/null || xdg-open "http://localhost:3000" 2>/dev/null)) &

node ./server.mjs