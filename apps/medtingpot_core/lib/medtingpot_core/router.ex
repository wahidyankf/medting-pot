defmodule MedtingpotCore.Router do
  use Phoenix.Router, helpers: true
  import Plug.Conn
  import Phoenix.Controller
  import Phoenix.LiveView.Router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, html: {MedtingpotCore.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", MedtingpotCore do
    pipe_through :browser

    live "/", HomeLive
  end

  scope "/api", MedtingpotCore do
    pipe_through :api

    match :*, "/hello", HelloController, :hello
  end
end
