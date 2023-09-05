import meta.{Meta}

pub type Card {
  Card(id: String, image: String, name: String, metas: List(Meta))
}
