defmodule Rockelivery.User do
  use Ecto.Schema
  import Ecto.Changeset

  alias Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}

  @required_params [:age, :address, :cep, :cpf, :email, :password, :name]

  schema "users" do
    field :age, :integer
    field :address, :string
    field :cep, :string
    field :cpf, :string
    field :email, :string
    field :password, :string, virtual: true # receive password but save in password_hash
    field :password_hash, :string
    field :name, :string

    timestamps()
  end

  # Changeset receives a struct and it can make data casts for
  # make inserts in the struct, make validations and modifications
  def changeset(params) do
    %__MODULE__{} # struct with the name of the module: %Rockelivery.User{}
    |> cast(params, @required_params)          # receive the params of changeset and make a cast to the fields
    |> validate_required(@required_params)
    |> validate_length(:password_hash, min: 6)
    |> validate_length(:cep, is: 8)
    |> validate_length(:cpf, is: 11)
    |> validate_number(:age, greater_than_or_equal_to: 18)
    |> validate_format(:email, ~r/@/)
    |> unique_constraint([:email]) # validate constraint
    |> unique_constraint([:cpf])   # validate constraint
    |> put_password_hash()
  end

  defp put_password_hash(%Changeset{valid?: true, changes: %{password: password}} = changeset) do
    change(changeset, Pbkdf2.add_hash(password))
  end

  defp put_password_hash(changeset), do: changeset

end
