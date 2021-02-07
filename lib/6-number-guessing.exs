defmodule Game do
  def guess(actual, first..last) do
    if actual == first || actual == last do
      IO.puts(actual)
    else
      with half = first + div(last - first, 2) do
        IO.puts("Is it #{half}")

        if actual < half do
          guess(actual, first..half)
        else
          guess(actual, half..last)
        end
      end
    end
  end
end
