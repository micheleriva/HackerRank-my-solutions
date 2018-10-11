defmodule Solution do

  {number, _} = :string.to_integer(IO.read(:stdio, :line))

  Enum.map(1..number, fn n -> if(rem(n, 3) == 0 or rem(n, 5) == 0, do: n, else: 0) end)
          |> Enum.sum
          |> IO.puts

end