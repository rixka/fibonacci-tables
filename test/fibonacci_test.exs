defmodule FibonacciTest do
  use ExUnit.Case
  doctest Fibonacci

  test "get_n_fibs provides first 2 elements" do
    fibs = Fibonacci.get_n_fibs(2)
    assert fibs === [1, 1]
  end

  test "get_n_fibs provides first 10 elements" do
    fibs = Fibonacci.get_n_fibs(10)
    assert fibs === [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
  end

  test "get_n_fibs provides 100 elements" do
    fibs_length = length(Fibonacci.get_n_fibs(100))
    assert fibs_length == 100
  end
end
