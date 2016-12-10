defmodule Contracts.Repo.Migrations.AddContracts do
  use Ecto.Migration

  def change do
    create table(:contracts) do
      add :start_date, :date
      add :end_date, :date
      add :renewable, :boolean
      add :hourly_rate, :decimal
      add :half_day_rate, :decimal
      add :full_day_rate, :decimal

      timestamps()
    end
  end
end
