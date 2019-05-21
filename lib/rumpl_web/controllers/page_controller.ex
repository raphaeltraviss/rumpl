defmodule RumplWeb.PageController do
  use RumplWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
