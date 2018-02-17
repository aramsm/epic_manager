class Character < ApplicationRecord
  belongs_to :user_account
  belongs_to :game_system
  has_many :message
  has_many :item_quantity
  has_many :session, through: :message
  has_many :item, through: :item_quantity
end
