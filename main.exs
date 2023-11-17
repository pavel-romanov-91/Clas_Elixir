defmodule Clas_Elixir do
@pi 3.1415926


  def atters do
    IO.puts(@pi)
  end


  def list_work do
    some_list = ["london", "Moscow", "Shakhty", "gorod N"]
    [first, second | tail] = some_list
    new_list = ["New York" | some_list]
    IO.puts(inspect(new_list))
    IO.puts(hd(new_list))
    tl(new_list)
  end

  def get_sum(l) do
    [first, second | _] = l
    first + second
  end

end