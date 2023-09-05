defmodule Meta do
  use Strucord,
    name: :meta,
    from: "build/dev/erlang/basic_project/include/meta_Meta.hrl",
    overrides: [
      tags: {:list, Tag}
    ]
end
