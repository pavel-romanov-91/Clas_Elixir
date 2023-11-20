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

  def get_age({tule_value}) do
    {:user, age, _} = tule_value
     age
  end

  def get_names({:user, name1,_},{:user, name2,_},{:user, name3,_}) do
    [name1, name2, name3]
  end

  def if_work(color) do
    if color == "blue" do
      "Yes"
      end
    end

  def if_short(color) do
  if color == "blue", do: "Yes"
  end

  def unless_work(color) do
    unless color == "blue" do
    "Yes"
    end
  end

  def unless_short(color) do
    unless color == "blue", do: "Yes"
  end

  def if_work2(color) do
  if color == "blue" do
    "Yes"
    else
    "No"
    end
  end

  def if_short2(color) do
    if color == "blue", do: "Yes", else: "No"
  end

  def case_nod(a, b) do
    case rem(a, b) do
      0 -> b
      c -> case_nod(b, c)
    end
  end

  def user({:user, age, name}) do
    value_if = if age >= 18, do: "привет проходи #{name}", else: "привет уходи #{name}"
    value_if
  end

  def case_user (user) do
    case user do
      {:user, age, name} when age >= 18 -> "привет проходи #{name}"
      {:user, _, name} -> "привет уходи #{name}"
      _ -> "Не коректные данные"
    end
  end

  def case_user1 (user) do
    case user do
      {:user, name, age, role} when age >= 18 -> "привет проходи #{name}"
      {:user, _, _, :admin} -> :ok
      {:user, _, _, :moderator} -> :ok
      {:user, _, name} -> "привет уходи #{name}"
      _ -> "Не коректные данные"
    end
  end

  def f(curent_color, figure) do
    case {curent_color, figure} do
      {curent_color, {color, type}} when (curent_color == color) and (type == :pawn or type == :rock) -> "Yes"
      _ -> "No"
      
    end

  end


end