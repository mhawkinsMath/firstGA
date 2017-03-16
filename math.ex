defmodule Math do
  def sum(a,b, c \\ 1 ) do
    a + b * c
  end

  def first_sto(n) do
    # IO.puts "into first_STO"
    if (n > 0 and is_integer(n) ), do: (
      # IO.puts "inside if condition"
      a_string = ""
      # IO.puts "a_string equuals #{a_string}"
      create_sto(a_string, n)
    )
  end

  def create_sto(a,n) when n>0 do
      # IO.puts "string length test reached a =" <> a 
      # IO.puts "string length test reached"
      # IO.puts "pre creat_STO reached"
      b = to_string(Enum.random([0,1]))
      create_sto(a<>b,n-1)
  end

  def create_sto(a,0) do
    #IO.puts a
    a
  end


  def first_test(n) do
    # IO.puts "into first_STO"
    if (n > 0 and is_integer(n) ), do: (
      IO.puts "pass"
    )
  end


  # los  = list of strings
  # n = number of elements in each string
  # m = number of strings in the list
  #def first_los(m,n) do
  #  if (first_test(n) == "pass" and first_test(m) == "pass"), do: (
  #    a_list = []
  #    create_los(a_list,m,n)
  #  )
  #end


  def first_los(m,n) when (m>0 and n>0) do
      a_list = []
      create_los(a_list,m,n)
  end

  def create_los(a,m,n) when m>0 do
    a = List.insert_at(a,0,first_sto(n))
    create_los(a,m-1,n)
  end

  def create_los(a,0,n) do
    #IO.puts a
    a
  end


  # 1) create strings
  # 2) verify strings fit criterion
  # 3) Create While loop
  #   3.1) filter for reproduction
  #   3.2) recombine between individuals
  #   3.3) mutate individuals
  #   3.4) evaluate fitness of modified indiviuals
  #   3.5) generate new strings
  #   3.6) end while loop



end
