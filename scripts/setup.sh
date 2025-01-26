#!/bin/bash

# Install Hex package manager
mix local.hex --force

# Install rebar
mix local.rebar --force

# Get dependencies for the core app
cd apps/medtingpot_core
mix deps.get

echo "Setup complete!"
