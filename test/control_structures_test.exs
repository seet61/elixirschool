defmodule ControlStructuresTest do
  use ExUnit.Case

  test "if" do
    IO.inspect("if")
    Enum.each(["test", 1, :foo], fn (element) ->
      if is_atom(element) do
        IO.inspect("#{element} is atom")
      else
        IO.inspect("#{element} isn't atom")
      end
    end)
  end

  test "case" do
    IO.inspect("case")
    result = case :even do
      :odd -> "Odd"
      _ -> "Not Oddd"
    end
    IO.inspect("case result: #{result}")
  end

end
