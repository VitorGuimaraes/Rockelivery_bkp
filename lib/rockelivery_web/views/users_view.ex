defmodule RockeliveryWeb.UsersView do
  use RockeliveryWeb, :view

  alias Rockelivery.User

  def render("create.json", %{user: %User{} = user}) do
    %{
      message: "User created!",
      # If dont' use Jason.Encoder:
      # user: %{
      #   id: user.id,
      #   name: user.name
      # }
      user: user
    }
  end
end
