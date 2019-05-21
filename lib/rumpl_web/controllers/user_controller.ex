defmodule RumplWeb.UserController do
  use RumplWeb, :controller

  alias Rumpl.Accounts

  def index(conn, params) do
    users = Accounts.list_users()
    render(conn, "index.html", users: users)
  end
end
