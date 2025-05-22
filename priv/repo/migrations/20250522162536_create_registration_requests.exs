defmodule Demo.Repo.Migrations.CreateRegistrationRequests do
  use Ecto.Migration

  def change do
    create table(:registration_requests) do
      add :email, :string
      add :nickname, :string
      add :avatar, :string
      add :provider, :string
      add :provider_uid, :string
      add :status, :string

      timestamps(type: :utc_datetime)
    end
  end
end
