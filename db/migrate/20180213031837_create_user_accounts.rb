class CreateUserAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :user_accounts do |t|
      t.string :email
      t.string :name
      t.integer :age
      t.integer :phone
      t.string :nick_name
      t.string :avatar

      t.timestamps
    end
  end
end
