defmodule MedtingpotCore.DataCaseTest do
  use ExUnit.Case

  alias MedtingpotCore.DataCase

  describe "errors_on/1" do
    test "translates changeset errors" do
      changeset =
        {%{}, %{name: :string}}
        |> Ecto.Changeset.cast(%{"name" => nil}, [:name])
        |> Ecto.Changeset.validate_required([:name])

      assert DataCase.errors_on(changeset) == %{name: ["can't be blank"]}
    end

    test "translates changeset errors with interpolated values" do
      changeset =
        {%{}, %{name: :string}}
        |> Ecto.Changeset.cast(%{"name" => "a"}, [:name])
        |> Ecto.Changeset.validate_length(:name, min: 3, message: "should be at least %{count} character(s)")

      assert DataCase.errors_on(changeset) == %{name: ["should be at least 3 character(s)"]}
    end
  end
end
