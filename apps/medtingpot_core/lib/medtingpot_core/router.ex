defmodule MedtingpotCore.Router do
  use Phoenix.Router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", MedtingpotCore do
    pipe_through :api

    get "/hello", HelloController, :index
  end
end
