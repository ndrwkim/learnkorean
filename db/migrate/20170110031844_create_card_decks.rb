class CreateCardDecks < ActiveRecord::Migration[5.0]
  def change
    create_table :card_decks do |t|
      t.references :card, foreign_key: true
      t.references :deck, foreign_key: true
      t.string :category

      t.timestamps
    end
  end
end
