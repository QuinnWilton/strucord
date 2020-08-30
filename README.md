# Strucord

Allows for easy interop with Erlang records.

By using it in a module, it autogenerates a struct for the given record, along with functions for converting between the struct and the record.

I primarily use this for calling Gleam code from Elixir.

## Installation

```elixir
def deps do
  [
    {:strucord, "~> 0.1.0"}
  ]
end
```

## Example

Using the module will define three functions, `with_record/2`, `from_record/1`, and `to_record/1`.

`with_record/2` takes a struct as argument, and a function that takes a record as argument. It will convert the struct to a record, pass it to the function, and then convert the result of the function back to a record.

`from_record/1` takes a record as argument, and returns a struct.

`to_record/1` takes a struct as argument, and returns a record.

```elixir
defmodule Emulator do
  use Strucord,
    name: :emulator,
    from: "gen/src/chip8@emulator_Emulator.hrl"

  def init() do
    from_record(:chip8@emulator.init())
  end

  def reset(%Emulator{} = emulator) do
    with_record(emulator, fn record ->
      :chip8@emulator.reset(record)
    end)
  end

  def load_rom(%Emulator{} = emulator, rom) when is_binary(rom) do
    with_record(emulator, fn record ->
      :chip8@emulator.load_rom(record, rom)
    end)
  end
end
```
