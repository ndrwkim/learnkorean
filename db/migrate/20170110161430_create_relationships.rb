class CreateRelationships < ActiveRecord::Migration[5.0]
  def change
    drop_table :relationships
    create_table :relationships do |t|
      t.integer :deck_id
      t.integer :card_id

      t.timestamps
    end
    add_index :relationships, :deck_id
    add_index :relationships, :card_id
    add_index :relationships, [:deck_id, :card_id], unique: true
  end
end
