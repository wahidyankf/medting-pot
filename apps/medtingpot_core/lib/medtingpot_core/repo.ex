defmodule MedtingpotCore.Repo do
  use Ecto.Repo,
    otp_app: :medtingpot_core,
    adapter: Ecto.Adapters.SQLite3
end
