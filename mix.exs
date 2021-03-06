defmodule OnfleetApi.MixProject do
  use Mix.Project

  def project do
    [
      app: :onfleet_api,
      version: "0.1.0",
      elixir: "~> 1.9",
      description: "onfleet api wrapper for elixir",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:httpoison, "~> 1.6"},
      {:hackney, "~> 1.15.2"},
      {:jason, ">= 1.0.0"},
      {:exvcr, "~> 0.10", only: :test},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end

  defp package do
    [
      maintainers: ["Patrick Ma"],
      licenses: ["MIT"],
      links: %{
        GitHub: "https://github.com/fivetwentysix/onfleet-api-elixir"
      }
    ]
  end
end
