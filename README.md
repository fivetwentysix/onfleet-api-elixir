# OnFleet API

Just some utilities around [OnFleet API](https://docs.onfleet.com/)

## Usage

Set the `ONFLEET_API_KEY` environment variable.

`export ONFLEET_API_KEY=xxx`

`OnfleetApi.test() => {:ok, "response body"}`

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `onfleet_api` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:onfleet_api, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/onfleet_api](https://hexdocs.pm/onfleet_api).

