defmodule Engine do
  use Strucord,
    name: :engine,
    from: "build/dev/erlang/basic_project/include/engine_Engine.hrl",
    overrides: [
      cards: {:list, Card},
      meta: Meta
    ]
end
