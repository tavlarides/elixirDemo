defmodule Demo.Repo.Migrations.CreatePlayers do
  use Ecto.Migration

  def change do
    create table(:players) do
      add :email, :string
      add :hashed_password, :string
      add :nickname, :string
      add :avatar, :string
      add :provider, :string
      add :provider_uid, :string

      timestamps(type: :utc_datetime)
    end

    create unique_index(:players, [:nickname])
    create unique_index(:players, [:email])
  end
end
