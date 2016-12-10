defmodule Contracts.Repo.Migrations.AddDivisions do
  use Ecto.Migration

  def change do
    create table(:divisions) do
      add :name, :string
      add :code, :string
      add :contact_name, :string
      add :contact_email, :string
      add :contact_phone, :string

      timestamps()
    end
  end
end
