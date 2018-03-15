defmodule MeckTestTest2 do
  use ExUnit.Case

  test "greets the world" do
    assert MeckTest2.hello() == :worldz
  end

  # test "can be mocked" do
  #   :meck.new(MeckTest2)
  #   :meck.expect(MeckTest2, :hello, fn -> :mock end)
  #   assert MeckTest2.hello() == :mock
  #   assert :meck.validate(MeckTest2)
  #   :meck.unload(MeckTest2)
  #   # assert MeckTest2.hello() == :worldz
  # end
end
