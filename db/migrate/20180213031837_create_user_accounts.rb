class CreateUserAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :user_accounts do |t|
      t.string :email, unique: true
      t.string :name
      t.integer :age
      t.integer :phone
      t.string :nick_name, unique: true
      t.string :avatar, unique: true

      t.timestamps
    end
  end
end
