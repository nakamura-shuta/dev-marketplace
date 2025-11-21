#!/bin/bash

# マイグレーションファイルかどうかチェック
if echo "$CLAUDE_TOOL_INPUT" | grep -q "migrations/.*\.sql"; then
    echo "⚠️  データベースマイグレーション実行前の確認:" >&2
    echo "  - ロールバック手順は準備済みですか？" >&2
    echo "  - バックアップは取得しましたか？" >&2
    echo "  - 影響範囲を確認しましたか？" >&2
    exit 1
fi

# マイグレーションファイルでない場合は静かに通過
exit 0