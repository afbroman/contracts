defmodule Contracts.ContractController do
  use Contracts.Web, :controller

  alias Contracts.Contract


  def index(conn, _params) do
    contracts = Repo.all(Contract)
    render conn, "index.html", contracts: contracts
  end
end
