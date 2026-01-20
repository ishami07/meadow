#!/usr/bin/env bash
# scripts/db-migrate.sh
# Apply database migrations with supabase CLI

set -euo pipefail

echo "🚧 Running Supabase migrations..."
supabase db push

echo "✅ Database schema is up to date."
