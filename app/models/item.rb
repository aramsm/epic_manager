class Item < ApplicationRecord
  belongs_to :game_system
  has_many :item_quantities
  has_many :characters, through: :item_quantity
end
