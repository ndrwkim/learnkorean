class Deck < ApplicationRecord
  has_many :carddecks
  has_many :cards, through: :card_decks
end