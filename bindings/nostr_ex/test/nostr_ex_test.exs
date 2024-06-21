defmodule NostrExTest do
  use ExUnit.Case
  doctest NostrEx

  test "greets the world" do
    assert NostrEx.hello() == :world
  end

  test "adds two numbers" do
    assert NostrEx.add(1, 2) == 3
  end
end
