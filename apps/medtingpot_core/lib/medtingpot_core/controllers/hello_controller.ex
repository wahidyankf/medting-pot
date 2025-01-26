defmodule MedtingpotCore.HelloController do
  use Phoenix.Controller

  def index(conn, _params) do
    json(conn, %{message: "Hello from MedtingPot Core!"})
  end
end
