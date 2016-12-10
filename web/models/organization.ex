defmodule Contracts.Organization do
  use Contracts.Web, :model

  schema "organizations" do
    field :name, :string
    field :contact_name, :string
    field :contact_email, :string
    field :contact_phone, :string

    has_many :contracts, Contracts.Contract

    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    #|> cast(params, [:content])
    #|> validate_required([:content])
  end
end



