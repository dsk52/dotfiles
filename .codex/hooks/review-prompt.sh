#!/usr/bin/env sh

input="$(cat)"
prompt="$(printf '%s' "$input" | jq -r '.prompt // ""')"

case "$prompt" in
  *レビュー*|*review*|*コードレビュー*)
      cat <<'EOF'
コードレビューでは複数のサブエージェントを並列で使用し、異なる観点を割り当てる。
メインエージェントは同じレビューを重複して行わず、各レビュー結果を実コードに照らして検証・統合する。
最低限、correctness / regression / edge cases / 既存仕様との整合性と、tests / maintainability / security / performance の観点を分担する。
根拠が弱い指摘、重複、false positive は最終結果から除外する。
問題がなければ無理に指摘を作らない。
EOF
    ;;
esac