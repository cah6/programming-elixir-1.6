defmodule Strings do
  def is_ascii(str) do
    Enum.all?(Enum.map(str, &(&1 >= ?\s && &1 <= ?~)))
  end

  def calculator(str) do
    splitf = fn x -> Enum.split_while(x, &(&1 != 32)) end
    {s1, rest} = splitf.(str)
    {op, rest} = splitf.(Enum.drop(rest, 1))
    s2 = Enum.drop(rest, 1)
    x = List.to_integer(s1, 10)
    y = List.to_integer(s2, 10)

    case op do
      '+' -> x + y
      '-' -> x - y
      '/' -> x / y
      '*' -> x * y
    end
  end
end
