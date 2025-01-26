defmodule MedtingpotCore.HelloControllerTest do
  use MedtingpotCore.ConnCase
  require Phoenix.ConnTest

  describe "GET /api/hello" do
    test "returns hello message with 200 status", %{conn: conn} do
      conn = get(conn, "/api/hello")
      assert json_response(conn, 200) == %{"message" => "Hello from MedtingPot Core!"}
    end

    test "returns json content type", %{conn: conn} do
      conn = get(conn, "/api/hello")
      assert get_resp_header(conn, "content-type") == ["application/json; charset=utf-8"]
    end

    test "handles HEAD request", %{conn: conn} do
      conn = head(conn, "/api/hello")
      assert response(conn, 200) == ""
      assert get_resp_header(conn, "content-type") == ["application/json; charset=utf-8"]
    end

    test "returns 404 for non-existent route", %{conn: conn} do
      conn = get(conn, "/api/nonexistent")
      assert conn.status == 404
    end

    test "accepts only GET and HEAD methods", %{conn: conn} do
      for method <- ["POST", "PUT", "PATCH", "DELETE"] do
        conn = conn
        |> Map.put(:method, method)
        |> dispatch("/api/hello", "")

        assert json_response(conn, 405) == %{"error" => "Method not allowed"}
        assert get_resp_header(conn, "allow") == ["GET, HEAD"]
      end
    end
  end

  defp dispatch(conn, path, body) do
    conn
    |> Map.put(:request_path, path)
    |> Map.put(:path_info, String.split(path, "/", trim: true))
    |> Map.put(:body_params, body)
    |> MedtingpotCore.Router.call([])
  end
end
