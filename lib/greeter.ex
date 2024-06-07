defmodule Greeter do
  def hello(name) do
    "Hello, " <> name
  end

  def hello1(%{name: person_name}) do
    "Hello, " <> person_name
  end

  def hello2(name, language_code \\ "en") do
    phrase(language_code) <> name
  end

  defp phrase("en") do
    "Hello, "
  end

  defp phrase("es") do
    "Hola, "
  end
end
