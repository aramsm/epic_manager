class Campaign < ApplicationRecord
  has_many :sessions
  belongs_to :game_system
  has_and_belongs_to_many :user_accounts
end
