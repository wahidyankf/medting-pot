#!/bin/bash

# Exit on any error
set -e

# Function to run tests for an Elixir app
run_elixir_tests() {
  local app_dir="$1"
  echo "Running tests for $app_dir..."
  cd "$app_dir"
  
  # Compile and run tests in test environment
  MIX_ENV=test mix do compile --warnings-as-errors, test

  # Return to original directory
  cd - > /dev/null
}

# Get the directory where the script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"

# Run tests for each Elixir app
for app in "$PROJECT_ROOT"/apps/*; do
  if [ -d "$app" ]; then
    run_elixir_tests "$app"
  fi
done
