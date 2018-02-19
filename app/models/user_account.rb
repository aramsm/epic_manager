class UserAccount < ApplicationRecord
  has_many :user_identities
  has_many :characters
  has_and_belongs_to_many :campaigns
end
