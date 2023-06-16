defmodule UniversalServer do
  @moduledoc false

  def start() do
    receive do
      {:become, f} ->
        f.()
    end
  end
end
