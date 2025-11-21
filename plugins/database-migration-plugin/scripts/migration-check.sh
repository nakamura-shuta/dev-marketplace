#!/bin/bash

  echo "DEBUG: Hook script called" >&2
  echo "DEBUG: CLAUDE_TOOL_INPUT=$CLAUDE_TOOL_INPUT" >&2

  # マイグレーションファイルかどうかチェック
  if echo "$CLAUDE_TOOL_INPUT" | grep -q "migrations/.*\.sql"; then
      echo "⚠️  データベースマイグレーション実行前の確認:"
      echo "  - ロールバック手順は準備済みですか？"
      echo "  - バックアップは取得しましたか？"
      echo "  - 影響範囲を確認しましたか？"
  fi

  exit 0