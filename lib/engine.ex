defmodule Engine do
  use Strucord,
    name: :engine,
    from: "build/dev/erlang/strucord/include/engine_Engine.hrl",
    overrides: [
      cards: {:list, Card}
    ]
end
