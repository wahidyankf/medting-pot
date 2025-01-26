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

The core application provides:

- REST API for content management
- Phoenix LiveView for real-time UI updates
- SQLite database for data persistence
- Event-driven architecture
- Telemetry integration for metrics
- Comprehensive test coverage (>90%)

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
  - Telemetry for metrics and monitoring

- **SQLite**: Lightweight and reliable database system for:
  - Content storage and management
  - Event tracking and history
  - Relationship mapping between different content sources
  - Efficient querying and data retrieval

## Development

### Code Quality

We maintain high code quality standards through:

- **Testing**:

  - Minimum test coverage requirement: 80%
  - Current test coverage: >90%
  - Comprehensive test suites for all components
  - Pre-push hooks to enforce coverage requirements

- **Automation**:

  - Automated code formatting
  - Git hooks for code quality checks
  - Continuous integration pipelines

- **Monitoring**:
  - Telemetry integration for metrics
  - Performance monitoring
  - Error tracking

### Getting Started

1. Clone the repository:

   ```bash
   git clone https://github.com/yourusername/medting-pot.git
   cd medting-pot
   ```

2. Set up the core application:

   ```bash
   cd apps/medtingpot_core
   mix deps.get
   mix ecto.setup
   ```

3. Start the server:

   ```bash
   mix phx.server
   ```

4. Visit [`localhost:4000`](http://localhost:4000) to see the application.

## Current Features

- **Content Management**:

  - Basic API endpoints
  - LiveView-powered UI
  - JSON response format

- **Monitoring**:
  - Phoenix metrics
  - VM metrics
  - Performance tracking

## Contributing

1. Fork the repository
2. Create your feature branch
3. Write tests for your changes
4. Ensure test coverage remains above 80%
5. Create a pull request

## License

This project is licensed under the MIT License - see the LICENSE file for details.
