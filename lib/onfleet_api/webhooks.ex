defmodule OnfleetApi.Webhooks do
  import OnfleetApi
  @moduledoc """
  Documentation for OnfleetApi.
  """

  @doc """
  List webhooks

  ## Examples

      iex> OnfleetApi.Webhooks.list()
      {200, "[{"id":"123","name":"Failed","count":288,"url":"https://oh-dev1.cloud.test.com/api/webhooks/1/endpoint","trigger":4,"isEnabled":false},{"id":"123*NTsl0","name":"Task Started","count":2825,"url":"https://oh-dev1.cloud.test.com/api/webhooks/3/endpoint","trigger":0,"isEnabled":false},{"id":"abc","name":"EventMonitor ETA","count":2578,"url":"https://oh-dev1.cloud.test.com/api/webhooks/4/endpoint","trigger":1,"isEnabled":false,"threshold":3600}]"}

  """
  def list() do
    resp = HTTPoison.get!("https://onfleet.com/api/v2/webhooks", headers())
    |> Map.to_list
    {resp[:status_code], resp[:body]}
  end
end