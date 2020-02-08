defmodule OnfleetApiTest do
  use ExUnit.Case
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney

  setup_all do
    HTTPoison.start()
  end

  test "OnfleetApi.test/0 can succeed" do
    use_cassette "test_success" do
      {code, _} = OnfleetApi.test()
      assert code == 200
    end
  end

  test "OnfleetApi.test/0 can return an error" do
    use_cassette "test_fail" do
      {code, _} = OnfleetApi.test()
      assert code == 401
    end
  end
end
