defmodule BasicProject.MixProject do
  use Mix.Project

  def project do
    [
      app: :basic_project,
      version: "0.1.0",
      elixir: "~> 1.15",
      elixirc_paths: elixirc_paths(Mix.env()),
      start_permanent: Mix.env() == :prod,
      archives: [mix_gleam: "~> 0.6.1"],
      compilers: [:gleam] ++ Mix.compilers(),
      deps: deps()
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
      {:mix_gleam, "~> 0.6"},
      {:strucord, git: "https://github.com/srikanthkyatham/strucord"}
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(:dev), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]
end
