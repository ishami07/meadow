#!/usr/bin/env bash
# scripts/deploy.sh
# Build + deploy to Vercel

set -euo pipefail

if ! command -v vercel &> /dev/null; then
  echo "❌ Vercel CLI not found! Please install with 'npm i -g vercel'."
  exit 1
fi

echo "📦 Building project..."
npm run build

echo "🚀 Deploying to Vercel..."
vercel --prod

echo "✅ Deployment complete."
