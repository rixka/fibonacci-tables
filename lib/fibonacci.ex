defmodule Fibonacci do
  @moduledoc """
    Provides methods for handling fibonacci numbers.
  """

  @doc """
    Provides the fibonacci sequence as an array.
    The `n` argument indicates the length of the array.
  """
  def get_n_fibs(n) do
    fib_loop([1], n)
  end

  @doc """
    Recursively loops to generate the desired fibonacci
    sequence length.
    The `fibs` argument is the existing fibonacci sequence
    and the `n` argument is the desired length of the array.

  ## Examples

      iex> Fibonacci.fib_loop([1], 5)
      [1, 1, 2, 3, 5]

  """
  def fib_loop(fibs, n) do
    cond do
      length(fibs) == n ->
        fibs
      true ->
        fibs
        |> add_next_fib
        |> fib_loop(n)
    end
  end

  @doc """
    Appends the next fibonacci number to the sequence.
    The `fibs` argument is the old fibonacci sequence as an array.

  ## Examples

      iex> Fibonacci.add_next_fib([1, 1, 2])
      [1, 1, 2, 3]

  """
  def add_next_fib(fibs) do
    cond do
      fibs == [1] ->
        [1, 1]
      true ->
        [pen, last] = Enum.take(fibs, -2)
        fibs ++ [pen + last]
    end
  end
end
