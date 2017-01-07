defmodule InputHandler do
  @moduledoc """
    Provides methods for handling user input.
  """

  @doc """
    Prompts user for a response.
  """
  def prompt_user(retry \\ false) do
      case retry do
        true -> IO.gets "Error: Please enter a valid number: "
        false -> IO.gets "Please enter a number: "
      end
  end

  @doc """
    Validates that user input is a digit.
  """
  def validate_input(n) do
    case Integer.parse(n) do
      {n, _tail} -> n
      :error ->
        prompt_user(true)
        |> validate_input
    end
  end
end
