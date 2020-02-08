defmodule OnfleetApi.WebhooksTest do
  use ExUnit.Case
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney

  setup_all do
    HTTPoison.start()
  end

  test "OnfleetApi.list/0 can succeed" do
    use_cassette "webhooks_list_success" do
      {code, _} = OnfleetApi.Webhooks.list()
      assert code == 200
    end
  end

  test "OnfleetApi.create/1" do
    use_cassette "webhooks_create_success" do
      {code, _} = OnfleetApi.Webhooks.create(%{
        "trigger" => 4,
        "url" => "https://oh-dev1.cloud.test.com/api/webhooks/1/endpoint"
      })
      assert code == 200
    end
  end


  test "OnfleetApi.delete/1" do
    use_cassette "webhooks_delete_success" do
      {code, _} = OnfleetApi.Webhooks.delete("123")
      assert code == 200
    end
  end
end
