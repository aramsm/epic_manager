class CreateItemQuantities < ActiveRecord::Migration[5.1]
  def change
    create_table :item_quantities do |t|
      t.integer :quantity
      t.index [:character_id, :item_id]
      t.index [:item_id, :character_id]

      t.timestamps
    end
  end
end
