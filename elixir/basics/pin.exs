defmodule Greeter do
  def for(name, greeting) do
    fn
      ^name -> "#{greeting} #{name}"
      _ -> "I don't know you"
    end
  end
end

mr_roderick = Greeter.for("Michael", "Hallo!")

IO.puts mr_roderick.("Michael")
IO.puts mr_roderick.("John")
