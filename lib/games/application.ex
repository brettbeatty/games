defmodule Games.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl Application
  def start(_type, _args) do
    children = [
      GamesWeb.Telemetry,
      {DNSCluster, query: Application.get_env(:games, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: Games.PubSub},
      # Start a worker by calling: Games.Worker.start_link(arg)
      # {Games.Worker, arg},
      # Start to serve requests, typically the last entry
      GamesWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Games.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl Application
  def config_change(changed, _new, removed) do
    GamesWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
