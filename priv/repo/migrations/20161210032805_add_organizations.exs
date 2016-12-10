defmodule Contracts.Repo.Migrations.AddOrganizations do
  use Ecto.Migration

  def change do
    create table(:organizations) do
      add :name, :string
      add :contact_name, :string
      add :contact_email, :string
      add :contact_phone, :string

      timestamps()
    end
  end
end
