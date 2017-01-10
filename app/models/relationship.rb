class Relationship < ApplicationRecord
  belongs_to :card
  belongs_to :deck
end