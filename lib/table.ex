defmodule Table do
  @moduledoc """
    Provides a multiplication table given and list of numbers.
  """

  @doc """
    Formats and displays the multiplication table.

  ## Examples

      iex> Table.format([2, 3, 5])
      #        +---+----+----+----+
      #        |   | 2  | 3  | 5  |
      #        | 2 | 4  | 6  | 10 |
      #        | 3 | 6  | 9  | 15 |
      #        | 5 | 10 | 15 | 25 |
      #        +---+----+----+----+
      :ok
      
  """
  def format(numbers) do
    numbers
    |> gen_table
    |> TableRex.quick_render!
    |> IO.puts
  end  

  @doc """
    Generates the multiplication matrix.

  ## Examples

      iex> Table.gen_table([2, 3, 5])
      [[nil, 2, 3, 5], [2, 4, 6, 10], [3, 6, 9, 15], [5, 10, 15, 25]]

  """
  def gen_table(numbers) do
    tail = for n1 <- numbers, do: [n1] ++ for n2 <- numbers, do: n1*n2
    [ [nil] ++ numbers ] ++ tail
  end
end
