defmodule GamesWeb.PageController do
  use GamesWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
