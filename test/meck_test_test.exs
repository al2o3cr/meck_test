defmodule MeckTestTest do
  use ExUnit.Case

  test "greets the world" do
    assert MeckTest.hello() == :world
  end

  test "can be mocked" do
    :meck.new(MeckTest)
    :meck.expect(MeckTest, :hello, fn -> :mock end)
    assert MeckTest.hello() == :mock
    assert :meck.validate(MeckTest)
    :meck.unload(MeckTest)
    assert MeckTest.hello() == :world
  end
end
