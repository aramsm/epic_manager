class ItemQuantity < ApplicationRecord
	belongs_to :character
	belongs_to :item
end
