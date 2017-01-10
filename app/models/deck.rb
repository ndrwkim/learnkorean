class Deck < ApplicationRecord
  has_many :carddecks
  has_many :cards, through: :carddecks
end