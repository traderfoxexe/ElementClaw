#!/usr/bin/env bash
# scan.sh — OpenClaw wrapper for the scan command
# Triggered by: openclaw cron add --skill elementclaw --script scan --schedule "*/1 * * * *"

set -euo pipefail

SKILL_DIR="$(cd "$(dirname "$0")/.." && pwd)"
PROJECT_DIR="$(cd "$SKILL_DIR/.." && pwd)"

cd "$PROJECT_DIR"
exec bun run src/commands/scan.ts
