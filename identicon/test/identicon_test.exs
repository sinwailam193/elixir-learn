defmodule IdenticonTest do
    use ExUnit.Case
    doctest Identicon

    test "greets the world" do
        assert Identicon.main("aaron") == [68, 154, 54, 182, 104, 157, 132, 29, 125, 39, 243, 27, 75, 124, 199, 58]
    end
end
