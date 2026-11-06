#!/bin/bash
cd "$(dirname "$0")"

echo "echo start password manger"

if command -v open > /dev/null; then
  (sleep 2 && open http://localhost:3000) &
elif command -v xdg-open > /dev/null; then
  (sleep 2 && xdg-open http://localhost:3000) &
fi

node server.js
