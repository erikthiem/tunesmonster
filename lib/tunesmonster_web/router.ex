defmodule TunesmonsterWeb.Router do
  use TunesmonsterWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", TunesmonsterWeb do
    pipe_through :browser

    get "/", PageController, :index
    post "/login", SpotifyController, :create
  end

  # Other scopes may use custom stacks.
  # scope "/api", TunesmonsterWeb do
  #   pipe_through :api
  # end
end
