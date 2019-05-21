defmodule Rumpl.Repo do
  use Ecto.Repo,
    otp_app: :rumpl,
    adapter: Ecto.Adapters.Postgres
end
