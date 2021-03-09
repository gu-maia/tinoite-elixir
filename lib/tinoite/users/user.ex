defmodule Tinoite.Users.User do
  use Ecto.Schema
  use Pow.Ecto.Schema

  schema "users" do
    field :name, :string, default: ""
    field :last_name, :string, default: ""
    field :nickname, :string, default: ""
    field :birthdate, :date
    pow_user_fields()

    timestamps()
  end

  def changeset(user_or_changeset, attrs) do
    user_or_changeset
    |> pow_changeset(attrs)
    |> Ecto.Changeset.cast(attrs, [:name, :last_name, :birthdate])
    |> Ecto.Changeset.validate_required([:name, :last_name, :birthdate])
  end
end
