defmodule MedtingpotCore.ErrorJSONTest do
  use MedtingpotCore.ConnCase, async: true

  test "renders 404.json" do
    assert MedtingpotCore.ErrorJSON.render("404.json", %{}) == %{
             errors: %{detail: "Not Found"}
           }
  end

  test "renders 500.json" do
    assert MedtingpotCore.ErrorJSON.render("500.json", %{}) == %{
             errors: %{detail: "Internal Server Error"}
           }
  end

  test "renders 400.json" do
    assert MedtingpotCore.ErrorJSON.render("400.json", %{}) == %{
             errors: %{detail: "Bad Request"}
           }
  end
end
