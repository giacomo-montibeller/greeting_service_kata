defmodule GreetingTest do
  use ExUnit.Case, async: true

  describe "greet when a name is given" do
    test "return Hello name!" do
      assert Greeting.greet("A_NAME") == "Hello A_NAME!"
    end
  end

  describe "greet when a name is not given" do
    test "return default message" do
      assert Greeting.greet(nil) == "Hello my friend!"
    end
  end
end
