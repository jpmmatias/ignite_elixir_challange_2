require Integer
require String
require Module

defmodule ListFilter do
  def call(list), do: check_number_and_sum(list, 0)

  def check_number_and_sum([], total_of_numbers), do: total_of_numbers

  def check_number_and_sum([x | xs], total_of_numbers) do
    x =
      try do
        String.to_integer(x)
      rescue
        ArgumentError -> nil
      end

    if Integer.is_odd(x) do
      total_of_numbers = total_of_numbers + 1
      check_number_and_sum(xs, total_of_numbers)
    else
      check_number_and_sum(xs, total_of_numbers)
    end
  end
end
