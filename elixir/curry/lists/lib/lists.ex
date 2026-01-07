defmodule Lists do
  require Integer
  use Application

  def start(_type, _args) do
    Lists.main()
    Supervisor.start_link([], strategy: :one_for_one)
  end

  def sum_and_average(ns) do
    sum = Enum.sum(ns)
    average = sum / Enum.count(ns)
    {sum, average}
  end

  def print_numbers(ns) do
    ns |> Enum.join(" ") |> IO.puts()
  end

  def get_numbers_from_user do
    IO.puts("Enter numbers separated by spaces: ")
    user_input = IO.gets("") |> String.trim()
    String.split(user_input, " ") |> Enum.map(&String.to_integer/1)
  end

  def main do
    grades = [25, 50, 75, 100]
    new = for n <- grades, do: n + 5
    IO.inspect(new)
    new = new ++ [125]
    IO.inspect(new)
    new = new ++ [150, 180]
    IO.inspect(new)

    final = [5 | new]
    IO.inspect(final)

    # even = for n <- final, rem(n, 2) == 0, do: n
    even = for n <- final, Integer.is_even(n), do: n
    IO.inspect(even)

    # numbers = ["1", "2", "3", "4", "5"]
    numbers = get_numbers_from_user()

    # Enum.each(numbers, fn num -> IO.puts(num) end)
    # result = Enum.map(numbers, &String.to_integer/1)
    # print_numbers(result)

    {sum, average} = sum_and_average(numbers)
    IO.puts("Sum: #{sum}, Average: #{average}")
  end
end
