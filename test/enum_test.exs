defmodule EnumTest do
  use ExUnit.Case

  test "init" do
    IO.inspect("Enum init")
    Enum.__info__(:functions)
    |> Enum.each(fn ({function, arity}) ->
      IO.inspect("#{function} / #{arity}")
    end)
  end

  test "all" do
    IO.inspect("all, return true if each fn true")
    all_false = Enum.all?(
      ["all", "bar", "hello"],
      fn (element) ->
        String.length(element) == 3
      end
    )
    assert false == all_false

    all_true = Enum.all?(
      ["all", "bar", "hello"],
      fn (element) ->
        String.length(element) > 1
      end
    )
    assert true == all_true
  end

  test "any" do
    IO.inspect("any, return true if any fn true")
    any_true = Enum.any?(["foo", "bar", "hello"], fn(entry) ->
      String.length(entry)
    end)

    assert true == any_true
  end

  test "chunk_every" do
    IO.inspect("chunk_every")
    chunk = Enum.chunk_every([1, 2, 3, 4, 5, 6], 2)
    IO.inspect(chunk)
  end

  test "map_every" do
    IO.inspect("map_every")
    map_every = Enum.map_every([1, 2, 3, 4, 5, 6, 7, 8], 3, fn(x) ->
      x + 1000
    end)
    IO.inspect(map_every)
  end

end
