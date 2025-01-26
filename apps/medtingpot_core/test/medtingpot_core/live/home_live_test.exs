defmodule MedtingpotCore.HomeLiveTest do
  use MedtingpotCore.ConnCase
  import Phoenix.LiveViewTest

  describe "GET /" do
    test "renders hello world", %{conn: conn} do
      {:ok, view, html} = live(conn, "/")
      assert html =~ "Hello World!"
      assert render(view) =~ "Hello World!"
    end
  end
end
