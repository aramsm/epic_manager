class CreateGameSystems < ActiveRecord::Migration[5.1]
  def change
    create_table :game_systems do |t|
      t.string :name
      t.string :dices
      t.text :rules
      t.string :author
      t.text :templates

      t.timestamps
    end
    add_index :game_systems, :name, unique: true
  end
end
