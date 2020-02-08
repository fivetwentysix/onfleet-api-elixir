defmodule OnfleetApi do
  require IEx
  @moduledoc """
  Documentation for OnfleetApi.
  """

  @doc """
  Hello world.

  ## Examples

      iex> OnfleetApi.hello()
      :world

  """
  def test do
    resp = HTTPoison.get!("https://onfleet.com/api/v2/auth/test", headers())
    |> Map.to_list
    {resp[:status_code], resp[:body]}
  end

  defp headers do
    ["Authorization": "Basic #{credentials()}"]
  end

  defp credentials do
    key = System.get_env("ONFLEET_API_KEY")
    Base.encode64("#{key}:")
  end
end