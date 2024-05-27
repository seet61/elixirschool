defmodule CollectionsTest do
  use ExUnit.Case

  IO.inspect("Collections")

  test "list" do
    list = [3.14, :pie, "Apple"]
    #Добавление в начало списка (быстро)
    IO.inspect(["п" | list ])
    #Добавление в конец списка (медленно)
    IO.inspect(list ++ ["Cherry"])
  end

  test "head and tail" do
    [head | tail] = [3.14, :pie, "Apple"]

    assert 3.14 == head
    assert tail == [:pie, "Apple"]
  end

  test "map" do
    map = %{foo: "bar", hello: "world"}
    assert "bar" == map.foo

    map = %{map | foo: "bar111"}
    assert "bar111" == map.foo

    #assert_raise(KeyError, %{map | foo1: "baz"})
  end
end
