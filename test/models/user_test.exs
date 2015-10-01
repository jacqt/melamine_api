defmodule Melamine.UserTest do
  use Melamine.ModelCase

  alias Melamine.User

  @valid_attrs %{auth_tokens: [], email: "some content", facebook_id: "some content", facebook_token: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end
end
