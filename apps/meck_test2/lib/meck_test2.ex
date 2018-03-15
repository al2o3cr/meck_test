defmodule MeckTest2 do
  @moduledoc """
  Documentation for MeckTest2.
  """

  @doc """
  Hello world.

  ## Examples

      iex> MeckTest2.hello
      :worldz

  """
  def hello do
    IO.puts(:rand.uniform(10))
    :worldz
  end
end
