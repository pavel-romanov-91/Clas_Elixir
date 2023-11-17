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

  def map_work do
    my_map = %{:name => "Alex", :age => 43}
    #my_map.name
    #IO.puts(Map.get(my_map, :name, "not found"))
    #IO.puts(my_map[:name])
    #IO.puts(my_map[:age])
    IO.puts("#{my_map.name} #{my_map.age}")
    new_map = Map.put(my_map, :lastname, "Voisha")
    IO.puts(inspect(my_map))
    IO.puts(inspect(new_map))
    new_map1 = Map.delete(new_map, :lastname)
    IO.puts(inspect(new_map1))
  end

  def get_age({:user, age, _}) do
     age
  end

  def get_names({:user, name1,_},{:user, name2,_},{:user, name3,_}) do
    [name1, name2, name3]
  end

end