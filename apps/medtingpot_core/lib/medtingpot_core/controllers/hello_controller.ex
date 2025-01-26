defmodule MedtingpotCore.HelloController do
  use Phoenix.Controller

  def hello(conn, _params) do
    json(conn, %{message: "Hello from MedtingPot Core!"})
  end
end
