defmodule Guessing do
  use Application

  def start(_type, _args) do
    Guessing.main()
    Supervisor.start_link([], strategy: :one_for_one)
  end

  def main do
    correct = :rand.uniform(11) - 1

    guess =
      IO.gets("Guess a number between 0 and 10: ")
      |> String.trim()
      |> Integer.parse()

    case guess do
      {result, _} ->
        IO.puts("Parse successful: #{result}")

        if result === correct do
          IO.puts("You win!")
        else
          IO.puts("You lose. The answer was #{correct}.")
        end

      :error ->
        IO.puts("Something went wrong.")
    end
  end
end
