defmodule ListFilterTest do
  use ExUnit.Case
  doctest ListFilter

  test "Call returns the number of numbers on the list" do
    list = ["a", "abx", "2", "23", "oii"]
    list2 = ["1", "3", "6", "43", "banana", "6", "abc"]

    assert ListFilter.call(list) == 1
    assert ListFilter.call(list2) == 3
  end
end
