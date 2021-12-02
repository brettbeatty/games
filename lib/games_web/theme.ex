defmodule GamesWeb.Theme do
  @moduledoc """
  Maintains a list of theme colors.
  """
  @type theme() :: :blue | :gray | :green | :orange | :purple | :red | :yellow

  @spec get_theme(theme()) :: String.t()
  def get_theme(theme)

  def get_theme(:blue) do
    "--theme-color-dark: #1E3A8A; --theme-color: #60A5FA; --theme-color-light: #DBEAFE;"
  end

  def get_theme(:gray) do
    "--theme-color-dark: #111827; --theme-color: #9CA3AF; --theme-color-light: #F3F4F6;"
  end

  def get_theme(:green) do
    "--theme-color-dark: #14532D; --theme-color: #4ADE80; --theme-color-light: #DCFCE7;"
  end

  def get_theme(:orange) do
    "--theme-color-dark: #7C2D12; --theme-color: #FB923C; --theme-color-light: #FFEDD5;"
  end

  def get_theme(:purple) do
    "--theme-color-dark: #581C87; --theme-color: #C084FC; --theme-color-light: #F3E8FF;"
  end

  def get_theme(:red) do
    "--theme-color-dark: #7F1D1D; --theme-color: #F87171; --theme-color-light: #FEE2E2;"
  end

  def get_theme(:yellow) do
    "--theme-color-dark: #713F12; --theme-color: #FACC15; --theme-color-light: #FEF9C3;"
  end

  @spec put_theme(Plug.Conn.t(), theme()) :: Plug.Conn.t()
  def put_theme(conn, theme) do
    Plug.Conn.assign(conn, :theme, theme)
  end
end
