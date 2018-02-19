class CreateCampaigns < ActiveRecord::Migration[5.1]
  def change
    create_table :campaigns do |t|
      t.string :title
      t.text :summary
      t.integer :game_master
      t.boolean :public
      t.boolean :closed
      t.integer :limit
      t.string :banned_players

      t.timestamps
    end
    add_reference :campaigns, :game_system, foreign_key: true
    add_index :campaigns, :title, unique: true
  end
end
