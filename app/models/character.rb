class Character < ApplicationRecord
  belongs_to :user_account
  belongs_to :game_system
  has_many :messages
  has_many :item_quantities
  has_many :sessions, through: :message
  has_many :items, through: :item_quantity
end
