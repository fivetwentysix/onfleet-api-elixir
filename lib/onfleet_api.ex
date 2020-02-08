defmodule OnfleetApi do
  @moduledoc """
  Documentation for OnfleetApi.
  """

  @doc """
  Hit test endpoint to verify your api key.

  ## Examples

      iex> OnfleetApi.test()
      {200, "response body"}

  """
  def test do
    resp =
      HTTPoison.get!("https://onfleet.com/api/v2/auth/test", headers())
      |> Map.to_list()

    {resp[:status_code], resp[:body]}
  end

  def headers do
    [Authorization: "Basic #{credentials()}", "Content-Type": "application/json"]
  end

  defp credentials do
    key = System.get_env("ONFLEET_API_KEY")
    Base.encode64("#{key}:")
  end
end
