#!/usr/bin/env bash
# status.sh — OpenClaw wrapper for the status command
# Triggered by: openclaw cron add --skill elementclaw --script status --schedule "0 8 * * *"

set -euo pipefail

SKILL_DIR="$(cd "$(dirname "$0")/.." && pwd)"
PROJECT_DIR="$(cd "$SKILL_DIR/.." && pwd)"

cd "$PROJECT_DIR"
exec bun run src/commands/status.ts
