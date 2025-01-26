# MedtingPot

A content aggregation and distribution platform that acts as a digital melting pot for various
content sources.

## Overview

MedtingPot (a wordplay on "melting pot") is designed to be your central hub for content aggregation
and distribution. Just as a melting pot combines different elements into a harmonious blend,
MedtingPot pulls content from diverse sources and transforms them into a unified stream that can be
distributed across multiple channels.

## Project Structure

```
apps/
  ├── medtingpot_core/      # Core API and content processing
  └── [more apps to come]   # Future applications
```

### Core Application (medtingpot_core)

- REST API for content management
- SQLite database for data persistence
- Event-driven architecture using Phoenix
- JSON-based communication

## Technology Stack

### Core Technologies

- **Elixir**: Powers the application logic, leveraging the BEAM virtual machine to handle:

  - Concurrent content processing
  - Fault-tolerant event handling
  - Real-time data transformations
  - Scalable content distribution

- **Phoenix Framework**: Modern web framework for building robust web applications:

  - Real-time features with Phoenix Channels
  - LiveView for interactive UI without JavaScript
  - Built-in WebSocket support
  - High-performance HTTP server
  - API endpoints for content distribution

- **SQLite**: Lightweight and reliable database system for:
  - Content storage and management
  - Event tracking and history
  - Relationship mapping between different content sources
  - Efficient querying and data retrieval

The choice of Elixir with Phoenix Framework ensures robust performance in our event-heavy
architecture, making it ideal for processing and distributing content from multiple sources
simultaneously. Phoenix's real-time capabilities perfectly complement the event-driven nature of the
application, while SQLite provides a solid foundation for data persistence and complex querying
capabilities.

## Repository Management

This repository is managed using:

- **npm/JavaScript**: Tools and scripts for repository maintenance:
  - Automated release management
  - Commit message standardization
  - Repository workflow automation
  - Development process tooling
  - Version control helpers

## Development Setup

### Prerequisites

- Elixir
- Phoenix Framework
- Node.js & npm (for repository management)

### Getting Started

1. Install dependencies:

   ```bash
   # Install repository management tools
   npm install

   # Install Elixir dependencies (in each app directory)
   cd apps/medtingpot_core
   mix deps.get
   ```

2. Set up the database:

   ```bash
   cd apps/medtingpot_core
   mix ecto.setup
   ```

3. Start the Phoenix server:

   ```bash
   cd apps/medtingpot_core
   mix phx.server
   ```

The API will be available at `http://localhost:4000/api`

### Repository Management

This repository uses several tools to maintain code quality and consistency:

#### Commit Messages

We use conventional commits to standardize commit messages. Instead of `git commit`, use:

```bash
npm run commit
```

This will prompt you for:

- Type of change (feat, fix, docs, etc.)
- Scope of change
- Description
- Breaking changes
- Issues affected

#### Code Formatting

JavaScript and Markdown files are automatically formatted using Prettier before each commit. To
manually format files:

```bash
npm run format
```

#### Versioning

For release management:

```bash
npm run release
```

This will:

- Update version numbers
- Generate CHANGELOG.md
- Create a git tag

## Features

### Current Implementation

- **Notion Integration**: Primary data source for content aggregation
- **Content Processing**: Transform Notion content into a standardized format
- **Distribution Pipeline**: Prepare content for multi-channel distribution

### Future Plans

- Integration with additional content sources
- Enhanced content blending capabilities
- Support for more distribution channels:
  - Blog platforms
  - Social media
  - And more...

## Purpose

The main goal of MedtingPot is to simplify content management and distribution by:

1. Eliminating the need to manually gather content from multiple sources
2. Providing a single point of control for content distribution
3. Ensuring consistency across different publishing channels

## Getting Started

[Coming soon]

## Contributing

[Coming soon]

## License

[Coming soon]

---

_MedtingPot - Where Content Sources Blend Together_
