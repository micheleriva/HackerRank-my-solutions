defmodule Solution do

  def process_pairs(input) do
    Enum.map(input, 
      fn(x) -> if Regex.match?(~r/^\([+-]?([1-8]?\d(\.\d+)?|90(\.0+)?), [+-]?((1[0-7]|[1-9])?\d(\.\d+)?|180(\.0+)?)\)$/, x), 
      do: IO.puts "Valid", 
      else: IO.puts "Invlid" 
    end)
  end

  def solve do
    IO.gets("") 
      |> String.trim 
      |> String.split("\n")
      |> process_pairs
  end

end

Solution.solve