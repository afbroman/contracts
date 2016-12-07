ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Contracts.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Contracts.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Contracts.Repo)

