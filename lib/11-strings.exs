defmodule Strings do
  def is_ascii(str) do
    Enum.all?(Enum.map(str, &(&1 >= ?\s && &1 <= ?~)))
  end
end
