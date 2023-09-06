defmodule Card do
  use Strucord,
    name: :card,
    from: "build/dev/erlang/basic_project/include/card_Card.hrl",
    overrides: [
      metas: {:list, Meta}
    ]
end
