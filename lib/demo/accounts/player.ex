defmodule Demo.Accounts.Player do
  use Ecto.Schema
  import Ecto.Changeset

  schema "players" do
    field :provider, :string
    field :email, :string
    field :hashed_password, :string
    field :nickname, :string
    field :avatar, :string
    field :provider_uid, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(player, attrs) do
    player
    |> cast(attrs, [:email, :hashed_password, :nickname, :avatar, :provider, :provider_uid])
    |> validate_required([:email, :hashed_password, :nickname, :avatar, :provider, :provider_uid])
    |> unique_constraint(:nickname)
    |> unique_constraint(:email)
  end
end
