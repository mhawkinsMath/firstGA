defmodule FirstGA do
  @moduledoc """
    This module contains functions for creating:
      - a string filled with binary (one or zero) values of a specified length
      - a list of (same length) binary strings of specified length


    Project tasks
      1) create strings
      2) verify strings fit criterion
      3) Create While loop
        3.1) filter for reproduction
        3.2) recombine between individuals
        3.3) mutate individuals
        3.4) evaluate fitness of modified indiviuals
        3.5) generate new strings
        3.6) end while loop
        

  """
  defmodule CreateString do
    @spec first_sto(integer()) :: String.t
    def first_sto(n) do
      if (n > 0 and is_integer(n) ), do: (
        a_string = "" # create empty string
        create_sto(a_string, n) # make first call start the recursive seuquence that ends when n = 0
      )
    end

    @spec create_sto(String.t, integer()) :: String.t
    defp create_sto(a,n) when n>0 do
        b = to_string(Enum.random([0,1]))
        create_sto(a<>b,n-1) # concatenate the growing string with the new binary integer and decrease the (negative) accumlator
    end

    @spec create_sto(String.t, integer()) :: String.t
    defp create_sto(a,0) do
      a # return the final string
    end
  end

  defmodule CreateList do
    @spec first_los(integer(), integer()) :: list(integer())
    def first_los(m,n) when (m>0 and n>0) do
        a_list = [] # create empty list
        create_los(a_list,m,n) # recursive call into create_los
    end

    @spec create_los(list(integer()), integer(), integer()) :: list(integer())
    defp create_los(a,m,n) when m>0 do
      a = List.insert_at(a,0,CreateString.first_sto(n)) # create an n-length string and place it at the head of the growing list.
      create_los(a,m-1,n) # recursively call with the number of elements in the list decreased by one
    end

    @spec create_los(list(integer()), integer(), integer()) :: list(integer())
    defp create_los(a,0,n) do
      a # return the final list
    end
  end
end
