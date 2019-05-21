# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :rumpl,
  ecto_repos: [Rumpl.Repo]

# Configures the endpoint
config :rumpl, RumplWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Oe1O1kE5/csQutiyaoH11kcD9SgK+SivE+eh0liBDbCFtO4sjT9gQKhipkHgSMD5",
  render_errors: [view: RumplWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Rumpl.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
