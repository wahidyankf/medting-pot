# MedtingPot Core

Core API and content processing service for the MedtingPot platform. This service handles content
aggregation, processing, and distribution through a REST API interface.

## Features

- REST API for content management
- Phoenix LiveView for real-time UI updates
- SQLite database for data persistence
- Event-driven architecture
- JSON-based communication
- Telemetry integration for metrics and monitoring
- Comprehensive test coverage (>90%)

## Installation

```bash
# Install dependencies
mix deps.get

# Create and migrate database
mix ecto.setup
```

## Usage

Start the Phoenix server:

```bash
mix phx.server
```

The server will be available at [`localhost:4000`](http://localhost:4000).

### Available Endpoints

- `GET /` - LiveView-powered home page
- `GET /api/hello` - Test endpoint that returns a welcome message
- More endpoints coming soon...

## Development

### Running Tests

```bash
# Run tests in test environment
mix test

# Run tests with coverage report
mix coveralls

# Run tests with detailed coverage report
mix coveralls.html

# Run tests for specific files
mix test test/path/to/test.exs
```

### Code Quality

The project maintains high code quality standards:

- Minimum test coverage: 80%
- Current test coverage: >90%
- Pre-push hooks enforce test coverage requirements
- Automated testing for:
  - API endpoints
  - LiveView components
  - Error handling
  - Telemetry metrics

### Telemetry Metrics

The application includes comprehensive telemetry metrics:

- Phoenix metrics:
  - Endpoint timing
  - Router dispatch duration
  - Socket and channel metrics
- VM metrics:
  - Memory usage
  - Run queue lengths
  - CPU and IO metrics

### Directory Structure

```
lib/
├── medtingpot_core/
│   ├── controllers/     # API controllers
│   ├── live/           # LiveView modules
│   ├── components/     # Reusable UI components
│   └── telemetry.ex    # Telemetry configuration
test/
├── medtingpot_core/    # Test files
└── support/            # Test helpers and utilities
```

## Contributing

1. Fork the repository
2. Create your feature branch
3. Write tests for your changes
4. Ensure test coverage remains above 80%
5. Create a pull request

## License

This project is licensed under the MIT License - see the LICENSE file for details.
