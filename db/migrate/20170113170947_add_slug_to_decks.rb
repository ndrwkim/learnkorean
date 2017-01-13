class AddSlugToDecks < ActiveRecord::Migration[5.0]
  def change
    add_column :decks, :slug, :string
    add_index :decks, :slug
  end
end
