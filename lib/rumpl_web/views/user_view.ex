defmodule RumplWeb.UserView do
  use RumplWeb, :view

  alias Rumpl.Accounts

  def first_name(%Accounts.User{name: name}) do
    name
    |> String.split(" ")
    |> Enum.at(0)
  end
end
