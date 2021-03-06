defmodule GreetingServiceKata.Application do
  use Application

  def start(_type, _args) do
    children = [
      Plug.Cowboy.child_spec(
        scheme: :http,
        plug: {
          GreetingWeb,
          greeting: Greeting
        },
        options: [port: 4000])
    ]

    opts = [strategy: :one_for_one, name: GreetingServiceKata.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
