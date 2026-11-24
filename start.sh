#!/bin/sh
cd "$(dirname "$0")"

# =================================================================
# [任意設定] Cloudflare R2 同期モードを使う場合は以下に値を記入してください
# （すべて空欄のまま起動すると、完全ローカル単体モードで動作します）
# =================================================================
export R2_ACCOUNT_ID=""
export R2_BUCKET=""
export R2_ACCESS_KEY_ID=""
export R2_SECRET_ACCESS_KEY=""
export R2_OBJECT_KEY="vault.db"

echo "Password Vault を起動しています..."
echo "終了するときは Ctrl+C を押してください。"
echo ""

(sleep 2 && (open "http://localhost:3000" 2>/dev/null || xdg-open "http://localhost:3000" 2>/dev/null)) &

node ./server.mjs