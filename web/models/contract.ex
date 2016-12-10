defmodule Contracts.Contract do
  use Contracts.Web, :model

  schema "contracts" do
    field :start_date, Ecto.Date
    field :end_date, Ecto.Date
    field :renewable, :boolean
    field :hourly_rate, :decimal
    field :half_day_rate, :decimal
    field :full_day_rate, :decimal

    belongs_to :division, Contracts.Division
    belongs_to :organization, Contracts.Organization

    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    #|> cast(params, [:content])
    #|> validate_required([:content])
  end
end

