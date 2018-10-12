defmodule Solution do

  def process(input) do
    Enum.map(input, 
      fn(x) -> cond do
        Regex.match?(~r/^hackerrank/, x) -> 
          IO.write(:stdio, 1)
        Regex.match?(~r/hackerrank$/, x) -> 
          IO.write(:stdio, 2)
        Regex.match?(~r/^hackerrank$/, x) -> 
          IO.write(:stdio, 0)
        true ->
          IO.write(:stdio, -1)
      end
    end)
  end

  def solve do
    IO.gets("") 
      |> String.trim 
      |> String.split("\n")
      |> process
  end

end

Solution.solve