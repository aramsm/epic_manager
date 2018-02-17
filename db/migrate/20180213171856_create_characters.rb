class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :age
      t.text :biography
      t.string :beliefs
      t.string :race
      t.string :born_at
      t.string :height
      t.string :weight

      t.timestamps
    end
    add_reference :characters, :user_account, foreign_key: true
    add_reference :characters, :game_system, foreign_key: true
  end
end
