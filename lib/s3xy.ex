defmodule S3xy do
  @moduledoc """
  TODO
  """

  use GenServer

  @spec http(keyword) :: GenServer.on_start()
  def http(config) do
    GenServer.start_link(__MODULE__, config)
  end
end
