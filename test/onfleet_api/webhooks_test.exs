defmodule OnfleetApi.WebhooksTest do
  use ExUnit.Case
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney

  setup_all do
    HTTPoison.start()
  end

  test "OnfleetApi.test/0 can succeed" do
    use_cassette "webhooks_list_success" do
      {code, _} = OnfleetApi.Webhooks.list()
      assert code == 200
    end
  end
end
