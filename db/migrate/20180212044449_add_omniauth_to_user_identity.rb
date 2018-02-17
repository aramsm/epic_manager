class AddOmniauthToUserIdentity < ActiveRecord::Migration[5.1]
  def change
    add_column :user_identities, :provider, :string
    add_column :user_identities, :uid, :string
  end
end
