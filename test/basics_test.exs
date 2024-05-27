defmodule BasicsTest do
  use ExUnit.Case

  IO.inspect("Basics")

  test "basics" do
    temp = 2 + 3
    IO.inspect("2 + 3 = #{temp}")
    assert 2 + 3 == 5
  end


  test "string length" do
    temp ="The quick brown fox jumps over the lazy dog"
    length = String.length(temp)
    IO.inspect("#{temp} #{length}")
    assert 43 == length
  end

  test "del" do
    temp = 10 / 5
    IO.inspect("10 / 5 = #{temp}")
    assert 2.0 == temp
    assert 2 == div(10, 5)
    assert 0 == rem(10, 5)
  end

  test "string concat" do
    temp ="The quick"
    IO.inspect("#{temp} " <> "brown")
  end
end
