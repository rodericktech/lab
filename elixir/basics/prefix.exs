prefix = fn p -> (fn str -> IO.puts("#{p} #{str}") end) end
