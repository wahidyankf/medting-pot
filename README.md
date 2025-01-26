# MedtingPot

[![Test](https://github.com/wahidyankf/medting-pot/actions/workflows/test.yml/badge.svg)](https://github.com/wahidyankf/medting-pot/actions/workflows/test.yml)

A content aggregation and distribution platform that acts as a digital melting pot for various
content sources.

## Overview

MedtingPot (a wordplay on "melting pot") is designed to be your central hub for content aggregation
and distribution. Just as a melting pot combines different elements into a harmonious blend,
MedtingPot pulls content from diverse sources and transforms them into a unified stream that can be
distributed across multiple channels.

## Technology Stack

- **Backend**

  - Elixir 1.15.7
  - Erlang/OTP 26.0.2
  - Phoenix Framework
  - Phoenix LiveView
  - SQLite3 (via Ecto)

- **Frontend**
  - Node.js 20.x (via Volta)
  - Phoenix Templates
  - TailwindCSS

## Development Tools

- **Version Control**

  - Git
  - Commitizen
  - Husky (Git Hooks)
  - Conventional Commits
  - Standard Version

- **Code Quality**
  - Prettier
  - GitHub Actions CI
  - ExUnit Test Framework
  - ExCoveralls (Test Coverage)

## Prerequisites

- [asdf](https://asdf-vm.com/) for Elixir/Erlang version management
- [Volta](https://volta.sh/) for Node.js version management
- [Git](https://git-scm.com/) for version control

## Getting Started

1. Clone the repository:

   ```bash
   git clone https://github.com/wahidyankf/medting-pot.git
   cd medting-pot
   ```

2. Install dependencies:

   ```bash
   # Install Elixir/Erlang versions
   asdf install
   
   # Install Node.js dependencies
   npm install
   
   # Install Elixir dependencies and setup the project
   ./scripts/setup.sh
   ```

3. Run tests:
   ```bash
   npm run test
   ```

## Project Structure

```
medting-pot/
├── apps/
│   └── medtingpot_core/    # Core Phoenix application
├── config/                  # Umbrella app configuration
├── scripts/                # Development scripts
│   ├── format.sh           # Code formatting
│   ├── setup.sh           # Project setup
│   └── test.sh            # Test runner
└── .github/
    └── workflows/          # GitHub Actions workflows
```

## Contributing

1. Create a feature branch from `main`
2. Make your changes
3. Run tests: `npm run test`
4. Commit changes using: `npm run commit`
5. Push and create a pull request

## License

This project is licensed under the MIT License - see the LICENSE file for details.
