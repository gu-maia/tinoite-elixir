defmodule TinoiteWeb.AboutController do
  use TinoiteWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
