defmodule GreetingTest do
  use ExUnit.Case, async: true

  describe "greet" do
    test "return Hello my friend!" do
      assert Greeting.greet() == "Hello my friend!"
    end
  end
end
