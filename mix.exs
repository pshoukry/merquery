defmodule Merquery.MixProject do
  use Mix.Project

  def project do
    [
      app: :merquery,
      version: "0.3.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: "An interactive way to work with routes and HTTP requests in Elixir.",
      source_url: "https://github.com/acalejos/merquery",
      homepage_url: "https://github.com/acalejos/merquery",
      package: package()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Merquery.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:kino, "~> 0.12"},
      {:phoenix, "~> 1.7.2", optional: true},
      {:req, "~> 0.4"},
      {:ex_doc, ">= 0.0.0", runtime: false},
      {:jason, "~> 1.4"},
      {:curl_req, "~> 0.99.0"},
      {:flint, "~> 0.6"}
    ]
  end

  defp package do
    [
      maintainers: ["Andres Alejos"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/acalejos/merquery"},
      files: [
        "lib",
        "mix.exs",
        "assets/build",
        "README*",
        "LICENSE*",
        ".formatter.exs"
      ]
    ]
  end
end
