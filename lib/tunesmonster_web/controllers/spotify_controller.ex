defmodule TunesmonsterWeb.SpotifyController do
  use TunesmonsterWeb, :controller

  def create(conn, _) do
    render(conn, "new.html")
    spotify_url = "https://accounts.spotify.com/authorize?response_type=code"
    spotify_scopes = "user-read-private user-read-email"
    spotify_client_id = ""
    spotify_client_secret = ""
    redirect_page = "/"

    full_url = spotify_url <> "&scopes=" <> spotify_scopes <> "&client_id=" <> spotify_client_id <> "&redirect_page=" <> redirect_page

    {:ok, response} = HTTPoison.get(full_url)

    conn

  end
end
