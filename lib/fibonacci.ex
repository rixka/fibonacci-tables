defmodule Fibonacci do
  @moduledoc """
    Provides methods for handling fibonacci numbers.
  """

  @doc """
    Provides the fibonacci sequence as an array.
    The `n` argument indicates the length of the array.

  ## Examples

      iex> Fibonacci.get_n_fibs(5)
      [1, 1, 2, 3, 5]

  """
  def get_n_fibs(n) do
    n
  end

  @doc """
    Provides the next fibonacci number in the sequence.
    The `fibs` argument is the fibonacci sequence as an array.

  ## Examples

      iex> Fibonacci.next_fib([1, 1, 2])
      [3]
  """
  def next_fib(fibs) do
    fibs
  end
end
