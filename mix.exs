defmodule Strucord.MixProject do
  use Mix.Project

  def project do
    [
      app: :strucord,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      # Docs
      name: "Strucord",
      docs: docs(),

      # Hex
      description: "Easy conversion between records and structs",
      package: package()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end

  defp docs do
    [
      extras: ["README.md"],
      main: "readme",
      source_url: "https://github.com/quinnwilton/strucord"
    ]
  end

  defp package do
    [
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/quinnwilton/strucord"},
      maintainers: ["Quinn Wilton"]
    ]
  end
end
