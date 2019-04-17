defmodule BlogWeb.Router do
  use BlogWeb, :router

  pipeline :api do
    plug Plug.Parsers,
      parsers: [:urlencoded, :multipart, :json, Absinthe.Plug.Parser],
      pass: ["*/*"],
      json_decoder: Phoenix.json_library()

    plug :accepts, ["json"]
  end

  scope "/api", BlogWeb do
    pipe_through :api

    forward "/graphiql", Absinthe.Plug.GraphiQL, interface: :simple, schema: BlogWeb.Schema

    forward "/", Absinthe.Plug, schema: BlogWeb.Schema
  end
end
