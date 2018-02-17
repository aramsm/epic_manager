class Item < ApplicationRecord
  belongs_to :game_system
  has_many :item_quantity
  has_many :character, through: :item_quantity
end
