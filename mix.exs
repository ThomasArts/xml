defmodule Xml.Mixfile do
  use Mix.Project

  @version "0.1.0"
  
  def project do
    [app: :xml,
     version: @version,
     elixir: "~> 1.1-dev",
     test_paths: ["test/elixir"],
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger]]
  end

  defp deps do
    [{:eqc_ex, git: "https://github.com/Quviq/eqc_ex"}]
    [{:p1_utils, git: "https://github.com/processone/p1_utils.git"}]
  end
end
