defmodule Strings do
  def isAscii(str) do
    Enum.all?(Enum.map(str, &(&1 >= 32 && &1 <= 126)))
  end
end
