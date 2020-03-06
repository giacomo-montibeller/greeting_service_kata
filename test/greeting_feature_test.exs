defmodule GreetingFeatureTest do
  use ExUnit.Case, async: true

  describe "When a greeting message is requested" do
    test "Then the system will reply with 'Hello my friend!'" do
      GreetingServiceKata.Application.start(nil, [])

      response = HTTPoison.get!("http://localhost:4000/greet")

      assert response.status_code == 200
      assert response.body == "Hello my friend!"
    end
  end

  describe "When a User with the name Pippo request a greeting message" do
    test "Then the system will reply with 'Hello Pippo!'" do
      GreetingServiceKata.Application.start(nil, [])

      response = HTTPoison.get!("http://localhost:4000/greet?name=Pippo")

      assert response.status_code == 200
      assert response.body == "Hello Pippo!"
    end
  end
end
