defmodule Solution do

  def compute_reminder(number) do
    if rem(number, 3) == 0 or rem(number, 5) == 0, do: number, else: 0
  end

  def compute(limit) do
    max = limit - 1
    Enum.map(1..max, &(compute_reminder(&1)))
        |> Enum.sum
        |> IO.puts
  end

  def get_io do
    IO.gets("") 
      |> String.trim
      |> String.to_integer
  end

  def solve do
    test_cases = get_io()
    Enum.map(1..test_cases, fn(_) -> get_io() |> compute() end)
  end

end

Solution.solve