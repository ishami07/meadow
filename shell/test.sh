#!/usr/bin/env bash
# scripts/test.sh
# Run unit & integration tests

set -euo pipefail

echo "🧪 Running tests..."
npm run test -- --coverage
