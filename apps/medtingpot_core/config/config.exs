import Config

config :medtingpot_core,
  ecto_repos: [MedtingpotCore.Repo]

# Configures the endpoint
config :medtingpot_core, MedtingpotCore.Endpoint,
  url: [host: "localhost"],
  adapter: Phoenix.Endpoint.Cowboy2Adapter,
  render_errors: [
    formats: [html: MedtingpotCore.ErrorHTML, json: MedtingpotCore.ErrorJSON],
    layout: false
  ],
  pubsub_server: MedtingpotCore.PubSub,
  live_view: [signing_salt: "YOUR_LIVE_VIEW_SIGNING_SALT"]

# Configure esbuild (the version is required)
config :esbuild,
  version: "0.17.11",
  default: [
    args:
      ~w(js/app.js --bundle --target=es2017 --outdir=../priv/static/assets --external:/fonts/* --external:/images/*),
    cd: Path.expand("../assets", __DIR__),
    env: %{"NODE_PATH" => Path.expand("../deps", __DIR__)}
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
