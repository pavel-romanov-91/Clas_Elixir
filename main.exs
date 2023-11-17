defmodule Clas_Elixir do
@pi 3.1415926


def atters do
  IO.puts(@pi)
end


def point_info({:point,x,y}) do
  some_list = ["london", "Moscow", "Shakhty"]
  [head | tail] = some_list
  IO.puts(x)
  IO.puts(y)
end

end