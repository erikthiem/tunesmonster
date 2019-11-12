defmodule TunesmonsterWeb.PageController do
  use TunesmonsterWeb, :controller

  def index(conn, _) do
    render(conn, "index.html", token: get_csrf_token())
  end
end
