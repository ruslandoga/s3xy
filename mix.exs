defmodule S3xy.MixProject do
  use Mix.Project

  def project do
    [
      app: :s3xy,
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:picohttpparser, github: "ruslandoga/picohttpparser"},
      {:s3, github: "ruslandoga/s3"},
      {:stream_data, "~> 1.1", only: :test}
    ]
  end
end
