defmodule Tunesmonster.Repo do
  use Ecto.Repo,
    otp_app: :tunesmonster,
    adapter: Ecto.Adapters.Postgres
end
