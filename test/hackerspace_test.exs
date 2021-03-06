defmodule HackerspaceTest do
  use ExUnit.Case
  doctest Hackerspace

  test "greets the world" do
    assert Hackerspace.hello() == :world
  end

  test "moduledoc()" do
    assert Hackerspace.moduledoc() =~ ~r(Documentation)
  end
end
