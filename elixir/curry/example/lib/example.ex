defmodule Membership do
  defstruct [:type, :price]
end

defmodule User do
  defstruct [:name, :membership]
end

defmodule Example do
  use Application

  # module attributes - constants
  # @x 5

  # The start function will run on each 'mix run' call as long as the module
  # it's in has been added to mix.exs along with the Supervisor line below
  def start(_type, _args) do
    Example.main()

    # A supervisor handles child processes, which would be indicated in the 
    # empty list if we were starting something specific on start
    Supervisor.start_link([], strategy: :one_for_one)
  end

  def main do
    # atoms - static values
    # :hello
    # :"hello world"

    # IO.puts(:hello)

    # name = "Michael"
    # status = Enum.random([:gold, :silver, :bronze, :"not a member"])

    # case status do
    #   :gold -> IO.puts("Welcome to the Upscale Lounge, #{name}.")
    #   :"not a member" -> IO.puts("Get subscribed.")
    #   _ -> IO.puts("Get out.")
    # end

    IO.puts("This\nis\na\message\n")
    IO.puts("After")
    IO.puts("Interpolation: \#{}")

    # numeric representation of Unicode characters
    IO.puts(?a)

    # integers and floating points
    a = 10
    b = 3.0
    # b = 3

    # output type depends on input, unless it doesn't
    # division always returns a float
    IO.puts(a + b)
    IO.puts(a / b)

    :io.format("~.20f\n", [0.1])

    IO.puts(Float.ceil(0.5))
    IO.puts(Integer.gcd(25, 10))

    # Date and time
    time = Time.new!(16, 30, 0, 0)
    date = Date.new!(2025, 1, 1)

    date_time = DateTime.new!(date, time, "Etc/UTC")

    IO.inspect(time)
    IO.inspect(date)
    IO.inspect(date_time)

    IO.puts(date_time.year)

    # Date and time, inline method
    time = DateTime.new!(Date.new!(2024, 5, 7), Time.new!(18, 22, 0, 0))
    time_till = DateTime.diff(time, DateTime.utc_now())

    IO.inspect(time)
    IO.puts(time_till)

    days = div(time_till, 86400)
    IO.puts(days)
    IO.puts(rem(time_till, 86400))

    # tuples
    memberships = {:bronze, :silver, :gold}
    # Tuple.append(memberships, :platinum)

    IO.inspect(memberships)

    prices = {5, 10, 15}
    avg = Tuple.sum(prices) / tuple_size(prices)
    IO.puts(avg)

    IO.puts(
      "Average price from #{elem(memberships, 0)} #{elem(memberships, 1)} #{elem(memberships, 2)} is #{avg}"
    )

    user1 = {"Caleb", :gold}
    user2 = {"Kayla", :gold}
    user3 = {"Carrie", :silver}

    {name, membership} = user1

    IO.puts("#{name} has a #{membership} membership.")
    {name, membership} = user2
    IO.puts("#{name} has a #{membership} membership.")
    {name, membership} = user3
    IO.puts("#{name} has a #{membership} membership.")

    # Iteration / loops
    users = [
      {"Caleb", :gold},
      {"Kayla", :gold},
      {"Carrie", :silver}
    ]

    Enum.each(users, fn {name, membership} ->
      IO.puts("#{name} has a #{membership} membership.")
    end)

    # Maps
    memberships = %{
      gold: :gold,
      silver: :silver,
      bronze: :bronze,
      none: :none
    }

    prices = %{
      gold: 25,
      silver: 20,
      bronze: 15,
      none: 0
    }

    users = [
      {"Caleb", memberships.gold},
      {"Kayla", memberships.silver},
      {"Carrie", memberships.bronze}
    ]

    Enum.each(users, fn {name, membership} ->
      IO.puts("#{name} has a #{membership} membership, paying $#{prices[membership]}.")
    end)

    # Structs
    gold_membership = %Membership{type: :gold, price: 25}
    silver_membership = %Membership{type: :silver, price: 20}
    bronze_membership = %Membership{type: :bronze, price: 15}
    no_membership = %Membership{type: :none, price: 0}

    users = [
      %User{name: "Caleb", membership: gold_membership},
      %User{name: "Kayla", membership: silver_membership},
      %User{name: "Carrie", membership: bronze_membership}
    ]

    Enum.each(users, fn %User{name: name, membership: membership} ->
      IO.puts("#{name} has a #{membership.type} membership, paying $#{membership.price}.")
    end)
  end
end
