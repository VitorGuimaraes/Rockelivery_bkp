defmodule RockeliveryWeb.UsersController do
  # define that this file is a controller
  # "use" brings the resources of a controller for this Module
  use RockeliveryWeb, :controller

  alias Rockelivery.User
  def create(conn, params) do
    with {:ok, %User{} = user} <- Rockelivery.create_user(params) do
      conn
      |> put_status(:created)
      # our view have the same name of the controller, so we don't need
      # specify what view should be used. Otherwise, we should use:
      # put_view(ViewName)
      |> render("create.json", user: user)
    end
  end
end
