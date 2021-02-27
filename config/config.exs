# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :tinoite,
  ecto_repos: [Tinoite.Repo]

# Configures the endpoint
config :tinoite, TinoiteWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "u3cvjvZYdlrwtbN6daYyrPC8tFImYw0x5SI1sP1njWUY+Z9wI9IhMp8tMrG5HT4l",
  render_errors: [view: TinoiteWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Tinoite.PubSub,
  live_view: [signing_salt: "xM+f1UiM"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :tinoite, :pow,
  user: Tinoite.Users.User,
  repo: Tinoite.Repo,
  web_module: TinoiteWeb

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
