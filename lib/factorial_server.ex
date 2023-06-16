defmodule FactorialServer do
  def start() do
    receive do
      {from, n} ->
        send(from, factorial(n))
        start()
    end
  end

  def factorial(0), do: 1
  def factorial(n), do: n * factorial(n - 1)
end
