class Card < ApplicationRecord
  has_many :relationships, foreign_key: "card_id"
  has_many :decks, through: :relationships
  validates :english, :korean, uniqueness: true
end