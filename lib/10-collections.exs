defmodule Collections do
  def all?([], _f) do
    True
  end

  def all?([x | ys], f) do
    if f.(x) do
      all?(ys, f)
    else
      False
    end
  end

  def each([], f) do
    :ok
  end

  def each([x | ys], f) do
    f.(x)
    each(ys, f)
  end
end
