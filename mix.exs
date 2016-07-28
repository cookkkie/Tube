defmodule WsClient.Mixfile do
  use Mix.Project

  def project do
    [app: :ws_client,
     version: "0.1.0",
     description: "WebSocket client library in pure elixir",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     package: [
       name: :tube,
       files: ["lib", "examples", "README*", "LICENSE*"],
       licenses: ["MIT"],
       links: %{"GitHub" => "https://github.com/narrowtux/Tube"},
       maintainers: ["Moritz Schmale"],
       build_tools: ["mix"]
     ]]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
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
    []
  end
end
