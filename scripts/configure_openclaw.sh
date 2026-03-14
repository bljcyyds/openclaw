#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
CONFIG_DIR="$ROOT_DIR/config"
TARGET_FILE="$CONFIG_DIR/openclaw.yaml"

HOST="${OPENCLAW_HOST:-127.0.0.1}"
PORT="${OPENCLAW_PORT:-8080}"
AUTH_ENABLED="${OPENCLAW_AUTH_ENABLED:-false}"
AUTH_TOKEN="${OPENCLAW_AUTH_TOKEN:-}"
STORAGE_PATH="${OPENCLAW_STORAGE_PATH:-./data}"
LOG_LEVEL="${OPENCLAW_LOG_LEVEL:-info}"

mkdir -p "$CONFIG_DIR"

cat > "$TARGET_FILE" <<YAML
server:
  host: "$HOST"
  port: $PORT

auth:
  enabled: $AUTH_ENABLED
  token: "$AUTH_TOKEN"

storage:
  path: "$STORAGE_PATH"

logging:
  level: "$LOG_LEVEL"
YAML

echo "配置已生成: $TARGET_FILE"
