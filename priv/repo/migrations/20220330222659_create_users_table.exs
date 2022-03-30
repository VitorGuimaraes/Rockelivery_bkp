# Migration files maps how the database is builded
# It creates the migration file with a timestamp, that is used by Ecto
# for know the order of creation of the tables

defmodule Rockelivery.Repo.Migrations.CreateUsersTable do
  use Ecto.Migration

  # Ecto knows how to rollback everything created inside of "change" function
  # Maybe you find "up" and "down" functions for specify what to do when make
  # a migration or rollback changes, but you can use only "change" function.

  # Ecto create IDs automatically as int type
  # A good practice is use UUID. Configure it in "config.exs"
  def change do
    create table :users do
      add :address, :string
      add :age, :integer
      add :cep, :string
      add :cpf, :string
      add :email, :string
      add :password_hash, :string
      add :name, :string

      # add the columns "inserted_at" and "updated_at"
      timestamps()
    end
    # define unique columns
    # creating the indexes separated facilitates to build error messages
    create unique_index(:users, [:cpf])
    create unique_index(:users, [:email])
  end
end
