defmodule Solution do
    [str | tail] = String.split(IO.read(:stdio, :all), [" ", "\n"])
    {i, _} = Integer.parse(str)
    Enum.map(tail, fn x -> for _ <- 1..i,  do: IO.puts(x) end)
end