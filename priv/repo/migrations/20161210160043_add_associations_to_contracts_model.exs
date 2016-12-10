defmodule Contracts.Repo.Migrations.AddAssociationsToContractsModel do
  use Ecto.Migration

  def change do
    alter table(:contracts) do
      add :organization_id, references(:organizations)
      add :division_id, references(:divisions)
    end
  end
end
