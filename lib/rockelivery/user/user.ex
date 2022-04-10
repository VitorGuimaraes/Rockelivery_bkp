defmodule Rockelivery.User do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}

  @required_params [:age, :address, :cep, :cpf, :email, :password_hash, :name]

  schema "users" do
    field :age, :integer
    field :address, :string
    field :cep, :string
    field :cpf, :string
    field :email, :string
    field :password_hash, :string
    field :name, :string

    timestamps()
  end

  # Changeset receives a struct and it can make data casts for
  # make inserts in the struct, make validations and modifications
  def changeset(params) do
    %__MODULE__{} # struct with the name of the module: %Rockelivery.User{}
    |> cast(params, @required_params) # receive the params of changeset function and make a cast to the x fields

  end
end
