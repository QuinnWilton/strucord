defmodule BasicProjectTest do
  use ExUnit.Case
  doctest BasicProject

  test "to_record <-> from_record" do
    expected_struct = get_engine()
    actual_record = Engine.to_record(expected_struct)

    expected_record =
      {:engine,
       [
         {:card, "QH", "image/path", "Queen Of Hearts",
          [{:meta, "meta1", "blue", [%Tag{id: "tag1"}]}]}
       ], ["card1"], 0, {:meta, "meta1", "blue", [%Tag{id: "tag1"}]}}

    assert actual_record == expected_record

    actual_struct = Engine.from_record(actual_record)
    assert actual_struct == expected_struct
  end

  def get_meta do
    %Meta{id: "meta1", color: "blue", types: [%Tag{id: "tag1"}]}
  end

  def get_card do
    meta = get_meta()

    %Card{
      id: "QH",
      image: "image/path",
      name: "Queen Of Hearts",
      metas: [meta]
    }
  end

  def get_engine do
    card = get_card()
    meta = get_meta()

    %Engine{
      cards: [card],
      playing_cards: ["card1"],
      score: 0,
      meta: meta
    }
  end
end
