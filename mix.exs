defmodule ConformExrm.Mixfile do
  use Mix.Project

  def project do
    [app: :conform_exrm,
     version: "1.0.0",
     elixir: "~> 1.0",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     package: package(),
     description: "Conform plugin for ExRM",
     deps: deps()]
  end

  def application do
    [applications: []]
  end

  defp deps do
    [{:exrm, "> 0.0.0"},
     {:conform, "> 0.0.0"}]
  end

  defp package do
    [files: ["lib", "mix.exs", "README.md", "LICENSE"],
     maintainers: ["Paul Schoenfelder"],
     licenses: ["MIT"],
     links: %{"GitHub": "https://github.com/bitwalker/conform_exrm"}]
  end
end
