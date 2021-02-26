defmodule Tinoite.Repo do
  use Ecto.Repo,
    otp_app: :tinoite,
    adapter: Ecto.Adapters.Postgres
end
