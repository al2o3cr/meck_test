defmodule MeckTestTest do
  use ExUnit.Case
  import Mock

  test "greets the world" do
    assert MeckTest.hello() == :world
  end

  test "can be mocked" do
    with_mock MeckTest, [hello: fn -> :mock end] do
      assert MeckTest.hello() == :mock
    end
    assert MeckTest.hello() == :world
  end
end
