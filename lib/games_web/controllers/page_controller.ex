defmodule GamesWeb.PageController do
  use GamesWeb, :controller

  plug :put_theme, :gray

  def index(conn, _params) do
    render(conn, "index.html", page_title: "Games")
  end
end
