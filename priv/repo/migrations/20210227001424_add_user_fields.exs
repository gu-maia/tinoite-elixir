defmodule Tinoite.Repo.Migrations.AddUserFields do
  use Ecto.Migration

  def change do
    alter table("users") do
      add_if_not_exists(:name, :string, default: "")
      add_if_not_exists(:last_name, :string, default: "")
      add_if_not_exists(:nickname, :string, default: "")
      add_if_not_exists(:birthdate, :date)
    end
  end
end
