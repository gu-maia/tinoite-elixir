defmodule TinoiteWeb.UserController do
  use TinoiteWeb, :controller

  def show(conn, _params) do
    render(conn, "show.html")
  end

  def edit(conn, _params) do
    render(conn, "edit.html")
  end
end
