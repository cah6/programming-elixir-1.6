defmodule Lists do
  def mapsum(list, f) do
    Enum.reduce(list, 0, fn x, acc -> acc + f.(x) end)
  end

  def max(list) do
    Enum.reduce(list, 0, fn x, acc -> if acc < x, do: x, else: acc end)
  end

  def span(from, from) do
    [from | []]
  end

  def span(from, to) do
    [from | span(from + 1, to)]
  end
end
