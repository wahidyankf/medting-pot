#!/bin/bash

# Exit on error
set -e

echo "Running test coverage check..."

# Change to the medtingpot_core directory
cd "$(dirname "$0")/../apps/medtingpot_core"

# Run tests with coverage and capture the total coverage from output
COVERAGE=$(mix coveralls | grep "\[TOTAL\]" | awk '{print $2}' | sed 's/%//')

# Get minimum required coverage from .coveralls.json
MIN_COVERAGE=$(cat .coveralls.json | jq '.coverage_options.minimum_coverage')

echo "Coverage: $COVERAGE% (minimum required: $MIN_COVERAGE%)"

if (($(echo "$COVERAGE < $MIN_COVERAGE" | bc -l))); then
  echo "❌ Test coverage is below the minimum requirement of $MIN_COVERAGE%"
  echo "Please add more tests to improve coverage."
  exit 1
else
  echo "✅ Test coverage meets the minimum requirement"
  exit 0
fi
