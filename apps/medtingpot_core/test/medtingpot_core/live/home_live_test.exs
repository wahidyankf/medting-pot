defmodule MedtingpotCore.HomeLiveTest do
  use MedtingpotCore.ConnCase
  import Phoenix.LiveViewTest

  describe "GET /" do
    test "renders hello world", %{conn: conn} do
      {:ok, view, html} = live(conn, "/")
      assert html =~ "Hello World!"
      assert render(view) =~ "Hello World!"
    end

    test "returns html content type", %{conn: conn} do
      conn = get(conn, "/")
      assert get_resp_header(conn, "content-type") == ["text/html; charset=utf-8"]
    end

    test "maintains connection after initial load", %{conn: conn} do
      {:ok, view, _html} = live(conn, "/")
      assert view.pid != nil
      assert view.module == MedtingpotCore.HomeLive
      assert Process.alive?(view.pid)
    end

    test "handles disconnection gracefully", %{conn: conn} do
      {:ok, view, _html} = live(conn, "/")
      assert render(view) =~ "Hello World!"
      
      # Simulate a disconnect
      :ok = GenServer.stop(view.pid)
      refute Process.alive?(view.pid)
    end

    test "returns 404 for non-existent live routes", %{conn: conn} do
      conn = get(conn, "/nonexistent")
      assert conn.status == 404
    end
  end
end
