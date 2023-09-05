defmodule Strucord.MixProject do
  use Mix.Project

  @app :strucord
  def project do
    [
      app: :strucord,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      archives: [mix_gleam: "~> 0.6.1"],
      compilers: [:gleam] ++ Mix.compilers(),
      deps: deps(),

      # Docs
      name: "Strucord",
      docs: docs(),

      # Hex
      description: "Easy conversion between records and structs",
      package: package(),
      aliases: [
        # Or add this to your aliases function
        "deps.get": ["deps.get", "gleam.deps.get"]
      ],
      erlc_paths: [
        "build/dev/erlang/#{@app}/_gleam_artefacts",
        # For Gleam < v0.25.0
        "build/dev/erlang/#{@app}/build"
      ],
      erlc_include_path: "build/dev/erlang/#{@app}/include"
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false},
      {:mix_gleam, "~> 0.6"}
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
