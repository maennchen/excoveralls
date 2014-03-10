defmodule ExCoveralls.Mixfile do
  use Mix.Project

  def project do
    [ app: :excoveralls,
      version: "0.2.0",
      elixir: ">= 0.10.4-dev",
      deps: deps(Mix.env),
      test_coverage: [tool: ExCoveralls]
    ]
  end

  # Configuration for the OTP application
  def application do
    []
  end

  # Returns the list of dependencies in the format:
  # { :foobar, "~> 0.1", git: "https://github.com/elixir-lang/foobar.git" }
  def deps(:test) do
    deps(:dev)
  end

  def deps(:dev) do
    deps(:prod) ++
      [
        {:mock, github: "jjh42/mock" }
      ]
  end

  def deps(:prod) do
    [
      {:jsex, github: "talentdeficit/jsex"},
      {:exprintf, github: "parroty/exprintf"}
    ]
  end
end
