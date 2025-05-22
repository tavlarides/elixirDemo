defmodule Demo.Accounts.RegistrationRequest do
  use Ecto.Schema
  import Ecto.Changeset

  schema "registration_requests" do
    field :status, :string
    field :provider, :string
    field :email, :string
    field :nickname, :string
    field :avatar, :string
    field :provider_uid, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(registration_request, attrs) do
    registration_request
    |> cast(attrs, [:email, :nickname, :avatar, :provider, :provider_uid, :status])
    |> validate_required([:email, :nickname, :avatar, :provider, :provider_uid, :status])
  end
end
