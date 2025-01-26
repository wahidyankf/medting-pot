import Config

# Configure your database
config :medtingpot_core, MedtingpotCore.Repo,
  database: Path.expand("../medtingpot_core_test.db", Path.dirname(__ENV__.file)),
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :medtingpot_core, MedtingpotCore.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "YOUR_TEST_SECRET_KEY_BASE",
  server: false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
