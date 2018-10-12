defmodule Solution do
  {n, _} = IO.gets("") |> :string.to_integer

  for i <- 0..n, i > 0, do: IO.puts "Hello World"

end