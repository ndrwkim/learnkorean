class Card < ApplicationRecord
  has_many :carddecks
  has_many :decks, through :carddecks
end