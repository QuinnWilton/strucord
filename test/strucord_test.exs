defmodule StrucordTest do
  use ExUnit.Case
  doctest Strucord

  test "greets the world" do
    expected_struct = get_engine()
    actual_record = Engine.to_record(expected_struct)
    expected_record = {:engine, [{:card, "QH", "image/path", "Queen Of Hearts"}], ["card1"], 0}
    assert actual_record == expected_record

    actual_struct = Engine.from_record(actual_record)
    assert actual_struct == expected_struct
  end

  def get_card do
    %Card{
      id: "QH",
      image: "image/path",
      name: "Queen Of Hearts"
    }
  end

  def get_engine do
    card = get_card()

    %Engine{
      cards: [card],
      playing_cards: ["card1"],
      score: 0
    }
  end
end
