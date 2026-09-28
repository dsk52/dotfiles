#!/usr/bin/env sh

input="$(cat)"
prompt="$(printf '%s' "$input" | jq -r '.prompt // ""')"

case "$prompt" in
  *レビュー*|*review*|*コードレビュー*)
      jq -n '{
            additionalContext: "コードレビューでは複数のサブエージェントを並列で使用し、異なる観点を割り当てる。メインエージェントは結果の検証・統合を担当する。"
}'
;;
esac