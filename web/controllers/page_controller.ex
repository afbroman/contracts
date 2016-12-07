defmodule Contracts.PageController do
  use Contracts.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
