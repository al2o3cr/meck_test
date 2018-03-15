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
  end

  test "can be mocked2" do
    :meck.new(MeckTest2)
    :meck.expect(MeckTest2, :hello, fn -> :mock end)
    assert MeckTest2.hello() == :mock
    assert :meck.validate(MeckTest2)
    :meck.unload(MeckTest2)
  end

  test "can be mocked3" do
    :meck.new(MeckTest2)
    :meck.expect(MeckTest2, :hello, fn -> :mock end)
    assert MeckTest2.hello() == :mock
    assert :meck.validate(MeckTest2)
    :meck.unload(MeckTest2)
  end
end
