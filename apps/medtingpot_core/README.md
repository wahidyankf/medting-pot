# MedtingPot Core

Core API and content processing service for the MedtingPot platform. This service handles content
aggregation, processing, and distribution through a REST API interface.

## Features

- REST API for content management
- SQLite database for data persistence
- Event-driven architecture
- JSON-based communication

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

- `GET /api/hello` - Test endpoint that returns a welcome message
- More endpoints coming soon...

## Development

### Running Tests

```bash
mix test
```

### Code Quality

The project uses various tools to maintain code quality:

- ExUnit for testing
- Credo for static code analysis (coming soon)
- Dialyzer for type checking (coming soon)

### Project Structure

```
lib/
├── medtingpot_core/
│   ├── application.ex     # Application supervisor and configuration
│   ├── repo.ex           # Database repository
│   ├── router.ex         # API routes definition
│   ├── endpoint.ex       # HTTP endpoint configuration
│   ├── telemetry.ex      # Metrics and monitoring
│   └── controllers/      # API controllers
│       └── hello_controller.ex
test/                     # Test files
config/                   # Environment configuration
  ├── config.exs          # Shared configuration
  ├── dev.exs            # Development configuration
  └── test.exs           # Test configuration
```

## Configuration

The application can be configured through environment variables or config files:

### Database

SQLite database configuration in `config/dev.exs`:

```elixir
config :medtingpot_core, MedtingpotCore.Repo,
  database: Path.expand("../medtingpot_core_dev.db", Path.dirname(__ENV__.file))
```

### Server

Server configuration in `config/dev.exs`:

```elixir
config :medtingpot_core, MedtingpotCore.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4000],
  check_origin: false,
  code_reloader: true,
  debug_errors: true
```

## Contributing

Please refer to the main repository's CONTRIBUTING.md file for guidelines.

## License

This project is part of MedtingPot. Please refer to the main repository's LICENSE file.
