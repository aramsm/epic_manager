class CreateJoinTableUserAccountCampaign < ActiveRecord::Migration[5.1]
  def change
    create_join_table :user_accounts, :campaigns do |t|
      t.index [:user_account_id, :campaign_id]
      t.index [:campaign_id, :user_account_id]
    end
  end
end
