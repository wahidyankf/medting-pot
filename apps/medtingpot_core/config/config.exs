import Config

config :medtingpot_core,
  ecto_repos: [MedtingpotCore.Repo]

# Configure the endpoint
config :medtingpot_core, MedtingpotCore.Endpoint,
  url: [host: "localhost"],
  render_errors: [
    formats: [json: MedtingpotCore.ErrorJSON],
    layout: false
  ],
  pubsub_server: MedtingpotCore.PubSub,
  live_view: [signing_salt: "YOUR_LIVE_VIEW_SIGNING_SALT"]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
