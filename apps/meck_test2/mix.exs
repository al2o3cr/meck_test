defmodule MeckTest2.Mixfile do
  use Mix.Project

  def project do
    [
      app: :meck_test2,
      version: "0.2.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env == :prod,
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
      {:meck, "~> 0.8.9"}
    ]
  end
end

