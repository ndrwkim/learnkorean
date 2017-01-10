class RenameCardDeck < ActiveRecord::Migration[5.0]
  def change
    rename_table :card_decks, :relationships
  end
end
