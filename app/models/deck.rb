class Deck < ApplicationRecord
  has_many :relationships, foreign_key: "deck_id"
  has_many :cards, through: :relationships
  validates :name, uniqueness: true

  extend FriendlyId
  friendly_id :name, use: :slugged

  def should_generate_new_friendly_id?
    name_changed? || super
  end
end