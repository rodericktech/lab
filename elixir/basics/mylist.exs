defmodule MyList do
  def map([], _func), do: []
  def map([head | tail], func), do: [func.(head) | map(tail, func)]

  def reduce([], value, _), do: value

  def reduce([head | tail], value, f) do
    reduce(tail, f.(head, value), f)
  end

  def len([]), do: 0
  def len([_head | tail]), do: 1 + len(tail)

  def square([]), do: []
  def square([head | tail]), do: [head * head | square(tail)]

  def max([]), do: nil

  def max([head | tail]) do
    reduce([head | tail], head, fn h, t -> if h > t, do: h, else: t end)
  end
end
