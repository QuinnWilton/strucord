defmodule Card do
  use Strucord,
    name: :card,
    from: "build/dev/erlang/strucord/include/card_Card.hrl",
    overrides: []
end
