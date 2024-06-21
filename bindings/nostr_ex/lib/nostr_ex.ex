defmodule NostrEx do
  @moduledoc """
  Documentation for `NostrEx`.
  """
  use Rustler,
    otp_app: :nostr_ex,
    crate: :nostr_ex

  @doc """
  Hello world.

  ## Examples

      iex> NostrEx.hello()
      :world

  """
  def hello do
    :world
  end

  # When loading a NIF module, dummy clauses for all NIF function are required.
  # NIF dummies usually just error out when called when the NIF is not loaded, as that should never normally happen.
  def add(_arg1, _arg2), do: error()

  defp error, do: :erlang.nif_error(:nif_not_loaded)
end
