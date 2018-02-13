class AddReferencesToUserIdentity < ActiveRecord::Migration[5.1]
  def change
    add_reference :user_identities, :user_account, foreign_key: true
  end
end
