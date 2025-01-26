defmodule MedtingpotCore.HelloControllerTest do
  use MedtingpotCore.ConnCase

  describe "GET /api/hello" do
    test "returns hello message", %{conn: conn} do
      conn = get(conn, "/api/hello")
      assert json_response(conn, 200) == %{"message" => "Hello from MedtingPot Core!"}
    end
  end
end
