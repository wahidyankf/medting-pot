#!/bin/bash

# Function to check if a file should be formatted by Prettier
should_format_with_prettier() {
  local file="$1"
  case "$file" in
    *.md|*.json|*.js|*.jsx|*.ts|*.tsx|*.yml|*.yaml)
      return 0
      ;;
    *)
      return 1
      ;;
  esac
}

# Function to check if a file should be formatted by mix format
should_format_with_mix() {
  local file="$1"
  case "$file" in
    *.ex|*.exs)
      return 0
      ;;
    *)
      return 1
      ;;
  esac
}

# Collect files for each formatter
prettier_files=()
elixir_files=()

for file in "$@"; do
  if should_format_with_prettier "$file"; then
    prettier_files+=("$file")
  elif should_format_with_mix "$file"; then
    elixir_files+=("$file")
  fi
done

# Format with Prettier if there are matching files
if [ ${#prettier_files[@]} -ne 0 ]; then
  npx prettier --write "${prettier_files[@]}" 2>/dev/null || true
fi

# Format Elixir files if there are any
if [ ${#elixir_files[@]} -ne 0 ]; then
  cd "$(dirname "$0")/../apps/medtingpot_core" || exit 1
  for file in "${elixir_files[@]}"; do
    rel_path="../../$file"
    if [ -f "$rel_path" ]; then
      mix format "$rel_path" || exit 1
    fi
  done
fi
