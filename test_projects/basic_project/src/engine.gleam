import card.{Card}
import meta.{Meta}

pub type Engine {
  Engine(cards: List(Card), playing_cards: List(String), score: Int, meta: Meta)
}
