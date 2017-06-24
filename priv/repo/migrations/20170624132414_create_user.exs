defmodule Userlist.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :active, :boolean, default: false, null: false

      timestamps()
    end

  end
end
