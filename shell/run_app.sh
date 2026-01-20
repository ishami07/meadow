#!/usr/bin/env bash
set -euo pipefail

# run-app.sh ── usage: ./run-app.sh [dev|build|start]
MODE=${1:-dev}

case "$MODE" in
  dev)
    echo "🚀 Starting in development mode..."
    npm run dev
    ;;
  build)
    echo "🛠  Building for production..."
    npm run build
    ;;
  start)
    echo "🎬 Launching production build..."
    npm start
    ;;
  *)
    echo "Usage: $0 {dev|build|start}"
    exit 1
    ;;
esac
