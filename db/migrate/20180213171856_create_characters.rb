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
      t.user_account :references
      t.game_system :references

      t.timestamps
    end
  end
end
