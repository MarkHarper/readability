defmodule Readability.Mixfile do
  @moduledoc """
  """

  @version "0.5.0"
  @description """
  A fork of the Readability library for extracting and curating articles.
  """

  use Mix.Project

  def project do
    [
      app: :readability2,
      version: @version,
      elixir: "~> 1.5",
      description: @description,
      package: package(),
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :floki, :httpoison, :codepagex]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:floki, "~> 0.30.1"},
      {:httpoison, "~> 1.8.0"},
      {:codepagex, "~> 0.1.6"},
      {:ex_doc, "~> 0.24.2", only: :dev},
      {:credo, "~> 1.5.6", only: [:dev, :test]},
      {:dialyxir, "~> 1.1.0", only: [:dev]},
      {:mock, "~> 0.3.7", only: :test}
    ]
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE*", "doc"],
      maintainers: ["Mark Harper"],
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => "https://github.com/markharper/readability",
        "Docs" => "https://hexdocs.pm/readability2/Readability.html"
      }
    ]
  end
end
