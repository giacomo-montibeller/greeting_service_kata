defmodule GreetingServiceKata.MixProject do
  use Mix.Project

  def project do
    [
      app: :greeting_service_kata,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {GreetingServiceKata.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:plug_cowboy, "~> 2.1"},
      {:httpoison, "~> 1.6", only: :test},
      {:mock, "~> 0.3.3", only: :test},
      {:mox, "~> 0.5.1", only: :test}
    ]
  end
end
