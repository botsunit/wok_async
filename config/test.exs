use Mix.Config

config :wok_async_message_handler, ecto_repos: [WokAsyncMessageHandler.Spec.Repo]
config :wok_async_message_handler, WokAsyncMessageHandler.Spec.Repo,
       adapter: Ecto.Adapters.Postgres,
       database: "wok_async_message_handler_test",
       pool: Ecto.Adapters.SQL.Sandbox,
       port: 5432

if File.exists?("config/local.exs"), do: import_config "local.exs"