defmodule RockeliveryWeb.WelcomeController do
  # define that this file is a controller
  # "use" brings the resources of a controller for this Module
  use RockeliveryWeb, :controller

  # Actions receive a connection and params
  # params are received by url or body
  def index(conn, params) do
    conn
    |> IO.inspect()
    |> put_status(:ok)
    |> text("Welcome! :D")
  end
end
