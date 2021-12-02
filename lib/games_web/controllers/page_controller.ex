defmodule GamesWeb.PageController do
  use GamesWeb, :controller

  plug :put_theme, :gray

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
