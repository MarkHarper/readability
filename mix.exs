defmodule Readability.Mixfile do
  @moduledoc """
  """

  @version "0.6.0"
  @description """
  A fork of the Readability library for extracting and curating articles.
  """

  use Mix.Project

  def project do
    [
      app: :readability2,
      version: @version,
      elixir: "~> 1.9",
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

  defp deps do
    [
      {:codepagex, "~> 0.1.6"},
      {:credo, "~> 1.6", only: [:dev, :test]},
      {:dialyxir, "~> 1.2", only: [:dev]},
      {:ex_doc, "~> 0.29", only: :dev},
      {:floki, "~> 0.34"},
      {:httpoison, "~> 1.8"},
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
