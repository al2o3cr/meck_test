defmodule MeckTest do
  @moduledoc """
  Documentation for MeckTest.
  """

  @doc """
  Hello world.

  ## Examples

      iex> MeckTest.hello
      :world

  """
  def hello do
    IO.puts(:rand.uniform(10))
    :world
  end
end
