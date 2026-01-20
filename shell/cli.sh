#!/usr/bin/env bash
set -euo pipefail

# cli.sh ── usage: ./cli.sh <command>
# Commands: install, clean, dev, build, start, lint, format, help

COMMAND=${1:-help}

print_help() {
  cat << EOF
Usage: $0 <command>

Commands:
  install   Install dependencies (npm ci)
  clean     Remove node_modules and lockfile
  dev       Run Next.js in development mode
  build     Build for production
  start     Start production server
  lint      Run ESLint
  format    Run Prettier formatting
  help      Show this message
EOF
}

case "$COMMAND" in
  install)
    echo "📦 Installing dependencies..."
    npm ci
    ;;
  clean)
    echo "🧹 Cleaning project..."
    rm -rf node_modules package-lock.json yarn.lock
    ;;
  dev)
    echo "🚀 Starting development server..."
    npm run dev
    ;;
  build)
    echo "🛠  Building production bundle..."
    npm run build
    ;;
  start)
    echo "🎬 Launching production server..."
    npm start
    ;;
  lint)
    echo "🔍 Linting code..."
    npm run lint
    ;;
  format)
    echo "🎨 Formatting code..."
    npm run format
    ;;
  help|*)
    print_help
    ;;
esac
