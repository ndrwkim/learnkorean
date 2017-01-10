class Deck < ApplicationRecord
  has_many :relationships, foreign_key: "deck_id"
  has_many :cards, through: :relationships
end