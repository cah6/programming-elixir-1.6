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

  def pretty_print(xs) do
    ls = Enum.map(xs, &String.length(&1))
    max_len = Enum.max(ls)
    zipped = Enum.zip(xs, ls)

    pad = fn {str, length} ->
      pad = Integer.floor_div(max_len - length, 2)
      String.pad_trailing(String.pad_leading(str, length + pad), length + pad * 2)
    end

    res = Enum.map(zipped, pad)

    Enum.map(res, &IO.puts(&1))
  end
end
