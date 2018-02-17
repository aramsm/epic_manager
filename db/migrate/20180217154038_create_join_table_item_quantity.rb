class CreateJoinTableItemQuantity < ActiveRecord::Migration[5.1]
  def change
    create_join_table :characters, :items do |t|
    	t.integer :quantity
      t.index [:character_id, :item_id]
      t.index [:item_id, :character_id]
    end
  end
end
