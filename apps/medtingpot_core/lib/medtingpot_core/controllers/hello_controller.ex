defmodule MedtingpotCore.HelloController do
  use Phoenix.Controller

  def hello(conn, _params) do
    case conn.method do
      method when method in ["GET", "HEAD"] ->
        conn
        |> put_resp_header("allow", "GET, HEAD")
        |> json(%{message: "Hello from MedtingPot Core!"})

      _ ->
        conn
        |> put_resp_header("allow", "GET, HEAD")
        |> put_status(:method_not_allowed)
        |> json(%{error: "Method not allowed"})
    end
  end
end
