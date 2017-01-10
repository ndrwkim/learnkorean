class AddColumnsToCard < ActiveRecord::Migration[5.0]
  def change
    add_column :cards, :english, :string
    add_column :cards, :korean, :string
  end
end