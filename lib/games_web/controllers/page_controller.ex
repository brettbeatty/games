defmodule GamesWeb.PageController do
  use GamesWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
