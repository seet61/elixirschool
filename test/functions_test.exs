defmodule FunctionsTest do
  use ExUnit.Case

  test "anonimous functions" do
    IO.inspect("anonimous functions")
    sum = fn(a, b) -> a + b end
    assert 5 == sum.(2, 3)
  end

  test "pattern matching" do
    IO.inspect("pattern matching")
    handle_result = fn
      {:ok, _result} -> "Handling result"
      #{:ok, _} -> "This would be never run as previous will be matched beforehand"
      {:error} -> "An error occurred!"
    end

    assert "Handling result" == handle_result.({:ok, 1})
    assert "An error occurred!" == handle_result.({:error})
  end

  test "greeter" do
    IO.inspect("greeter")
    assert "Hello, Sean" == Greeter.hello("Sean")
  end

  test "recursion" do
    IO.inspect("recursion")

    assert 0 == Length.of([])
    assert 3 == Length.of([1, 2, 3])
  end

  test "function by param" do
    IO.inspect("function by param")
    ted = %{
      name: "Ted",
      age: 23,
      favorite_color: "Taupe"
    }

    #IO.inspect(Greeter.hello1())
    assert "Hello, Ted" == Greeter.hello1(ted)
    assert_raise FunctionClauseError, fn ->
      Greeter.hello1(%{age: "95", favorite_color: "Taupe"})
    end
  end

  test "private and default value" do
    IO.inspect("private and default value")

    assert "Hello, Sean" == Greeter.hello2("Sean")
    assert "Hola, Sean" == Greeter.hello2("Sean", "es")
  end

end
