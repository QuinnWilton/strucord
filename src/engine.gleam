import card.{Card}

pub type Engine {
  Engine(cards: List(Card), playing_cards: List(String), score: Int)
}
