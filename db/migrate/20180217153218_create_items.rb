class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.text :effects
      t.integer :damage
      t.string :type
      t.string :cost
      t.integer :defense
      t.decimal :durability, precision: 8, scale: 2
      t.string :crafter
      t.text :description

      t.timestamps
    end
    add_reference :items, :game_system, foreign_key: true
    add_index :items, :name, unique: true
  end
end
