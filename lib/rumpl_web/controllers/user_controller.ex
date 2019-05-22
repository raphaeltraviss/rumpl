defmodule RumplWeb.UserController do
  use RumplWeb, :controller

  alias Rumpl.Accounts

  def index(conn, params) do
    users = Accounts.list_users()
    render(conn, "index.html", users: users)
  end

  def show(conn, %{"id" => id}) do
    user = Accounts.get_user(id)
    render(conn, "show.html", user: user)
  end
end
